#
# Create symbolic links
#
# @usage escandiCreateBulkLinks lnsbin /opt/corretge/mysql/bin /usr/local/bin
#
# @param array files
# @param string source folder
# @param string dest folder
#
escandiCreateBulkLinks()
{

for jFile in ${1}; do
        if [ ! -f ${3}/${jFile} ]; then
                ln -s ${2}/${jFile} ${3}/${jFile};
        fi
done

}

