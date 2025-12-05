## Upstream Sync Failed

The automated sync with upstream encountered merge conflicts that require manual resolution.

### What happened?

The scheduled rebase of this fork onto the upstream repository failed due to conflicting changes.

### How to resolve

1. Fetch upstream changes locally:
   ```bash
   git remote add upstream https://github.com/iv-org/invidious.git  # if not already added
   git fetch upstream
   ```

2. Attempt the rebase manually:
   ```bash
   git checkout neko
   git rebase upstream/master
   ```

3. Resolve any conflicts, then:
   ```bash
   git rebase --continue
   ```

4. Force push the resolved branch:
   ```bash
   git push --force-with-lease origin neko
   ```

5. Close this issue once resolved.

---
*This issue was automatically created by the sync workflow.*
