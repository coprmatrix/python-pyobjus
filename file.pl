if ($. == 1){
  $_ = "\n$_\nBuildRequires: gcc\nBuildRequires: libffi-devel\n%define debug_package %{nil}\n";
}
s~^Summary:.*~Summary: Access Objective-C classes from Python~g;
s~^URL:.*~URL: pyobjus.readthedocs.io~g;
