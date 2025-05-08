if ($. == 1){
  $_ = "\n$_\nBuildRequires: gcc\nBuildRequires: sed\nBuildRequires: libffi-devel\n%define debug_package %{nil}\n";
}
s~^Summary:.*~Summary: Access Objective-C classes from Python~g;
s~^URL:.*~URL: pyobjus.readthedocs.io~g;
s~(%pyproject_save_files.*)~\n\1\nrm -rfv %{buildroot}%{_datadir} ||: ; sed -i 's#%{_datadir}.*##g;' %{pyproject_files}\n~g;
