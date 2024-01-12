## Author : Shiven Saini ##
## Email : shivensaini73@gmail.com ##
### Script to automate the task of making pacman repo ###

#!/bin/bash

ARCH=x86_64
REPO=pithuu-repo

# cd into respective architecture
cd ${ARCH}

# Clean the database
echo -e "[$0] : cleaning the database...."
if [[ -e ${REPO}.db ]]; then
	rm ${REPO}{.db,.files}
fi

# Making pacman repo database
echo -e "[$0] : adding packages to the database...."

repo-add ${REPO}.db.tar.gz *.pkg.tar.zst

# Remove generated redundant symlinks
rm ${REPO}{.db,.files}

# Finally, rename the compressed files to better reflect the db, files
for EXT in db files ; do
       mv ${REPO}.${EXT}.tar.gz ${REPO}.${EXT}
done

cd ..

echo -e "[$0] : Finished!"

# Push to the github repo
read -p "Want to sync this to the remote repository ? (Y or N) " CH

if [[ "$CH" =~ ^[Yy]$ ]]; then
	git push origin main
fi

echo "[$0] : Sync Finished!"
