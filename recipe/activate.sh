#!/bin/bash

conda_catalog_files="file://${CONDA_PREFIX// /%20}/etc/xml/catalog file:///etc/xml/catalog"

if test -n "${XML_CATALOG_FILES:-}"; then
    export xml_catalog_files_libxml2="${XML_CATALOG_FILES}"
    export XML_CATALOG_FILES+=" ${conda_catalog_files}"
else
    export xml_catalog_files_libxml2=""
    export XML_CATALOG_FILES="${conda_catalog_files}"
fi
