const fs = require('fs');
const fetch = require('node-fetch');

async function fetchAllCommits(url, headers) {
  let allCommits = [];
  let nextUrl = url;
  while (nextUrl) {
    const response = await fetch(nextUrl, { headers });
    if (!response.ok) throw new Error(`API error: ${response.status}`);
    const commits = await response.json();
    allCommits = allCommits.concat(commits);
    const linkHeader = response.headers.get('Link');
    nextUrl = linkHeader && linkHeader.match(/<([^>]+)>;\s*rel="next"/)?.[1];
  }
  return allCommits;
}

async function generateSnippets() {
  const repo = process.env.REPO; // From environment variable
  const token = process.env.GITHUB_TOKEN; // From environment variable
  const apiUrl = `https://api.github.com/repos/${repo}/commits?path=&per_page=100`;
  const headers = { 'Authorization': `token ${token}`, 'Accept': 'application/vnd.github.v3+json' };
  const commits = await fetchAllCommits(apiUrl, headers);
  const fileCommits = {};
  for (const commit of commits) {
    const commitDetails = await fetch(commit.url, { headers });
    if (!commitDetails.ok) continue;
    const details = await commitDetails.json();
    const files = details.files || [];
    for (const file of files) {
      if (file.filename.endsWith('.sql')) {
        const filename = file.filename;
        if (!fileCommits[filename] || new Date(commit.commit.author.date) < new Date(fileCommits[filename].date)) {
          const rawUrl = `https://raw.githubusercontent.com/${repo}/${commit.sha}/${filename}`;
          const contentResponse = await fetch(rawUrl);
          if (!contentResponse.ok) continue;
          const content = await contentResponse.text();
          fileCommits[filename] = {
            date: commit.commit.author.date,
            sha: commit.sha,
            content
          };
        }
      }
    }
  }
  if (Object.keys(fileCommits).length === 0) {
    console.log('No SQL files found.');
    fs.writeFileSync('snippets.json', JSON.stringify({}));
    return;
  }
  fs.writeFileSync('snippets.json', JSON.stringify(fileCommits, null, 2));
}

generateSnippets().catch(error => {
  console.error('Error:', error.message);
  process.exit(1);
});
