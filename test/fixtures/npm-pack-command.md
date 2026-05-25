# npm Tarball Fixture Notes

Use this note when replacing the Homebrew formula placeholders.

From the workspace root, build and dry-pack the CLI:

```sh
npm run publish:prep:adpages-cli
```

For a local tarball checksum before npm publication:

```sh
cd packages/adpages-cli
npm pack --dry-run
npm pack
shasum -a 256 adpages-cli-0.1.0.tgz
rm adpages-cli-0.1.0.tgz
```

After npm publication, verify the registry tarball checksum:

```sh
npm view @adpages/cli@0.1.0 dist.tarball dist.shasum dist.integrity
curl -L "https://registry.npmjs.org/@adpages/cli/-/cli-0.1.0.tgz" -o /tmp/adpages-cli-0.1.0.tgz
shasum -a 256 /tmp/adpages-cli-0.1.0.tgz
```

Copy the SHA-256 into `Formula/adpages.rb`.
