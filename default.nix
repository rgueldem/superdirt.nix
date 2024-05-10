{writeScriptBin, supercollider-with-sc3-plugins, superdirt, superdirt-start-sc}:

writeScriptBin "superdirt" ''
  export PATH=$PATH:${supercollider-with-sc3-plugins}/bin
  ${supercollider-with-sc3-plugins}/bin/sclang -d ${supercollider-with-sc3-plugins}/bin -l "${superdirt}/sclang_conf.yaml" "${superdirt-start-sc}"
''
