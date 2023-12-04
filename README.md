# Custom PithuuOS-Repository

Custom User repository for hosting pithuuOS related packages and tools. You can add it in your pacman.conf if required.

---
## Get started :-

To add this repo in your own Arch like distribution,

1. Open pacman.conf file : `# vim /etc/pacman.conf` or `# nano /etc/pacman.conf`

2. **Append the repository list** with the the following lines :-

```bash
[pithuu-repo]
SigLevel = Optional DatabaseOptional
Server = https://raw.githubusercontent.com/shiven-saini/$repo/main/$arch
```

Since, right now only **x86_64 architecture** is supported. Edit the last line as per following :
`Server = https://raw.githubusercontent.com/shiven-saini/$repo/main/x86_64`

3. Refresh the pacman mirrorlist =>  `# pacman -Syy`

4. In case of package conflicts => `# pacman -S pithuu-repo/$PKG_NAME`

---
## Contribution :-

### For collaborators =>

To contribute your custom packages, package the code files as per official Guidelines [here](https://wiki.archlinux.org/title/PKGBUILD)

1. Fetch the latest changes from repository :- `git pull origin main`
2. Add mandatory `PKGBUILD` & `.SRCINFO` files.
3. Remove already existing  .db & .file
4. Build repository files : `repo-add pithuu-repo *.pkg.tar.zst`
5. Get rid of recently generated symlinks & rename the *pithuu-repo.tar.gz* to .db & .file each 

For barebone config files, checkout `Template` folder contents.

### For non-collaborators =>

[![](https://img.shields.io/discord/1177236605115842580?style=for-the-badge&logo=Discord&logoColor=FFFFFF&label=PithuuOS%20Server)](https://discord.gg/ZXPcT9mf)
<br/>Join the **Discord server** and let us know about your cool ideas! 