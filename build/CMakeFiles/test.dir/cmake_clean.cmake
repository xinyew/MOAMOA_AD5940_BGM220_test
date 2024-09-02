file(REMOVE_RECURSE
  "test"
  "test.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang ASM C)
  include(CMakeFiles/test.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
