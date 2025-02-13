; ModuleID = 'simulator/envirbase.cc'
source_filename = "simulator/envirbase.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.EnvirBase = type { %class.cRunnableEnvir, ptr, ptr, ptr, i32, i64, %class.opp_string, i8, %class.opp_string, %class.opp_string, %class.opp_string, %class.opp_string, i32, %class.opp_string, i32, %class.opp_string, %class.opp_string, %class.opp_string, i8, i8, i8, i8, %class.SimTime, i64, %class.opp_string, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i64, %struct.timeval, %struct.timeval, %struct.timeval, %struct.timeval, %class.SimTime }
%class.cRunnableEnvir = type { %class.cEnvir }
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.opp_string = type { ptr }
%struct.timeval = type { i64, i64 }
%class.SimTime = type { i64 }
%class.ArgList = type { i32, ptr, %"class.std::__cxx11::basic_string", %"class.std::map", %"class.std::map.3", %"class.std::vector" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.8", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.8" = type { %"struct.std::less.9" }
%"struct.std::less.9" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.std::set" = type { %"class.std::_Rb_tree.19" }
%"class.std::_Rb_tree.19" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.8", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::pair" = type <{ %"struct.std::_Rb_tree_const_iterator", i8, [7 x i8] }>
%"struct.std::pair.58" = type <{ %"struct.std::_Rb_tree_iterator", i8, [7 x i8] }>
%class.cOmnetAppRegistration = type <{ %class.cOwnedObject.base, [4 x i8], ptr, %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.cConfigOption = type { %class.cNoncopyableOwnedObject.base, i8, i8, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cNEDFunction = type { %class.cNoncopyableOwnedObject.base, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, i32, i32, ptr, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cMathFunction = type { %class.cNoncopyableOwnedObject.base, ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ModNameParamResolver = type { %"class.cXMLElement::ParamResolver", ptr }
%"class.cXMLElement::ParamResolver" = type { ptr }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"struct.std::pair.49" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::_Rb_tree_node.51" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.52" }
%"struct.__gnu_cxx::__aligned_membuf.52" = type { [32 x i8] }
%"struct.std::pair.53" = type { i8, %"class.std::vector" }
%"struct.std::_Rb_tree_node.55" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.56" }
%"struct.__gnu_cxx::__aligned_membuf.56" = type { [32 x i8] }
%struct._Guard.57 = type { ptr }
%"struct.std::_Identity" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }
%"struct.std::pair.61" = type { ptr, ptr }

$_ZN14cRunnableEnvirC2Ev = comdat any

$_ZN10opp_stringC2Ev = comdat any

$_ZN7SimTimeC2Ev = comdat any

$_ZN10opp_stringD2Ev = comdat any

$_ZN7ArgListD2Ev = comdat any

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$_ZN6cEnvirlsIA2_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA32_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA11_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIPKcEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA10_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_Z9createOnePKc = comdat any

$_ZNK10opp_string5c_strEv = comdat any

$_ZN11cSimulation19getActiveSimulationEv = comdat any

$_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2Ev = comdat any

$_ZSteqRKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ = comdat any

$_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE3endEv = comdat any

$_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_ = comdat any

$_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6cEnvirlsIA23_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA29_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA78_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA51_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA73_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA74_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA75_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA77_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA76_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA33_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA40_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA46_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA47_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA43_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA67_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA71_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA79_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA65_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA54_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA55_cEERS_RKT_ = comdat any

$_Z14check_and_castIP21cOmnetAppRegistrationET_P7cObject = comdat any

$_ZN21cOmnetAppRegistration9createOneEv = comdat any

$_ZN6cEnvirlsIA34_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA3_cEERS_RKT_ = comdat any

$_ZNK13cConfigOption11isPerObjectEv = comdat any

$_ZN6cEnvirlsIA20_cEERS_RKT_ = comdat any

$_ZNK13cConfigOption7getTypeEv = comdat any

$_ZNK13cConfigOption7getUnitEv = comdat any

$_ZN6cEnvirlsIA9_cEERS_RKT_ = comdat any

$_ZNK13cConfigOption15getDefaultValueEv = comdat any

$_ZN6cEnvirlsIA1_cEERS_RKT_ = comdat any

$_ZNK13cConfigOption8isGlobalEv = comdat any

$_Z11opp_isemptyPKc = comdat any

$_ZNK13cConfigOption14getDescriptionEv = comdat any

$_ZN6cEnvirlsIA57_cEERS_RKT_ = comdat any

$_ZNKSt6vectorIPKcSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIPKcSaIS1_EEixEm = comdat any

$_ZNSt6vectorIPKcSaIS1_EED2Ev = comdat any

$_ZN6cEnvirlsIA49_cEERS_RKT_ = comdat any

$_Z11opp_isalphah = comdat any

$_Z11opp_toupperh = comdat any

$_ZN6cEnvirlsIA38_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA4_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA5_cEERS_RKT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZN10opp_stringC2EPKc = comdat any

$_ZN10opp_string6bufferEv = comdat any

$_ZN6cEnvirlsIA39_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsI10opp_stringEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA22_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA69_cEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA84_cEERS_RKT_ = comdat any

$_ZNK12cNEDFunction11getCategoryEv = comdat any

$_ZNK13cMathFunction11getCategoryEv = comdat any

$_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5beginEv = comdat any

$_ZStneRKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv = comdat any

$_ZN6cEnvirlsIA13_cEERS_RKT_ = comdat any

$_ZNK12cNEDFunction14getDescriptionEv = comdat any

$_ZNK13cMathFunction14getDescriptionEv = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE = comdat any

$_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv = comdat any

$_ZN6cEnvirlsIA72_cEERS_RKT_ = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_ZN6cEnvirlsIdEERS_RKT_ = comdat any

$_ZN6cEnvirlsIA25_cEERS_RKT_ = comdat any

$_ZN20ModNameParamResolverC2EP7cModule = comdat any

$_ZN11cXMLElement13ParamResolverD2Ev = comdat any

$_ZN7SimTimeC2ERKS_ = comdat any

$_ZN10opp_stringaSEPKc = comdat any

$_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN7SimTimeaSEd = comdat any

$_ZNK10opp_string5emptyEv = comdat any

$_ZN7cHasherC2Ev = comdat any

$_ZN10cComponent9setRNGMapEsPi = comdat any

$_ZNK7ArgList11getArgCountEv = comdat any

$_ZNK7ArgList12getArgVectorEv = comdat any

$_ZmiRK7timevalS1_ = comdat any

$_ZplRK7timevalS1_ = comdat any

$_ZNK11cSimulation10getSimTimeEv = comdat any

$_ZN7SimTimeaSERKS_ = comdat any

$_ZNK7SimTimeneERKS_ = comdat any

$_ZN7SimTimeC2Ed = comdat any

$_ZNK7SimTimegeERKS_ = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZNK11cSimulation14getEventNumberEv = comdat any

$_ZN11cSimulation9getHasherEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZN14cRunnableEnvirD0Ev = comdat any

$_ZN6cEnvir13objectDeletedEP7cObject = comdat any

$_ZN6cEnvir16undisposedObjectEP7cObject = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev = comdat any

$_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_ = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_ = comdat any

$_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m = comdat any

$_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS6_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS7_m = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE9_M_mbeginEv = comdat any

$_Z10opp_strdupPKc = comdat any

$_ZN11cXMLElement13ParamResolverC2Ev = comdat any

$_ZN11cXMLElement13ParamResolverD0Ev = comdat any

$_ZN7SimTime5checkIdEEvT_ = comdat any

$_ZN7SimTime7toInt64Ed = comdat any

$_ZN11noncopyableC2Ev = comdat any

$_Z17timeval_substractRK7timevalS1_ = comdat any

$_Z11timeval_addRK7timevalS1_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPPKcEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIPKcED2Ev = comdat any

$_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_ = comdat any

$_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_ = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt17_Rb_tree_iteratorIS5_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_ = comdat any

$_ZNKSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_ = comdat any

$_ZNSt4pairISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IRSt17_Rb_tree_iteratorIS6_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_ = comdat any

$_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeC2ERSB_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_ = comdat any

$_ZNSt4pairISt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IS7_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_ = comdat any

$_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_create_nodeIJS5_EEEPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS6_JS6_EEEvPT_DpOT0_ = comdat any

$_ZlsRSoRK10opp_string = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv = comdat any

$_ZTS16cConfigurationEx = comdat any

$_ZTI16cConfigurationEx = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTS7SimTime = comdat any

$_ZTI7SimTime = comdat any

$_ZTS21cTerminationException = comdat any

$_ZTI21cTerminationException = comdat any

$_ZTS14cRunnableEnvir = comdat any

$_ZTI14cRunnableEnvir = comdat any

$_ZTV14cRunnableEnvir = comdat any

$_ZTV10cException = comdat any

$_ZTVN11cXMLElement13ParamResolverE = comdat any

$_ZTSN11cXMLElement13ParamResolverE = comdat any

$_ZTIN11cXMLElement13ParamResolverE = comdat any

$_ZTSP21cOmnetAppRegistration = comdat any

$_ZTS21cOmnetAppRegistration = comdat any

$_ZTI21cOmnetAppRegistration = comdat any

$_ZTIP21cOmnetAppRegistration = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@CFGID_TOTAL_STACK = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_91E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARALLEL_SIMULATION = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_92E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SCHEDULER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_93E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARSIM_COMMUNICATIONS_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_94E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARSIM_SYNCHRONIZATION_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_95E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_OUTPUTVECTORMANAGER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_96E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_OUTPUTSCALARMANAGER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_97E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SNAPSHOTMANAGER_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_98E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_FNAME_APPEND_HOST = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_99E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_DEBUG_ON_ERRORS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_100E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PRINT_UNDISPOSED = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_101E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SIMTIME_SCALE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_102E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_NED_PATH = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_103E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_NETWORK = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_105E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_WARNINGS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_106E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SIM_TIME_LIMIT = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_107E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_CPU_TIME_LIMIT = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_108E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_FINGERPRINT = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_109E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_NUM_RNGS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_110E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RNG_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_111E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_SEED_SET = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_112E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RESULT_DIR = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_113E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RECORD_EVENTLOG = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_114E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_PARTITION_ID = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_115E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_RNG_K = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_119__onstartup_obj_116E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTV9EnvirBase = dso_local unnamed_addr constant { [73 x ptr] } { [73 x ptr] [ptr null, ptr @_ZTI9EnvirBase, ptr @_ZN9EnvirBase5sputnEPKci, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBaseD2Ev, ptr @_ZN9EnvirBaseD0Ev, ptr @_ZN9EnvirBase13objectDeletedEP7cObject, ptr @_ZN9EnvirBase15simulationEventEP8cMessage, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase16messageScheduledEP8cMessage, ptr @_ZN9EnvirBase16messageCancelledEP8cMessage, ptr @_ZN9EnvirBase9beginSendEP8cMessage, ptr @_ZN9EnvirBase17messageSendDirectEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate, ptr @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN9EnvirBase7endSendEP8cMessage, ptr @_ZN9EnvirBase14messageDeletedEP8cMessage, ptr @_ZN9EnvirBase16moduleReparentedEP7cModuleS1_, ptr @_ZN9EnvirBase20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag, ptr @_ZN9EnvirBase18componentMethodEndEv, ptr @_ZN9EnvirBase13moduleCreatedEP7cModule, ptr @_ZN9EnvirBase13moduleDeletedEP7cModule, ptr @_ZN9EnvirBase11gateCreatedEP5cGate, ptr @_ZN9EnvirBase11gateDeletedEP5cGate, ptr @_ZN9EnvirBase17connectionCreatedEP5cGate, ptr @_ZN9EnvirBase17connectionDeletedEP5cGate, ptr @_ZN9EnvirBase20displayStringChangedEP10cComponent, ptr @_ZN9EnvirBase16undisposedObjectEP7cObject, ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZN9EnvirBase13isModuleLocalEP7cModulePKci, ptr @_ZN9EnvirBase14getXMLDocumentEPKcS1_, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase9getConfigEv, ptr @_ZN9EnvirBase11getConfigExEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase6bubbleEP10cComponentPKc, ptr @_ZN6cEnvir9printfmsgEPKcz, ptr @_ZN6cEnvir6printfEPKcz, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6cEnvir8askYesNoEPKcz, ptr @_ZNK9EnvirBase10getNumRNGsEv, ptr @_ZN9EnvirBase6getRNGEi, ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZN9EnvirBase20registerOutputVectorEPKcS1_, ptr @_ZN9EnvirBase22deregisterOutputVectorEPv, ptr @_ZN9EnvirBase18setVectorAttributeEPvPKcS2_, ptr @_ZN9EnvirBase20recordInOutputVectorEPv7SimTimed, ptr @_ZN9EnvirBase12recordScalarEP10cComponentPKcdP14opp_string_map, ptr @_ZN9EnvirBase15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map, ptr @_ZN9EnvirBase20getStreamForSnapshotEv, ptr @_ZN9EnvirBase24releaseStreamForSnapshotEPSo, ptr @_ZNK9EnvirBase11getArgCountEv, ptr @_ZNK9EnvirBase12getArgVectorEv, ptr @_ZNK9EnvirBase15getParsimProcIdEv, ptr @_ZNK9EnvirBase22getParsimNumPartitionsEv, ptr @_ZN9EnvirBase15getUniqueNumberEv, ptr @_ZN9EnvirBase4idleEv, ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZN9EnvirBase5setupEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase8shutdownEv, ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN9EnvirBase6endRunEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @__cxa_pure_virtual, ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZN9EnvirBase12displayErrorERSt9exception, ptr @_ZN9EnvirBase14displayMessageERSt9exception] }, align 8
@.str = private unnamed_addr constant [23 x i8] c"h?f:u:l:c:r:p:n:x:agGv\00", align 1
@_ZTI14cConfiguration = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16cConfigurationEx = linkonce_odr dso_local constant [19 x i8] c"16cConfigurationEx\00", comdat, align 1
@_ZTI16cConfigurationEx = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16cConfigurationEx, ptr @_ZTI14cConfiguration }, comdat, align 8
@.str.26 = private unnamed_addr constant [56 x i8] c"Cannot cast configuration object %s to cConfigurationEx\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Build: omnetpp-4.0 090310-10709\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Compiler: \00", align 1
@_ZL12compilerInfo = internal global ptr @.str.257, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"Options: \00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS7SimTime = linkonce_odr dso_local constant [9 x i8] c"7SimTime\00", comdat, align 1
@_ZTI7SimTime = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS7SimTime }, comdat, align 8
@.str.31 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@_ZL12buildOptions = internal global ptr @.str.259, align 8
@.str.32 = private unnamed_addr constant [15 x i8] c"Config %s: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Config: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"Number of runs: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Run %d:\0A%s\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Run %d: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"Total stack size %d increased to %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"Class \22%s\22 is not subclassed from cOutputVectorManager\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"Class \22%s\22 is not subclassed from cOutputScalarManager\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"Class \22%s\22 is not subclassed from cSnapshotManager\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"Class \22%s\22 is not subclassed from cScheduler\00", align 1
@.str.42 = private unnamed_addr constant [128 x i8] c"Parallel simulation is turned on in the ini file, but OMNeT++ was compiled without parallel simulation support (WITH_PARSIM=no)\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"NEDPATH\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c":;\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"Loading NED files from a SPEC directory\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"Command line options:\0A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"  <inifile> or -f <inifile>\0A\00", align 1
@.str.51 = private unnamed_addr constant [78 x i8] c"                Use the given ini file instead of omnetpp.ini. More than one\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"                ini files can be loaded this way.\0A\00", align 1
@.str.53 = private unnamed_addr constant [73 x i8] c"  -u <ui>       Selects the user interface. Standard choices are Cmdenv\0A\00", align 1
@.str.54 = private unnamed_addr constant [73 x i8] c"                and Tkenv. To make a user interface available, you need\0A\00", align 1
@.str.55 = private unnamed_addr constant [73 x i8] c"                to link the simulation executable with the Cmdenv/Tkenv\0A\00", align 1
@.str.56 = private unnamed_addr constant [74 x i8] c"                library, or load it as shared library via the -l option.\0A\00", align 1
@.str.57 = private unnamed_addr constant [75 x i8] c"  -n <nedpath>  When present, overrides the NEDPATH environment variable.\0A\00", align 1
@.str.58 = private unnamed_addr constant [77 x i8] c"  -l <library>  Load the specified shared library (.so or .dll) on startup.\0A\00", align 1
@.str.59 = private unnamed_addr constant [78 x i8] c"                The file name should be given without the .so or .dll suffix\0A\00", align 1
@.str.60 = private unnamed_addr constant [76 x i8] c"                (it will be appended automatically.) The loaded module may\0A\00", align 1
@.str.61 = private unnamed_addr constant [75 x i8] c"                contain simple modules, plugins, etc. Multiple -l options\0A\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"                can be present.\0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"  --<configuration-key>=<value>\0A\00", align 1
@.str.64 = private unnamed_addr constant [74 x i8] c"                Any configuration option can be specified on the command\0A\00", align 1
@.str.65 = private unnamed_addr constant [78 x i8] c"                line, and it takes precedence over settings specified in the\0A\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"                ini file(s). Examples:\0A\00", align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"                      --debug-on-errors=true\0A\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"                      --record-eventlog=true\0A\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"                      --sim-time-limit=1000s\0A\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"  -v            Print version and build info.\0A\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"  -h            Print this help and exit.\0A\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"  -h <category> Lists registered components:\0A\00", align 1
@.str.73 = private unnamed_addr constant [67 x i8] c"    -h config         Prints the list of available config options\0A\00", align 1
@.str.74 = private unnamed_addr constant [73 x i8] c"    -h configdetails  Prints the list of available config options, with\0A\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"                      their documentation\0A\00", align 1
@.str.76 = private unnamed_addr constant [71 x i8] c"    -h userinterfaces Lists available user interfaces (see -u option)\0A\00", align 1
@.str.77 = private unnamed_addr constant [79 x i8] c"    -h classes        Lists registered C++ classes (including module classes)\0A\00", align 1
@.str.78 = private unnamed_addr constant [73 x i8] c"    -h classdesc      Lists C++ classes that have associated reflection\0A\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"                      information (needed for Tkenv inspectors)\0A\00", align 1
@.str.80 = private unnamed_addr constant [54 x i8] c"    -h nedfunctions   Lists registered NED functions\0A\00", align 1
@.str.81 = private unnamed_addr constant [55 x i8] c"    -h units          Lists recognized physical units\0A\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"    -h enums          Lists registered enums\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"    -h all            Union of all the above\0A\00", align 1
@omnetapps = external global %class.cGlobalRegistrationList, align 8
@_ZTI6cEnvir = external constant ptr
@.str.84 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"configdetails\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"Supported configuration options:\0A\00", align 1
@configOptions = external global %class.cGlobalRegistrationList, align 8
@_ZTI12cOwnedObject = external constant ptr
@_ZTI13cConfigOption = external constant ptr
@.str.88 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"<object-full-path>.\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c", unit=\22\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c", default:\00", align 1
@.str.96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"per-object\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"per-run\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c" setting\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.103 = private unnamed_addr constant [57 x i8] c"Predefined variables that can be used in config values:\0A\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"jconfig\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"Supported configuration options (as Java code):\0A\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"CFGID_\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"addGlobalOption\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"addPerRunOption\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"addPerObjectOption\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"CFG_BOOL\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"CFG_INT\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"CFG_DOUBLE\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"CFG_STRING\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"CFG_FILENAME\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"CFG_FILENAMES\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"CFG_PATH\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"CFG_CUSTOM\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"    public static final ConfigOption \00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"(\0A\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"        \22\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"\\n\0A\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c" \22 +\0A\22\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"\\n \22\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"\\n\22\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"    public static final String CFGVAR_\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c" = addConfigVariable(\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"\22, \22\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"\22);\0A\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.141 = private unnamed_addr constant [67 x i8] c"Registered C++ classes, including modules, channels and messages:\0A\00", align 1
@classes = external global %class.cGlobalRegistrationList, align 8
@.str.142 = private unnamed_addr constant [9 x i8] c"  class \00", align 1
@.str.143 = private unnamed_addr constant [69 x i8] c"Note: if your class is not listed, it needs to be registered in the\0A\00", align 1
@.str.144 = private unnamed_addr constant [71 x i8] c"C++ code using Define_Module(), Define_Channel() or Register_Class().\0A\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"classdesc\00", align 1
@.str.146 = private unnamed_addr constant [84 x i8] c"Classes that have associated reflection information (needed for Tkenv inspectors):\0A\00", align 1
@classDescriptors = external global %class.cGlobalRegistrationList, align 8
@.str.147 = private unnamed_addr constant [13 x i8] c"nedfunctions\00", align 1
@.str.148 = private unnamed_addr constant [67 x i8] c"Functions that can be used in NED expressions and in omnetpp.ini:\0A\00", align 1
@nedFunctions = external global %class.cGlobalRegistrationList, align 8
@_ZTI12cNEDFunction = external constant ptr
@_ZTI13cMathFunction = external constant ptr
@.str.149 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"\0A Category \22\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"\22:\0A\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@.str.154 = private unnamed_addr constant [72 x i8] c"Recognized physical units (note: other units can be used as well, only\0A\00", align 1
@.str.155 = private unnamed_addr constant [54 x i8] c"no automatic conversion will be available for them):\0A\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"enums\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"Enums defined in .msg files\0A\00", align 1
@enums = external global %class.cGlobalRegistrationList, align 8
@.str.159 = private unnamed_addr constant [15 x i8] c"userinterfaces\00", align 1
@.str.160 = private unnamed_addr constant [25 x i8] c"User interfaces loaded:\0A\00", align 1
@.str.161 = private unnamed_addr constant [42 x i8] c"Unrecognized category for '-h' option: %s\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"ask\00", align 1
@.str.164 = private unnamed_addr constant [55 x i8] c"undisposed object: (%s) %s -- check module destructor\0A\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"HOSTNAME\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"COMPUTERNAME\00", align 1
@.str.168 = private unnamed_addr constant [107 x i8] c"Cannot append hostname to file name `%s': no HOST, HOSTNAME or COMPUTERNAME (Windows) environment variable\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c".%s.%d\00", align 1
@.str.170 = private unnamed_addr constant [39 x i8] c"Class \22%s\22 is not subclassed from cRNG\00", align 1
@.str.171 = private unnamed_addr constant [68 x i8] c"RNG index %d is out of range (num-rngs=%d, check the configuration)\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"rng-*\00", align 1
@.str.173 = private unnamed_addr constant [79 x i8] c"Configuration error: %s=%s for module/channel %s: numeric RNG indices expected\00", align 1
@.str.174 = private unnamed_addr constant [90 x i8] c"Configuration error: rng-%d=%d of module/channel %s: RNG index out of range (num-rngs=%d)\00", align 1
@.str.175 = private unnamed_addr constant [99 x i8] c"Configuration error: rng-%d=... of module/channel %s: local RNG index out of supported range 0..99\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"Error: %s.\00", align 1
@.str.177 = private unnamed_addr constant [32 x i8] c"Error in component (%s) %s: %s.\00", align 1
@.str.178 = private unnamed_addr constant [37 x i8] c"Error in module (%s) %s (id=%d): %s.\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"Component (%s) %s: %s.\00", align 1
@.str.181 = private unnamed_addr constant [28 x i8] c"Module (%s) %s (id=%d): %s.\00", align 1
@_ZTS21cTerminationException = linkonce_odr dso_local constant [24 x i8] c"21cTerminationException\00", comdat, align 1
@_ZTI21cTerminationException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21cTerminationException, ptr @_ZTI10cException }, comdat, align 8
@.str.182 = private unnamed_addr constant [38 x i8] c"Fingerprint successfully verified: %s\00", align 1
@.str.183 = private unnamed_addr constant [53 x i8] c"Fingerprint mismatch! calculated: %s, expected: %s%s\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"one of: \00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.186 = private unnamed_addr constant [58 x i8] c"Network `%s' or `%s' not found, check .ini and .ned files\00", align 1
@.str.187 = private unnamed_addr constant [50 x i8] c"Network `%s' not found, check .ini and .ned files\00", align 1
@.str.188 = private unnamed_addr constant [34 x i8] c"Module type `%s' is not a network\00", align 1
@_ZTS9EnvirBase = dso_local constant [11 x i8] c"9EnvirBase\00", align 1
@_ZTS14cRunnableEnvir = linkonce_odr dso_local constant [17 x i8] c"14cRunnableEnvir\00", comdat, align 1
@_ZTI14cRunnableEnvir = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14cRunnableEnvir, ptr @_ZTI6cEnvir }, comdat, align 8
@_ZTI9EnvirBase = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9EnvirBase, ptr @_ZTI14cRunnableEnvir }, align 8
@.str.190 = private unnamed_addr constant [12 x i8] c"total-stack\00", align 1
@.str.191 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.192 = private unnamed_addr constant [154 x i8] c"Specifies the maximum memory for activity() simple module stacks. You need to increase this value if you get a ``Cannot allocate coroutine stack'' error.\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"parallel-simulation\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.195 = private unnamed_addr constant [41 x i8] c"Enables parallel distributed simulation.\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"scheduler-class\00", align 1
@.str.197 = private unnamed_addr constant [21 x i8] c"cSequentialScheduler\00", align 1
@.str.198 = private unnamed_addr constant [246 x i8] c"Part of the Envir plugin mechanism: selects the scheduler class. This plugin interface allows for implementing real-time, hardware-in-the-loop, distributed and distributed parallel simulation. The class has to implement the cScheduler interface.\00", align 1
@.str.199 = private unnamed_addr constant [28 x i8] c"parsim-communications-class\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"cFileCommunications\00", align 1
@.str.201 = private unnamed_addr constant [162 x i8] c"If parallel-simulation=true, it selects the class that implements communication between partitions. The class must implement the cParsimCommunications interface.\00", align 1
@.str.202 = private unnamed_addr constant [29 x i8] c"parsim-synchronization-class\00", align 1
@.str.203 = private unnamed_addr constant [21 x i8] c"cNullMessageProtocol\00", align 1
@.str.204 = private unnamed_addr constant [135 x i8] c"If parallel-simulation=true, it selects the parallel simulation algorithm. The class must implement the cParsimSynchronizer interface.\00", align 1
@.str.205 = private unnamed_addr constant [26 x i8] c"outputvectormanager-class\00", align 1
@.str.206 = private unnamed_addr constant [32 x i8] c"cIndexedFileOutputVectorManager\00", align 1
@.str.207 = private unnamed_addr constant [186 x i8] c"Part of the Envir plugin mechanism: selects the output vector manager class to be used to record data from output vectors. The class has to implement the cOutputVectorManager interface.\00", align 1
@.str.208 = private unnamed_addr constant [26 x i8] c"outputscalarmanager-class\00", align 1
@.str.209 = private unnamed_addr constant [25 x i8] c"cFileOutputScalarManager\00", align 1
@.str.210 = private unnamed_addr constant [191 x i8] c"Part of the Envir plugin mechanism: selects the output scalar manager class to be used to record data passed to recordScalar(). The class has to implement the cOutputScalarManager interface.\00", align 1
@.str.211 = private unnamed_addr constant [22 x i8] c"snapshotmanager-class\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"cFileSnapshotManager\00", align 1
@.str.213 = private unnamed_addr constant [170 x i8] c"Part of the Envir plugin mechanism: selects the class to handle streams to which snapshot() writes its output. The class has to implement the cSnapshotManager interface.\00", align 1
@.str.214 = private unnamed_addr constant [18 x i8] c"fname-append-host\00", align 1
@.str.215 = private unnamed_addr constant [186 x i8] c"Turning it on will cause the host name and process Id to be appended to the names of output files (e.g. omnetpp.vec, omnetpp.sca). This is especially useful with distributed simulation.\00", align 1
@.str.216 = private unnamed_addr constant [16 x i8] c"debug-on-errors\00", align 1
@.str.217 = private unnamed_addr constant [253 x i8] c"When set to true, runtime errors will cause the simulation program to break into the C++ debugger (if the simulation is running under one, or just-in-time debugging is activated). Once in the debugger, you can view the stack trace or examine variables.\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"print-undisposed\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.220 = private unnamed_addr constant [110 x i8] c"Whether to report objects left (that is, not deallocated by simple module destructors) after network cleanup.\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"simtime-scale\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"-12\00", align 1
@.str.223 = private unnamed_addr constant [262 x i8] c"Sets the scale exponent, and thus the resolution of time for the 64-bit fixed-point simulation time representation. Accepted values are -18..0; for example, -6 selects microsecond resolution. -12 means picosecond resolution, with a maximum simtime of ~110 days.\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"ned-path\00", align 1
@.str.225 = private unnamed_addr constant [410 x i8] c"A semicolon-separated list of directories. The directories will be regarded as roots of the NED package hierarchy, and all NED files will be loaded from their subdirectory trees. This option is normally left empty, as the OMNeT++ IDE sets the NED path automatically, and for simulations started outside the IDE it is more convenient to specify it via a command-line option or the NEDPATH environment variable.\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.227 = private unnamed_addr constant [158 x i8] c"The name of the network to be simulated.  The package name can be omitted if the ini file is in the same directory as the NED file that contains the network.\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"Enables warnings.\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"sim-time-limit\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.232 = private unnamed_addr constant [92 x i8] c"Stops the simulation when simulation time reaches the given limit. The default is no limit.\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"cpu-time-limit\00", align 1
@.str.234 = private unnamed_addr constant [90 x i8] c"Stops the simulation when CPU usage has reached the given limit. The default is no limit.\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"fingerprint\00", align 1
@.str.236 = private unnamed_addr constant [534 x i8] c"The expected fingerprint of the simulation. When provided, a fingerprint will be calculated from the simulation event times and other quantities during simulation, and checked against the given one. Fingerprints are suitable for crude regression tests. As fingerprints occasionally differ across platforms, more than one fingerprint values can be specified here, separated by spaces, and a match with any of them will be accepted. To calculate the initial fingerprint, enter any dummy string (such as \22none\22), and run the simulation.\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"num-rngs\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.239 = private unnamed_addr constant [40 x i8] c"The number of random number generators.\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"rng-class\00", align 1
@.str.241 = private unnamed_addr constant [17 x i8] c"cMersenneTwister\00", align 1
@.str.242 = private unnamed_addr constant [169 x i8] c"The random number generator class to be used. It can be `cMersenneTwister', `cLCG32', `cAkaroaRNG', or you can use your own RNG class (it must be subclassed from cRNG).\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"seed-set\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"${runnumber}\00", align 1
@.str.245 = private unnamed_addr constant [183 x i8] c"Selects the kth set of automatic random number seeds for the simulation. Meaningful values include ${repetition} which is the repeat loop counter (see repeat= key), and ${runnumber}.\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"result-dir\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"results\00", align 1
@.str.248 = private unnamed_addr constant [155 x i8] c"Value for the ${resultdir} variable, which is used as the default directory for result files (output vector file, output scalar file, eventlog file, etc.)\00", align 1
@.str.249 = private unnamed_addr constant [16 x i8] c"record-eventlog\00", align 1
@.str.250 = private unnamed_addr constant [118 x i8] c"Enables recording an eventlog file, which can be later visualized on a sequence chart. See eventlog-file= option too.\00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"partition-id\00", align 1
@.str.252 = private unnamed_addr constant [261 x i8] c"With parallel simulation: in which partition the module should be instantiated. Specify numeric partition ID, or a comma-separated list of partition IDs for compound modules that span across multiple partitions. Ranges (\225..9\22) and \22*\22 (=all) are accepted too.\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"rng-%\00", align 1
@.str.254 = private unnamed_addr constant [181 x i8] c"Maps a module-local RNG to one of the global RNGs. Example: **.gen.rng-1=3 maps the local RNG 1 of modules matching `**.gen' to the global RNG 3. The default is one-to-one mapping.\00", align 1
@_ZTV14cRunnableEnvir = linkonce_odr dso_local unnamed_addr constant { [60 x ptr] } { [60 x ptr] [ptr null, ptr @_ZTI14cRunnableEnvir, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6cEnvirD2Ev, ptr @_ZN14cRunnableEnvirD0Ev, ptr @_ZN6cEnvir13objectDeletedEP7cObject, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6cEnvir16undisposedObjectEP7cObject, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6cEnvir11getConfigExEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6cEnvir9printfmsgEPKcz, ptr @_ZN6cEnvir6printfEPKcz, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN6cEnvir8askYesNoEPKcz, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.255 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@.str.257 = private unnamed_addr constant [82 x i8] c"GCC Ubuntu Clang 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)\00", align 1
@.str.258 = private unnamed_addr constant [50 x i8] c"%d-bit RELEASE simtime_t=%s large-file-support=%s\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c" WITH_NETBUILDER\00", align 1
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZTV20ModNameParamResolver = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN11cXMLElement13ParamResolverE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11cXMLElement13ParamResolverE, ptr @__cxa_pure_virtual, ptr @_ZN11cXMLElement13ParamResolverD2Ev, ptr @_ZN11cXMLElement13ParamResolverD0Ev] }, comdat, align 8
@_ZTSN11cXMLElement13ParamResolverE = linkonce_odr dso_local constant [31 x i8] c"N11cXMLElement13ParamResolverE\00", comdat, align 1
@_ZTIN11cXMLElement13ParamResolverE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11cXMLElement13ParamResolverE }, comdat, align 8
@_ZN7SimTime6fscaleE = external local_unnamed_addr global double, align 8
@_ZN7SimTime8scaleexpE = external local_unnamed_addr global i32, align 4
@.str.260 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.261 = private unnamed_addr constant [56 x i8] c"check_and_cast(): cannot cast NULL pointer to type '%s'\00", align 1
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSP21cOmnetAppRegistration = linkonce_odr dso_local constant [25 x i8] c"P21cOmnetAppRegistration\00", comdat, align 1
@_ZTS21cOmnetAppRegistration = linkonce_odr dso_local constant [24 x i8] c"21cOmnetAppRegistration\00", comdat, align 1
@_ZTI21cOmnetAppRegistration = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS21cOmnetAppRegistration, ptr @_ZTI12cOwnedObject }, comdat, align 8
@_ZTIP21cOmnetAppRegistration = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSP21cOmnetAppRegistration, i32 0, ptr @_ZTI21cOmnetAppRegistration }, comdat, align 8
@_ZTI7cObject = external constant ptr
@.str.262 = private unnamed_addr constant [52 x i8] c"check_and_cast(): cannot cast (%s *)%s to type '%s'\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_envirbase.cc, ptr null }]

@_ZN9EnvirBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9EnvirBaseD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_91E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_91Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_91E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_91Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !426 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.190, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 2, ptr noundef nonnull @.str.191, ptr noundef null, ptr noundef nonnull @.str.192) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_TOTAL_STACK, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_92E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_92Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_92E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_92Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !433 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.193, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARALLEL_SIMULATION, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_93E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_93Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_93E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_93Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !434 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.196, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SCHEDULER_CLASS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_94E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_94Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_94E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_94Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !435 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.199, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARSIM_COMMUNICATIONS_CLASS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.5() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_95E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_95Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_95E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_95Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !436 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.202, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARSIM_SYNCHRONIZATION_CLASS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.6() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_96E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_96Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_96E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_96Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !437 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.205, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUTVECTORMANAGER_CLASS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.7() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_97E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_97Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_97E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_97Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !438 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.208, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.210) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_OUTPUTSCALARMANAGER_CLASS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.8() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_98E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_98Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_98E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_98Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !439 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.211, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SNAPSHOTMANAGER_CLASS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.9() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_99E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_99Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_99E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_99Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !440 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.214, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.215) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_FNAME_APPEND_HOST, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.10() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_100E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_100Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_100E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_100Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !441 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.216, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.217) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_DEBUG_ON_ERRORS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.11() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_101E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_101Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_101E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_101Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !442 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.218, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PRINT_UNDISPOSED, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.12() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_102E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_102Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_102E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_102Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !443 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.221, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SIMTIME_SCALE, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.13() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_103E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_103Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_103E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_103Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !444 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.224, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 6, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.225) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_NED_PATH, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.14() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_105E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_105Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_105E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_105Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !445 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.226, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.227) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_NETWORK, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.15() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_106E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_106Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_106E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_106Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !446 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.228, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.229) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_WARNINGS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.16() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_107E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_107Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_107E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_107Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !447 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.230, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef nonnull @.str.232) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SIM_TIME_LIMIT, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.17() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_108E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_108Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_108E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_108Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !448 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.233, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 2, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef nonnull @.str.234) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_CPU_TIME_LIMIT, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.18() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_109E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_109Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_109E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_109Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !449 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.235, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.236) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_FINGERPRINT, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.19() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_110E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_110Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_110E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_110Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !450 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.237, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.239) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_NUM_RNGS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.20() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_111E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_111Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_111E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_111Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !451 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.240, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.242) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RNG_CLASS, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.21() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_112E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_112Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_112E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_112Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !452 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.243, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.245) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_SEED_SET, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.22() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_113E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_113Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_113E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_113Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !453 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.246, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RESULT_DIR, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.23() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_114E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_114Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_114E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_114Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !454 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.249, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.250) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RECORD_EVENTLOG, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.24() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_115E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_115Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_115E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_115Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !455 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.251, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.252) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_PARTITION_ID, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.25() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_119__onstartup_obj_116E, ptr noundef nonnull @_ZN12_GLOBAL__N_120__onstartup_func_116Ev) #28
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_119__onstartup_obj_116E, ptr nonnull @__dso_handle) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_120__onstartup_func_116Ev() #4 personality ptr @__gxx_personality_v0 !prof !425 !PGOFuncName !456 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.253, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.254) #28
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_RNG_K, align 8, !tbaa !427
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #28
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  tail call void @_ZN14cRunnableEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #28
  store ptr getelementptr inbounds ({ [73 x ptr] }, ptr @_ZTV9EnvirBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !431
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 8
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 9
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 10
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %7 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 13
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  %9 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 16
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #28
  %10 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 17
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  %11 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 22
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #28
  %12 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  tail call void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #28
  %13 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 38
  tail call void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #28
  %14 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  store i32 0, ptr %15, align 8, !tbaa !457
  %16 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14cRunnableEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #28
  store ptr getelementptr inbounds ({ [60 x ptr] }, ptr @_ZTV14cRunnableEnvir, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !468 {
  store ptr null, ptr %0, align 8, !tbaa !469
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !470 {
  store i64 0, ptr %0, align 8, !tbaa !471
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !472 {
  %2 = load ptr, ptr %0, align 8, !tbaa !469
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #31
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9EnvirBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #5 align 2 !prof !425 {
  store ptr getelementptr inbounds ({ [73 x ptr] }, ptr @_ZTV9EnvirBase, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !431
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !473
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN7ArgListD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %3) #32
  tail call void @_ZdlPv(ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !474
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !431
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #32
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !475
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !431
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(56) %16) #32
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %24 = load ptr, ptr %23, align 8, !tbaa !476
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !431
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %24) #32
  br label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %32 = load ptr, ptr %31, align 8, !tbaa !477
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !431
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %32) #32
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %40 = load ptr, ptr %39, align 8, !tbaa !478
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !431
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(8) %40) #32
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %48 = load i32, ptr %47, align 8, !tbaa !457
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %52, !prof !479

50:                                               ; preds = %46
  %51 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  br label %56

52:                                               ; preds = %68, %46
  %53 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  %54 = load ptr, ptr %53, align 8, !tbaa !480
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %73

56:                                               ; preds = %50, %68
  %57 = phi i32 [ %48, %50 ], [ %69, %68 ]
  %58 = phi i64 [ 0, %50 ], [ %70, %68 ]
  %59 = load ptr, ptr %51, align 8, !tbaa !480
  %60 = getelementptr inbounds ptr, ptr %59, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !427
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %61, align 8, !tbaa !431
  %65 = getelementptr inbounds ptr, ptr %64, i64 4
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(16) %61) #32
  %67 = load i32, ptr %47, align 8, !tbaa !457
  br label %68

68:                                               ; preds = %56, %63
  %69 = phi i32 [ %57, %56 ], [ %67, %63 ]
  %70 = add nuw nsw i64 %58, 1
  %71 = sext i32 %69 to i64
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %56, label %52, !prof !481, !llvm.loop !482

73:                                               ; preds = %52
  tail call void @_ZdaPv(ptr noundef nonnull %54) #31
  br label %74

74:                                               ; preds = %73, %52
  %75 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %75) #32
  %76 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 17
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %76) #32
  %77 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 16
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %77) #32
  %78 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %78) #32
  %79 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 13
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %79) #32
  %80 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %80) #32
  %81 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 10
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %81) #32
  %82 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 9
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %82) #32
  %83 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 8
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %83) #32
  %84 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %84) #32
  tail call void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7ArgListD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  %3 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 4
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #32
  %4 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 3
  tail call void @_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #32
  %5 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN9EnvirBaseD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 {
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9EnvirBase3runEiPPcP14cConfiguration(ptr noundef nonnull align 8 dereferenceable(600) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %5 = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30
  invoke void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %5) #28
          to label %6 unwind label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !473
  tail call void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168) %5, i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str) #28
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !474
  br label %17

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %5) #31
  br label %48

13:                                               ; preds = %6
  %14 = tail call ptr @__dynamic_cast(ptr nonnull %3, ptr nonnull @_ZTI14cConfiguration, ptr nonnull @_ZTI16cConfigurationEx, i64 0) #29
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !474
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %27, !prof !484

17:                                               ; preds = %9, %13
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %19 = load ptr, ptr %3, align 8, !tbaa !431
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
          to label %23 unwind label %25

23:                                               ; preds = %17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.26, ptr noundef %22) #28
          to label %24 unwind label %25

24:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

25:                                               ; preds = %23, %17
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #29
  br label %48

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !431
  %29 = getelementptr inbounds ptr, ptr %28, i64 58
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  br i1 %31, label %32, label %45, !prof !485

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !431
  %34 = getelementptr inbounds ptr, ptr %33, i64 59
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  br i1 %36, label %37, label %41, !prof !485

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8, !tbaa !431
  %39 = getelementptr inbounds ptr, ptr %38, i64 60
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  br label %41

41:                                               ; preds = %37, %32
  %42 = load ptr, ptr %0, align 8, !tbaa !431
  %43 = getelementptr inbounds ptr, ptr %42, i64 61
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  br label %45

45:                                               ; preds = %41, %27
  %46 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !486
  ret i32 %47

48:                                               ; preds = %25, %11
  %49 = phi { ptr, i32 } [ %26, %25 ], [ %12, %11 ]
  resume { ptr, i32 } %49
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase18simulationRequiredEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::vector", align 8
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !473
  %7 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %6, i8 noundef signext 104) #28
  %8 = load ptr, ptr %5, align 8, !tbaa !473
  br i1 %7, label %9, label %14, !prof !487

9:                                                ; preds = %1
  %10 = tail call noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %8, i8 noundef signext 104, i32 noundef 0) #28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @_ZN9EnvirBase9printHelpEv(ptr nonnull align 8 poison) #28
  br label %136

13:                                               ; preds = %9
  tail call void @_ZN9EnvirBase17dumpComponentListEPKc(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull %10) #28
  br label %136

14:                                               ; preds = %1
  %15 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %8, i8 noundef signext 118) #28
  br i1 %15, label %16, label %36, !prof !487

16:                                               ; preds = %14
  %17 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %18 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %17, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  %19 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %20 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA32_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %19, ptr noundef nonnull align 1 dereferenceable(32) @.str.28) #28
  %21 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %20, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  %22 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %23 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA11_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %22, ptr noundef nonnull align 1 dereferenceable(11) @.str.29) #28
  %24 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %23, ptr noundef nonnull align 8 dereferenceable(8) @_ZL12compilerInfo) #28
  %25 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %24, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  %26 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %27 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA10_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %26, ptr noundef nonnull align 1 dereferenceable(10) @.str.30) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #29
  %28 = tail call noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTI7SimTime) #28
  call void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.258, i64 noundef 64, ptr noundef %28, ptr noundef nonnull @.str.31) #28
  %29 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %27, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
          to label %30 unwind label %34

30:                                               ; preds = %16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  %31 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %32 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %31, ptr noundef nonnull align 8 dereferenceable(8) @_ZL12buildOptions) #28
  %33 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %32, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  br label %136

34:                                               ; preds = %16
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %138

36:                                               ; preds = %14
  %37 = load ptr, ptr %0, align 8, !tbaa !431
  %38 = getelementptr inbounds ptr, ptr %37, i64 32
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %41 = load ptr, ptr %5, align 8, !tbaa !473
  %42 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %41, i8 noundef signext 97) #28
  br i1 %42, label %43, label %80, !prof !487

43:                                               ; preds = %36
  %44 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %45 = load ptr, ptr %44, align 8, !tbaa !431
  %46 = getelementptr inbounds ptr, ptr %45, i64 36
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef i32 (ptr, ptr, ...) %47(ptr noundef nonnull align 8 dereferenceable(288) %44, ptr noundef nonnull @.str.27) #28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
  %49 = load ptr, ptr %40, align 8, !tbaa !431
  %50 = getelementptr inbounds ptr, ptr %49, i64 43
  %51 = load ptr, ptr %50, align 8
  call void %51(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %40) #28
  %52 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  %53 = trunc i64 %52 to i32
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %72, %43
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  br label %136

56:                                               ; preds = %43, %72
  %57 = phi i64 [ %73, %72 ], [ 0, %43 ]
  %58 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %59 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %57) #32
  %60 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %59) #32
  %61 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %57) #32
  %62 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %61) #32
  %63 = load ptr, ptr %40, align 8, !tbaa !431
  %64 = getelementptr inbounds ptr, ptr %63, i64 47
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef i32 %65(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %62) #28
          to label %67 unwind label %78

67:                                               ; preds = %56
  %68 = load ptr, ptr %58, align 8, !tbaa !431
  %69 = getelementptr inbounds ptr, ptr %68, i64 36
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef i32 (ptr, ptr, ...) %70(ptr noundef nonnull align 8 dereferenceable(288) %58, ptr noundef nonnull @.str.32, ptr noundef %60, i32 noundef %66) #28
          to label %72 unwind label %78

72:                                               ; preds = %67
  %73 = add nuw nsw i64 %57, 1
  %74 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  %75 = shl i64 %74, 32
  %76 = ashr exact i64 %75, 32
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %56, label %55, !llvm.loop !488

78:                                               ; preds = %67, %56
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  br label %138

80:                                               ; preds = %36
  %81 = load ptr, ptr %5, align 8, !tbaa !473
  %82 = tail call noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %81, i8 noundef signext 120, i32 noundef 0) #28
  %83 = icmp eq ptr %82, null
  br i1 %83, label %136, label %84, !prof !485

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 8, !tbaa !473
  %86 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %85, i8 noundef signext 103) #28
  %87 = load ptr, ptr %5, align 8, !tbaa !473
  %88 = tail call noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %87, i8 noundef signext 71) #28
  %89 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %90 = load ptr, ptr %89, align 8, !tbaa !431
  %91 = getelementptr inbounds ptr, ptr %90, i64 36
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef i32 (ptr, ptr, ...) %92(ptr noundef nonnull align 8 dereferenceable(288) %89, ptr noundef nonnull @.str.27) #28
  %94 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %95 = load ptr, ptr %94, align 8, !tbaa !431
  %96 = getelementptr inbounds ptr, ptr %95, i64 36
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef i32 (ptr, ptr, ...) %97(ptr noundef nonnull align 8 dereferenceable(288) %94, ptr noundef nonnull @.str.33, ptr noundef nonnull %82) #28
  %99 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %100 = load ptr, ptr %40, align 8, !tbaa !431
  %101 = getelementptr inbounds ptr, ptr %100, i64 47
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef i32 %102(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %82) #28
  %104 = load ptr, ptr %99, align 8, !tbaa !431
  %105 = getelementptr inbounds ptr, ptr %104, i64 36
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef i32 (ptr, ptr, ...) %106(ptr noundef nonnull align 8 dereferenceable(288) %99, ptr noundef nonnull @.str.34, i32 noundef %103) #28
  %108 = or i1 %86, %88
  br i1 %108, label %109, label %136

109:                                              ; preds = %84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
  %110 = load ptr, ptr %40, align 8, !tbaa !431
  %111 = getelementptr inbounds ptr, ptr %110, i64 48
  %112 = load ptr, ptr %111, align 8
  call void %112(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %82, i1 noundef zeroext %88) #28
  %113 = select i1 %88, ptr @.str.35, ptr @.str.36
  %114 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  %115 = trunc i64 %114 to i32
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %128, %109
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  br label %136

118:                                              ; preds = %109, %128
  %119 = phi i64 [ %129, %128 ], [ 0, %109 ]
  %120 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %121 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %119) #32
  %122 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %121) #32
  %123 = load ptr, ptr %120, align 8, !tbaa !431
  %124 = getelementptr inbounds ptr, ptr %123, i64 36
  %125 = load ptr, ptr %124, align 8
  %126 = trunc i64 %119 to i32
  %127 = invoke noundef i32 (ptr, ptr, ...) %125(ptr noundef nonnull align 8 dereferenceable(288) %120, ptr noundef nonnull %113, i32 noundef %126, ptr noundef %122) #28
          to label %128 unwind label %134

128:                                              ; preds = %118
  %129 = add nuw nsw i64 %119, 1
  %130 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  %131 = shl i64 %130, 32
  %132 = ashr exact i64 %131, 32
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %118, label %117, !llvm.loop !489

134:                                              ; preds = %118
  %135 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  br label %138

136:                                              ; preds = %55, %80, %117, %84, %12, %13, %30
  %137 = phi i1 [ false, %30 ], [ false, %13 ], [ false, %12 ], [ false, %55 ], [ true, %80 ], [ false, %117 ], [ false, %84 ]
  ret i1 %137

138:                                              ; preds = %78, %134, %34
  %139 = phi { ptr, i32 } [ %35, %34 ], [ %79, %78 ], [ %135, %134 ]
  resume { ptr, i32 } %139
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase9printHelpEv(ptr nocapture nonnull readnone align 8 %0) local_unnamed_addr #4 align 2 !prof !490 {
  %2 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %3 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %2, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  %4 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %5 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA23_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 1 dereferenceable(23) @.str.49) #28
  %6 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %7 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA29_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef nonnull align 1 dereferenceable(29) @.str.50) #28
  %8 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %9 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA78_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 1 dereferenceable(78) @.str.51) #28
  %10 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %11 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA51_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef nonnull align 1 dereferenceable(51) @.str.52) #28
  %12 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %13 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA73_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %12, ptr noundef nonnull align 1 dereferenceable(73) @.str.53) #28
  %14 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %15 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA73_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %14, ptr noundef nonnull align 1 dereferenceable(73) @.str.54) #28
  %16 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %17 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA73_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %16, ptr noundef nonnull align 1 dereferenceable(73) @.str.55) #28
  %18 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %19 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA74_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %18, ptr noundef nonnull align 1 dereferenceable(74) @.str.56) #28
  %20 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %21 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA75_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %20, ptr noundef nonnull align 1 dereferenceable(75) @.str.57) #28
  %22 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %23 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA77_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %22, ptr noundef nonnull align 1 dereferenceable(77) @.str.58) #28
  %24 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %25 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA78_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %24, ptr noundef nonnull align 1 dereferenceable(78) @.str.59) #28
  %26 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %27 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA76_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %26, ptr noundef nonnull align 1 dereferenceable(76) @.str.60) #28
  %28 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %29 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA75_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %28, ptr noundef nonnull align 1 dereferenceable(75) @.str.61) #28
  %30 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %31 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA33_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %30, ptr noundef nonnull align 1 dereferenceable(33) @.str.62) #28
  %32 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %33 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA33_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %32, ptr noundef nonnull align 1 dereferenceable(33) @.str.63) #28
  %34 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %35 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA74_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %34, ptr noundef nonnull align 1 dereferenceable(74) @.str.64) #28
  %36 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %37 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA78_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %36, ptr noundef nonnull align 1 dereferenceable(78) @.str.65) #28
  %38 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %39 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA40_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %38, ptr noundef nonnull align 1 dereferenceable(40) @.str.66) #28
  %40 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %41 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA46_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %40, ptr noundef nonnull align 1 dereferenceable(46) @.str.67) #28
  %42 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %43 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA46_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %42, ptr noundef nonnull align 1 dereferenceable(46) @.str.68) #28
  %44 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %45 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA46_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %44, ptr noundef nonnull align 1 dereferenceable(46) @.str.69) #28
  %46 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %47 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA47_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %46, ptr noundef nonnull align 1 dereferenceable(47) @.str.70) #28
  %48 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %49 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA43_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %48, ptr noundef nonnull align 1 dereferenceable(43) @.str.71) #28
  %50 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %51 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA46_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %50, ptr noundef nonnull align 1 dereferenceable(46) @.str.72) #28
  %52 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %53 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA67_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %52, ptr noundef nonnull align 1 dereferenceable(67) @.str.73) #28
  %54 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %55 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA73_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %54, ptr noundef nonnull align 1 dereferenceable(73) @.str.74) #28
  %56 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %57 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA43_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %56, ptr noundef nonnull align 1 dereferenceable(43) @.str.75) #28
  %58 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %59 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA71_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %58, ptr noundef nonnull align 1 dereferenceable(71) @.str.76) #28
  %60 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %61 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA79_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %60, ptr noundef nonnull align 1 dereferenceable(79) @.str.77) #28
  %62 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %63 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA73_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %62, ptr noundef nonnull align 1 dereferenceable(73) @.str.78) #28
  %64 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %65 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA65_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %64, ptr noundef nonnull align 1 dereferenceable(65) @.str.79) #28
  %66 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %67 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA54_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %66, ptr noundef nonnull align 1 dereferenceable(54) @.str.80) #28
  %68 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %69 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA55_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %68, ptr noundef nonnull align 1 dereferenceable(55) @.str.81) #28
  %70 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %71 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA46_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %70, ptr noundef nonnull align 1 dereferenceable(46) @.str.82) #28
  %72 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %73 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA46_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %72, ptr noundef nonnull align 1 dereferenceable(46) @.str.83) #28
  %74 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %75 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %74, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  %76 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #28
  %77 = load ptr, ptr %76, align 8, !tbaa !431
  %78 = getelementptr inbounds ptr, ptr %77, i64 27
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(144) %76) #28
  %80 = load ptr, ptr %76, align 8, !tbaa !431
  %81 = getelementptr inbounds ptr, ptr %80, i64 23
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef i32 %82(ptr noundef nonnull align 8 dereferenceable(144) %76) #28
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %106, %1
  ret void

86:                                               ; preds = %1, %106
  %87 = phi i32 [ %107, %106 ], [ 0, %1 ]
  %88 = load ptr, ptr %76, align 8, !tbaa !431
  %89 = getelementptr inbounds ptr, ptr %88, i64 24
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(144) %76, i32 noundef %87) #28
  %92 = tail call noundef ptr @_Z14check_and_castIP21cOmnetAppRegistrationET_P7cObject(ptr noundef %91) #28
  %93 = tail call noundef ptr @_ZN21cOmnetAppRegistration9createOneEv(ptr noundef nonnull align 8 dereferenceable(84) %92) #28
  %94 = icmp eq ptr %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %86
  %96 = tail call ptr @__dynamic_cast(ptr nonnull %93, ptr nonnull @_ZTI6cEnvir, ptr nonnull @_ZTI9EnvirBase, i64 0) #29
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %93, align 8, !tbaa !431
  %100 = getelementptr inbounds ptr, ptr %99, i64 64
  %101 = load ptr, ptr %100, align 8
  tail call void %101(ptr noundef nonnull align 8 dereferenceable(600) %93) #28
  br label %102

102:                                              ; preds = %98, %95
  %103 = load ptr, ptr %93, align 8, !tbaa !431
  %104 = getelementptr inbounds ptr, ptr %103, i64 4
  %105 = load ptr, ptr %104, align 8
  tail call void %105(ptr noundef nonnull align 8 dereferenceable(288) %93) #32
  br label %106

106:                                              ; preds = %86, %102
  %107 = add nuw nsw i32 %87, 1
  %108 = load ptr, ptr %76, align 8, !tbaa !431
  %109 = getelementptr inbounds ptr, ptr %108, i64 23
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef i32 %110(ptr noundef nonnull align 8 dereferenceable(144) %76) #28
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %86, label %85, !llvm.loop !491
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase17dumpComponentListEPKc(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !490 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::vector.33", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::allocator", align 1
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::allocator", align 1
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_string", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::__cxx11::basic_string", align 8
  %30 = alloca %"class.std::__cxx11::basic_string", align 8
  %31 = alloca %"class.std::vector.33", align 8
  %32 = alloca %class.opp_string, align 8
  %33 = alloca %"class.std::__cxx11::basic_string", align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca %"class.std::set", align 8
  %37 = alloca %"class.std::__cxx11::basic_string", align 8
  %38 = alloca %"class.std::allocator", align 1
  %39 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %40 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %41 = alloca %"class.std::__cxx11::basic_string", align 8
  %42 = alloca ptr, align 8
  %43 = alloca ptr, align 8
  %44 = alloca %"class.std::__cxx11::basic_string", align 8
  %45 = alloca %"class.std::vector.33", align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca ptr, align 8
  %49 = alloca double, align 8
  %50 = alloca ptr, align 8
  %51 = alloca %"class.std::__cxx11::basic_string", align 8
  %52 = alloca ptr, align 8
  %53 = alloca %"class.std::__cxx11::basic_string", align 8
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.84) #35
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %2
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.85) #35
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.86) #35
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %247

62:                                               ; preds = %59, %56, %2
  %63 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %64 = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA34_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %63, ptr noundef nonnull align 1 dereferenceable(34) @.str.87) #28
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.86) #35
  %66 = icmp eq i32 %65, 0
  %67 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %68 = load ptr, ptr %67, align 8, !tbaa !431
  %69 = getelementptr inbounds ptr, ptr %68, i64 27
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(144) %67) #28
  %71 = load ptr, ptr %67, align 8, !tbaa !431
  %72 = getelementptr inbounds ptr, ptr %71, i64 23
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef i32 %73(ptr noundef nonnull align 8 dereferenceable(144) %67) #28
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %175, %62
  %77 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %78 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %77, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  %79 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %80 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA57_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %79, ptr noundef nonnull align 1 dereferenceable(57) @.str.103) #28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #29
  %81 = load ptr, ptr %0, align 8, !tbaa !431
  %82 = getelementptr inbounds ptr, ptr %81, i64 32
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %85 = load ptr, ptr %84, align 8, !tbaa !431
  %86 = getelementptr inbounds ptr, ptr %85, i64 53
  %87 = load ptr, ptr %86, align 8
  call void %87(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %84) #28
  %88 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  %89 = trunc i64 %88 to i32
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %185, label %182

91:                                               ; preds = %62, %175
  %92 = phi i32 [ %176, %175 ], [ 0, %62 ]
  %93 = load ptr, ptr %67, align 8, !tbaa !431
  %94 = getelementptr inbounds ptr, ptr %93, i64 24
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(144) %67, i32 noundef %92) #28
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %91
  %99 = call ptr @__dynamic_cast(ptr nonnull %96, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cConfigOption, i64 0) #29
  br label %100

100:                                              ; preds = %91, %98
  %101 = phi ptr [ %99, %98 ], [ null, %91 ]
  br i1 %66, label %105, label %102

102:                                              ; preds = %100
  %103 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %104 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %103, ptr noundef nonnull align 1 dereferenceable(3) @.str.88) #28
  br label %105

105:                                              ; preds = %102, %100
  %106 = call noundef zeroext i1 @_ZNK13cConfigOption11isPerObjectEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %109 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA20_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %108, ptr noundef nonnull align 1 dereferenceable(20) @.str.89) #28
  br label %110

110:                                              ; preds = %107, %105
  %111 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %112 = load ptr, ptr %101, align 8, !tbaa !431
  %113 = getelementptr inbounds ptr, ptr %112, i64 6
  %114 = load ptr, ptr %113, align 8
  %115 = call noundef ptr %114(ptr noundef nonnull align 8 dereferenceable(20) %101) #28
  store ptr %115, ptr %3, align 8, !tbaa !427
  %116 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %111, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %117 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %116, ptr noundef nonnull align 1 dereferenceable(2) @.str.90) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  %118 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %119 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %118, ptr noundef nonnull align 1 dereferenceable(2) @.str.91) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %120 = call noundef i32 @_ZNK13cConfigOption7getTypeEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  %121 = call noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %120) #28
  store ptr %121, ptr %4, align 8, !tbaa !427
  %122 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %119, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %123 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %122, ptr noundef nonnull align 1 dereferenceable(2) @.str.92) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  %124 = call noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  %125 = icmp eq ptr %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %110
  %127 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %128 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA9_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %127, ptr noundef nonnull align 1 dereferenceable(9) @.str.93) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %129 = call noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  store ptr %129, ptr %5, align 8, !tbaa !427
  %130 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %128, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %131 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %130, ptr noundef nonnull align 1 dereferenceable(2) @.str.94) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  br label %132

132:                                              ; preds = %126, %110
  %133 = call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %137 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA11_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %136, ptr noundef nonnull align 1 dereferenceable(11) @.str.95) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %138 = call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  store ptr %138, ptr %6, align 8, !tbaa !427
  %139 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %137, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %140 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA1_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %139, ptr noundef nonnull align 1 dereferenceable(1) @.str.96) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br label %141

141:                                              ; preds = %135, %132
  %142 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %143 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %142, ptr noundef nonnull align 1 dereferenceable(3) @.str.97) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  %144 = call noundef zeroext i1 @_ZNK13cConfigOption8isGlobalEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = call noundef zeroext i1 @_ZNK13cConfigOption11isPerObjectEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  %147 = select i1 %146, ptr @.str.99, ptr @.str.100
  br label %148

148:                                              ; preds = %141, %145
  %149 = phi ptr [ %147, %145 ], [ @.str.98, %141 ]
  store ptr %149, ptr %7, align 8, !tbaa !427
  %150 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %143, ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  %151 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA9_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %150, ptr noundef nonnull align 1 dereferenceable(9) @.str.101) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  %152 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %153 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %152, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  br i1 %66, label %154, label %175

154:                                              ; preds = %148
  %155 = call noundef ptr @_ZNK13cConfigOption14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  %156 = call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %155) #28
  br i1 %156, label %172, label %157

157:                                              ; preds = %154
  %158 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #29
  %159 = call noundef ptr @_ZNK13cConfigOption14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(144) %101) #28
  call void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %159, i32 noundef 75) #28
  %160 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  invoke void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %160, ptr noundef nonnull @.str.102) #28
          to label %161 unwind label %166

161:                                              ; preds = %157
  %162 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %158, ptr noundef nonnull align 8 dereferenceable(32) %8) #28
          to label %163 unwind label %168

163:                                              ; preds = %161
  %164 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %162, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %165 unwind label %168

165:                                              ; preds = %163
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #29
  br label %172

166:                                              ; preds = %157
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %170

168:                                              ; preds = %163, %161
  %169 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #32
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi { ptr, i32 } [ %169, %168 ], [ %167, %166 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #29
  br label %1004

172:                                              ; preds = %154, %165
  %173 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %174 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %173, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  br label %175

175:                                              ; preds = %148, %172
  %176 = add nuw nsw i32 %92, 1
  %177 = load ptr, ptr %67, align 8, !tbaa !431
  %178 = getelementptr inbounds ptr, ptr %177, i64 23
  %179 = load ptr, ptr %178, align 8
  %180 = call noundef i32 %179(ptr noundef nonnull align 8 dereferenceable(144) %67) #28
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %91, label %76, !llvm.loop !492

182:                                              ; preds = %236, %76
  %183 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %184 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %183, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %242 unwind label %243

185:                                              ; preds = %76, %236
  %186 = phi i64 [ %237, %236 ], [ 0, %76 ]
  br i1 %66, label %192, label %187

187:                                              ; preds = %185
  %188 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %189 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %188, ptr noundef nonnull align 1 dereferenceable(3) @.str.88) #28
          to label %192 unwind label %190

190:                                              ; preds = %198, %195, %192, %187
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %245

192:                                              ; preds = %187, %185
  %193 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %194 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %193, ptr noundef nonnull align 1 dereferenceable(3) @.str.104) #28
          to label %195 unwind label %190

195:                                              ; preds = %192
  %196 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %186) #32
  %197 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %194, ptr noundef nonnull align 8 dereferenceable(8) %196) #28
          to label %198 unwind label %190

198:                                              ; preds = %195
  %199 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %197, ptr noundef nonnull align 1 dereferenceable(3) @.str.105) #28
          to label %200 unwind label %190

200:                                              ; preds = %198
  %201 = load ptr, ptr %0, align 8, !tbaa !431
  %202 = getelementptr inbounds ptr, ptr %201, i64 32
  %203 = load ptr, ptr %202, align 8
  %204 = invoke noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
          to label %205 unwind label %224

205:                                              ; preds = %200
  %206 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %186) #32
  %207 = load ptr, ptr %206, align 8, !tbaa !427
  %208 = load ptr, ptr %204, align 8, !tbaa !431
  %209 = getelementptr inbounds ptr, ptr %208, i64 54
  %210 = load ptr, ptr %209, align 8
  %211 = invoke noundef ptr %210(ptr noundef nonnull align 8 dereferenceable(8) %204, ptr noundef %207) #28
          to label %212 unwind label %224

212:                                              ; preds = %205
  br i1 %66, label %213, label %236

213:                                              ; preds = %212
  %214 = call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %211) #28
  br i1 %214, label %236, label %215

215:                                              ; preds = %213
  %216 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #29
  invoke void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %211, i32 noundef 75) #28
          to label %217 unwind label %226

217:                                              ; preds = %215
  %218 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #32
  invoke void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %218, ptr noundef nonnull @.str.102) #28
          to label %219 unwind label %228

219:                                              ; preds = %217
  %220 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %216, ptr noundef nonnull align 8 dereferenceable(32) %11) #28
          to label %221 unwind label %230

221:                                              ; preds = %219
  %222 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %220, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %223 unwind label %230

223:                                              ; preds = %221
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #29
  br label %236

224:                                              ; preds = %205, %200
  %225 = landingpad { ptr, i32 }
          cleanup
  br label %245

226:                                              ; preds = %215
  %227 = landingpad { ptr, i32 }
          cleanup
  br label %234

228:                                              ; preds = %217
  %229 = landingpad { ptr, i32 }
          cleanup
  br label %232

230:                                              ; preds = %221, %219
  %231 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #32
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi { ptr, i32 } [ %231, %230 ], [ %229, %228 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #32
  br label %234

234:                                              ; preds = %232, %226
  %235 = phi { ptr, i32 } [ %233, %232 ], [ %227, %226 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #29
  br label %245

236:                                              ; preds = %223, %213, %212
  %237 = add nuw nsw i64 %186, 1
  %238 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  %239 = shl i64 %238, 32
  %240 = ashr exact i64 %239, 32
  %241 = icmp slt i64 %237, %240
  br i1 %241, label %185, label %182, !llvm.loop !493

242:                                              ; preds = %182
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #29
  br label %247

243:                                              ; preds = %182
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %245

245:                                              ; preds = %190, %234, %224, %243
  %246 = phi { ptr, i32 } [ %244, %243 ], [ %191, %190 ], [ %235, %234 ], [ %225, %224 ]
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #29
  br label %1004

247:                                              ; preds = %242, %59
  %248 = phi i1 [ true, %242 ], [ false, %59 ]
  %249 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.106) #35
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %548

251:                                              ; preds = %247
  %252 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %253 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA49_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %252, ptr noundef nonnull align 1 dereferenceable(49) @.str.107) #28
  %254 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #28
  %255 = load ptr, ptr %254, align 8, !tbaa !431
  %256 = getelementptr inbounds ptr, ptr %255, i64 27
  %257 = load ptr, ptr %256, align 8
  call void %257(ptr noundef nonnull align 8 dereferenceable(144) %254) #28
  %258 = load ptr, ptr %254, align 8, !tbaa !431
  %259 = getelementptr inbounds ptr, ptr %258, i64 23
  %260 = load ptr, ptr %259, align 8
  %261 = call noundef i32 %260(ptr noundef nonnull align 8 dereferenceable(144) %254) #28
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %276, label %263

263:                                              ; preds = %438, %251
  %264 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %265 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %264, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #29
  %266 = load ptr, ptr %0, align 8, !tbaa !431
  %267 = getelementptr inbounds ptr, ptr %266, i64 32
  %268 = load ptr, ptr %267, align 8
  %269 = call noundef ptr %268(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %270 = load ptr, ptr %269, align 8, !tbaa !431
  %271 = getelementptr inbounds ptr, ptr %270, i64 53
  %272 = load ptr, ptr %271, align 8
  call void %272(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %31, ptr noundef nonnull align 8 dereferenceable(8) %269) #28
  %273 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %31) #32
  %274 = trunc i64 %273 to i32
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %482, label %479

276:                                              ; preds = %251, %438
  %277 = phi i32 [ %439, %438 ], [ 0, %251 ]
  %278 = load ptr, ptr %254, align 8, !tbaa !431
  %279 = getelementptr inbounds ptr, ptr %278, i64 24
  %280 = load ptr, ptr %279, align 8
  %281 = call noundef ptr %280(ptr noundef nonnull align 8 dereferenceable(144) %254, i32 noundef %277) #28
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %276
  %284 = call ptr @__dynamic_cast(ptr nonnull %281, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cConfigOption, i64 0) #29
  br label %285

285:                                              ; preds = %276, %283
  %286 = phi ptr [ %284, %283 ], [ null, %276 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #29
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.108, ptr noundef nonnull align 1 dereferenceable(1) %14) #28
          to label %287 unwind label %297

287:                                              ; preds = %285
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #29
  %288 = load ptr, ptr %286, align 8, !tbaa !431
  %289 = getelementptr inbounds ptr, ptr %288, i64 6
  %290 = load ptr, ptr %289, align 8
  %291 = invoke noundef ptr %290(ptr noundef nonnull align 8 dereferenceable(20) %286) #28
          to label %292 unwind label %301

292:                                              ; preds = %287
  %293 = load i8, ptr %291, align 1, !tbaa !494
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %316, %292
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #29
  %296 = call noundef zeroext i1 @_ZNK13cConfigOption8isGlobalEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  br i1 %296, label %323, label %320

297:                                              ; preds = %285
  %298 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #29
  br label %477

299:                                              ; preds = %313
  %300 = landingpad { ptr, i32 }
          cleanup
  br label %475

301:                                              ; preds = %287
  %302 = landingpad { ptr, i32 }
          cleanup
  br label %475

303:                                              ; preds = %292, %316
  %304 = phi i8 [ %318, %316 ], [ %293, %292 ]
  %305 = phi ptr [ %317, %316 ], [ %291, %292 ]
  %306 = call noundef zeroext i1 @_Z11opp_isalphah(i8 noundef zeroext %304) #28
  %307 = load i8, ptr %305, align 1, !tbaa !494
  br i1 %306, label %308, label %310

308:                                              ; preds = %303
  %309 = call noundef signext i8 @_Z11opp_toupperh(i8 noundef zeroext %307) #28
  br label %313

310:                                              ; preds = %303
  switch i8 %307, label %311 [
    i8 45, label %313
    i8 37, label %312
  ]

311:                                              ; preds = %310
  br label %313

312:                                              ; preds = %310
  br label %313

313:                                              ; preds = %310, %312, %311, %308
  %314 = phi i8 [ %309, %308 ], [ 95, %310 ], [ %307, %311 ], [ 110, %312 ]
  %315 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 1, i8 noundef signext %314) #28
          to label %316 unwind label %299

316:                                              ; preds = %313
  %317 = getelementptr inbounds i8, ptr %305, i64 1
  %318 = load i8, ptr %317, align 1, !tbaa !494
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %295, label %303, !llvm.loop !495

320:                                              ; preds = %295
  %321 = call noundef zeroext i1 @_ZNK13cConfigOption11isPerObjectEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  %322 = select i1 %321, ptr @.str.111, ptr @.str.110
  br label %323

323:                                              ; preds = %295, %320
  %324 = phi ptr [ %322, %320 ], [ @.str.109, %295 ]
  store ptr %324, ptr %15, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #29
  %325 = call noundef i32 @_ZNK13cConfigOption7getTypeEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  switch i32 %325, label %336 [
    i32 0, label %328
    i32 1, label %329
    i32 2, label %330
    i32 3, label %331
    i32 4, label %332
    i32 5, label %333
    i32 6, label %334
    i32 7, label %335
  ]

326:                                              ; preds = %408, %393, %391, %377, %371, %369, %353, %343, %341, %339, %336
  %327 = landingpad { ptr, i32 }
          cleanup
  br label %473

328:                                              ; preds = %323
  store ptr @.str.112, ptr %16, align 8, !tbaa !427
  br label %336

329:                                              ; preds = %323
  store ptr @.str.113, ptr %16, align 8, !tbaa !427
  br label %336

330:                                              ; preds = %323
  store ptr @.str.114, ptr %16, align 8, !tbaa !427
  br label %336

331:                                              ; preds = %323
  store ptr @.str.115, ptr %16, align 8, !tbaa !427
  br label %336

332:                                              ; preds = %323
  store ptr @.str.116, ptr %16, align 8, !tbaa !427
  br label %336

333:                                              ; preds = %323
  store ptr @.str.117, ptr %16, align 8, !tbaa !427
  br label %336

334:                                              ; preds = %323
  store ptr @.str.118, ptr %16, align 8, !tbaa !427
  br label %336

335:                                              ; preds = %323
  store ptr @.str.119, ptr %16, align 8, !tbaa !427
  br label %336

336:                                              ; preds = %323, %335, %334, %333, %332, %331, %330, %329, %328
  %337 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %338 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA38_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %337, ptr noundef nonnull align 1 dereferenceable(38) @.str.120) #28
          to label %339 unwind label %326

339:                                              ; preds = %336
  %340 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %338, ptr noundef nonnull align 8 dereferenceable(32) %13) #28
          to label %341 unwind label %326

341:                                              ; preds = %339
  %342 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %340, ptr noundef nonnull align 1 dereferenceable(4) @.str.121) #28
          to label %343 unwind label %326

343:                                              ; preds = %341
  %344 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %345 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %344, ptr noundef nonnull align 8 dereferenceable(8) %15) #28
          to label %346 unwind label %326

346:                                              ; preds = %343
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #29
  %347 = call noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  %348 = icmp eq ptr %347, null
  %349 = select i1 %348, ptr @.str.96, ptr @.str.122
  store ptr %349, ptr %17, align 8, !tbaa !427
  %350 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %345, ptr noundef nonnull align 8 dereferenceable(8) %17) #28
          to label %351 unwind label %373

351:                                              ; preds = %346
  %352 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %350, ptr noundef nonnull align 1 dereferenceable(3) @.str.123) #28
          to label %353 unwind label %373

353:                                              ; preds = %351
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #29
  %354 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %355 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA10_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %354, ptr noundef nonnull align 1 dereferenceable(10) @.str.124) #28
          to label %356 unwind label %326

356:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #29
  %357 = load ptr, ptr %286, align 8, !tbaa !431
  %358 = getelementptr inbounds ptr, ptr %357, i64 6
  %359 = load ptr, ptr %358, align 8
  %360 = invoke noundef ptr %359(ptr noundef nonnull align 8 dereferenceable(20) %286) #28
          to label %361 unwind label %375

361:                                              ; preds = %356
  store ptr %360, ptr %18, align 8, !tbaa !427
  %362 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %355, ptr noundef nonnull align 8 dereferenceable(8) %18) #28
          to label %363 unwind label %375

363:                                              ; preds = %361
  %364 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %362, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #28
          to label %365 unwind label %375

365:                                              ; preds = %363
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #29
  %366 = call noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  %367 = icmp eq ptr %366, null
  %368 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  br i1 %367, label %369, label %377

369:                                              ; preds = %365
  %370 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %368, ptr noundef nonnull align 8 dereferenceable(8) %16) #28
          to label %371 unwind label %326

371:                                              ; preds = %369
  %372 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %370, ptr noundef nonnull align 1 dereferenceable(3) @.str.126) #28
          to label %387 unwind label %326

373:                                              ; preds = %351, %346
  %374 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #29
  br label %473

375:                                              ; preds = %363, %361, %356
  %376 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #29
  br label %473

377:                                              ; preds = %365
  %378 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %368, ptr noundef nonnull align 1 dereferenceable(2) @.str.94) #28
          to label %379 unwind label %326

379:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #29
  %380 = call noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  store ptr %380, ptr %19, align 8, !tbaa !427
  %381 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %378, ptr noundef nonnull align 8 dereferenceable(8) %19) #28
          to label %382 unwind label %385

382:                                              ; preds = %379
  %383 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %381, ptr noundef nonnull align 1 dereferenceable(4) @.str.125) #28
          to label %384 unwind label %385

384:                                              ; preds = %382
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #29
  br label %387

385:                                              ; preds = %382, %379
  %386 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #29
  br label %473

387:                                              ; preds = %371, %384
  %388 = call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  %389 = icmp eq ptr %388, null
  %390 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  br i1 %389, label %391, label %393

391:                                              ; preds = %387
  %392 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA5_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %390, ptr noundef nonnull align 1 dereferenceable(5) @.str.127) #28
          to label %408 unwind label %326

393:                                              ; preds = %387
  %394 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %390, ptr noundef nonnull align 1 dereferenceable(2) @.str.94) #28
          to label %395 unwind label %326

395:                                              ; preds = %393
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #29
  %396 = call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef %396, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.128, i1 noundef zeroext true) #28
          to label %397 unwind label %402

397:                                              ; preds = %395
  %398 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %394, ptr noundef nonnull align 8 dereferenceable(32) %20) #28
          to label %399 unwind label %404

399:                                              ; preds = %397
  %400 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %398, ptr noundef nonnull align 1 dereferenceable(2) @.str.94) #28
          to label %401 unwind label %404

401:                                              ; preds = %399
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #29
  br label %408

402:                                              ; preds = %395
  %403 = landingpad { ptr, i32 }
          cleanup
  br label %406

404:                                              ; preds = %399, %397
  %405 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #32
  br label %406

406:                                              ; preds = %404, %402
  %407 = phi { ptr, i32 } [ %405, %404 ], [ %403, %402 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #29
  br label %473

408:                                              ; preds = %391, %401
  %409 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %410 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %409, ptr noundef nonnull align 1 dereferenceable(3) @.str.129) #28
          to label %411 unwind label %326

411:                                              ; preds = %408
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #29
  %412 = call noundef ptr @_ZNK13cConfigOption14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(144) %286) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #29
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %412, ptr noundef nonnull align 1 dereferenceable(1) %22) #28
          to label %413 unwind label %445

413:                                              ; preds = %411
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %23) #29
  %414 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef %414, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.130, i1 noundef zeroext true) #28
          to label %415 unwind label %447

415:                                              ; preds = %413
  %416 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %23) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #29
  %417 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  invoke void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef %417, i32 noundef 75) #28
          to label %418 unwind label %449

418:                                              ; preds = %415
  %419 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %24) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %25) #29
  %420 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef %420, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.128, i1 noundef zeroext true) #28
          to label %421 unwind label %451

421:                                              ; preds = %418
  %422 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %25) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #29
  %423 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef %423, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.131, i1 noundef zeroext true) #28
          to label %424 unwind label %453

424:                                              ; preds = %421
  %425 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %26) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #29
  %426 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef %426, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i1 noundef zeroext true) #28
          to label %427 unwind label %455

427:                                              ; preds = %424
  %428 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %27) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %28) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #29
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull @.str.94, ptr noundef nonnull align 8 dereferenceable(32) %21) #28
          to label %429 unwind label %457

429:                                              ; preds = %427
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.94) #28
          to label %430 unwind label %459

430:                                              ; preds = %429
  %431 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %28) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %28) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #29
  %432 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %30) #29
  %433 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  invoke void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef %433, ptr noundef nonnull @.str.134) #28
          to label %434 unwind label %463

434:                                              ; preds = %430
  %435 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %432, ptr noundef nonnull align 8 dereferenceable(32) %30) #28
          to label %436 unwind label %465

436:                                              ; preds = %434
  %437 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %435, ptr noundef nonnull align 1 dereferenceable(4) @.str.135) #28
          to label %438 unwind label %465

438:                                              ; preds = %436
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #29
  %439 = add nuw nsw i32 %277, 1
  %440 = load ptr, ptr %254, align 8, !tbaa !431
  %441 = getelementptr inbounds ptr, ptr %440, i64 23
  %442 = load ptr, ptr %441, align 8
  %443 = call noundef i32 %442(ptr noundef nonnull align 8 dereferenceable(144) %254) #28
  %444 = icmp slt i32 %439, %443
  br i1 %444, label %276, label %263, !llvm.loop !496

445:                                              ; preds = %411
  %446 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #29
  br label %471

447:                                              ; preds = %413
  %448 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %23) #29
  br label %469

449:                                              ; preds = %415
  %450 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #29
  br label %469

451:                                              ; preds = %418
  %452 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #29
  br label %469

453:                                              ; preds = %421
  %454 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #29
  br label %469

455:                                              ; preds = %424
  %456 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #29
  br label %469

457:                                              ; preds = %427
  %458 = landingpad { ptr, i32 }
          cleanup
  br label %461

459:                                              ; preds = %429
  %460 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #32
  br label %461

461:                                              ; preds = %459, %457
  %462 = phi { ptr, i32 } [ %460, %459 ], [ %458, %457 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #29
  br label %469

463:                                              ; preds = %430
  %464 = landingpad { ptr, i32 }
          cleanup
  br label %467

465:                                              ; preds = %436, %434
  %466 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #32
  br label %467

467:                                              ; preds = %465, %463
  %468 = phi { ptr, i32 } [ %466, %465 ], [ %464, %463 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #29
  br label %469

469:                                              ; preds = %467, %461, %455, %453, %451, %449, %447
  %470 = phi { ptr, i32 } [ %468, %467 ], [ %462, %461 ], [ %456, %455 ], [ %454, %453 ], [ %452, %451 ], [ %450, %449 ], [ %448, %447 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #32
  br label %471

471:                                              ; preds = %469, %445
  %472 = phi { ptr, i32 } [ %470, %469 ], [ %446, %445 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #29
  br label %473

473:                                              ; preds = %471, %406, %385, %375, %373, %326
  %474 = phi { ptr, i32 } [ %472, %471 ], [ %327, %326 ], [ %407, %406 ], [ %386, %385 ], [ %376, %375 ], [ %374, %373 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #29
  br label %475

475:                                              ; preds = %299, %301, %473
  %476 = phi { ptr, i32 } [ %474, %473 ], [ %300, %299 ], [ %302, %301 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #32
  br label %477

477:                                              ; preds = %475, %297
  %478 = phi { ptr, i32 } [ %476, %475 ], [ %298, %297 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #29
  br label %1004

479:                                              ; preds = %521, %263
  %480 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %481 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %480, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %543 unwind label %544

482:                                              ; preds = %263, %521
  %483 = phi i64 [ %522, %521 ], [ 0, %263 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #29
  %484 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %483) #32
  %485 = load ptr, ptr %484, align 8, !tbaa !427
  invoke void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %485) #28
          to label %486 unwind label %527

486:                                              ; preds = %482
  %487 = call noundef ptr @_ZN10opp_string6bufferEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #28
  %488 = invoke noundef ptr @_Z10opp_struprPc(ptr noundef %487) #28
          to label %489 unwind label %529

489:                                              ; preds = %486
  %490 = load ptr, ptr %0, align 8, !tbaa !431
  %491 = getelementptr inbounds ptr, ptr %490, i64 32
  %492 = load ptr, ptr %491, align 8
  %493 = invoke noundef ptr %492(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
          to label %494 unwind label %531

494:                                              ; preds = %489
  %495 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %483) #32
  %496 = load ptr, ptr %495, align 8, !tbaa !427
  %497 = load ptr, ptr %493, align 8, !tbaa !431
  %498 = getelementptr inbounds ptr, ptr %497, i64 54
  %499 = load ptr, ptr %498, align 8
  %500 = invoke noundef ptr %499(ptr noundef nonnull align 8 dereferenceable(8) %493, ptr noundef %496) #28
          to label %501 unwind label %531

501:                                              ; preds = %494
  %502 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %503 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA39_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %502, ptr noundef nonnull align 1 dereferenceable(39) @.str.136) #28
          to label %504 unwind label %531

504:                                              ; preds = %501
  %505 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsI10opp_stringEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %503, ptr noundef nonnull align 8 dereferenceable(8) %32) #28
          to label %506 unwind label %531

506:                                              ; preds = %504
  %507 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA22_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %505, ptr noundef nonnull align 1 dereferenceable(22) @.str.137) #28
          to label %508 unwind label %531

508:                                              ; preds = %506
  %509 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %510 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %509, ptr noundef nonnull align 1 dereferenceable(2) @.str.94) #28
          to label %511 unwind label %531

511:                                              ; preds = %508
  %512 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %483) #32
  %513 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %510, ptr noundef nonnull align 8 dereferenceable(8) %512) #28
          to label %514 unwind label %531

514:                                              ; preds = %511
  %515 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA5_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %513, ptr noundef nonnull align 1 dereferenceable(5) @.str.138) #28
          to label %516 unwind label %531

516:                                              ; preds = %514
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #29
  invoke void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef %500, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.128, i1 noundef zeroext true) #28
          to label %517 unwind label %533

517:                                              ; preds = %516
  %518 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %515, ptr noundef nonnull align 8 dereferenceable(32) %33) #28
          to label %519 unwind label %535

519:                                              ; preds = %517
  %520 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA5_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %518, ptr noundef nonnull align 1 dereferenceable(5) @.str.139) #28
          to label %521 unwind label %535

521:                                              ; preds = %519
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #29
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #29
  %522 = add nuw nsw i64 %483, 1
  %523 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %31) #32
  %524 = shl i64 %523, 32
  %525 = ashr exact i64 %524, 32
  %526 = icmp slt i64 %522, %525
  br i1 %526, label %482, label %479, !llvm.loop !497

527:                                              ; preds = %482
  %528 = landingpad { ptr, i32 }
          cleanup
  br label %541

529:                                              ; preds = %486
  %530 = landingpad { ptr, i32 }
          cleanup
  br label %539

531:                                              ; preds = %514, %511, %508, %506, %504, %501, %494, %489
  %532 = landingpad { ptr, i32 }
          cleanup
  br label %539

533:                                              ; preds = %516
  %534 = landingpad { ptr, i32 }
          cleanup
  br label %537

535:                                              ; preds = %519, %517
  %536 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #32
  br label %537

537:                                              ; preds = %535, %533
  %538 = phi { ptr, i32 } [ %536, %535 ], [ %534, %533 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #29
  br label %539

539:                                              ; preds = %531, %537, %529
  %540 = phi { ptr, i32 } [ %530, %529 ], [ %538, %537 ], [ %532, %531 ]
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #32
  br label %541

541:                                              ; preds = %539, %527
  %542 = phi { ptr, i32 } [ %540, %539 ], [ %528, %527 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #29
  br label %546

543:                                              ; preds = %479
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #29
  br label %548

544:                                              ; preds = %479
  %545 = landingpad { ptr, i32 }
          cleanup
  br label %546

546:                                              ; preds = %544, %541
  %547 = phi { ptr, i32 } [ %542, %541 ], [ %545, %544 ]
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #29
  br label %1004

548:                                              ; preds = %543, %247
  %549 = phi i1 [ %248, %247 ], [ true, %543 ]
  br i1 %55, label %553, label %550

550:                                              ; preds = %548
  %551 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.140) #35
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %592

553:                                              ; preds = %550, %548
  %554 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %555 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA67_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %554, ptr noundef nonnull align 1 dereferenceable(67) @.str.141) #28
  %556 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classes) #28
  %557 = load ptr, ptr %556, align 8, !tbaa !431
  %558 = getelementptr inbounds ptr, ptr %557, i64 27
  %559 = load ptr, ptr %558, align 8
  call void %559(ptr noundef nonnull align 8 dereferenceable(144) %556) #28
  %560 = load ptr, ptr %556, align 8, !tbaa !431
  %561 = getelementptr inbounds ptr, ptr %560, i64 23
  %562 = load ptr, ptr %561, align 8
  %563 = call noundef i32 %562(ptr noundef nonnull align 8 dereferenceable(144) %556) #28
  %564 = icmp sgt i32 %563, 0
  br i1 %564, label %565, label %585

565:                                              ; preds = %553, %565
  %566 = phi i32 [ %579, %565 ], [ 0, %553 ]
  %567 = load ptr, ptr %556, align 8, !tbaa !431
  %568 = getelementptr inbounds ptr, ptr %567, i64 24
  %569 = load ptr, ptr %568, align 8
  %570 = call noundef ptr %569(ptr noundef nonnull align 8 dereferenceable(144) %556, i32 noundef %566) #28
  %571 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %572 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA9_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %571, ptr noundef nonnull align 1 dereferenceable(9) @.str.142) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #29
  %573 = load ptr, ptr %570, align 8, !tbaa !431
  %574 = getelementptr inbounds ptr, ptr %573, i64 7
  %575 = load ptr, ptr %574, align 8
  %576 = call noundef ptr %575(ptr noundef nonnull align 8 dereferenceable(8) %570) #28
  store ptr %576, ptr %34, align 8, !tbaa !427
  %577 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %572, ptr noundef nonnull align 8 dereferenceable(8) %34) #28
  %578 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %577, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #29
  %579 = add nuw nsw i32 %566, 1
  %580 = load ptr, ptr %556, align 8, !tbaa !431
  %581 = getelementptr inbounds ptr, ptr %580, i64 23
  %582 = load ptr, ptr %581, align 8
  %583 = call noundef i32 %582(ptr noundef nonnull align 8 dereferenceable(144) %556) #28
  %584 = icmp slt i32 %579, %583
  br i1 %584, label %565, label %585, !llvm.loop !498

585:                                              ; preds = %565, %553
  %586 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %587 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA69_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %586, ptr noundef nonnull align 1 dereferenceable(69) @.str.143) #28
  %588 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %589 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA71_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %588, ptr noundef nonnull align 1 dereferenceable(71) @.str.144) #28
  %590 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %591 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %590, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  br i1 %55, label %596, label %592

592:                                              ; preds = %550, %585
  %593 = phi i1 [ true, %585 ], [ %549, %550 ]
  %594 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.145) #35
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %631

596:                                              ; preds = %592, %585
  %597 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %598 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA84_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %597, ptr noundef nonnull align 1 dereferenceable(84) @.str.146) #28
  %599 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @classDescriptors) #28
  %600 = load ptr, ptr %599, align 8, !tbaa !431
  %601 = getelementptr inbounds ptr, ptr %600, i64 27
  %602 = load ptr, ptr %601, align 8
  call void %602(ptr noundef nonnull align 8 dereferenceable(144) %599) #28
  %603 = load ptr, ptr %599, align 8, !tbaa !431
  %604 = getelementptr inbounds ptr, ptr %603, i64 23
  %605 = load ptr, ptr %604, align 8
  %606 = call noundef i32 %605(ptr noundef nonnull align 8 dereferenceable(144) %599) #28
  %607 = icmp sgt i32 %606, 0
  br i1 %607, label %608, label %628

608:                                              ; preds = %596, %608
  %609 = phi i32 [ %622, %608 ], [ 0, %596 ]
  %610 = load ptr, ptr %599, align 8, !tbaa !431
  %611 = getelementptr inbounds ptr, ptr %610, i64 24
  %612 = load ptr, ptr %611, align 8
  %613 = call noundef ptr %612(ptr noundef nonnull align 8 dereferenceable(144) %599, i32 noundef %609) #28
  %614 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %615 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA9_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %614, ptr noundef nonnull align 1 dereferenceable(9) @.str.142) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #29
  %616 = load ptr, ptr %613, align 8, !tbaa !431
  %617 = getelementptr inbounds ptr, ptr %616, i64 7
  %618 = load ptr, ptr %617, align 8
  %619 = call noundef ptr %618(ptr noundef nonnull align 8 dereferenceable(8) %613) #28
  store ptr %619, ptr %35, align 8, !tbaa !427
  %620 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %615, ptr noundef nonnull align 8 dereferenceable(8) %35) #28
  %621 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %620, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #29
  %622 = add nuw nsw i32 %609, 1
  %623 = load ptr, ptr %599, align 8, !tbaa !431
  %624 = getelementptr inbounds ptr, ptr %623, i64 23
  %625 = load ptr, ptr %624, align 8
  %626 = call noundef i32 %625(ptr noundef nonnull align 8 dereferenceable(144) %599) #28
  %627 = icmp slt i32 %622, %626
  br i1 %627, label %608, label %628, !llvm.loop !499

628:                                              ; preds = %608, %596
  %629 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %630 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %629, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  br i1 %55, label %635, label %631

631:                                              ; preds = %592, %628
  %632 = phi i1 [ true, %628 ], [ %593, %592 ]
  %633 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.147) #35
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %831

635:                                              ; preds = %631, %628
  %636 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %637 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA67_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %636, ptr noundef nonnull align 1 dereferenceable(67) @.str.148) #28
  %638 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions) #28
  %639 = load ptr, ptr %638, align 8, !tbaa !431
  %640 = getelementptr inbounds ptr, ptr %639, i64 27
  %641 = load ptr, ptr %640, align 8
  call void %641(ptr noundef nonnull align 8 dereferenceable(144) %638) #28
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %36) #29
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %36) #32
  br label %642

642:                                              ; preds = %692, %635
  %643 = phi i32 [ 0, %635 ], [ %693, %692 ]
  %644 = load ptr, ptr %638, align 8, !tbaa !431
  %645 = getelementptr inbounds ptr, ptr %644, i64 23
  %646 = load ptr, ptr %645, align 8
  %647 = invoke noundef i32 %646(ptr noundef nonnull align 8 dereferenceable(144) %638) #28
          to label %648 unwind label %654

648:                                              ; preds = %642
  %649 = icmp slt i32 %643, %647
  br i1 %649, label %656, label %650

650:                                              ; preds = %648
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %39) #29
  %651 = call ptr @_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %36) #32
  store ptr %651, ptr %39, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #29
  %652 = call ptr @_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %36) #32
  store ptr %652, ptr %40, align 8
  %653 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %40) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #29
  br i1 %653, label %703, label %700

654:                                              ; preds = %642
  %655 = landingpad { ptr, i32 }
          cleanup
  br label %828

656:                                              ; preds = %648
  %657 = load ptr, ptr %638, align 8, !tbaa !431
  %658 = getelementptr inbounds ptr, ptr %657, i64 24
  %659 = load ptr, ptr %658, align 8
  %660 = invoke noundef ptr %659(ptr noundef nonnull align 8 dereferenceable(144) %638, i32 noundef %643) #28
          to label %661 unwind label %665

661:                                              ; preds = %656
  %662 = icmp eq ptr %660, null
  br i1 %662, label %667, label %663

663:                                              ; preds = %661
  %664 = call ptr @__dynamic_cast(ptr nonnull %660, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI12cNEDFunction, i64 0) #29
  br label %667

665:                                              ; preds = %656
  %666 = landingpad { ptr, i32 }
          cleanup
  br label %828

667:                                              ; preds = %661, %663
  %668 = phi ptr [ %664, %663 ], [ null, %661 ]
  %669 = load ptr, ptr %638, align 8, !tbaa !431
  %670 = getelementptr inbounds ptr, ptr %669, i64 24
  %671 = load ptr, ptr %670, align 8
  %672 = invoke noundef ptr %671(ptr noundef nonnull align 8 dereferenceable(144) %638, i32 noundef %643) #28
          to label %673 unwind label %675

673:                                              ; preds = %667
  %674 = icmp eq ptr %672, null
  br i1 %674, label %680, label %677

675:                                              ; preds = %667
  %676 = landingpad { ptr, i32 }
          cleanup
  br label %828

677:                                              ; preds = %673
  %678 = call ptr @__dynamic_cast(ptr nonnull %672, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %37) #29
  %679 = icmp eq ptr %668, null
  br i1 %679, label %684, label %682

680:                                              ; preds = %673
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %37) #29
  %681 = icmp eq ptr %668, null
  br i1 %681, label %688, label %682

682:                                              ; preds = %680, %677
  %683 = call noundef ptr @_ZNK12cNEDFunction11getCategoryEv(ptr noundef nonnull align 8 dereferenceable(192) %668) #28
  br label %688

684:                                              ; preds = %677
  %685 = icmp eq ptr %678, null
  br i1 %685, label %688, label %686

686:                                              ; preds = %684
  %687 = call noundef ptr @_ZNK13cMathFunction11getCategoryEv(ptr noundef nonnull align 8 dereferenceable(120) %678) #28
  br label %688

688:                                              ; preds = %680, %686, %684, %682
  %689 = phi ptr [ %683, %682 ], [ %687, %686 ], [ @.str.149, %684 ], [ @.str.149, %680 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %38) #29
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %38) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef %689, ptr noundef nonnull align 1 dereferenceable(1) %38) #28
          to label %690 unwind label %694

690:                                              ; preds = %688
  %691 = invoke { ptr, i8 } @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull align 8 dereferenceable(32) %37) #28
          to label %692 unwind label %696

692:                                              ; preds = %690
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %37) #32
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %38) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %37) #29
  %693 = add nuw nsw i32 %643, 1
  br label %642, !llvm.loop !500

694:                                              ; preds = %688
  %695 = landingpad { ptr, i32 }
          cleanup
  br label %698

696:                                              ; preds = %690
  %697 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %37) #32
  br label %698

698:                                              ; preds = %696, %694
  %699 = phi { ptr, i32 } [ %697, %696 ], [ %695, %694 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %38) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %37) #29
  br label %828

700:                                              ; preds = %720, %650
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #29
  %701 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %702 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %701, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %830 unwind label %826

703:                                              ; preds = %650, %720
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %41) #29
  %704 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %704) #28
          to label %705 unwind label %724

705:                                              ; preds = %703
  %706 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %707 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA13_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %706, ptr noundef nonnull align 1 dereferenceable(13) @.str.150) #28
          to label %708 unwind label %726

708:                                              ; preds = %705
  %709 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %707, ptr noundef nonnull align 8 dereferenceable(32) %41) #28
          to label %710 unwind label %726

710:                                              ; preds = %708
  %711 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %709, ptr noundef nonnull align 1 dereferenceable(4) @.str.151) #28
          to label %712 unwind label %726

712:                                              ; preds = %710, %818
  %713 = phi i32 [ %819, %818 ], [ 0, %710 ]
  %714 = load ptr, ptr %638, align 8, !tbaa !431
  %715 = getelementptr inbounds ptr, ptr %714, i64 23
  %716 = load ptr, ptr %715, align 8
  %717 = invoke noundef i32 %716(ptr noundef nonnull align 8 dereferenceable(144) %638) #28
          to label %718 unwind label %728

718:                                              ; preds = %712
  %719 = icmp slt i32 %713, %717
  br i1 %719, label %730, label %720

720:                                              ; preds = %718
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #29
  %721 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #29
  %722 = call ptr @_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %36) #32
  store ptr %722, ptr %40, align 8
  %723 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %40) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #29
  br i1 %723, label %703, label %700, !llvm.loop !501

724:                                              ; preds = %703
  %725 = landingpad { ptr, i32 }
          cleanup
  br label %824

726:                                              ; preds = %710, %708, %705
  %727 = landingpad { ptr, i32 }
          cleanup
  br label %822

728:                                              ; preds = %712
  %729 = landingpad { ptr, i32 }
          cleanup
  br label %822

730:                                              ; preds = %718
  %731 = load ptr, ptr %638, align 8, !tbaa !431
  %732 = getelementptr inbounds ptr, ptr %731, i64 24
  %733 = load ptr, ptr %732, align 8
  %734 = invoke noundef ptr %733(ptr noundef nonnull align 8 dereferenceable(144) %638, i32 noundef %713) #28
          to label %735 unwind label %744

735:                                              ; preds = %730
  %736 = load ptr, ptr %638, align 8, !tbaa !431
  %737 = getelementptr inbounds ptr, ptr %736, i64 24
  %738 = load ptr, ptr %737, align 8
  %739 = invoke noundef ptr %738(ptr noundef nonnull align 8 dereferenceable(144) %638, i32 noundef %713) #28
          to label %740 unwind label %746

740:                                              ; preds = %735
  %741 = icmp eq ptr %739, null
  br i1 %741, label %748, label %742

742:                                              ; preds = %740
  %743 = call ptr @__dynamic_cast(ptr nonnull %739, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI12cNEDFunction, i64 0) #29
  br label %748

744:                                              ; preds = %730
  %745 = landingpad { ptr, i32 }
          cleanup
  br label %822

746:                                              ; preds = %735
  %747 = landingpad { ptr, i32 }
          cleanup
  br label %822

748:                                              ; preds = %740, %742
  %749 = phi ptr [ %743, %742 ], [ null, %740 ]
  %750 = load ptr, ptr %638, align 8, !tbaa !431
  %751 = getelementptr inbounds ptr, ptr %750, i64 24
  %752 = load ptr, ptr %751, align 8
  %753 = invoke noundef ptr %752(ptr noundef nonnull align 8 dereferenceable(144) %638, i32 noundef %713) #28
          to label %754 unwind label %756

754:                                              ; preds = %748
  %755 = icmp eq ptr %753, null
  br i1 %755, label %761, label %758

756:                                              ; preds = %748
  %757 = landingpad { ptr, i32 }
          cleanup
  br label %822

758:                                              ; preds = %754
  %759 = call ptr @__dynamic_cast(ptr nonnull %753, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #29
  %760 = icmp eq ptr %749, null
  br i1 %760, label %763, label %765

761:                                              ; preds = %754
  %762 = icmp eq ptr %749, null
  br i1 %762, label %768, label %765

763:                                              ; preds = %758
  %764 = icmp eq ptr %759, null
  br i1 %764, label %768, label %769

765:                                              ; preds = %761, %758
  %766 = call noundef ptr @_ZNK12cNEDFunction11getCategoryEv(ptr noundef nonnull align 8 dereferenceable(192) %749) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #29
  %767 = call noundef ptr @_ZNK12cNEDFunction14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(192) %749) #28
  br label %772

768:                                              ; preds = %763, %761
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #29
  br label %772

769:                                              ; preds = %763
  %770 = call noundef ptr @_ZNK13cMathFunction11getCategoryEv(ptr noundef nonnull align 8 dereferenceable(120) %759) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %42) #29
  %771 = call noundef ptr @_ZNK13cMathFunction14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(120) %759) #28
  br label %772

772:                                              ; preds = %768, %769, %765
  %773 = phi ptr [ %766, %765 ], [ %770, %769 ], [ @.str.149, %768 ]
  %774 = phi ptr [ %767, %765 ], [ %771, %769 ], [ @.str.149, %768 ]
  store ptr %774, ptr %42, align 8, !tbaa !427
  %775 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE(ptr noundef %773, ptr noundef nonnull align 8 dereferenceable(32) %41) #28
  br i1 %775, label %776, label %818

776:                                              ; preds = %772
  %777 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %778 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %777, ptr noundef nonnull align 1 dereferenceable(3) @.str.88) #28
          to label %779 unwind label %806

779:                                              ; preds = %776
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #29
  %780 = load ptr, ptr %734, align 8, !tbaa !431
  %781 = getelementptr inbounds ptr, ptr %780, i64 7
  %782 = load ptr, ptr %781, align 8
  %783 = invoke noundef ptr %782(ptr noundef nonnull align 8 dereferenceable(8) %734) #28
          to label %784 unwind label %808

784:                                              ; preds = %779
  store ptr %783, ptr %43, align 8, !tbaa !427
  %785 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %778, ptr noundef nonnull align 8 dereferenceable(8) %43) #28
          to label %786 unwind label %808

786:                                              ; preds = %784
  %787 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %785, ptr noundef nonnull align 1 dereferenceable(4) @.str.152) #28
          to label %788 unwind label %808

788:                                              ; preds = %786
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %44) #29
  %789 = load ptr, ptr %734, align 8, !tbaa !431
  %790 = getelementptr inbounds ptr, ptr %789, i64 9
  %791 = load ptr, ptr %790, align 8
  invoke void %791(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull align 8 dereferenceable(8) %734) #28
          to label %792 unwind label %810

792:                                              ; preds = %788
  %793 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %787, ptr noundef nonnull align 8 dereferenceable(32) %44) #28
          to label %794 unwind label %812

794:                                              ; preds = %792
  %795 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %793, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %796 unwind label %812

796:                                              ; preds = %794
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %44) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %44) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #29
  %797 = load ptr, ptr %42, align 8, !tbaa !427
  %798 = icmp eq ptr %797, null
  br i1 %798, label %818, label %799

799:                                              ; preds = %796
  %800 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %801 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA5_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %800, ptr noundef nonnull align 1 dereferenceable(5) @.str.102) #28
          to label %802 unwind label %806

802:                                              ; preds = %799
  %803 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %801, ptr noundef nonnull align 8 dereferenceable(8) %42) #28
          to label %804 unwind label %806

804:                                              ; preds = %802
  %805 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %803, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %818 unwind label %806

806:                                              ; preds = %804, %802, %799, %776
  %807 = landingpad { ptr, i32 }
          cleanup
  br label %820

808:                                              ; preds = %786, %784, %779
  %809 = landingpad { ptr, i32 }
          cleanup
  br label %816

810:                                              ; preds = %788
  %811 = landingpad { ptr, i32 }
          cleanup
  br label %814

812:                                              ; preds = %794, %792
  %813 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %44) #32
  br label %814

814:                                              ; preds = %812, %810
  %815 = phi { ptr, i32 } [ %813, %812 ], [ %811, %810 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %44) #29
  br label %816

816:                                              ; preds = %814, %808
  %817 = phi { ptr, i32 } [ %815, %814 ], [ %809, %808 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #29
  br label %820

818:                                              ; preds = %796, %804, %772
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #29
  %819 = add nuw nsw i32 %713, 1
  br label %712, !llvm.loop !502

820:                                              ; preds = %816, %806
  %821 = phi { ptr, i32 } [ %807, %806 ], [ %817, %816 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %42) #29
  br label %822

822:                                              ; preds = %728, %746, %820, %756, %744, %726
  %823 = phi { ptr, i32 } [ %727, %726 ], [ %729, %728 ], [ %745, %744 ], [ %747, %746 ], [ %821, %820 ], [ %757, %756 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #32
  br label %824

824:                                              ; preds = %822, %724
  %825 = phi { ptr, i32 } [ %823, %822 ], [ %725, %724 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %39) #29
  br label %828

826:                                              ; preds = %700
  %827 = landingpad { ptr, i32 }
          cleanup
  br label %828

828:                                              ; preds = %654, %675, %698, %665, %826, %824
  %829 = phi { ptr, i32 } [ %825, %824 ], [ %827, %826 ], [ %655, %654 ], [ %666, %665 ], [ %699, %698 ], [ %676, %675 ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %36) #32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %36) #29
  br label %1004

830:                                              ; preds = %700
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %36) #32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %36) #29
  br i1 %55, label %835, label %831

831:                                              ; preds = %631, %830
  %832 = phi i1 [ true, %830 ], [ %632, %631 ]
  %833 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.153) #35
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %902

835:                                              ; preds = %831, %830
  %836 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %837 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA72_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %836, ptr noundef nonnull align 1 dereferenceable(72) @.str.154) #28
  %838 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %839 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA54_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %838, ptr noundef nonnull align 1 dereferenceable(54) @.str.155) #28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #29
  call void @_ZN14UnitConversion11getAllUnitsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %45) #28
  %840 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %45) #32
  %841 = trunc i64 %840 to i32
  %842 = icmp sgt i32 %841, 0
  br i1 %842, label %846, label %843

843:                                              ; preds = %889, %835
  %844 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %845 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %844, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %901 unwind label %897

846:                                              ; preds = %835, %889
  %847 = phi i64 [ %890, %889 ], [ 0, %835 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #29
  %848 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %45, i64 noundef %847) #32
  %849 = load ptr, ptr %848, align 8, !tbaa !427
  store ptr %849, ptr %46, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #29
  %850 = invoke noundef ptr @_ZN14UnitConversion11getBaseUnitEPKc(ptr noundef %849) #28
          to label %851 unwind label %880

851:                                              ; preds = %846
  store ptr %850, ptr %47, align 8, !tbaa !427
  %852 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %853 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %852, ptr noundef nonnull align 1 dereferenceable(3) @.str.88) #28
          to label %854 unwind label %880

854:                                              ; preds = %851
  %855 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %853, ptr noundef nonnull align 8 dereferenceable(8) %46) #28
          to label %856 unwind label %880

856:                                              ; preds = %854
  %857 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %855, ptr noundef nonnull align 1 dereferenceable(2) @.str.156) #28
          to label %858 unwind label %880

858:                                              ; preds = %856
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #29
  %859 = load ptr, ptr %46, align 8, !tbaa !427
  %860 = invoke noundef ptr @_ZN14UnitConversion11getLongNameEPKc(ptr noundef %859) #28
          to label %861 unwind label %882

861:                                              ; preds = %858
  store ptr %860, ptr %48, align 8, !tbaa !427
  %862 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %857, ptr noundef nonnull align 8 dereferenceable(8) %48) #28
          to label %863 unwind label %882

863:                                              ; preds = %861
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #29
  %864 = load ptr, ptr %46, align 8, !tbaa !427
  %865 = load ptr, ptr %47, align 8, !tbaa !427
  %866 = call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %864, ptr noundef %865) #28
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %886, label %868

868:                                              ; preds = %863
  %869 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %870 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %869, ptr noundef nonnull align 1 dereferenceable(2) @.str.156) #28
          to label %871 unwind label %880

871:                                              ; preds = %868
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #29
  %872 = load ptr, ptr %46, align 8, !tbaa !427
  %873 = load ptr, ptr %47, align 8, !tbaa !427
  %874 = invoke noundef double @_ZN14UnitConversion11convertUnitEdPKcS1_(double noundef 1.000000e+00, ptr noundef %872, ptr noundef %873) #28
          to label %875 unwind label %884

875:                                              ; preds = %871
  store double %874, ptr %49, align 8, !tbaa !503
  %876 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIdEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %870, ptr noundef nonnull align 8 dereferenceable(8) %49) #28
          to label %877 unwind label %884

877:                                              ; preds = %875
  %878 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %876, ptr noundef nonnull align 8 dereferenceable(8) %47) #28
          to label %879 unwind label %884

879:                                              ; preds = %877
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #29
  br label %886

880:                                              ; preds = %886, %868, %856, %854, %851, %846
  %881 = landingpad { ptr, i32 }
          cleanup
  br label %895

882:                                              ; preds = %861, %858
  %883 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #29
  br label %895

884:                                              ; preds = %877, %875, %871
  %885 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #29
  br label %895

886:                                              ; preds = %879, %863
  %887 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %888 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %887, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %889 unwind label %880

889:                                              ; preds = %886
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #29
  %890 = add nuw nsw i64 %847, 1
  %891 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %45) #32
  %892 = shl i64 %891, 32
  %893 = ashr exact i64 %892, 32
  %894 = icmp slt i64 %890, %893
  br i1 %894, label %846, label %843, !llvm.loop !505

895:                                              ; preds = %884, %882, %880
  %896 = phi { ptr, i32 } [ %881, %880 ], [ %885, %884 ], [ %883, %882 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #29
  br label %899

897:                                              ; preds = %843
  %898 = landingpad { ptr, i32 }
          cleanup
  br label %899

899:                                              ; preds = %897, %895
  %900 = phi { ptr, i32 } [ %896, %895 ], [ %898, %897 ]
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %45) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #29
  br label %1004

901:                                              ; preds = %843
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %45) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #29
  br i1 %55, label %906, label %902

902:                                              ; preds = %831, %901
  %903 = phi i1 [ true, %901 ], [ %832, %831 ]
  %904 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.157) #35
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %950

906:                                              ; preds = %902, %901
  %907 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %908 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA29_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %907, ptr noundef nonnull align 1 dereferenceable(29) @.str.158) #28
  %909 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @enums) #28
  %910 = load ptr, ptr %909, align 8, !tbaa !431
  %911 = getelementptr inbounds ptr, ptr %910, i64 27
  %912 = load ptr, ptr %911, align 8
  call void %912(ptr noundef nonnull align 8 dereferenceable(144) %909) #28
  %913 = load ptr, ptr %909, align 8, !tbaa !431
  %914 = getelementptr inbounds ptr, ptr %913, i64 23
  %915 = load ptr, ptr %914, align 8
  %916 = call noundef i32 %915(ptr noundef nonnull align 8 dereferenceable(144) %909) #28
  %917 = icmp sgt i32 %916, 0
  br i1 %917, label %918, label %947

918:                                              ; preds = %906, %938
  %919 = phi i32 [ %939, %938 ], [ 0, %906 ]
  %920 = load ptr, ptr %909, align 8, !tbaa !431
  %921 = getelementptr inbounds ptr, ptr %920, i64 24
  %922 = load ptr, ptr %921, align 8
  %923 = call noundef ptr %922(ptr noundef nonnull align 8 dereferenceable(144) %909, i32 noundef %919) #28
  %924 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %925 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %924, ptr noundef nonnull align 1 dereferenceable(3) @.str.88) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #29
  %926 = load ptr, ptr %923, align 8, !tbaa !431
  %927 = getelementptr inbounds ptr, ptr %926, i64 7
  %928 = load ptr, ptr %927, align 8
  %929 = call noundef ptr %928(ptr noundef nonnull align 8 dereferenceable(8) %923) #28
  store ptr %929, ptr %50, align 8, !tbaa !427
  %930 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %925, ptr noundef nonnull align 8 dereferenceable(8) %50) #28
  %931 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %930, ptr noundef nonnull align 1 dereferenceable(4) @.str.152) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %51) #29
  %932 = load ptr, ptr %923, align 8, !tbaa !431
  %933 = getelementptr inbounds ptr, ptr %932, i64 9
  %934 = load ptr, ptr %933, align 8
  call void %934(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(8) %923) #28
  %935 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %931, ptr noundef nonnull align 8 dereferenceable(32) %51) #28
          to label %936 unwind label %945

936:                                              ; preds = %918
  %937 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %935, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %938 unwind label %945

938:                                              ; preds = %936
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %51) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %51) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #29
  %939 = add nuw nsw i32 %919, 1
  %940 = load ptr, ptr %909, align 8, !tbaa !431
  %941 = getelementptr inbounds ptr, ptr %940, i64 23
  %942 = load ptr, ptr %941, align 8
  %943 = call noundef i32 %942(ptr noundef nonnull align 8 dereferenceable(144) %909) #28
  %944 = icmp slt i32 %939, %943
  br i1 %944, label %918, label %947, !llvm.loop !506

945:                                              ; preds = %936, %918
  %946 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %51) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %51) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #29
  br label %1004

947:                                              ; preds = %938, %906
  %948 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %949 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %948, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
  br i1 %55, label %956, label %953

950:                                              ; preds = %902
  %951 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.159) #35
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %956, label %997

953:                                              ; preds = %947
  %954 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.159) #35
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %1003

956:                                              ; preds = %953, %950, %947
  %957 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %958 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA25_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %957, ptr noundef nonnull align 1 dereferenceable(25) @.str.160) #28
  %959 = call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #28
  %960 = load ptr, ptr %959, align 8, !tbaa !431
  %961 = getelementptr inbounds ptr, ptr %960, i64 27
  %962 = load ptr, ptr %961, align 8
  call void %962(ptr noundef nonnull align 8 dereferenceable(144) %959) #28
  %963 = load ptr, ptr %959, align 8, !tbaa !431
  %964 = getelementptr inbounds ptr, ptr %963, i64 23
  %965 = load ptr, ptr %964, align 8
  %966 = call noundef i32 %965(ptr noundef nonnull align 8 dereferenceable(144) %959) #28
  %967 = icmp sgt i32 %966, 0
  br i1 %967, label %968, label %1003

968:                                              ; preds = %956, %988
  %969 = phi i32 [ %989, %988 ], [ 0, %956 ]
  %970 = load ptr, ptr %959, align 8, !tbaa !431
  %971 = getelementptr inbounds ptr, ptr %970, i64 24
  %972 = load ptr, ptr %971, align 8
  %973 = call noundef ptr %972(ptr noundef nonnull align 8 dereferenceable(144) %959, i32 noundef %969) #28
  %974 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %975 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %974, ptr noundef nonnull align 1 dereferenceable(3) @.str.88) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %52) #29
  %976 = load ptr, ptr %973, align 8, !tbaa !431
  %977 = getelementptr inbounds ptr, ptr %976, i64 7
  %978 = load ptr, ptr %977, align 8
  %979 = call noundef ptr %978(ptr noundef nonnull align 8 dereferenceable(8) %973) #28
  store ptr %979, ptr %52, align 8, !tbaa !427
  %980 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %975, ptr noundef nonnull align 8 dereferenceable(8) %52) #28
  %981 = call noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %980, ptr noundef nonnull align 1 dereferenceable(4) @.str.152) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %53) #29
  %982 = load ptr, ptr %973, align 8, !tbaa !431
  %983 = getelementptr inbounds ptr, ptr %982, i64 9
  %984 = load ptr, ptr %983, align 8
  call void %984(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, ptr noundef nonnull align 8 dereferenceable(8) %973) #28
  %985 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %981, ptr noundef nonnull align 8 dereferenceable(32) %53) #28
          to label %986 unwind label %995

986:                                              ; preds = %968
  %987 = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %985, ptr noundef nonnull align 1 dereferenceable(2) @.str.27) #28
          to label %988 unwind label %995

988:                                              ; preds = %986
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %53) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %53) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %52) #29
  %989 = add nuw nsw i32 %969, 1
  %990 = load ptr, ptr %959, align 8, !tbaa !431
  %991 = getelementptr inbounds ptr, ptr %990, i64 23
  %992 = load ptr, ptr %991, align 8
  %993 = call noundef i32 %992(ptr noundef nonnull align 8 dereferenceable(144) %959) #28
  %994 = icmp slt i32 %989, %993
  br i1 %994, label %968, label %1003, !llvm.loop !507

995:                                              ; preds = %986, %968
  %996 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %53) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %53) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %52) #29
  br label %1004

997:                                              ; preds = %950
  br i1 %903, label %1003, label %998

998:                                              ; preds = %997
  %999 = call ptr @__cxa_allocate_exception(i64 128) #29
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %999, ptr noundef nonnull @.str.161, ptr noundef %1) #28
          to label %1000 unwind label %1001

1000:                                             ; preds = %998
  call void @__cxa_throw(ptr nonnull %999, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

1001:                                             ; preds = %998
  %1002 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %999) #29
  br label %1004

1003:                                             ; preds = %988, %956, %953, %997
  ret void

1004:                                             ; preds = %477, %546, %170, %245, %1001, %995, %945, %899, %828
  %1005 = phi { ptr, i32 } [ %829, %828 ], [ %900, %899 ], [ %946, %945 ], [ %996, %995 ], [ %1002, %1001 ], [ %171, %170 ], [ %246, %245 ], [ %478, %477 ], [ %547, %546 ]
  resume { ptr, i32 } %1005
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #5 comdat align 2 !prof !508 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !427
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA2_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA32_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA11_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(11) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIPKcEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %1, align 8, !tbaa !427
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA10_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(10) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  ret ptr %0
}

; Function Attrs: optsize
declare void @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !509 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !510
  %4 = load ptr, ptr %0, align 8, !tbaa !512
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !513 {
  %3 = load ptr, ptr %0, align 8, !tbaa !512
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !514 {
  %2 = load ptr, ptr %0, align 8, !tbaa !512
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !510
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #28
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase5setupEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %class.StringTokenizer, align 8
  %5 = alloca %"class.std::set", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::allocator", align 1
  invoke void @_Z14setPosixLocalev() #28
          to label %12 unwind label %28

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !431
  %14 = getelementptr inbounds ptr, ptr %13, i64 65
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
          to label %16 unwind label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !515
  %19 = icmp ult i64 %18, 135169
  br i1 %19, label %20, label %30, !prof !487

20:                                               ; preds = %16
  %21 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %22 = load i64, ptr %17, align 8, !tbaa !515
  %23 = load ptr, ptr %21, align 8, !tbaa !431
  %24 = getelementptr inbounds ptr, ptr %23, i64 36
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef i32 (ptr, ptr, ...) %25(ptr noundef nonnull align 8 dereferenceable(288) %21, ptr noundef nonnull @.str.37, i64 noundef %22, i32 noundef 131072) #28
          to label %27 unwind label %28

27:                                               ; preds = %20
  store i64 135168, ptr %17, align 8, !tbaa !515
  br label %30

28:                                               ; preds = %33, %30, %20, %12, %1
  %29 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  br label %218

30:                                               ; preds = %27, %16
  %31 = phi i64 [ 135168, %27 ], [ %18, %16 ]
  %32 = trunc i64 %31 to i32
  invoke void @_ZN10cCoroutine4initEjj(i32 noundef %32, i32 noundef 131072) #28
          to label %33 unwind label %28

33:                                               ; preds = %30
  %34 = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #30
          to label %35 unwind label %28

35:                                               ; preds = %33
  invoke void @_ZN12cXMLDocCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %34) #28
          to label %36 unwind label %48

36:                                               ; preds = %35
  %37 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 3
  store ptr %34, ptr %37, align 8, !tbaa !475
  %38 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  %39 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  %40 = invoke noundef ptr @_Z9createOnePKc(ptr noundef %39) #28
          to label %41 unwind label %50

41:                                               ; preds = %36
  %42 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  store ptr %40, ptr %42, align 8, !tbaa !476
  %43 = icmp eq ptr %40, null
  br i1 %43, label %44, label %54, !prof !487

44:                                               ; preds = %41
  %45 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %46 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %45, ptr noundef nonnull @.str.38, ptr noundef %46) #28
          to label %47 unwind label %52

47:                                               ; preds = %44
  invoke void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %239 unwind label %50

48:                                               ; preds = %35
  %49 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef nonnull %34) #31
  br label %218

50:                                               ; preds = %47, %36
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %218

52:                                               ; preds = %44
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %45) #29
  br label %218

54:                                               ; preds = %41
  %55 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 16
  %56 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %55) #28
  %57 = invoke noundef ptr @_Z9createOnePKc(ptr noundef %56) #28
          to label %58 unwind label %65

58:                                               ; preds = %54
  %59 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  store ptr %57, ptr %59, align 8, !tbaa !477
  %60 = icmp eq ptr %57, null
  br i1 %60, label %61, label %69, !prof !487

61:                                               ; preds = %58
  %62 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %63 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %55) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %62, ptr noundef nonnull @.str.39, ptr noundef %63) #28
          to label %64 unwind label %67

64:                                               ; preds = %61
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %239 unwind label %65

65:                                               ; preds = %64, %54
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %218

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %62) #29
  br label %218

69:                                               ; preds = %58
  %70 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 17
  %71 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #28
  %72 = invoke noundef ptr @_Z9createOnePKc(ptr noundef %71) #28
          to label %73 unwind label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  store ptr %72, ptr %74, align 8, !tbaa !478
  %75 = icmp eq ptr %72, null
  br i1 %75, label %76, label %83, !prof !487

76:                                               ; preds = %73
  %77 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %78 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %77, ptr noundef nonnull @.str.40, ptr noundef %78) #28
          to label %109 unwind label %81

79:                                               ; preds = %109, %69
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %218

81:                                               ; preds = %76
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %77) #29
  br label %218

83:                                               ; preds = %73
  %84 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 7
  %85 = load i8, ptr %84, align 8, !tbaa !516, !range !517, !noundef !518
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %107, !prof !485

87:                                               ; preds = %83
  %88 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  %89 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %88) #28
  %90 = invoke noundef ptr @_Z9createOnePKc(ptr noundef %89) #28
          to label %91 unwind label %97

91:                                               ; preds = %87
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %101, !prof !487

93:                                               ; preds = %91
  %94 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %95 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %88) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %94, ptr noundef nonnull @.str.41, ptr noundef %95) #28
          to label %96 unwind label %99

96:                                               ; preds = %93
  invoke void @__cxa_throw(ptr nonnull %94, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %239 unwind label %97

97:                                               ; preds = %101, %96, %87
  %98 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %218

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %94) #29
  br label %218

101:                                              ; preds = %91
  %102 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  invoke void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224) %102, ptr noundef nonnull %90) #28
          to label %103 unwind label %97

103:                                              ; preds = %101
  %104 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !473
  %106 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %105, i8 noundef signext 110, i32 noundef 0) #28
          to label %114 unwind label %118

107:                                              ; preds = %83
  %108 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %108, ptr noundef nonnull @.str.42) #28
          to label %109 unwind label %112

109:                                              ; preds = %76, %107
  %110 = phi ptr [ %108, %107 ], [ %77, %76 ]
  invoke void @__cxa_throw(ptr nonnull %110, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %111 unwind label %79

111:                                              ; preds = %109
  unreachable

112:                                              ; preds = %107
  %113 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @__cxa_free_exception(ptr %108) #29
  br label %218

114:                                              ; preds = %103
  %115 = icmp eq ptr %106, null
  br i1 %115, label %116, label %120, !prof !485

116:                                              ; preds = %114
  %117 = tail call ptr @getenv(ptr noundef nonnull @.str.43) #32
  br label %120

118:                                              ; preds = %103
  %119 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %218

120:                                              ; preds = %116, %114
  %121 = phi ptr [ %106, %114 ], [ %117, %116 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #29
  %122 = load ptr, ptr %0, align 8, !tbaa !431
  %123 = getelementptr inbounds ptr, ptr %122, i64 31
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
          to label %126 unwind label %137

126:                                              ; preds = %120
  %127 = load ptr, ptr @CFGID_NED_PATH, align 8, !tbaa !427
  %128 = load ptr, ptr %125, align 8, !tbaa !431
  %129 = getelementptr inbounds ptr, ptr %128, i64 31
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %127) #28
          to label %131 unwind label %137

131:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %132 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  invoke void @_Z8opp_joinB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.44, ptr noundef %121, ptr noundef %132) #28
          to label %133 unwind label %139

133:                                              ; preds = %131
  %134 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  br i1 %134, label %135, label %143, !prof !487

135:                                              ; preds = %133
  %136 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.45) #28
          to label %143 unwind label %141

137:                                              ; preds = %126, %120
  %138 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %216

139:                                              ; preds = %131
  %140 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %214

141:                                              ; preds = %135
  %142 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %212

143:                                              ; preds = %135, %133
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #29
  %144 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %144, ptr noundef nonnull @.str.46) #28
          to label %145 unwind label %183

145:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #29
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #32
  br label %146

146:                                              ; preds = %182, %145
  %147 = invoke noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #28
          to label %148 unwind label %185

148:                                              ; preds = %146
  br i1 %147, label %149, label %205, !prof !519

149:                                              ; preds = %148
  %150 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #28
          to label %151 unwind label %189

151:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #29
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %150, ptr noundef nonnull align 1 dereferenceable(1) %8) #28
          to label %152 unwind label %191

152:                                              ; preds = %151
  %153 = invoke ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #28
          to label %154 unwind label %193

154:                                              ; preds = %152
  store ptr %153, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #29
  %155 = call ptr @_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #32
  store ptr %155, ptr %9, align 8
  %156 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #32
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br i1 %156, label %157, label %182, !prof !485

157:                                              ; preds = %154
  %158 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %159 = load ptr, ptr %158, align 8, !tbaa !431
  %160 = getelementptr inbounds ptr, ptr %159, i64 36
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef i32 (ptr, ptr, ...) %161(ptr noundef nonnull align 8 dereferenceable(288) %158, ptr noundef nonnull @.str.47) #28
          to label %163 unwind label %189

163:                                              ; preds = %157
  %164 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %165 = load ptr, ptr %164, align 8, !tbaa !431
  %166 = getelementptr inbounds ptr, ptr %165, i64 37
  %167 = load ptr, ptr %166, align 8
  %168 = invoke noundef nonnull align 8 dereferenceable(288) ptr %167(ptr noundef nonnull align 8 dereferenceable(288) %164) #28
          to label %169 unwind label %189

169:                                              ; preds = %163
  %170 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  %171 = invoke noundef i32 @_ZN11cSimulation19loadNedSourceFolderEPKc(ptr noundef %150) #28
          to label %172 unwind label %197

172:                                              ; preds = %169
  %173 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %174 = load ptr, ptr %173, align 8, !tbaa !431
  %175 = getelementptr inbounds ptr, ptr %174, i64 36
  %176 = load ptr, ptr %175, align 8
  %177 = invoke noundef i32 (ptr, ptr, ...) %176(ptr noundef nonnull align 8 dereferenceable(288) %173, ptr noundef nonnull @.str.48, i32 noundef %171) #28
          to label %178 unwind label %197

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #29
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %150, ptr noundef nonnull align 1 dereferenceable(1) %11) #28
          to label %179 unwind label %199

179:                                              ; preds = %178
  %180 = invoke { ptr, i8 } @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %10) #28
          to label %181 unwind label %201

181:                                              ; preds = %179
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #29
  br label %182

182:                                              ; preds = %181, %154
  br label %146, !llvm.loop !520

183:                                              ; preds = %143
  %184 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %210

185:                                              ; preds = %146
  %186 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %208

187:                                              ; preds = %205
  %188 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %208

189:                                              ; preds = %163, %157, %149
  %190 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %208

191:                                              ; preds = %151
  %192 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %195

193:                                              ; preds = %152
  %194 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #32
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi { ptr, i32 } [ %194, %193 ], [ %192, %191 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br label %208

197:                                              ; preds = %172, %169
  %198 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %208

199:                                              ; preds = %178
  %200 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %203

201:                                              ; preds = %179
  %202 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi { ptr, i32 } [ %202, %201 ], [ %200, %199 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #29
  br label %208

205:                                              ; preds = %148
  %206 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  invoke void @_ZN11cSimulation19doneLoadingNedFilesEv() #28
          to label %207 unwind label %187

207:                                              ; preds = %205
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #29
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %232

208:                                              ; preds = %185, %187, %189, %195, %203, %197
  %209 = phi { ptr, i32 } [ %190, %189 ], [ %196, %195 ], [ %204, %203 ], [ %198, %197 ], [ %186, %185 ], [ %188, %187 ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #29
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #32
  br label %210

210:                                              ; preds = %208, %183
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #29
  br label %212

212:                                              ; preds = %210, %141
  %213 = phi { ptr, i32 } [ %211, %210 ], [ %142, %141 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  br label %214

214:                                              ; preds = %212, %139
  %215 = phi { ptr, i32 } [ %213, %212 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  br label %216

216:                                              ; preds = %214, %137
  %217 = phi { ptr, i32 } [ %215, %214 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %218

218:                                              ; preds = %50, %52, %79, %81, %112, %99, %97, %216, %118, %67, %65, %48, %28
  %219 = phi { ptr, i32 } [ %49, %48 ], [ %29, %28 ], [ %51, %50 ], [ %53, %52 ], [ %66, %65 ], [ %68, %67 ], [ %80, %79 ], [ %113, %112 ], [ %82, %81 ], [ %98, %97 ], [ %100, %99 ], [ %217, %216 ], [ %119, %118 ]
  %220 = extractvalue { ptr, i32 } %219, 1
  %221 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #29
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %218
  %224 = extractvalue { ptr, i32 } %219, 0
  %225 = call ptr @__cxa_begin_catch(ptr %224) #29
  %226 = load ptr, ptr %0, align 8, !tbaa !431
  %227 = getelementptr inbounds ptr, ptr %226, i64 69
  %228 = load ptr, ptr %227, align 8
  invoke void %228(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %225) #28
          to label %229 unwind label %230

229:                                              ; preds = %223
  call void @__cxa_end_catch()
  br label %232

230:                                              ; preds = %223
  %231 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %234 unwind label %236

232:                                              ; preds = %207, %229
  %233 = phi i1 [ false, %229 ], [ true, %207 ]
  ret i1 %233

234:                                              ; preds = %230, %218
  %235 = phi { ptr, i32 } [ %219, %218 ], [ %231, %230 ]
  resume { ptr, i32 } %235

236:                                              ; preds = %230
  %237 = landingpad { ptr, i32 }
          catch ptr null
  %238 = extractvalue { ptr, i32 } %237, 0
  call void @__clang_call_terminate(ptr %238) #33
  unreachable

239:                                              ; preds = %96, %64, %47
  unreachable
}

; Function Attrs: optsize
declare void @_Z14setPosixLocalev() local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cCoroutine4initEjj(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cXMLDocCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z9createOnePKc(ptr noundef %0) local_unnamed_addr #4 comdat !prof !521 {
  %2 = tail call noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef %0) #28
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !522 {
  %2 = load ptr, ptr %0, align 8, !tbaa !469
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @.str.96, ptr %2, !prof !523
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation19getActiveSimulationEv() local_unnamed_addr #5 comdat align 2 !prof !524 {
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !427
  ret ptr %1
}

; Function Attrs: optsize
declare void @_ZN11cSimulation12setSchedulerEP10cScheduler(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @_Z8opp_joinB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !521 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !525 {
  %3 = load ptr, ptr %0, align 8, !tbaa !526
  %4 = load ptr, ptr %1, align 8, !tbaa !526
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !528 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  store ptr %5, ptr %4, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt17_Rb_tree_iteratorIS5_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  %6 = load ptr, ptr %3, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #28
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #28
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.260) #36
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #28
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #28
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !529 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN11cSimulation19loadNedSourceFolderEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !530 {
  %3 = alloca %"struct.std::pair", align 8
  %4 = alloca %"struct.std::pair.58", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #29
  %5 = tail call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  %6 = extractvalue { ptr, i8 } %5, 0
  store ptr %6, ptr %4, align 8
  %7 = getelementptr inbounds { ptr, i8 }, ptr %4, i64 0, i32 1
  %8 = extractvalue { ptr, i8 } %5, 1
  store i8 %8, ptr %7, align 8
  call void @_ZNSt4pairISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IRSt17_Rb_tree_iteratorIS6_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #29
  %9 = load ptr, ptr %3, align 8
  %10 = insertvalue { ptr, i8 } poison, ptr %9, 0
  %11 = getelementptr inbounds { ptr, i8 }, ptr %3, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = insertvalue { ptr, i8 } %10, i8 %12, 1
  ret { ptr, i8 } %13
}

; Function Attrs: optsize
declare void @_ZN11cSimulation19doneLoadingNedFilesEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !521 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #29
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA23_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(23) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA29_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(29) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA78_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(78) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA51_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(51) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA73_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(73) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA74_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(74) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA75_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(75) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA77_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(77) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA76_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(76) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA33_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(33) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA40_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA46_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(46) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA47_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(47) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA43_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(43) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA67_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(67) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA71_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(71) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA79_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(79) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA65_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(65) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA54_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(54) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA55_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(55) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z14check_and_castIP21cOmnetAppRegistrationET_P7cObject(ptr noundef %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !490 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %6 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP21cOmnetAppRegistration) #28
          to label %7 unwind label %9

7:                                                ; preds = %4
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull @.str.261, ptr noundef %6) #28
          to label %8 unwind label %9

8:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

9:                                                ; preds = %7, %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #29
  br label %40

11:                                               ; preds = %1
  %12 = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI21cOmnetAppRegistration, i64 0) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %16 = load ptr, ptr %0, align 8, !tbaa !431
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %20 unwind label %29

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #29
  %21 = load ptr, ptr %0, align 8, !tbaa !431
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %24 unwind label %31

24:                                               ; preds = %20
  %25 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  %26 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIP21cOmnetAppRegistration) #28
          to label %27 unwind label %33

27:                                               ; preds = %24
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.262, ptr noundef %19, ptr noundef %25, ptr noundef %26) #28
          to label %28 unwind label %33

28:                                               ; preds = %27
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %42 unwind label %35

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %37

31:                                               ; preds = %20
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %37

33:                                               ; preds = %27, %24
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %37

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %40

37:                                               ; preds = %33, %31, %29
  %38 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ], [ %34, %33 ]
  call void @__cxa_free_exception(ptr %15) #29
  br label %40

39:                                               ; preds = %11
  ret ptr %12

40:                                               ; preds = %35, %37, %9
  %41 = phi { ptr, i32 } [ %10, %9 ], [ %38, %37 ], [ %36, %35 ]
  resume { ptr, i32 } %41

42:                                               ; preds = %28
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN21cOmnetAppRegistration9createOneEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #4 comdat align 2 !prof !425 {
  %2 = getelementptr inbounds %class.cOmnetAppRegistration, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !531
  %4 = tail call noundef ptr %3() #28
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA34_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(34) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA3_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13cConfigOption11isPerObjectEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #5 comdat align 2 !prof !539 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4, !tbaa !540, !range !517, !noundef !518
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA20_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(20) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: optsize
declare noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13cConfigOption7getTypeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #5 comdat align 2 !prof !544 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !545
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #5 comdat align 2 !prof !521 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4
  %3 = tail call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  br i1 %3, label %6, label %4, !prof !546

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA9_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #5 comdat align 2 !prof !547 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5
  %3 = tail call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  br i1 %3, label %6, label %4, !prof !548

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA1_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13cConfigOption8isGlobalEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #5 comdat align 2 !prof !549 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !550, !range !517, !noundef !518
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %0) local_unnamed_addr #5 comdat !prof !551 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !552

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !494
  %5 = icmp eq i8 %4, 0
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ true, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cConfigOption14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: optsize
declare void @_Z15opp_indentlinesB5cxx11PKcS0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z14opp_breaklinesB5cxx11PKci(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA57_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(57) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !553 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !554
  %4 = load ptr, ptr %0, align 8, !tbaa !556
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !525 {
  %3 = load ptr, ptr %0, align 8, !tbaa !556
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !557 {
  %2 = load ptr, ptr %0, align 8, !tbaa !556
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !554
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  invoke void @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #28
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA49_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(49) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isalphah(i8 noundef zeroext %0) local_unnamed_addr #5 comdat !prof !558 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @isalpha(i32 noundef %2) #35
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_Z11opp_toupperh(i8 noundef zeroext %0) local_unnamed_addr #5 comdat !prof !490 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @toupper(i32 noundef %2) #35
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA38_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(38) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA4_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA5_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(5) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: optsize
declare void @_Z20opp_replacesubstringB5cxx11PKcS0_S0_b(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !559 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #28
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !560 {
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator", align 1
  %6 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %1) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #29
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #28
          to label %7 unwind label %14

7:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %4) #32
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #32
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #29
  %8 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  %9 = add i64 %8, %6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9) #28
          to label %10 unwind label %16

10:                                               ; preds = %7
  %11 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %6) #28
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
          to label %18 unwind label %16

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #29
  br label %19

16:                                               ; preds = %12, %10, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  br label %19

18:                                               ; preds = %12
  ret void

19:                                               ; preds = %16, %14
  %20 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !561 {
  %3 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #28
  store ptr %3, ptr %0, align 8, !tbaa !469
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_Z10opp_struprPc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_string6bufferEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !562 {
  %2 = load ptr, ptr %0, align 8, !tbaa !469
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA39_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(39) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsI10opp_stringEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK10opp_string(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA22_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(22) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA69_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(69) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA84_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(84) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNEDFunction11getCategoryEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cNEDFunction, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cMathFunction11getCategoryEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !530 {
  %3 = load ptr, ptr %0, align 8, !tbaa !526
  %4 = load ptr, ptr %1, align 8, !tbaa !526
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !525 {
  %2 = load ptr, ptr %0, align 8, !tbaa !526
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA13_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(13) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNEDFunction14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cNEDFunction, ptr %0, i64 0, i32 8
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cMathFunction14getDescriptionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat !prof !490 {
  %3 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %0) #32
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = load ptr, ptr %0, align 8, !tbaa !526
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %2) #35
  store ptr %3, ptr %0, align 8, !tbaa !526
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA72_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(72) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN14UnitConversion11getAllUnitsEv(ptr dead_on_unwind writable sret(%"class.std::vector.33") align 8) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN14UnitConversion11getBaseUnitEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN14UnitConversion11getLongNameEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !563 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !564

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !565

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #35
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !494
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !566

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !494
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIdEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = load double, ptr %1, align 8, !tbaa !503
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef %4) #28
  ret ptr %0
}

; Function Attrs: optsize
declare noundef double @_ZN14UnitConversion11convertUnitEdPKcS1_(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(288) ptr @_ZN6cEnvirlsIA25_cEERS_RKT_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 1 dereferenceable(25) %1) local_unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 4
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #28
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK9EnvirBase15getParsimProcIdEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #16 align 2 !prof !425 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK9EnvirBase22getParsimNumPartitionsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #16 align 2 !prof !425 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase8shutdownEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  invoke void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #28
          to label %15 unwind label %3

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %5 = extractvalue { ptr, i32 } %4, 1
  %6 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #29
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = extractvalue { ptr, i32 } %4, 0
  %10 = tail call ptr @__cxa_begin_catch(ptr %9) #29
  %11 = load ptr, ptr %0, align 8, !tbaa !431
  %12 = getelementptr inbounds ptr, ptr %11, i64 69
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #28
          to label %14 unwind label %16

14:                                               ; preds = %8
  tail call void @__cxa_end_catch()
  br label %15

15:                                               ; preds = %1, %14
  ret void

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %20

18:                                               ; preds = %16, %3
  %19 = phi { ptr, i32 } [ %4, %3 ], [ %17, %16 ]
  resume { ptr, i32 } %19

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #33
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11cSimulation13deleteNetworkEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase8startRunEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 !prof !425 {
  tail call void @_ZN9EnvirBase10resetClockEv(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %3 = load ptr, ptr %2, align 8, !tbaa !476
  %4 = load ptr, ptr %3, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 19
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %7 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %8 = load ptr, ptr %7, align 8, !tbaa !477
  %9 = load ptr, ptr %8, align 8, !tbaa !431
  %10 = getelementptr inbounds ptr, ptr %9, i64 19
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  %12 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %13 = load ptr, ptr %12, align 8, !tbaa !478
  %14 = load ptr, ptr %13, align 8, !tbaa !431
  %15 = getelementptr inbounds ptr, ptr %14, i64 19
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13) #28
  %17 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %18 = load ptr, ptr %17, align 8, !tbaa !567
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !485

20:                                               ; preds = %1
  %21 = load ptr, ptr %18, align 8, !tbaa !431
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(43) %18) #28
  br label %24

24:                                               ; preds = %20, %1
  %25 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  tail call void @_ZN11cSimulation8startRunEv(ptr noundef nonnull align 8 dereferenceable(224) %25) #28
  tail call void @_ZN6cEnvir13flushLastLineEv(ptr noundef nonnull align 8 dereferenceable(288) %0) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9EnvirBase10resetClockEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(600) %0) local_unnamed_addr #17 align 2 !prof !425 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11cSimulation8startRunEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6cEnvir13flushLastLineEv(ptr noundef nonnull align 8 dereferenceable(288)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase6endRunEv(ptr nocapture noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 !prof !425 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  tail call void @_ZN11cSimulation6endRunEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #28
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6, !prof !485

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4) #28
  %10 = load ptr, ptr %3, align 8, !tbaa !567
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !431
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(43) %10) #32
  br label %16

16:                                               ; preds = %12, %6
  store ptr null, ptr %3, align 8, !tbaa !567
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %19 = load ptr, ptr %18, align 8, !tbaa !478
  %20 = load ptr, ptr %19, align 8, !tbaa !431
  %21 = getelementptr inbounds ptr, ptr %20, i64 20
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #28
  %23 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !477
  %25 = load ptr, ptr %24, align 8, !tbaa !431
  %26 = getelementptr inbounds ptr, ptr %25, i64 20
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %24) #28
  %28 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %29 = load ptr, ptr %28, align 8, !tbaa !476
  %30 = load ptr, ptr %29, align 8, !tbaa !431
  %31 = getelementptr inbounds ptr, ptr %30, i64 20
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %29) #28
  ret void
}

; Function Attrs: optsize
declare void @_ZN11cSimulation6endRunEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase13readParameterEP4cPar(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !568 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %4 = load ptr, ptr %1, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
  %8 = load ptr, ptr %7, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  %11 = load ptr, ptr %0, align 8, !tbaa !431
  %12 = getelementptr inbounds ptr, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
          to label %15 unwind label %31

15:                                               ; preds = %2
  %16 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %17 = load ptr, ptr %1, align 8, !tbaa !431
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
          to label %21 unwind label %31

21:                                               ; preds = %15
  %22 = invoke noundef zeroext i1 @_ZNK4cPar13containsValueEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
          to label %23 unwind label %31

23:                                               ; preds = %21
  %24 = load ptr, ptr %14, align 8, !tbaa !431
  %25 = getelementptr inbounds ptr, ptr %24, i64 57
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %16, ptr noundef %20, i1 noundef zeroext %22) #28
          to label %28 unwind label %31

28:                                               ; preds = %23
  %29 = call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %27, ptr noundef nonnull @.str.162) #28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %33, !prof !569

31:                                               ; preds = %42, %43, %39, %38, %23, %21, %15, %2
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  resume { ptr, i32 } %32

33:                                               ; preds = %28
  %34 = call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %27, ptr noundef nonnull @.str.163) #28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36, !prof !569

36:                                               ; preds = %33
  %37 = call noundef zeroext i1 @_Z11opp_isemptyPKc(ptr noundef %27) #28
  br i1 %37, label %39, label %38, !prof !570

38:                                               ; preds = %36
  invoke void @_ZN4cPar5parseEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %27) #28
          to label %47 unwind label %31

39:                                               ; preds = %36
  %40 = invoke noundef zeroext i1 @_ZNK4cPar13containsValueEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
          to label %41 unwind label %31

41:                                               ; preds = %39
  br i1 %40, label %42, label %43, !prof !571

42:                                               ; preds = %28, %41
  invoke void @_ZN4cPar13acceptDefaultEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #28
          to label %47 unwind label %31

43:                                               ; preds = %41, %33
  %44 = load ptr, ptr %0, align 8, !tbaa !431
  %45 = getelementptr inbounds ptr, ptr %44, i64 67
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull %1) #28
          to label %47 unwind label %31

47:                                               ; preds = %42, %43, %38
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK4cPar13containsValueEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN4cPar13acceptDefaultEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN4cPar5parseEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase13isModuleLocalEP7cModulePKci(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2, i32 %3) unnamed_addr #16 align 2 !prof !490 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9EnvirBase14getXMLDocumentEPKcS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !490 {
  %4 = alloca %class.ModNameParamResolver, align 8
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !475
  %7 = load ptr, ptr %6, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1) #28
  %11 = icmp eq ptr %2, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #29
  %13 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  %14 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %13) #28
  call void @_ZN20ModNameParamResolverC2EP7cModule(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %14) #28
  %15 = invoke noundef ptr @_ZN11cXMLElement24getDocumentElementByPathEPS_PKcPNS_13ParamResolverE(ptr noundef %10, ptr noundef nonnull %2, ptr noundef nonnull %4) #28
          to label %16 unwind label %17

16:                                               ; preds = %12
  call void @_ZN11cXMLElement13ParamResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #29
  br label %24

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11cXMLElement13ParamResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #29
  resume { ptr, i32 } %18

19:                                               ; preds = %3
  %20 = load ptr, ptr %10, align 8, !tbaa !431
  %21 = getelementptr inbounds ptr, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(192) %10) #28
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %15, %16 ], [ %23, %19 ]
  ret ptr %25
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN20ModNameParamResolverC2EP7cModule(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !490 {
  tail call void @_ZN11cXMLElement13ParamResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV20ModNameParamResolver, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !431
  %3 = getelementptr inbounds %class.ModNameParamResolver, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !572
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11cXMLElement24getDocumentElementByPathEPS_PKcPNS_13ParamResolverE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11cXMLElement13ParamResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !490 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN9EnvirBase9getConfigEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #18 align 2 !prof !575 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !474
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN9EnvirBase11getConfigExEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #18 align 2 !prof !576 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !474
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase6bubbleEP10cComponentPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !490 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !567
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 7
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, ptr noundef %2) #28
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN9EnvirBase13objectDeletedEP7cObject(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #16 align 2 !prof !577 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase15simulationEventEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !578 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !579

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase9beginSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !580 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !581

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 10
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase16messageScheduledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !582 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !583

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase16messageCancelledEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !584 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !585

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 9
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase17messageSendDirectEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !490 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !567
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %12 = load ptr, ptr %9, align 8, !tbaa !431
  %13 = getelementptr inbounds ptr, ptr %12, i64 11
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(43) %9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #28
  br label %15

15:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !586 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !587 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !567
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !588

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, ptr noundef %2) #28
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate7SimTimeS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !589 {
  %6 = alloca %class.SimTime, align 8
  %7 = alloca %class.SimTime, align 8
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !567
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !590

11:                                               ; preds = %5
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %12 = load ptr, ptr %9, align 8, !tbaa !431
  %13 = getelementptr inbounds ptr, ptr %12, i64 13
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(43) %9, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #28
  br label %15

15:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase7endSendEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !580 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !581

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 14
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase14messageDeletedEP8cMessage(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !591 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !592

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase20componentMethodBeginEP10cComponentS1_PKcP13__va_list_tag(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !593 {
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !567
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !594

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !431
  %11 = getelementptr inbounds ptr, ptr %10, i64 17
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(43) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #28
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase18componentMethodEndEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 !prof !593 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8, !tbaa !567
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !594

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !431
  %7 = getelementptr inbounds ptr, ptr %6, i64 18
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(43) %3) #28
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase13moduleCreatedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !595 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !596

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 19
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase13moduleDeletedEP7cModule(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !595 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !596

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 20
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase16moduleReparentedEP7cModuleS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !490 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !567
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, ptr noundef %2) #28
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase11gateCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !597 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !598

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 21
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase11gateDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !597 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !598

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase17connectionCreatedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !599 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !600

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase17connectionDeletedEP5cGate(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !599 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !600

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase20displayStringChangedEP10cComponent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !490 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %4 = load ptr, ptr %3, align 8, !tbaa !567
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 25
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(43) %4, ptr noundef %1) #28
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase5sputnEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 !prof !425 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !567
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !485

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 26
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(43) %5, ptr noundef %1, i32 noundef %2) #28
  br label %11

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase16undisposedObjectEP7cObject(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !490 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 21
  %5 = load i8, ptr %4, align 1, !tbaa !601, !range !517, !noundef !518
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %12 = load ptr, ptr %1, align 8, !tbaa !431
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  %15 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef %11, ptr noundef %15) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  br label %17

17:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase15processFileNameER10opp_string(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !602 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %6 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #29
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %4) #28
          to label %7 unwind label %14

7:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #29
  %8 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 19
  %9 = load i8, ptr %8, align 1, !tbaa !603, !range !517, !noundef !518
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %42, label %11, !prof !604

11:                                               ; preds = %7
  %12 = call ptr @getenv(ptr noundef nonnull @.str.165) #32
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %30

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #29
  br label %50

16:                                               ; preds = %11
  %17 = call ptr @getenv(ptr noundef nonnull @.str.166) #32
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = call ptr @getenv(ptr noundef nonnull @.str.167) #32
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = call ptr @__cxa_allocate_exception(i64 128) #29
  %24 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull @.str.168, ptr noundef %24) #28
          to label %25 unwind label %26

25:                                               ; preds = %22
  invoke void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %52 unwind label %28

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %23) #29
  br label %48

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %48

30:                                               ; preds = %11, %16, %19
  %31 = phi ptr [ %20, %19 ], [ %17, %16 ], [ %12, %11 ]
  %32 = call i32 @getpid() #32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.169, ptr noundef nonnull %31, i32 noundef %32) #28
          to label %33 unwind label %36

33:                                               ; preds = %30
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
          to label %35 unwind label %38

35:                                               ; preds = %33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  br label %42

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  br label %48

42:                                               ; preds = %35, %7
  %43 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %44 = invoke noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %43) #28
          to label %45 unwind label %46

45:                                               ; preds = %42
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret void

46:                                               ; preds = %42
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %48

48:                                               ; preds = %26, %28, %40, %46
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %41, %40 ], [ %29, %28 ], [ %27, %26 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  br label %50

50:                                               ; preds = %48, %14
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  resume { ptr, i32 } %51

52:                                               ; preds = %25
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !605 {
  %3 = load ptr, ptr %0, align 8, !tbaa !469
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #28
  store ptr %7, ptr %0, align 8, !tbaa !469
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase11readOptionsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !431
  %7 = getelementptr inbounds ptr, ptr %6, i64 31
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %10 = load ptr, ptr @CFGID_TOTAL_STACK, align 8, !tbaa !427
  %11 = load ptr, ptr %9, align 8, !tbaa !431
  %12 = getelementptr inbounds ptr, ptr %11, i64 27
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef double %13(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %10, double noundef 0x4140000000000000) #28
  %15 = fptoui double %14 to i64
  %16 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 5
  store i64 %15, ptr %16, align 8, !tbaa !515
  %17 = load ptr, ptr @CFGID_PARALLEL_SIMULATION, align 8, !tbaa !427
  %18 = load ptr, ptr %9, align 8, !tbaa !431
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %17, i1 noundef zeroext false) #28
  %22 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 7
  %23 = zext i1 %21 to i8
  store i8 %23, ptr %22, align 8, !tbaa !516
  br i1 %21, label %40, label %24, !prof !487

24:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #29
  %25 = load ptr, ptr @CFGID_SCHEDULER_CLASS, align 8, !tbaa !427
  %26 = load ptr, ptr %9, align 8, !tbaa !431
  %27 = getelementptr inbounds ptr, ptr %26, i64 28
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %25, ptr noundef nonnull @.str.96) #28
  %29 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 6
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
          to label %31 unwind label %38

31:                                               ; preds = %24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %32 = load ptr, ptr @CFGID_OUTPUTVECTORMANAGER_CLASS, align 8, !tbaa !427
  %33 = load ptr, ptr %9, align 8, !tbaa !431
  %34 = getelementptr inbounds ptr, ptr %33, i64 28
  %35 = load ptr, ptr %34, align 8
  call void %35(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %32, ptr noundef nonnull @.str.96) #28
  %36 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 15
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
          to label %45 unwind label %103

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %109

40:                                               ; preds = %1
  %41 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef nonnull @.str.42) #28
          to label %42 unwind label %43

42:                                               ; preds = %40
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %41) #29
  br label %109

45:                                               ; preds = %31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #29
  %46 = load ptr, ptr @CFGID_OUTPUTSCALARMANAGER_CLASS, align 8, !tbaa !427
  %47 = load ptr, ptr %9, align 8, !tbaa !431
  %48 = getelementptr inbounds ptr, ptr %47, i64 28
  %49 = load ptr, ptr %48, align 8
  call void %49(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %46, ptr noundef nonnull @.str.96) #28
  %50 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 16
  %51 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
          to label %52 unwind label %105

52:                                               ; preds = %45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  %53 = load ptr, ptr @CFGID_SNAPSHOTMANAGER_CLASS, align 8, !tbaa !427
  %54 = load ptr, ptr %9, align 8, !tbaa !431
  %55 = getelementptr inbounds ptr, ptr %54, i64 28
  %56 = load ptr, ptr %55, align 8
  call void %56(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %53, ptr noundef nonnull @.str.96) #28
  %57 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 17
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
          to label %59 unwind label %107

59:                                               ; preds = %52
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  %60 = load ptr, ptr @CFGID_FNAME_APPEND_HOST, align 8, !tbaa !427
  %61 = load ptr, ptr %9, align 8, !tbaa !431
  %62 = getelementptr inbounds ptr, ptr %61, i64 25
  %63 = load ptr, ptr %62, align 8
  %64 = call noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %60, i1 noundef zeroext false) #28
  %65 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 19
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 1, !tbaa !603
  %67 = load ptr, ptr @CFGID_DEBUG_ON_ERRORS, align 8, !tbaa !427
  %68 = load ptr, ptr %9, align 8, !tbaa !431
  %69 = getelementptr inbounds ptr, ptr %68, i64 25
  %70 = load ptr, ptr %69, align 8
  %71 = call noundef zeroext i1 %70(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %67, i1 noundef zeroext false) #28
  %72 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %73 = getelementptr inbounds %class.cEnvir, ptr %72, i64 0, i32 3
  %74 = zext i1 %71 to i8
  store i8 %74, ptr %73, align 2, !tbaa !606
  %75 = load ptr, ptr @CFGID_PRINT_UNDISPOSED, align 8, !tbaa !427
  %76 = load ptr, ptr %9, align 8, !tbaa !431
  %77 = getelementptr inbounds ptr, ptr %76, i64 25
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef zeroext i1 %78(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %75, i1 noundef zeroext false) #28
  %80 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 21
  %81 = zext i1 %79 to i8
  store i8 %81, ptr %80, align 1, !tbaa !601
  %82 = load ptr, ptr @CFGID_SIMTIME_SCALE, align 8, !tbaa !427
  %83 = load ptr, ptr %9, align 8, !tbaa !431
  %84 = getelementptr inbounds ptr, ptr %83, i64 26
  %85 = load ptr, ptr %84, align 8
  %86 = call noundef i64 %85(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %82, i64 noundef 0) #28
  %87 = trunc i64 %86 to i32
  call void @_ZN7SimTime11setScaleExpEi(i32 noundef %87) #28
  %88 = load ptr, ptr @CFGID_NETWORK, align 8, !tbaa !427
  %89 = load ptr, ptr %88, align 8, !tbaa !431
  %90 = getelementptr inbounds ptr, ptr %89, i64 6
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(20) %88) #28
  %93 = load ptr, ptr %9, align 8, !tbaa !431
  %94 = getelementptr inbounds ptr, ptr %93, i64 21
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %92) #28
  %97 = load ptr, ptr %96, align 8, !tbaa !431
  %98 = getelementptr inbounds ptr, ptr %97, i64 4
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %96) #28
  %101 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  %102 = call noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef %100) #28
  ret void

103:                                              ; preds = %31
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  br label %109

105:                                              ; preds = %45
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  br label %109

107:                                              ; preds = %52
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  br label %109

109:                                              ; preds = %107, %105, %103, %43, %38
  %110 = phi { ptr, i32 } [ %44, %43 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %39, %38 ]
  resume { ptr, i32 } %110
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !549 {
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #32
  %4 = tail call noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #28
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN7SimTime11setScaleExpEi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase17readPerRunOptionsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !431
  %6 = getelementptr inbounds ptr, ptr %5, i64 31
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #29
  %9 = load ptr, ptr @CFGID_NETWORK, align 8, !tbaa !427
  %10 = load ptr, ptr %8, align 8, !tbaa !431
  %11 = getelementptr inbounds ptr, ptr %10, i64 28
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9, ptr noundef nonnull @.str.96) #28
  %13 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 10
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
          to label %15 unwind label %92

15:                                               ; preds = %1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  %16 = load ptr, ptr @CFGID_NETWORK, align 8, !tbaa !427
  %17 = load ptr, ptr %16, align 8, !tbaa !431
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(20) %16) #28
  %21 = load ptr, ptr %8, align 8, !tbaa !431
  %22 = getelementptr inbounds ptr, ptr %21, i64 21
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %20) #28
  %25 = load ptr, ptr %24, align 8, !tbaa !431
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24) #28
  %29 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  %30 = call noundef ptr @_ZN10opp_stringaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28) #28
  %31 = load ptr, ptr @CFGID_WARNINGS, align 8, !tbaa !427
  %32 = load ptr, ptr %8, align 8, !tbaa !431
  %33 = getelementptr inbounds ptr, ptr %32, i64 25
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %31, i1 noundef zeroext false) #28
  %36 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 20
  %37 = zext i1 %35 to i8
  store i8 %37, ptr %36, align 2, !tbaa !607
  %38 = load ptr, ptr @CFGID_SIM_TIME_LIMIT, align 8, !tbaa !427
  %39 = load ptr, ptr %8, align 8, !tbaa !431
  %40 = getelementptr inbounds ptr, ptr %39, i64 27
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef double %41(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %38, double noundef 0.000000e+00) #28
  %43 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 22
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %43, double noundef %42) #28
  %45 = load ptr, ptr @CFGID_CPU_TIME_LIMIT, align 8, !tbaa !427
  %46 = load ptr, ptr %8, align 8, !tbaa !431
  %47 = getelementptr inbounds ptr, ptr %46, i64 27
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef double %48(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %45, double noundef 0.000000e+00) #28
  %50 = fptosi double %49 to i64
  %51 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 23
  store i64 %50, ptr %51, align 8, !tbaa !608
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %52 = load ptr, ptr @CFGID_FINGERPRINT, align 8, !tbaa !427
  %53 = load ptr, ptr %8, align 8, !tbaa !431
  %54 = getelementptr inbounds ptr, ptr %53, i64 28
  %55 = load ptr, ptr %54, align 8
  call void %55(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %52, ptr noundef nonnull @.str.96) #28
  %56 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
          to label %58 unwind label %94

58:                                               ; preds = %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  %59 = load ptr, ptr @CFGID_NUM_RNGS, align 8, !tbaa !427
  %60 = load ptr, ptr %8, align 8, !tbaa !431
  %61 = getelementptr inbounds ptr, ptr %60, i64 26
  %62 = load ptr, ptr %61, align 8
  %63 = call noundef i64 %62(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %59, i64 noundef 0) #28
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 12
  store i32 %64, ptr %65, align 8, !tbaa !609
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #29
  %66 = load ptr, ptr @CFGID_RNG_CLASS, align 8, !tbaa !427
  %67 = load ptr, ptr %8, align 8, !tbaa !431
  %68 = getelementptr inbounds ptr, ptr %67, i64 28
  %69 = load ptr, ptr %68, align 8
  call void %69(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %66, ptr noundef nonnull @.str.96) #28
  %70 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 13
  %71 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
          to label %72 unwind label %96

72:                                               ; preds = %58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  %73 = load ptr, ptr @CFGID_SEED_SET, align 8, !tbaa !427
  %74 = load ptr, ptr %8, align 8, !tbaa !431
  %75 = getelementptr inbounds ptr, ptr %74, i64 26
  %76 = load ptr, ptr %75, align 8
  %77 = call noundef i64 %76(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %73, i64 noundef 0) #28
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 14
  store i32 %78, ptr %79, align 8, !tbaa !610
  %80 = load ptr, ptr @CFGID_RECORD_EVENTLOG, align 8, !tbaa !427
  %81 = load ptr, ptr %8, align 8, !tbaa !431
  %82 = getelementptr inbounds ptr, ptr %81, i64 25
  %83 = load ptr, ptr %82, align 8
  %84 = call noundef zeroext i1 %83(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %80, i1 noundef zeroext false) #28
  %85 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 18
  %86 = zext i1 %84 to i8
  store i8 %86, ptr %85, align 8, !tbaa !611
  %87 = call noundef zeroext i1 @_ZNK10opp_string5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #28
  %88 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  br i1 %87, label %100, label %89, !prof !485

89:                                               ; preds = %72
  %90 = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30
  invoke void @_ZN7cHasherC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %90) #28
          to label %91 unwind label %98

91:                                               ; preds = %89
  call void @_ZN11cSimulation9setHasherEP7cHasher(ptr noundef nonnull align 8 dereferenceable(224) %88, ptr noundef nonnull %90) #28
  br label %101

92:                                               ; preds = %1
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #29
  br label %206

94:                                               ; preds = %15
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  br label %206

96:                                               ; preds = %58
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  br label %206

98:                                               ; preds = %89
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %90) #31
  br label %206

100:                                              ; preds = %72
  call void @_ZN11cSimulation9setHasherEP7cHasher(ptr noundef nonnull align 8 dereferenceable(224) %88, ptr noundef null) #28
  br label %101

101:                                              ; preds = %100, %91
  %102 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #28
  %103 = call noundef ptr @_Z9createOnePKc(ptr noundef %102) #28
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %111, !prof !487

105:                                              ; preds = %101
  %106 = call ptr @__cxa_allocate_exception(i64 128) #29
  %107 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %106, ptr noundef nonnull @.str.170, ptr noundef %107) #28
          to label %108 unwind label %109

108:                                              ; preds = %105
  call void @__cxa_throw(ptr nonnull %106, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

109:                                              ; preds = %105
  %110 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %106) #29
  br label %206

111:                                              ; preds = %101
  %112 = load ptr, ptr %103, align 8, !tbaa !431
  %113 = getelementptr inbounds ptr, ptr %112, i64 20
  %114 = load ptr, ptr %113, align 8
  call void %114(ptr noundef nonnull align 8 dereferenceable(16) %103) #28
  %115 = load ptr, ptr %103, align 8, !tbaa !431
  %116 = getelementptr inbounds ptr, ptr %115, i64 4
  %117 = load ptr, ptr %116, align 8
  call void %117(ptr noundef nonnull align 8 dereferenceable(16) %103) #32
  %118 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %119 = load i32, ptr %118, align 8, !tbaa !457
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %140, !prof !612

121:                                              ; preds = %111
  %122 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  br label %123

123:                                              ; preds = %121, %135
  %124 = phi i32 [ %119, %121 ], [ %136, %135 ]
  %125 = phi i64 [ 0, %121 ], [ %137, %135 ]
  %126 = load ptr, ptr %122, align 8, !tbaa !480
  %127 = getelementptr inbounds ptr, ptr %126, i64 %125
  %128 = load ptr, ptr %127, align 8, !tbaa !427
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %123
  %131 = load ptr, ptr %128, align 8, !tbaa !431
  %132 = getelementptr inbounds ptr, ptr %131, i64 4
  %133 = load ptr, ptr %132, align 8
  call void %133(ptr noundef nonnull align 8 dereferenceable(16) %128) #32
  %134 = load i32, ptr %118, align 8, !tbaa !457
  br label %135

135:                                              ; preds = %123, %130
  %136 = phi i32 [ %124, %123 ], [ %134, %130 ]
  %137 = add nuw nsw i64 %125, 1
  %138 = sext i32 %136 to i64
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %123, label %140, !prof !613, !llvm.loop !614

140:                                              ; preds = %135, %111
  %141 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  %142 = load ptr, ptr %141, align 8, !tbaa !480
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  call void @_ZdaPv(ptr noundef nonnull %142) #31
  br label %145

145:                                              ; preds = %144, %140
  %146 = load i32, ptr %65, align 8, !tbaa !609
  store i32 %146, ptr %118, align 8, !tbaa !457
  %147 = sext i32 %146 to i64
  %148 = icmp slt i32 %146, 0
  %149 = shl nsw i64 %147, 3
  %150 = select i1 %148, i64 -1, i64 %149
  %151 = call noalias noundef nonnull ptr @_Znam(i64 noundef %150) #30
  store ptr %151, ptr %141, align 8, !tbaa !480
  %152 = icmp sgt i32 %146, 0
  br i1 %152, label %153, label %192, !prof !479

153:                                              ; preds = %145, %164
  %154 = phi i64 [ %188, %164 ], [ 0, %145 ]
  %155 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #28
  %156 = call noundef ptr @_Z9createOnePKc(ptr noundef %155) #28
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %164, !prof !487

158:                                              ; preds = %153
  %159 = call ptr @__cxa_allocate_exception(i64 128) #29
  %160 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %70) #28
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %159, ptr noundef nonnull @.str.170, ptr noundef %160) #28
          to label %161 unwind label %162

161:                                              ; preds = %158
  call void @__cxa_throw(ptr nonnull %159, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

162:                                              ; preds = %158
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %159) #29
  br label %206

164:                                              ; preds = %153
  %165 = load ptr, ptr %141, align 8, !tbaa !480
  %166 = getelementptr inbounds ptr, ptr %165, i64 %154
  store ptr %156, ptr %166, align 8, !tbaa !427
  %167 = load ptr, ptr %141, align 8, !tbaa !480
  %168 = getelementptr inbounds ptr, ptr %167, i64 %154
  %169 = load ptr, ptr %168, align 8, !tbaa !427
  %170 = load i32, ptr %79, align 8, !tbaa !610
  %171 = load i32, ptr %118, align 8, !tbaa !457
  %172 = load ptr, ptr %0, align 8, !tbaa !431
  %173 = getelementptr inbounds ptr, ptr %172, i64 53
  %174 = load ptr, ptr %173, align 8
  %175 = call noundef i32 %174(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %176 = load ptr, ptr %0, align 8, !tbaa !431
  %177 = getelementptr inbounds ptr, ptr %176, i64 54
  %178 = load ptr, ptr %177, align 8
  %179 = call noundef i32 %178(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %180 = load ptr, ptr %0, align 8, !tbaa !431
  %181 = getelementptr inbounds ptr, ptr %180, i64 31
  %182 = load ptr, ptr %181, align 8
  %183 = call noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  %184 = load ptr, ptr %169, align 8, !tbaa !431
  %185 = getelementptr inbounds ptr, ptr %184, i64 19
  %186 = load ptr, ptr %185, align 8
  %187 = trunc i64 %154 to i32
  call void %186(ptr noundef nonnull align 8 dereferenceable(16) %169, i32 noundef %170, i32 noundef %187, i32 noundef %171, i32 noundef %175, i32 noundef %179, ptr noundef %183) #28
  %188 = add nuw nsw i64 %154, 1
  %189 = load i32, ptr %118, align 8, !tbaa !457
  %190 = sext i32 %189 to i64
  %191 = icmp slt i64 %188, %190
  br i1 %191, label %153, label %192, !prof !481, !llvm.loop !615

192:                                              ; preds = %164, %145
  %193 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 33
  store i64 0, ptr %193, align 8, !tbaa !616
  %194 = load i8, ptr %85, align 8, !tbaa !611, !range !517, !noundef !518
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %205, label %196, !prof !485

196:                                              ; preds = %192
  %197 = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30
  invoke void @_ZN19EventlogFileManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(43) %197) #28
          to label %198 unwind label %203

198:                                              ; preds = %196
  %199 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 29
  store ptr %197, ptr %199, align 8, !tbaa !567
  %200 = load ptr, ptr %197, align 8, !tbaa !431
  %201 = getelementptr inbounds ptr, ptr %200, i64 2
  %202 = load ptr, ptr %201, align 8
  call void %202(ptr noundef nonnull align 8 dereferenceable(43) %197) #28
  br label %205

203:                                              ; preds = %196
  %204 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %197) #31
  br label %206

205:                                              ; preds = %198, %192
  ret void

206:                                              ; preds = %109, %203, %162, %98, %96, %94, %92
  %207 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %110, %109 ], [ %163, %162 ], [ %204, %203 ]
  resume { ptr, i32 } %207
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !617 {
  tail call void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #28
  %3 = load double, ptr @_ZN7SimTime6fscaleE, align 8, !tbaa !503
  %4 = fmul double %3, %1
  %5 = tail call noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %4) #28
  store i64 %5, ptr %0, align 8, !tbaa !471
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10opp_string5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !618 {
  %2 = load ptr, ptr %0, align 8, !tbaa !469
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !619

4:                                                ; preds = %1
  %5 = load i8, ptr %2, align 1, !tbaa !494
  %6 = icmp eq i8 %5, 0
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i1 [ true, %1 ], [ %6, %4 ]
  ret i1 %8
}

; Function Attrs: optsize
declare void @_ZN11cSimulation9setHasherEP7cHasher(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cHasherC2Ev(ptr noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #4 comdat align 2 !prof !490 {
  tail call void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #28
  store i32 0, ptr %0, align 4, !tbaa !620
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN19EventlogFileManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(43)) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK9EnvirBase10getNumRNGsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #18 align 2 !prof !490 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !457
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9EnvirBase6getRNGEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !622 {
  %3 = icmp sgt i32 %1, -1
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = icmp sgt i32 %5, %1
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %14, label %8, !prof !623

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #29
  %10 = load i32, ptr %4, align 8, !tbaa !457
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.171, i32 noundef %1, i32 noundef %10) #28
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #29
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !480
  %17 = zext nneg i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !427
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase16getRNGMappingForEP10cComponent(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !624 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::vector.33", align 8
  %5 = alloca [100 x i32], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = load ptr, ptr %0, align 8, !tbaa !431
  %12 = getelementptr inbounds ptr, ptr %11, i64 32
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %15 = load ptr, ptr %1, align 8, !tbaa !431
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
  %18 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %19 = load ptr, ptr %14, align 8, !tbaa !431
  %20 = getelementptr inbounds ptr, ptr %19, i64 61
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %18, ptr noundef nonnull @.str.172) #28
          to label %22 unwind label %25

22:                                               ; preds = %2
  %23 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %187, label %27, !prof !625

25:                                               ; preds = %2
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %190

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %5) #29
  %28 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %33, label %186

31:                                               ; preds = %166
  %32 = icmp sgt i32 %167, 0
  br i1 %32, label %178, label %186

33:                                               ; preds = %27, %166
  %34 = phi i64 [ %171, %166 ], [ 0, %27 ]
  %35 = phi i32 [ %167, %166 ], [ 0, %27 ]
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %34) #32
  %37 = load ptr, ptr %36, align 8, !tbaa !427
  %38 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %39 = load ptr, ptr %14, align 8, !tbaa !431
  %40 = getelementptr inbounds ptr, ptr %39, i64 22
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %38, ptr noundef %37) #28
          to label %43 unwind label %66

43:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  %44 = getelementptr inbounds i8, ptr %37, i64 4
  %45 = call i64 @strtol(ptr noundef nonnull %44, ptr noundef nonnull %6, i32 noundef 10) #32
  %46 = trunc i64 %45 to i32
  %47 = call i64 @strtol(ptr noundef %42, ptr noundef nonnull %7, i32 noundef 10) #32
  %48 = trunc i64 %47 to i32
  %49 = load ptr, ptr %6, align 8, !tbaa !427
  %50 = load i8, ptr %49, align 1, !tbaa !494
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load ptr, ptr %7, align 8, !tbaa !427
  %54 = load i8, ptr %53, align 1, !tbaa !494
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %52, %43
  %57 = call ptr @__cxa_allocate_exception(i64 128) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #29
  %58 = load ptr, ptr %1, align 8, !tbaa !431
  %59 = getelementptr inbounds ptr, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
          to label %61 unwind label %68

61:                                               ; preds = %56
  %62 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #32
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %57, ptr noundef nonnull @.str.173, ptr noundef %37, ptr noundef %42, ptr noundef %62) #28
          to label %65 unwind label %63

63:                                               ; preds = %61
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #29
  br label %72

65:                                               ; preds = %61
  invoke void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %192 unwind label %70

66:                                               ; preds = %33
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %188

68:                                               ; preds = %56
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #29
  br label %72

70:                                               ; preds = %65
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #29
  br label %176

72:                                               ; preds = %63, %68
  %73 = phi { ptr, i32 } [ %69, %68 ], [ %64, %63 ]
  call void @__cxa_free_exception(ptr %57) #29
  br label %176

74:                                               ; preds = %52
  %75 = load ptr, ptr %0, align 8, !tbaa !431
  %76 = getelementptr inbounds ptr, ptr %75, i64 40
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef i32 %77(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
          to label %79 unwind label %94

79:                                               ; preds = %74
  %80 = icmp slt i32 %78, %48
  br i1 %80, label %81, label %104

81:                                               ; preds = %79
  %82 = call ptr @__cxa_allocate_exception(i64 128) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #29
  %83 = load ptr, ptr %1, align 8, !tbaa !431
  %84 = getelementptr inbounds ptr, ptr %83, i64 8
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
          to label %86 unwind label %96

86:                                               ; preds = %81
  %87 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  %88 = load ptr, ptr %0, align 8, !tbaa !431
  %89 = getelementptr inbounds ptr, ptr %88, i64 40
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef i32 %90(ptr noundef nonnull align 8 dereferenceable(600) %0) #28
          to label %92 unwind label %98

92:                                               ; preds = %86
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %82, ptr noundef nonnull @.str.174, i32 noundef %46, i32 noundef %48, ptr noundef %87, i32 noundef %91) #28
          to label %93 unwind label %98

93:                                               ; preds = %92
  invoke void @__cxa_throw(ptr nonnull %82, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %192 unwind label %100

94:                                               ; preds = %74
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %176

96:                                               ; preds = %81
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #29
  br label %102

98:                                               ; preds = %92, %86
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #29
  br label %102

100:                                              ; preds = %93
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #29
  br label %176

102:                                              ; preds = %98, %96
  %103 = phi { ptr, i32 } [ %97, %96 ], [ %99, %98 ]
  call void @__cxa_free_exception(ptr %82) #29
  br label %176

104:                                              ; preds = %79
  %105 = icmp sgt i32 %35, %46
  br i1 %105, label %166, label %106

106:                                              ; preds = %104
  %107 = icmp sgt i32 %46, 99
  br i1 %107, label %150, label %108

108:                                              ; preds = %106
  %109 = sext i32 %35 to i64
  %110 = add nsw i32 %46, 1
  %111 = sub i32 %46, %35
  %112 = zext i32 %111 to i64
  %113 = add nuw nsw i64 %112, 4
  %114 = and i64 %113, 8589934588
  %115 = insertelement <4 x i64> poison, i64 %112, i64 0
  %116 = shufflevector <4 x i64> %115, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %117

117:                                              ; preds = %147, %108
  %118 = phi i64 [ 0, %108 ], [ %148, %147 ]
  %119 = trunc i64 %118 to i32
  %120 = add i32 %35, %119
  %121 = add i64 %118, %109
  %122 = insertelement <4 x i64> poison, i64 %118, i64 0
  %123 = shufflevector <4 x i64> %122, <4 x i64> poison, <4 x i32> zeroinitializer
  %124 = or disjoint <4 x i64> %123, <i64 0, i64 1, i64 2, i64 3>
  %125 = icmp ule <4 x i64> %124, %116
  %126 = extractelement <4 x i1> %125, i64 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 %121
  store i32 %120, ptr %128, align 4, !tbaa !626
  br label %129

129:                                              ; preds = %127, %117
  %130 = extractelement <4 x i1> %125, i64 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = add i64 %121, 1
  %133 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 %132
  %134 = add i32 %120, 1
  store i32 %134, ptr %133, align 4, !tbaa !626
  br label %135

135:                                              ; preds = %131, %129
  %136 = extractelement <4 x i1> %125, i64 2
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = add i64 %121, 2
  %139 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 %138
  %140 = add i32 %120, 2
  store i32 %140, ptr %139, align 4, !tbaa !626
  br label %141

141:                                              ; preds = %137, %135
  %142 = extractelement <4 x i1> %125, i64 3
  br i1 %142, label %143, label %147

143:                                              ; preds = %141
  %144 = add i64 %121, 3
  %145 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 %144
  %146 = add i32 %120, 3
  store i32 %146, ptr %145, align 4, !tbaa !626
  br label %147

147:                                              ; preds = %143, %141
  %148 = add i64 %118, 4
  %149 = icmp eq i64 %148, %114
  br i1 %149, label %166, label %117, !llvm.loop !627

150:                                              ; preds = %106
  %151 = call ptr @__cxa_allocate_exception(i64 128) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #29
  %152 = load ptr, ptr %1, align 8, !tbaa !431
  %153 = getelementptr inbounds ptr, ptr %152, i64 8
  %154 = load ptr, ptr %153, align 8
  invoke void %154(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #28
          to label %155 unwind label %160

155:                                              ; preds = %150
  %156 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %151, ptr noundef nonnull @.str.175, i32 noundef %46, ptr noundef %156) #28
          to label %159 unwind label %157

157:                                              ; preds = %155
  %158 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #29
  br label %164

159:                                              ; preds = %155
  invoke void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %192 unwind label %162

160:                                              ; preds = %150
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #29
  br label %164

162:                                              ; preds = %159
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #29
  br label %176

164:                                              ; preds = %157, %160
  %165 = phi { ptr, i32 } [ %161, %160 ], [ %158, %157 ]
  call void @__cxa_free_exception(ptr %151) #29
  br label %176

166:                                              ; preds = %147, %104
  %167 = phi i32 [ %35, %104 ], [ %110, %147 ]
  %168 = shl i64 %45, 32
  %169 = ashr exact i64 %168, 32
  %170 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 %169
  store i32 %48, ptr %170, align 4, !tbaa !626
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  %171 = add nuw nsw i64 %34, 1
  %172 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  %173 = shl i64 %172, 32
  %174 = ashr exact i64 %173, 32
  %175 = icmp slt i64 %171, %174
  br i1 %175, label %33, label %31, !llvm.loop !630

176:                                              ; preds = %162, %100, %70, %164, %102, %72, %94
  %177 = phi { ptr, i32 } [ %73, %72 ], [ %71, %70 ], [ %103, %102 ], [ %101, %100 ], [ %165, %164 ], [ %163, %162 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br label %188

178:                                              ; preds = %31
  %179 = zext nneg i32 %167 to i64
  %180 = shl nuw nsw i64 %179, 2
  %181 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %180) #30
          to label %182 unwind label %184

182:                                              ; preds = %178
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %181, ptr nonnull align 16 %5, i64 %180, i1 false)
  %183 = trunc i32 %167 to i16
  call void @_ZN10cComponent9setRNGMapEsPi(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef signext %183, ptr noundef nonnull %181) #28
  br label %186

184:                                              ; preds = %178
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %188

186:                                              ; preds = %27, %182, %31
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #29
  br label %187

187:                                              ; preds = %22, %186
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret void

188:                                              ; preds = %66, %176, %184
  %189 = phi { ptr, i32 } [ %185, %184 ], [ %177, %176 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %5) #29
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #32
  br label %190

190:                                              ; preds = %188, %25
  %191 = phi { ptr, i32 } [ %189, %188 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  resume { ptr, i32 } %191

192:                                              ; preds = %159, %93, %65
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cComponent9setRNGMapEsPi(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %4 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 2
  store i16 %1, ptr %4, align 8, !tbaa !631
  %5 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 3
  store ptr %2, ptr %5, align 8, !tbaa !634
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9EnvirBase20registerOutputVectorEPKcS1_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !635 {
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !476
  %6 = load ptr, ptr %5, align 8, !tbaa !431
  %7 = getelementptr inbounds ptr, ptr %6, i64 21
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2) #28
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase22deregisterOutputVectorEPv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !635 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !476
  %5 = load ptr, ptr %4, align 8, !tbaa !431
  %6 = getelementptr inbounds ptr, ptr %5, i64 22
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase18setVectorAttributeEPvPKcS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !490 {
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !476
  %7 = load ptr, ptr %6, align 8, !tbaa !431
  %8 = getelementptr inbounds ptr, ptr %7, i64 23
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase20recordInOutputVectorEPv7SimTimed(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef nonnull %2, double noundef %3) unnamed_addr #4 align 2 !prof !636 {
  %5 = alloca %class.SimTime, align 8
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !476
  call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  %8 = load ptr, ptr %7, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 24
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, ptr noundef nonnull %5, double noundef %3) #28
  ret i1 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase12recordScalarEP10cComponentPKcdP14opp_string_map(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !637 {
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !477
  %8 = load ptr, ptr %7, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase15recordStatisticEP10cComponentPKcP10cStatisticP14opp_string_map(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 !prof !490 {
  %6 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 31
  %7 = load ptr, ptr %6, align 8, !tbaa !477
  %8 = load ptr, ptr %7, align 8, !tbaa !431
  %9 = getelementptr inbounds ptr, ptr %8, i64 22
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9EnvirBase20getStreamForSnapshotEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #4 align 2 !prof !490 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !478
  %4 = load ptr, ptr %3, align 8, !tbaa !431
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase24releaseStreamForSnapshotEPSo(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !490 {
  %3 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 32
  %4 = load ptr, ptr %3, align 8, !tbaa !478
  %5 = load ptr, ptr %4, align 8, !tbaa !431
  %6 = getelementptr inbounds ptr, ptr %5, i64 22
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_ZN9EnvirBase15getUniqueNumberEv(ptr nocapture noundef nonnull align 8 dereferenceable(600) %0) unnamed_addr #22 align 2 !prof !490 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 33
  %3 = load i64, ptr %2, align 8, !tbaa !616
  %4 = add i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !616
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase12displayErrorERSt9exception(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !490 {
  %3 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZTI10cException, i64 0) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !431
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  br i1 %9, label %19, label %10

10:                                               ; preds = %5, %2
  %11 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %12 = load ptr, ptr %1, align 8, !tbaa !431
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %16 = load ptr, ptr %11, align 8, !tbaa !431
  %17 = getelementptr inbounds ptr, ptr %16, i64 35
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) %18(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull @.str.176, ptr noundef %15) #28
  br label %53

19:                                               ; preds = %5
  %20 = load ptr, ptr %3, align 8, !tbaa !431
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %24 = icmp eq i32 %23, -1
  %25 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %26 = load ptr, ptr %3, align 8, !tbaa !431
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %30 = load ptr, ptr %3, align 8, !tbaa !431
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %34 = load ptr, ptr %3, align 8, !tbaa !431
  br i1 %24, label %35, label %42

35:                                               ; preds = %19
  %36 = getelementptr inbounds ptr, ptr %34, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(124) %3) #32
  %39 = load ptr, ptr %25, align 8, !tbaa !431
  %40 = getelementptr inbounds ptr, ptr %39, i64 35
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) %41(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.177, ptr noundef %29, ptr noundef %33, ptr noundef %38) #28
  br label %53

42:                                               ; preds = %19
  %43 = getelementptr inbounds ptr, ptr %34, i64 10
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %46 = load ptr, ptr %3, align 8, !tbaa !431
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(124) %3) #32
  %50 = load ptr, ptr %25, align 8, !tbaa !431
  %51 = getelementptr inbounds ptr, ptr %50, i64 35
  %52 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.178, ptr noundef %29, ptr noundef %33, i32 noundef %45, ptr noundef %49) #28
  br label %53

53:                                               ; preds = %35, %42, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase14displayMessageERSt9exception(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 !prof !425 {
  %3 = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZTI10cException, i64 0) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !487

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !431
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  br i1 %9, label %19, label %10, !prof !487

10:                                               ; preds = %5, %2
  %11 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %12 = load ptr, ptr %1, align 8, !tbaa !431
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %16 = load ptr, ptr %11, align 8, !tbaa !431
  %17 = getelementptr inbounds ptr, ptr %16, i64 35
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) %18(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull @.str.179, ptr noundef %15) #28
  br label %53

19:                                               ; preds = %5
  %20 = load ptr, ptr %3, align 8, !tbaa !431
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %24 = icmp eq i32 %23, -1
  %25 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #28
  %26 = load ptr, ptr %3, align 8, !tbaa !431
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %30 = load ptr, ptr %3, align 8, !tbaa !431
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %34 = load ptr, ptr %3, align 8, !tbaa !431
  br i1 %24, label %35, label %42

35:                                               ; preds = %19
  %36 = getelementptr inbounds ptr, ptr %34, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(124) %3) #32
  %39 = load ptr, ptr %25, align 8, !tbaa !431
  %40 = getelementptr inbounds ptr, ptr %39, i64 35
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) %41(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.180, ptr noundef %29, ptr noundef %33, ptr noundef %38) #28
  br label %53

42:                                               ; preds = %19
  %43 = getelementptr inbounds ptr, ptr %34, i64 10
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(124) %3) #28
  %46 = load ptr, ptr %3, align 8, !tbaa !431
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(124) %3) #32
  %50 = load ptr, ptr %25, align 8, !tbaa !431
  %51 = getelementptr inbounds ptr, ptr %50, i64 35
  %52 = load ptr, ptr %51, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull @.str.181, ptr noundef %29, ptr noundef %33, i32 noundef %45, ptr noundef %49) #28
  br label %53

53:                                               ; preds = %35, %42, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9EnvirBase4idleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #16 align 2 !prof !490 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK9EnvirBase11getArgCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #5 align 2 !prof !490 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !473
  %4 = tail call noundef i32 @_ZNK7ArgList11getArgCountEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #28
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7ArgList11getArgCountEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = load i32, ptr %0, align 8, !tbaa !638
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK9EnvirBase12getArgVectorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(600) %0) unnamed_addr #5 align 2 !prof !490 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !473
  %4 = tail call noundef ptr @_ZNK7ArgList12getArgVectorEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #28
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7ArgList12getArgVectorEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !656
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9EnvirBase10startClockEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(600) %0) local_unnamed_addr #17 align 2 !prof !425 {
  %2 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase9stopClockEv(ptr noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #4 align 2 !prof !425 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %class.SimTime, align 8
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #29
  %5 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37
  %6 = tail call { i64, i64 } @_ZplRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  %7 = extractvalue { i64, i64 } %6, 0
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %9 = extractvalue { i64, i64 } %6, 1
  store i64 %9, ptr %8, align 8
  %10 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  %11 = call { i64, i64 } @_ZmiRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %10) #28
  %12 = extractvalue { i64, i64 } %11, 0
  %13 = extractvalue { i64, i64 } %11, 1
  store i64 %12, ptr %5, align 8, !tbaa.struct !657
  %14 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37, i32 1
  store i64 %13, ptr %14, align 8, !tbaa.struct !659
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %15 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  call void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %15) #28
  %16 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 38
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { i64, i64 } @_ZmiRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat !prof !618 {
  %3 = tail call { i64, i64 } @_Z17timeval_substractRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  ret { i64, i64 } %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { i64, i64 } @_ZplRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat !prof !602 {
  %3 = tail call { i64, i64 } @_Z11timeval_addRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  ret { i64, i64 } %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind noalias writable sret(%class.SimTime) align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #4 comdat align 2 !prof !660 {
  %3 = getelementptr inbounds %class.cSimulation, ptr %1, i64 0, i32 12
  tail call void @_ZN7SimTimeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !661 {
  %3 = load i64, ptr %1, align 8, !tbaa !471
  store i64 %3, ptr %0, align 8, !tbaa !471
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local { i64, i64 } @_ZN9EnvirBase12totalElapsedEv(ptr noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #4 align 2 !prof !530 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #29
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  %5 = call { i64, i64 } @_ZmiRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  %6 = extractvalue { i64, i64 } %5, 0
  store i64 %6, ptr %3, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %8 = extractvalue { i64, i64 } %5, 1
  store i64 %8, ptr %7, align 8
  %9 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37
  %10 = call { i64, i64 } @_ZplRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #29
  ret { i64, i64 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase15checkTimeLimitsEv(ptr noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !578 {
  %2 = alloca %class.SimTime, align 8
  %3 = alloca %class.SimTime, align 8
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  call void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef 0.000000e+00) #28
  %5 = call noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  br i1 %5, label %6, label %14, !prof !579

6:                                                ; preds = %1
  %7 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  call void @_ZNK11cSimulation10getSimTimeEv(ptr dead_on_unwind nonnull writable sret(%class.SimTime) align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %7) #28
  %8 = call noundef zeroext i1 @_ZNK7SimTimegeERKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  br i1 %8, label %9, label %15, !prof !662

9:                                                ; preds = %6
  %10 = call ptr @__cxa_allocate_exception(i64 128) #29
  invoke void (ptr, i32, ...) @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %10, i32 noundef 36) #28
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %44

14:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  br label %15

15:                                               ; preds = %14, %6
  %16 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 23
  %17 = load i64, ptr %16, align 8, !tbaa !608
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %43, label %19, !prof !663

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.cEnvir, ptr %0, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !664, !range !517, !noundef !518
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  %25 = call noundef i64 @_ZNK11cSimulation14getEventNumberEv(ptr noundef nonnull align 8 dereferenceable(224) %24) #28
  %26 = and i64 %25, 255
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i64, ptr %16, align 8, !tbaa !608
  br label %30

30:                                               ; preds = %28, %19
  %31 = phi i64 [ %29, %28 ], [ %17, %19 ]
  %32 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 36
  %33 = load i64, ptr %32, align 8, !tbaa !665
  %34 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 37
  %35 = load i64, ptr %34, align 8, !tbaa !666
  %36 = sub i64 %35, %33
  %37 = icmp slt i64 %36, %31
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = call ptr @__cxa_allocate_exception(i64 128) #29
  invoke void (ptr, i32, ...) @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %39, i32 noundef 35) #28
          to label %40 unwind label %41

40:                                               ; preds = %38
  call void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTI21cTerminationException, ptr nonnull @_ZN10cExceptionD2Ev) #34
  unreachable

41:                                               ; preds = %38
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %44

43:                                               ; preds = %30, %23, %15
  ret void

44:                                               ; preds = %41, %12
  %45 = phi ptr [ %39, %41 ], [ %10, %12 ]
  %46 = phi { ptr, i32 } [ %42, %41 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %45) #29
  resume { ptr, i32 } %46
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimeneERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !667 {
  %3 = load i64, ptr %0, align 8, !tbaa !471
  %4 = load i64, ptr %1, align 8, !tbaa !471
  %5 = icmp ne i64 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTimeC2Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) unnamed_addr #4 comdat align 2 !prof !668 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7SimTimeaSEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7SimTimegeERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !669 {
  %3 = load i64, ptr %0, align 8, !tbaa !471
  %4 = load i64, ptr %1, align 8, !tbaa !471
  %5 = icmp sge i64 %3, %4
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN21cTerminationExceptionC1E12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !425 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !431
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11cSimulation14getEventNumberEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 comdat align 2 !prof !670 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 13
  %3 = load i64, ptr %2, align 8, !tbaa !671
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN9EnvirBase31stoppedWithTerminationExceptionER21cTerminationException(ptr nocapture noundef nonnull readnone align 8 dereferenceable(600) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(124) %1) local_unnamed_addr #16 align 2 !prof !425 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN9EnvirBase20stoppedWithExceptionERSt9exception(ptr nocapture noundef nonnull readnone align 8 dereferenceable(600) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %1) local_unnamed_addr #16 align 2 !prof !490 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9EnvirBase16checkFingerprintEv(ptr noundef nonnull align 8 dereferenceable(600) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = alloca %class.StringTokenizer, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 24
  %5 = tail call noundef zeroext i1 @_ZNK10opp_string5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br i1 %5, label %48, label %6, !prof !485

6:                                                ; preds = %1
  %7 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  %8 = tail call noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %7) #28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #29
  %11 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  call void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %11, ptr noundef null) #28
  br label %12

12:                                               ; preds = %33, %10
  %13 = phi i32 [ 0, %10 ], [ %34, %33 ]
  %14 = invoke noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #28
          to label %15 unwind label %27

15:                                               ; preds = %12
  br i1 %14, label %16, label %35

16:                                               ; preds = %15
  %17 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #28
          to label %18 unwind label %29

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  %20 = call noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %19) #28
  %21 = invoke noundef zeroext i1 @_ZNK7cHasher6equalsEPKc(ptr noundef nonnull align 4 dereferenceable(4) %20, ptr noundef %17) #28
          to label %22 unwind label %29

22:                                               ; preds = %18
  br i1 %21, label %23, label %33

23:                                               ; preds = %22
  %24 = load ptr, ptr %0, align 8, !tbaa !431
  %25 = getelementptr inbounds ptr, ptr %24, i64 35
  %26 = load ptr, ptr %25, align 8
  invoke void (ptr, ptr, ...) %26(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull @.str.182, ptr noundef %17) #28
          to label %47 unwind label %31

27:                                               ; preds = %12
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %55

29:                                               ; preds = %16, %18
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %55

31:                                               ; preds = %23
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %55

33:                                               ; preds = %22
  %34 = add nuw nsw i32 %13, 1
  br label %12

35:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %36 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  %37 = call noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %36) #28
  invoke void @_ZNK7cHasher3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %37) #28
          to label %38 unwind label %49

38:                                               ; preds = %35
  %39 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %40 = icmp ugt i32 %13, 1
  %41 = select i1 %40, ptr @.str.184, ptr @.str.96
  %42 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %43 = load ptr, ptr %0, align 8, !tbaa !431
  %44 = getelementptr inbounds ptr, ptr %43, i64 35
  %45 = load ptr, ptr %44, align 8
  invoke void (ptr, ptr, ...) %45(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull @.str.183, ptr noundef %39, ptr noundef nonnull %41, ptr noundef %42) #28
          to label %46 unwind label %51

46:                                               ; preds = %38
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  br label %47

47:                                               ; preds = %23, %46
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #29
  br label %48

48:                                               ; preds = %1, %6, %47
  ret void

49:                                               ; preds = %35
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %53

51:                                               ; preds = %38
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  br label %55

55:                                               ; preds = %29, %31, %53, %27
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %28, %27 ], [ %30, %29 ], [ %32, %31 ]
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #29
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation9getHasherEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 comdat align 2 !prof !578 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !674
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK7cHasher6equalsEPKc(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cHasher3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9EnvirBase14resolveNetworkEPKc(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  %8 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #28
  %9 = getelementptr inbounds %class.EnvirBase, ptr %0, i64 0, i32 11
  %10 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28
  call void @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %10) #28
  %11 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  br i1 %11, label %33, label %12, !prof !485

12:                                               ; preds = %2
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %14 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(2) @.str.185) #35
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16, !prof !484

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.45) #28
          to label %17 unwind label %21

17:                                               ; preds = %16
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1) #28
          to label %18 unwind label %23

18:                                               ; preds = %17
  %19 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  %20 = invoke noundef ptr @_ZN11cModuleType4findEPKc(ptr noundef %19) #28
          to label %31 unwind label %25

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %29

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  br label %79

31:                                               ; preds = %18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  %32 = icmp eq ptr %20, null
  br i1 %32, label %33, label %59, !prof !484

33:                                               ; preds = %2, %12, %31
  %34 = phi i1 [ true, %31 ], [ false, %12 ], [ false, %2 ]
  %35 = invoke noundef ptr @_ZN11cModuleType4findEPKc(ptr noundef %1) #28
          to label %38 unwind label %36

36:                                               ; preds = %73, %59, %33
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %79

38:                                               ; preds = %33
  %39 = icmp eq ptr %35, null
  br i1 %39, label %40, label %59, !prof !675

40:                                               ; preds = %38
  %41 = call ptr @__cxa_allocate_exception(i64 128) #29
  br i1 %34, label %42, label %56

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #29
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.45) #28
          to label %43 unwind label %47

43:                                               ; preds = %42
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %1) #28
          to label %44 unwind label %49

44:                                               ; preds = %43
  %45 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef nonnull @.str.186, ptr noundef %1, ptr noundef %45) #28
          to label %46 unwind label %51

46:                                               ; preds = %44
  invoke void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %81 unwind label %51

47:                                               ; preds = %42
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #29
  br label %54

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #29
  br label %54

51:                                               ; preds = %44, %46
  %52 = phi i1 [ false, %46 ], [ true, %44 ]
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #29
  br i1 %52, label %54, label %79

54:                                               ; preds = %49, %47, %51
  %55 = phi { ptr, i32 } [ %48, %47 ], [ %53, %51 ], [ %50, %49 ]
  call void @__cxa_free_exception(ptr %41) #29
  br label %79

56:                                               ; preds = %40
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef nonnull @.str.187, ptr noundef %1) #28
          to label %73 unwind label %57

57:                                               ; preds = %56
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %41) #29
  br label %79

59:                                               ; preds = %31, %38
  %60 = phi ptr [ %35, %38 ], [ %20, %31 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !431
  %62 = getelementptr inbounds ptr, ptr %61, i64 34
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(168) %60) #28
          to label %65 unwind label %36

65:                                               ; preds = %59
  br i1 %64, label %78, label %66, !prof !485

66:                                               ; preds = %65
  %67 = call ptr @__cxa_allocate_exception(i64 128) #29
  %68 = load ptr, ptr %60, align 8, !tbaa !431
  %69 = getelementptr inbounds ptr, ptr %68, i64 7
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(168) %60) #28
          to label %72 unwind label %76

72:                                               ; preds = %66
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %67, ptr noundef nonnull @.str.188, ptr noundef %71) #28
          to label %73 unwind label %76

73:                                               ; preds = %72, %56
  %74 = phi ptr [ %41, %56 ], [ %67, %72 ]
  invoke void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #34
          to label %75 unwind label %36

75:                                               ; preds = %73
  unreachable

76:                                               ; preds = %72, %66
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %67) #29
  br label %79

78:                                               ; preds = %65
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret ptr %60

79:                                               ; preds = %51, %54, %76, %57, %36, %29
  %80 = phi { ptr, i32 } [ %37, %36 ], [ %77, %76 ], [ %55, %54 ], [ %53, %51 ], [ %58, %57 ], [ %30, %29 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  resume { ptr, i32 } %80

81:                                               ; preds = %46
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11cModuleType4findEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !676 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #28
          to label %7 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  resume { ptr, i32 } %6

7:                                                ; preds = %3
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare void @_ZN6cEnvir9printfmsgEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN6cEnvir6printfEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN6cEnvir8askYesNoEPKcz(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ...) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6cEnvirC2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN6cEnvirD2Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14cRunnableEnvirD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6cEnvir13objectDeletedEP7cObject(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !490 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6cEnvir16undisposedObjectEP7cObject(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !490 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN6cEnvir11getConfigExEv(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !677 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !425 {
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !677 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #28
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !678 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !679

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #28
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !680, !llvm.loop !681

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !682 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !618 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !683 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !684
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !685 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !686
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !687 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !687 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #28
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !687 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #28
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #33
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !687 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !688 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !689 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !687 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair.49", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !689 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !689 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !687 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !682 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !690
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #28
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !602 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !691

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #28
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !692, !llvm.loop !693

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !694 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !425 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !677 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !684
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !530 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !686
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !530 {
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !530 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #28
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !530 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #28
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #33
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !530 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !695 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !696 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node.51", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !530 {
  tail call void @_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair.53", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !696 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !696 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !530 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !694 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !690
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #32
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !425 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !490 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #30
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #28
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #31
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !697
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !490 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !490 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #29
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #28
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.255) #28
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #28
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #29
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !425 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !700, !range !517, !noundef !518
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !701
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !530 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !521 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !521 {
  tail call void @_ZNSaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !521 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !702 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !703 {
  store i32 0, ptr %0, align 8, !tbaa !704
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !521 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !705 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !690
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !706
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !707
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !708
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !521 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #28
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !709 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !710

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #28
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !711, !llvm.loop !712

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !713 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !521 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !618 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !684
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !528 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !686
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !618 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !618 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #28
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !618 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #28
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #33
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !618 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS6_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !714 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !696 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS6_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !618 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !696 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !696 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !618 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !713 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !690
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #4 comdat !prof !715 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !716

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !494
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !717

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #30
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #32
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11cXMLElement13ParamResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11cXMLElement13ParamResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11cXMLElement13ParamResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SimTime5checkIdEEvT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !617 {
  %3 = load i32, ptr @_ZN7SimTime8scaleexpE, align 4, !tbaa !626
  %4 = icmp eq i32 %3, 65535
  br i1 %4, label %5, label %6, !prof !718

5:                                                ; preds = %2
  tail call void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #28
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN7SimTime7toInt64Ed(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !719 {
  %3 = tail call double @llvm.fabs.f64(double %1)
  %4 = fcmp ogt double %3, 0x43DFFFFFFFFFEDC8
  br i1 %4, label %5, label %6, !prof !720

5:                                                ; preds = %2
  tail call void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %1) #28
  br label %6

6:                                                ; preds = %5, %2
  %7 = fptosi double %1 to i64
  ret i64 %7
}

; Function Attrs: optsize
declare void @_ZN7SimTime9initErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: optsize
declare void @_ZN7SimTime10rangeErrorEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !721 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { i64, i64 } @_Z17timeval_substractRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat !prof !618 {
  %3 = load i64, ptr %0, align 8, !tbaa !722
  %4 = load i64, ptr %1, align 8, !tbaa !722
  %5 = sub i64 %3, %4
  %6 = getelementptr inbounds %struct.timeval, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !723
  %8 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !723
  %10 = sub nsw i64 %7, %9
  %11 = icmp slt i64 %10, 0
  %12 = add nsw i64 %10, 1000000
  %13 = ashr i64 %10, 63
  %14 = add nsw i64 %5, %13
  %15 = select i1 %11, i64 %12, i64 %10, !prof !724
  %16 = insertvalue { i64, i64 } poison, i64 %14, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { i64, i64 } @_Z11timeval_addRK7timevalS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat !prof !602 {
  %3 = load i64, ptr %0, align 8, !tbaa !722
  %4 = load i64, ptr %1, align 8, !tbaa !722
  %5 = add nsw i64 %4, %3
  %6 = getelementptr inbounds %struct.timeval, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !723
  %8 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !723
  %10 = add nsw i64 %9, %7
  %11 = icmp sgt i64 %10, 1000000
  %12 = add nsw i64 %10, -1000000
  %13 = zext i1 %11 to i64
  %14 = add nsw i64 %5, %13
  %15 = select i1 %11, i64 %12, i64 %10, !prof !725
  %16 = insertvalue { i64, i64 } poison, i64 %14, 0
  %17 = insertvalue { i64, i64 } %16, i64 %15, 1
  ret { i64, i64 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !726 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !560 {
  tail call void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !560 {
  tail call void @_ZNSaIcEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard.57, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #28
  store i64 %6, ptr %4, align 8, !tbaa !658
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !728

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #28
  %10 = load i64, ptr %4, align 8, !tbaa !658
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #28
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #28
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #28
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #32
  store ptr null, ptr %5, align 8, !tbaa !729
  %15 = load i64, ptr %4, align 8, !tbaa !658
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #28
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !727 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !427
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #28
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !727 {
  store ptr %1, ptr %0, align 8, !tbaa !729
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !727 {
  %2 = load ptr, ptr %0, align 8, !tbaa !729
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !731

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #33
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !727 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !727 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !732 {
  tail call void @_ZSt8_DestroyIPPKcEvT_S3_(ptr noundef %0, ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !733 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !557 {
  %2 = load ptr, ptr %0, align 8, !tbaa !556
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !734
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #28
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIPKcED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKcEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !732 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_(ptr noundef %0, ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !732 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !735 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !736

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #28
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !557 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !737 {
  tail call void @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !738 {
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !739 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !514 {
  %2 = load ptr, ptr %0, align 8, !tbaa !512
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !740
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  invoke void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #28
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !738 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) #28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !738 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !741

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %5) #28
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !742, !llvm.loop !743

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !744 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !745 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !746

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #28
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !514 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !747 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !528 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %7 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %8 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  br i1 %9, label %14, label %10, !prof !748

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !749
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #28
  %13 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12) #28
  br i1 %13, label %14, label %16, !prof !751

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !752
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt17_Rb_tree_iteratorIS5_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !753 {
  %3 = load ptr, ptr %1, align 8, !tbaa !749
  store ptr %3, ptr %0, align 8, !tbaa !526
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 !prof !528 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7, !prof !754

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull %8) #28
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  br i1 %11, label %14, label %12, !prof !755

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #32
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !756, !llvm.loop !757

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #32
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !758 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !753 {
  %3 = load ptr, ptr %0, align 8, !tbaa !749
  %4 = load ptr, ptr %1, align 8, !tbaa !749
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !753 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #32
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !759 {
  %4 = tail call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !525 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E(ptr noundef %0) #28
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %"struct.std::_Identity", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #29
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #28
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #29
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !760 {
  store ptr %1, ptr %0, align 8, !tbaa !749
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 !prof !761 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !762 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node.55", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !762 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !762 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !759 {
  %3 = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = icmp slt i32 %3, 0
  ret i1 %5

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #33
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !529 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #32
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !529 {
  store ptr %1, ptr %0, align 8, !tbaa !526
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !530 {
  %3 = alloca %"struct.std::pair.58", align 8
  %4 = alloca %"struct.std::_Identity", align 1
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca i8, align 1
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #29
  %10 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS5_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  %11 = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %10) #28
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !691

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeC2ERSB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(48) %0) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %16 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  store ptr %16, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #29
  store i8 1, ptr %7, align 1, !tbaa !763
  call void @_ZNSt4pairISt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IS7_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  br label %18

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #29
  call void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %12) #32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #29
  store i8 0, ptr %9, align 1, !tbaa !763
  call void @_ZNSt4pairISt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IS7_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  br label %18

18:                                               ; preds = %17, %15
  %19 = load ptr, ptr %3, align 8
  %20 = insertvalue { ptr, i8 } poison, ptr %19, 0
  %21 = getelementptr inbounds { ptr, i8 }, ptr %3, i64 0, i32 1
  %22 = load i8, ptr %21, align 8
  %23 = insertvalue { ptr, i8 } %20, i8 %22, 1
  ret { ptr, i8 } %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IRSt17_Rb_tree_iteratorIS6_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 !prof !618 {
  tail call void @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt17_Rb_tree_iteratorIS5_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load i8, ptr %2, align 1, !tbaa !763, !range !517, !noundef !518
  store i8 %5, ptr %4, align 8, !tbaa !764
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !618 {
  %3 = alloca %"struct.std::pair.61", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  store ptr %10, ptr %5, align 8, !tbaa !427
  %11 = icmp eq ptr %9, null
  br i1 %11, label %24, label %12, !prof !766

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %9, %2 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull %13) #28
  %15 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %14) #28
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #32
  br label %20

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !prof !767, !llvm.loop !768

23:                                               ; preds = %20
  store ptr %13, ptr %5, align 8, !tbaa !427
  store ptr null, ptr %4, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #32
  br i1 %15, label %25, label %31, !prof !769

24:                                               ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %10) #32
  br label %25

25:                                               ; preds = %24, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  %26 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  store ptr %26, ptr %7, align 8
  %27 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  br i1 %27, label %28, label %29, !prof !769

28:                                               ; preds = %25
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br label %37

29:                                               ; preds = %25
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #32
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !749
  %33 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %32) #28
  %34 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br label %37

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #29
  store ptr null, ptr %8, align 8, !tbaa !427
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  br label %37

37:                                               ; preds = %36, %35, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  %38 = load ptr, ptr %3, align 8
  %39 = insertvalue { ptr, ptr } poison, ptr %38, 0
  %40 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = insertvalue { ptr, ptr } %39, ptr %41, 1
  ret { ptr, ptr } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 !prof !530 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeC2ERSB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !618 {
  store ptr %1, ptr %0, align 8, !tbaa !427
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 !prof !530 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Identity", align 1
  %8 = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #29
  br i1 %8, label %9, label %16, !prof !770

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %16, label %12, !prof !770

12:                                               ; preds = %9
  %13 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS5_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  %14 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #28
  %15 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14) #28
  br label %16

16:                                               ; preds = %12, %9, %5
  %17 = phi i1 [ true, %9 ], [ true, %5 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #29
  %18 = call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %17, ptr noundef %18, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %19) #32
  %20 = getelementptr inbounds i8, ptr %0, i64 40
  %21 = load i64, ptr %20, align 8, !tbaa !708
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !708
  call void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %18) #32
  %23 = load ptr, ptr %6, align 8
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IS7_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 !prof !618 {
  %4 = load i64, ptr %1, align 8, !tbaa !427
  store i64 %4, ptr %0, align 8, !tbaa !427
  %5 = getelementptr inbounds %"struct.std::pair.58", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %2, align 1, !tbaa !763, !range !517, !noundef !518
  store i8 %6, ptr %5, align 8, !tbaa !771
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !618 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  call void @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #32
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !618 {
  %4 = load ptr, ptr %1, align 8, !tbaa !427
  store ptr %4, ptr %0, align 8, !tbaa !773
  %5 = getelementptr inbounds %"struct.std::pair.61", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !427
  store ptr %6, ptr %5, align 8, !tbaa !775
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = load ptr, ptr %0, align 8, !tbaa !749
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %2) #35
  store ptr %3, ptr %0, align 8, !tbaa !749
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !776 {
  %4 = load ptr, ptr %1, align 8, !tbaa !427
  store ptr %4, ptr %0, align 8, !tbaa !773
  %5 = getelementptr inbounds %"struct.std::pair.61", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !427
  store ptr %6, ptr %5, align 8, !tbaa !775
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !530 {
  %3 = load ptr, ptr %0, align 8, !tbaa !777
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_create_nodeIJS5_EEEPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  ret ptr %4
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_create_nodeIJS5_EEEPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !530 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #28
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !618 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !530 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %5 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #28
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !618 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #28
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !779

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 288230376151711743
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 6
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #30
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !618 {
  ret i64 144115188075855871
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #26

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #26

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !530 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !530 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: optsize
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK10opp_string(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat !prof !490 {
  %3 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #28
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !490 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  call void @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #32
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4 align 2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_envirbase.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.5()
  tail call fastcc void @__cxx_global_var_init.6()
  tail call fastcc void @__cxx_global_var_init.7()
  tail call fastcc void @__cxx_global_var_init.8()
  tail call fastcc void @__cxx_global_var_init.9()
  tail call fastcc void @__cxx_global_var_init.10()
  tail call fastcc void @__cxx_global_var_init.11()
  tail call fastcc void @__cxx_global_var_init.12()
  tail call fastcc void @__cxx_global_var_init.13()
  tail call fastcc void @__cxx_global_var_init.14()
  tail call fastcc void @__cxx_global_var_init.15()
  tail call fastcc void @__cxx_global_var_init.16()
  tail call fastcc void @__cxx_global_var_init.17()
  tail call fastcc void @__cxx_global_var_init.18()
  tail call fastcc void @__cxx_global_var_init.19()
  tail call fastcc void @__cxx_global_var_init.20()
  tail call fastcc void @__cxx_global_var_init.21()
  tail call fastcc void @__cxx_global_var_init.22()
  tail call fastcc void @__cxx_global_var_init.23()
  tail call fastcc void @__cxx_global_var_init.24()
  tail call fastcc void @__cxx_global_var_init.25()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) }
attributes #12 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) }
attributes #14 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { optsize }
attributes #29 = { nounwind }
attributes #30 = { builtin optsize allocsize(0) }
attributes #31 = { builtin nounwind optsize }
attributes #32 = { nounwind optsize }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }
attributes #35 = { nounwind optsize willreturn memory(read) }
attributes #36 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!424}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_91Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_91Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_91Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_92Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_92Ev, ptr @_Znwm, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_92Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_93Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_93Ev, ptr @_Znwm, i64 1}
!43 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_93Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!44 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_94Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!45 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_94Ev, ptr @_Znwm, i64 1}
!46 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_94Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!47 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_95Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!48 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_95Ev, ptr @_Znwm, i64 1}
!49 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_95Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!50 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_96Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!51 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_96Ev, ptr @_Znwm, i64 1}
!52 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_96Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!53 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_97Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!54 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_97Ev, ptr @_Znwm, i64 1}
!55 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_97Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!56 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_98Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!57 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_98Ev, ptr @_Znwm, i64 1}
!58 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_98Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!59 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_99Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!60 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_99Ev, ptr @_Znwm, i64 1}
!61 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_99Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!62 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_100Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!63 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_100Ev, ptr @_Znwm, i64 1}
!64 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_100Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!65 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_101Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!66 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_101Ev, ptr @_Znwm, i64 1}
!67 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_101Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!68 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_102Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!69 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_102Ev, ptr @_Znwm, i64 1}
!70 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_102Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!71 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_103Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!72 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_103Ev, ptr @_Znwm, i64 1}
!73 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_103Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!74 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_105Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!75 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_105Ev, ptr @_Znwm, i64 1}
!76 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_105Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!77 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_106Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!78 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_106Ev, ptr @_Znwm, i64 1}
!79 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_106Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!80 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_107Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!81 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_107Ev, ptr @_Znwm, i64 1}
!82 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_107Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!83 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_108Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!84 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_108Ev, ptr @_Znwm, i64 1}
!85 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_108Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!86 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_109Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!87 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_109Ev, ptr @_Znwm, i64 1}
!88 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_109Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!89 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_110Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!90 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_110Ev, ptr @_Znwm, i64 1}
!91 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_110Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!92 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_111Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!93 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_111Ev, ptr @_Znwm, i64 1}
!94 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_111Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!95 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_112Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!96 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_112Ev, ptr @_Znwm, i64 1}
!97 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_112Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!98 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_113Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!99 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_113Ev, ptr @_Znwm, i64 1}
!100 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_113Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!101 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_114Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!102 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_114Ev, ptr @_Znwm, i64 1}
!103 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_114Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!104 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_115Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!105 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_115Ev, ptr @_Znwm, i64 1}
!106 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_115Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!107 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_116Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!108 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_116Ev, ptr @_Znwm, i64 1}
!109 = !{ptr @_ZN12_GLOBAL__N_120__onstartup_func_116Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!110 = !{ptr @_ZN9EnvirBaseC2Ev, ptr @_ZN14cRunnableEnvirC2Ev, i64 1}
!111 = !{ptr @_ZN9EnvirBaseC2Ev, ptr @_ZN10opp_stringC2Ev, i64 10}
!112 = !{ptr @_ZN9EnvirBaseC2Ev, ptr @_ZN7SimTimeC2Ev, i64 2}
!113 = !{ptr @_ZN10opp_stringD2Ev, ptr @_ZdaPv, i64 277850}
!114 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZN7ArgListD2Ev, i64 1}
!115 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZdlPv, i64 1}
!116 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZdaPv, i64 1}
!117 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZN10opp_stringD2Ev, i64 10}
!118 = !{ptr @_ZN9EnvirBaseD2Ev, ptr @_ZN6cEnvirD2Ev, i64 1}
!119 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_Znwm, i64 1}
!120 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN7ArgListC1Ev, i64 1}
!121 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @_ZN7ArgList5parseEiPPcPKc, i64 1}
!122 = !{ptr @_ZN9EnvirBase3runEiPPcP14cConfiguration, ptr @__dynamic_cast, i64 1}
!123 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZNK7ArgList11optionGivenEc, i64 2}
!124 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 4}
!125 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, i64 7}
!126 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 7}
!127 = !{ptr @_ZN9EnvirBase18simulationRequiredEv, ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, i64 4}
!128 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 606}
!129 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, i64 606}
!130 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 606}
!131 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_Z14setPosixLocalev, i64 1}
!132 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN10cCoroutine4initEjj, i64 1}
!133 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_Znwm, i64 1}
!134 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZN12cXMLDocCacheC1Ev, i64 1}
!135 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_ZNK10opp_string5c_strEv, i64 2}
!136 = !{ptr @_ZN9EnvirBase5setupEv, ptr @_Z9createOnePKc, i64 2}
!137 = !{ptr @_Z9createOnePKc, ptr @_ZN13cClassFactory9createOneEPKc, i64 6}
!138 = !{ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEC2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EEC2Ev, i64 6}
!139 = !{ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, i64 103}
!140 = !{ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt17_Rb_tree_iteratorIS5_E, i64 103}
!141 = !{ptr @_ZNKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE3endEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv, i64 100}
!142 = !{ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, i64 2}
!143 = !{ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertEOS5_, ptr @_ZNSt4pairISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IRSt17_Rb_tree_iteratorIS6_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_, i64 2}
!144 = !{ptr @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev, i64 6}
!145 = !{ptr @_ZNK13cConfigOption7getUnitEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 6}
!146 = !{ptr @_ZNK13cConfigOption7getUnitEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 5}
!147 = !{ptr @_ZNK13cConfigOption15getDefaultValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 889945}
!148 = !{ptr @_ZNK13cConfigOption15getDefaultValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 664545}
!149 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv, i64 70440}
!150 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E, i64 70440}
!151 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, i64 70440}
!152 = !{ptr @_Z11opp_isalphah, ptr @isalpha, i64 4345}
!153 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!154 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!155 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt11char_traitsIcE6lengthEPKc, i64 1136}
!156 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv, i64 1136}
!157 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, i64 1136}
!158 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS3_, i64 1136}
!159 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 2272}
!160 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, i64 1136}
!161 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm, i64 1136}
!162 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm, i64 1136}
!163 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 1136}
!164 = !{ptr @_ZN10opp_stringC2EPKc, ptr @_Z10opp_strdupPKc, i64 4934}
!165 = !{ptr @_ZNKSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, ptr @_ZNKSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, i64 98}
!166 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!167 = !{ptr @_ZN9EnvirBase8shutdownEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1}
!168 = !{ptr @_ZN9EnvirBase8shutdownEv, ptr @_ZN11cSimulation13deleteNetworkEv, i64 1}
!169 = !{ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN9EnvirBase10resetClockEv, i64 1}
!170 = !{ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1}
!171 = !{ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN11cSimulation8startRunEv, i64 1}
!172 = !{ptr @_ZN9EnvirBase8startRunEv, ptr @_ZN6cEnvir13flushLastLineEv, i64 1}
!173 = !{ptr @_ZN9EnvirBase6endRunEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1}
!174 = !{ptr @_ZN9EnvirBase6endRunEv, ptr @_ZN11cSimulation6endRunEv, i64 1}
!175 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 114192}
!176 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZNK4cPar13containsValueEv, i64 190462}
!177 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_Z10opp_strcmpPKcS0_, i64 228383}
!178 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 114192}
!179 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_Z11opp_isemptyPKc, i64 114190}
!180 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZN4cPar5parseEPKc, i64 37920}
!181 = !{ptr @_ZN9EnvirBase13readParameterEP4cPar, ptr @_ZN4cPar13acceptDefaultEv, i64 76270}
!182 = !{ptr @_ZN7SimTimeC2ERKS_, ptr @_ZN7SimTimeaSERKS_, i64 57319387120}
!183 = !{ptr @_ZN9EnvirBase14messageSendHopEP8cMessageP5cGate7SimTimeS4_, ptr @_ZN7SimTimeC2ERKS_, i64 2}
!184 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNK10opp_string5c_strEv, i64 3}
!185 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNSaIcEC2Ev, i64 3}
!186 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 3}
!187 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 3}
!188 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @getenv, i64 1}
!189 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @getpid, i64 1}
!190 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_Z11opp_stringfB5cxx11PKcz, i64 1}
!191 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_, i64 1}
!192 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 4}
!193 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 3}
!194 = !{ptr @_ZN9EnvirBase15processFileNameER10opp_string, ptr @_ZN10opp_stringaSEPKc, i64 3}
!195 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_ZdaPv, i64 203513}
!196 = !{ptr @_ZN10opp_stringaSEPKc, ptr @_Z10opp_strdupPKc, i64 325620}
!197 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 4}
!198 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 4}
!199 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 1}
!200 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN7SimTime11setScaleExpEi, i64 1}
!201 = !{ptr @_ZN9EnvirBase11readOptionsEv, ptr @_ZN10opp_stringaSEPKc, i64 1}
!202 = !{ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 9}
!203 = !{ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN10opp_stringaSEPKc, i64 9}
!204 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN10opp_stringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 3}
!205 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!206 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN10opp_stringaSEPKc, i64 1}
!207 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN7SimTimeaSEd, i64 1}
!208 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZNK10opp_string5emptyEv, i64 1}
!209 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1}
!210 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZN11cSimulation9setHasherEP7cHasher, i64 1}
!211 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_ZNK10opp_string5c_strEv, i64 2}
!212 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_Z9createOnePKc, i64 2}
!213 = !{ptr @_ZN9EnvirBase17readPerRunOptionsEv, ptr @_Znam, i64 1}
!214 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime5checkIdEEvT_, i64 980215783}
!215 = !{ptr @_ZN7SimTimeaSEd, ptr @_ZN7SimTime7toInt64Ed, i64 980215783}
!216 = !{ptr @_ZN9EnvirBase6getRNGEi, ptr @__cxa_allocate_exception, i64 2}
!217 = !{ptr @_ZN9EnvirBase6getRNGEi, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 2}
!218 = !{ptr @_ZN9EnvirBase6getRNGEi, ptr @__cxa_throw, i64 1}
!219 = !{ptr @_ZN9EnvirBase6getRNGEi, ptr @__cxa_free_exception, i64 1}
!220 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 39205}
!221 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv, i64 39206}
!222 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZNSt6vectorIPKcSaIS1_EEixEm, i64 20}
!223 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @strtol, i64 40}
!224 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, i64 39185}
!225 = !{ptr @_ZN9EnvirBase16getRNGMappingForEP10cComponent, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 39185}
!226 = !{ptr @_ZN9EnvirBase20recordInOutputVectorEPv7SimTimed, ptr @_ZN7SimTimeC2ERKS_, i64 494191607}
!227 = !{ptr @_ZN9EnvirBase14displayMessageERSt9exception, ptr @__dynamic_cast, i64 1}
!228 = !{ptr @_ZN9EnvirBase14displayMessageERSt9exception, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 1}
!229 = !{ptr @_ZN9EnvirBase9stopClockEv, ptr @_ZplRK7timevalS1_, i64 1}
!230 = !{ptr @_ZN9EnvirBase9stopClockEv, ptr @_ZmiRK7timevalS1_, i64 1}
!231 = !{ptr @_ZN9EnvirBase9stopClockEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1}
!232 = !{ptr @_ZN9EnvirBase9stopClockEv, ptr @_ZNK11cSimulation10getSimTimeEv, i64 1}
!233 = !{ptr @_ZN9EnvirBase9stopClockEv, ptr @_ZN7SimTimeaSERKS_, i64 1}
!234 = !{ptr @_ZmiRK7timevalS1_, ptr @_Z17timeval_substractRK7timevalS1_, i64 5}
!235 = !{ptr @_ZplRK7timevalS1_, ptr @_Z11timeval_addRK7timevalS1_, i64 3}
!236 = !{ptr @_ZNK11cSimulation10getSimTimeEv, ptr @_ZN7SimTimeC2ERKS_, i64 3302180619}
!237 = !{ptr @_ZN9EnvirBase12totalElapsedEv, ptr @_ZmiRK7timevalS1_, i64 2}
!238 = !{ptr @_ZN9EnvirBase12totalElapsedEv, ptr @_ZplRK7timevalS1_, i64 2}
!239 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZN7SimTimeC2Ed, i64 467312602}
!240 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZNK7SimTimeneERKS_, i64 467312602}
!241 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 467312602}
!242 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZNK11cSimulation10getSimTimeEv, i64 467312601}
!243 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZNK7SimTimegeERKS_, i64 467312601}
!244 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @__cxa_allocate_exception, i64 2}
!245 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZN21cTerminationExceptionC1E12OppErrorCodez, i64 2}
!246 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @__cxa_throw, i64 1}
!247 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @_ZNK11cSimulation14getEventNumberEv, i64 1}
!248 = !{ptr @_ZN9EnvirBase15checkTimeLimitsEv, ptr @__cxa_free_exception, i64 1}
!249 = !{ptr @_ZN7SimTimeC2Ed, ptr @_ZN7SimTimeaSEd, i64 980188428}
!250 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!251 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!252 = !{ptr @_ZN9EnvirBase16checkFingerprintEv, ptr @_ZNK10opp_string5emptyEv, i64 1}
!253 = !{ptr @_ZN9EnvirBase16checkFingerprintEv, ptr @_ZN15StringTokenizer13hasMoreTokensEv, i64 3}
!254 = !{ptr @_ZN9EnvirBase16checkFingerprintEv, ptr @_ZN15StringTokenizer9nextTokenEv, i64 3}
!255 = !{ptr @_ZN9EnvirBase16checkFingerprintEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 3}
!256 = !{ptr @_ZN9EnvirBase16checkFingerprintEv, ptr @_ZN11cSimulation9getHasherEv, i64 3}
!257 = !{ptr @_ZN9EnvirBase16checkFingerprintEv, ptr @_ZNK7cHasher6equalsEPKc, i64 3}
!258 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1}
!259 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZNK10opp_string5c_strEv, i64 1}
!260 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZN11cSimulation22getNedPackageForFolderB5cxx11EPKc, i64 1}
!261 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 1}
!262 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZN11cModuleType4findEPKc, i64 1}
!263 = !{ptr @_ZN9EnvirBase14resolveNetworkEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1}
!264 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 31236}
!265 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 31236}
!266 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, i64 4}
!267 = !{ptr @_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, i64 1}
!268 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 4}
!269 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 4}
!270 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev, i64 4}
!271 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 33}
!272 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 33}
!273 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 33}
!274 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!275 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv, i64 293}
!276 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!277 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!278 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 33}
!279 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 33}
!280 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, i64 33}
!281 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 33}
!282 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, i64 33}
!283 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, i64 33}
!284 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, i64 127}
!285 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, i64 33}
!286 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv, i64 127}
!287 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, i64 33}
!288 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv, i64 1}
!289 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, i64 1}
!290 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev, i64 1}
!291 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base, i64 2}
!292 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, i64 2}
!293 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base, i64 2}
!294 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E, i64 2}
!295 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv, i64 7}
!296 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, i64 2}
!297 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E, i64 2}
!298 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv, i64 2}
!299 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv, i64 2}
!300 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_, i64 2}
!301 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv, i64 2}
!302 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m, i64 2}
!303 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_, i64 2}
!304 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv, i64 10}
!305 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_, ptr @_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev, i64 2}
!306 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv, i64 10}
!307 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m, i64 2}
!308 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!309 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!310 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!311 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EEC2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev, i64 6}
!312 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev, ptr @_ZNSaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, i64 6}
!313 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev, ptr @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, i64 6}
!314 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEC2Ev, ptr @_ZNSt15_Rb_tree_headerC2Ev, i64 6}
!315 = !{ptr @_ZNSaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, i64 6}
!316 = !{ptr @_ZNSt15_Rb_tree_headerC2Ev, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 192152}
!317 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv, i64 6}
!318 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, i64 6}
!319 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, i64 6}
!320 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base, i64 6}
!321 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, i64 6}
!322 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base, i64 6}
!323 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E, i64 6}
!324 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE9_M_mbeginEv, i64 114}
!325 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E, i64 5}
!326 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E, i64 5}
!327 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv, i64 5}
!328 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, i64 5}
!329 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_, i64 5}
!330 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv, i64 5}
!331 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m, i64 5}
!332 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE7destroyIS6_EEvRS8_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS6_EEvPT_, i64 5}
!333 = !{ptr @_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, i64 10}
!334 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS6_EEvPT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 5}
!335 = !{ptr @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, i64 10}
!336 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS7_m, i64 5}
!337 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!338 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!339 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!340 = !{ptr @_ZN7SimTime5checkIdEEvT_, ptr @_ZN7SimTime9initErrorEd, i64 1}
!341 = !{ptr @_ZN7SimTime7toInt64Ed, ptr @_ZN7SimTime10rangeErrorEd, i64 1}
!342 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, i64 1136}
!343 = !{ptr @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIcEC2ERKS_, i64 1136}
!344 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!345 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!346 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!347 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!348 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!349 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!350 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!351 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!352 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!353 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!354 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!355 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!356 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!357 = !{ptr @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPPKcEvT_S3_, i64 70451}
!358 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m, i64 70440}
!359 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIPKcED2Ev, i64 70440}
!360 = !{ptr @_ZSt8_DestroyIPPKcEvT_S3_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_, i64 70451}
!361 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m, i64 28}
!362 = !{ptr @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m, i64 27}
!363 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, i64 610}
!364 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, i64 606}
!365 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, i64 606}
!366 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, i64 610}
!367 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, i64 1918}
!368 = !{ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1920}
!369 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, i64 1137}
!370 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, i64 1137}
!371 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv, i64 103}
!372 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv, i64 103}
!373 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, i64 103}
!374 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv, i64 206}
!375 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZSteqRKSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, i64 103}
!376 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 97}
!377 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE4findERKS5_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 97}
!378 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E, i64 98}
!379 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 98}
!380 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base, i64 97}
!381 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base, i64 1}
!382 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_, ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base, i64 103}
!383 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv, ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base, i64 108}
!384 = !{ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, i64 7052580}
!385 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E, i64 98}
!386 = !{ptr @_ZNKSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, i64 294}
!387 = !{ptr @_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, i64 294}
!388 = !{ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_, i64 7052580}
!389 = !{ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, ptr @__clang_call_terminate, i64 7}
!390 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE3endEv, ptr @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPKSt18_Rb_tree_node_base, i64 100}
!391 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNKSt9_IdentityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS5_, i64 2}
!392 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, i64 2}
!393 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeC2ERSB_, i64 2}
!394 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, i64 2}
!395 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNSt4pairISt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IS7_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 3}
!396 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_, ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base, i64 1}
!397 = !{ptr @_ZNSt4pairISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbEC2IRSt17_Rb_tree_iteratorIS6_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_, ptr @_ZNSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKSt17_Rb_tree_iteratorIS5_E, i64 5}
!398 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_beginEv, i64 5}
!399 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv, i64 5}
!400 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E, i64 1}
!401 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 2}
!402 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base, i64 5}
!403 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv, i64 5}
!404 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZSteqRKSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES8_, i64 5}
!405 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISG_SH_EEEbE4typeELb1EEEOSG_OSH_, i64 4}
!406 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEmmEv, i64 1}
!407 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 1}
!408 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE6_M_endEv, i64 2}
!409 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_, i64 2}
!410 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 2}
!411 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_, ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base, i64 2}
!412 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5beginEv, ptr @_ZNSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPSt18_Rb_tree_node_base, i64 5}
!413 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_create_nodeIJS5_EEEPSt13_Rb_tree_nodeIS5_EDpOT_, i64 2}
!414 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_create_nodeIJS5_EEEPSt13_Rb_tree_nodeIS5_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_get_nodeEv, i64 2}
!415 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_create_nodeIJS5_EEEPSt13_Rb_tree_nodeIS5_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_, i64 2}
!416 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_get_nodeEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv, i64 5}
!417 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_M_get_nodeEv, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m, i64 5}
!418 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE21_M_get_Node_allocatorEv, i64 2}
!419 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_, ptr @_ZNSt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, i64 2}
!420 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_, i64 2}
!421 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv, i64 5}
!422 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS6_JS6_EEEvPT_DpOT0_, i64 2}
!423 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS6_JS6_EEEvPT_DpOT0_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!424 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!425 = !{!"function_entry_count", i64 1}
!426 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_91Ev"}
!427 = !{!428, !428, i64 0}
!428 = !{!"any pointer", !429, i64 0}
!429 = !{!"omnipotent char", !430, i64 0}
!430 = !{!"Simple C++ TBAA"}
!431 = !{!432, !432, i64 0}
!432 = !{!"vtable pointer", !430, i64 0}
!433 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_92Ev"}
!434 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_93Ev"}
!435 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_94Ev"}
!436 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_95Ev"}
!437 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_96Ev"}
!438 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_97Ev"}
!439 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_98Ev"}
!440 = !{!"envirbase.cc:_ZN12_GLOBAL__N_119__onstartup_func_99Ev"}
!441 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_100Ev"}
!442 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_101Ev"}
!443 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_102Ev"}
!444 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_103Ev"}
!445 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_105Ev"}
!446 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_106Ev"}
!447 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_107Ev"}
!448 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_108Ev"}
!449 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_109Ev"}
!450 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_110Ev"}
!451 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_111Ev"}
!452 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_112Ev"}
!453 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_113Ev"}
!454 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_114Ev"}
!455 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_115Ev"}
!456 = !{!"envirbase.cc:_ZN12_GLOBAL__N_120__onstartup_func_116Ev"}
!457 = !{!458, !463, i64 472}
!458 = !{!"_ZTS9EnvirBase", !459, i64 0, !428, i64 288, !428, i64 296, !428, i64 304, !463, i64 312, !464, i64 320, !465, i64 328, !461, i64 336, !465, i64 344, !465, i64 352, !465, i64 360, !465, i64 368, !463, i64 376, !465, i64 384, !463, i64 392, !465, i64 400, !465, i64 408, !465, i64 416, !461, i64 424, !461, i64 425, !461, i64 426, !461, i64 427, !466, i64 432, !464, i64 440, !465, i64 448, !428, i64 456, !428, i64 464, !463, i64 472, !428, i64 480, !428, i64 488, !428, i64 496, !428, i64 504, !428, i64 512, !464, i64 520, !467, i64 528, !467, i64 544, !467, i64 560, !467, i64 576, !466, i64 592}
!459 = !{!"_ZTS14cRunnableEnvir", !460, i64 0}
!460 = !{!"_ZTS6cEnvir", !461, i64 8, !461, i64 9, !461, i64 10, !462, i64 16}
!461 = !{!"bool", !429, i64 0}
!462 = !{!"_ZTSSo"}
!463 = !{!"int", !429, i64 0}
!464 = !{!"long", !429, i64 0}
!465 = !{!"_ZTS10opp_string", !428, i64 0}
!466 = !{!"_ZTS7SimTime", !464, i64 0}
!467 = !{!"_ZTS7timeval", !464, i64 0, !464, i64 8}
!468 = !{!"function_entry_count", i64 439586}
!469 = !{!465, !428, i64 0}
!470 = !{!"function_entry_count", i64 1143690745}
!471 = !{!466, !464, i64 0}
!472 = !{!"function_entry_count", i64 444560}
!473 = !{!458, !428, i64 296}
!474 = !{!458, !428, i64 288}
!475 = !{!458, !428, i64 304}
!476 = !{!458, !428, i64 496}
!477 = !{!458, !428, i64 504}
!478 = !{!458, !428, i64 512}
!479 = !{!"branch_weights", i32 127, i32 1}
!480 = !{!458, !428, i64 480}
!481 = !{!"branch_weights", i32 1, i32 127}
!482 = distinct !{!482, !483}
!483 = !{!"llvm.loop.mustprogress"}
!484 = !{!"branch_weights", i32 0, i32 -2147483648}
!485 = !{!"branch_weights", i32 2, i32 1}
!486 = !{!458, !463, i64 312}
!487 = !{!"branch_weights", i32 1, i32 2}
!488 = distinct !{!488, !483}
!489 = distinct !{!489, !483}
!490 = !{!"function_entry_count", i64 0}
!491 = distinct !{!491, !483}
!492 = distinct !{!492, !483}
!493 = distinct !{!493, !483}
!494 = !{!429, !429, i64 0}
!495 = distinct !{!495, !483}
!496 = distinct !{!496, !483}
!497 = distinct !{!497, !483}
!498 = distinct !{!498, !483}
!499 = distinct !{!499, !483}
!500 = distinct !{!500, !483}
!501 = distinct !{!501, !483}
!502 = distinct !{!502, !483}
!503 = !{!504, !504, i64 0}
!504 = !{!"double", !429, i64 0}
!505 = distinct !{!505, !483}
!506 = distinct !{!506, !483}
!507 = distinct !{!507, !483}
!508 = !{!"function_entry_count", i64 21674314260}
!509 = !{!"function_entry_count", i64 105782}
!510 = !{!511, !428, i64 8}
!511 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !428, i64 0, !428, i64 8, !428, i64 16}
!512 = !{!511, !428, i64 0}
!513 = !{!"function_entry_count", i64 2163}
!514 = !{!"function_entry_count", i64 606}
!515 = !{!458, !464, i64 320}
!516 = !{!458, !461, i64 336}
!517 = !{i8 0, i8 2}
!518 = !{}
!519 = !{!"branch_weights", i32 2, i32 2}
!520 = distinct !{!520, !483}
!521 = !{!"function_entry_count", i64 6}
!522 = !{!"function_entry_count", i64 397759682}
!523 = !{!"branch_weights", i32 51305, i32 397708379}
!524 = !{!"function_entry_count", i64 5379836753}
!525 = !{!"function_entry_count", i64 98}
!526 = !{!527, !428, i64 0}
!527 = !{!"_ZTSSt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !428, i64 0}
!528 = !{!"function_entry_count", i64 103}
!529 = !{!"function_entry_count", i64 100}
!530 = !{!"function_entry_count", i64 2}
!531 = !{!532, !428, i64 40}
!532 = !{!"_ZTS21cOmnetAppRegistration", !533, i64 0, !428, i64 40, !537, i64 48, !463, i64 80}
!533 = !{!"_ZTS12cOwnedObject", !534, i64 0, !428, i64 24, !463, i64 32}
!534 = !{!"_ZTS12cNamedObject", !535, i64 0, !428, i64 8, !536, i64 16, !536, i64 18}
!535 = !{!"_ZTS7cObject"}
!536 = !{!"short", !429, i64 0}
!537 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !538, i64 0, !464, i64 8, !429, i64 16}
!538 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !428, i64 0}
!539 = !{!"function_entry_count", i64 889955}
!540 = !{!541, !461, i64 36}
!541 = !{!"_ZTS13cConfigOption", !542, i64 0, !461, i64 36, !461, i64 37, !543, i64 40, !537, i64 48, !537, i64 80, !537, i64 112}
!542 = !{!"_ZTS23cNoncopyableOwnedObject", !533, i64 0}
!543 = !{!"_ZTSN13cConfigOption4TypeE", !429, i64 0}
!544 = !{!"function_entry_count", i64 889935}
!545 = !{!541, !543, i64 40}
!546 = !{!"branch_weights", i32 1, i32 7}
!547 = !{!"function_entry_count", i64 889945}
!548 = !{!"branch_weights", i32 225401, i32 664546}
!549 = !{!"function_entry_count", i64 9}
!550 = !{!541, !461, i64 37}
!551 = !{!"function_entry_count", i64 728460}
!552 = !{!"branch_weights", i32 393162, i32 335300}
!553 = !{!"function_entry_count", i64 109858}
!554 = !{!555, !428, i64 8}
!555 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !428, i64 0, !428, i64 8, !428, i64 16}
!556 = !{!555, !428, i64 0}
!557 = !{!"function_entry_count", i64 70440}
!558 = !{!"function_entry_count", i64 4345}
!559 = !{!"function_entry_count", i64 2107073}
!560 = !{!"function_entry_count", i64 1136}
!561 = !{!"function_entry_count", i64 4934}
!562 = !{!"function_entry_count", i64 4922}
!563 = !{!"function_entry_count", i64 3403184}
!564 = !{!"branch_weights", i32 274228, i32 3128958}
!565 = !{!"branch_weights", i32 1, i32 3128958}
!566 = !{!"branch_weights", i32 121684, i32 152545}
!567 = !{!458, !428, i64 488}
!568 = !{!"function_entry_count", i64 114192}
!569 = !{!"branch_weights", i32 1, i32 114193}
!570 = !{!"branch_weights", i32 76273, i32 37921}
!571 = !{!"branch_weights", i32 76273, i32 1}
!572 = !{!573, !428, i64 8}
!573 = !{!"_ZTS20ModNameParamResolver", !574, i64 0, !428, i64 8}
!574 = !{!"_ZTSN11cXMLElement13ParamResolverE"}
!575 = !{!"function_entry_count", i64 889905}
!576 = !{!"function_entry_count", i64 153380}
!577 = !{!"function_entry_count", i64 189091134}
!578 = !{!"function_entry_count", i64 467312602}
!579 = !{!"branch_weights", i32 467312603, i32 1}
!580 = !{!"function_entry_count", i64 202389109}
!581 = !{!"branch_weights", i32 202389110, i32 1}
!582 = !{!"function_entry_count", i64 265916806}
!583 = !{!"branch_weights", i32 265916807, i32 1}
!584 = !{!"function_entry_count", i64 988392}
!585 = !{!"branch_weights", i32 988393, i32 1}
!586 = !{!"function_entry_count", i64 57319387120}
!587 = !{!"function_entry_count", i64 289503849}
!588 = !{!"branch_weights", i32 289503850, i32 1}
!589 = !{!"function_entry_count", i64 107255799}
!590 = !{!"branch_weights", i32 107255800, i32 1}
!591 = !{!"function_entry_count", i64 187873355}
!592 = !{!"branch_weights", i32 187873356, i32 1}
!593 = !{!"function_entry_count", i64 34346}
!594 = !{!"branch_weights", i32 34347, i32 1}
!595 = !{!"function_entry_count", i64 29423}
!596 = !{!"branch_weights", i32 29424, i32 1}
!597 = !{!"function_entry_count", i64 113504}
!598 = !{!"branch_weights", i32 113505, i32 1}
!599 = !{!"function_entry_count", i64 65602}
!600 = !{!"branch_weights", i32 65603, i32 1}
!601 = !{!458, !461, i64 427}
!602 = !{!"function_entry_count", i64 3}
!603 = !{!458, !461, i64 425}
!604 = !{!"branch_weights", i32 4, i32 1}
!605 = !{!"function_entry_count", i64 325620}
!606 = !{!460, !461, i64 10}
!607 = !{!458, !461, i64 426}
!608 = !{!458, !464, i64 440}
!609 = !{!458, !463, i64 376}
!610 = !{!458, !463, i64 392}
!611 = !{!458, !461, i64 424}
!612 = !{!"branch_weights", i32 1, i32 1}
!613 = !{!"branch_weights", i32 0, i32 1}
!614 = distinct !{!614, !483}
!615 = distinct !{!615, !483}
!616 = !{!458, !464, i64 520}
!617 = !{!"function_entry_count", i64 980215783}
!618 = !{!"function_entry_count", i64 5}
!619 = !{!"branch_weights", i32 4, i32 3}
!620 = !{!621, !463, i64 0}
!621 = !{!"_ZTS7cHasher", !463, i64 0}
!622 = !{!"function_entry_count", i64 212014}
!623 = !{!"branch_weights", i32 -1485569782, i32 26501}
!624 = !{!"function_entry_count", i64 39185}
!625 = !{!"branch_weights", i32 39186, i32 1}
!626 = !{!463, !463, i64 0}
!627 = distinct !{!627, !483, !628, !629}
!628 = !{!"llvm.loop.isvectorized", i32 1}
!629 = !{!"llvm.loop.unroll.runtime.disable"}
!630 = distinct !{!630, !483}
!631 = !{!632, !536, i64 64}
!632 = !{!"_ZTS10cComponent", !633, i64 0, !428, i64 56, !536, i64 64, !428, i64 72, !536, i64 80, !536, i64 82, !428, i64 88, !428, i64 96}
!633 = !{!"_ZTS12cDefaultList", !542, i64 0, !428, i64 40, !463, i64 48, !463, i64 52}
!634 = !{!632, !428, i64 72}
!635 = !{!"function_entry_count", i64 112694}
!636 = !{!"function_entry_count", i64 494191607}
!637 = !{!"function_entry_count", i64 272154}
!638 = !{!639, !463, i64 0}
!639 = !{!"_ZTS7ArgList", !463, i64 0, !428, i64 8, !537, i64 16, !640, i64 48, !648, i64 96, !653, i64 144}
!640 = !{!"_ZTSSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEE", !641, i64 0}
!641 = !{!"_ZTSSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE", !642, i64 0}
!642 = !{!"_ZTSNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE13_Rb_tree_implISF_Lb1EEE", !643, i64 0, !645, i64 8}
!643 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIcEE", !644, i64 0}
!644 = !{!"_ZTSSt4lessIcE"}
!645 = !{!"_ZTSSt15_Rb_tree_header", !646, i64 0, !464, i64 32}
!646 = !{!"_ZTSSt18_Rb_tree_node_base", !647, i64 0, !428, i64 8, !428, i64 16, !428, i64 24}
!647 = !{!"_ZTSSt14_Rb_tree_color", !429, i64 0}
!648 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE", !649, i64 0}
!649 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !650, i64 0}
!650 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !651, i64 0, !645, i64 8}
!651 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !652, i64 0}
!652 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!653 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !654, i64 0}
!654 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !655, i64 0}
!655 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !511, i64 0}
!656 = !{!639, !428, i64 8}
!657 = !{i64 0, i64 8, !658, i64 8, i64 8, !658}
!658 = !{!464, !464, i64 0}
!659 = !{i64 0, i64 8, !658}
!660 = !{!"function_entry_count", i64 3302180619}
!661 = !{!"function_entry_count", i64 61624744013}
!662 = !{!"branch_weights", i32 2, i32 467312602}
!663 = !{!"branch_weights", i32 467312602, i32 1}
!664 = !{!460, !461, i64 8}
!665 = !{!458, !464, i64 560}
!666 = !{!458, !464, i64 576}
!667 = !{!"function_entry_count", i64 467322366}
!668 = !{!"function_entry_count", i64 980188428}
!669 = !{!"function_entry_count", i64 514877713}
!670 = !{!"function_entry_count", i64 988394}
!671 = !{!672, !464, i64 128}
!672 = !{!"_ZTS11cSimulation", !542, i64 0, !463, i64 36, !463, i64 40, !428, i64 48, !463, i64 56, !428, i64 64, !428, i64 72, !428, i64 80, !428, i64 88, !463, i64 96, !428, i64 104, !428, i64 112, !466, i64 120, !464, i64 128, !428, i64 136, !428, i64 144, !428, i64 152, !673, i64 160}
!673 = !{!"_ZTS12cMessageHeap", !533, i64 0, !428, i64 40, !463, i64 48, !463, i64 52, !464, i64 56}
!674 = !{!672, !428, i64 152}
!675 = !{!"branch_weights", i32 1073741142, i32 1073742506}
!676 = !{!"function_entry_count", i64 31236}
!677 = !{!"function_entry_count", i64 4}
!678 = !{!"function_entry_count", i64 41}
!679 = !{!"branch_weights", i32 8, i32 34}
!680 = !{!"branch_weights", i32 34, i32 0}
!681 = distinct !{!681, !483}
!682 = !{!"function_entry_count", i64 293}
!683 = !{!"function_entry_count", i64 101}
!684 = !{!646, !428, i64 24}
!685 = !{!"function_entry_count", i64 323}
!686 = !{!646, !428, i64 16}
!687 = !{!"function_entry_count", i64 33}
!688 = !{!"function_entry_count", i64 134}
!689 = !{!"function_entry_count", i64 127}
!690 = !{!645, !428, i64 8}
!691 = !{!"branch_weights", i32 1, i32 3}
!692 = !{!"branch_weights", i32 3, i32 0}
!693 = distinct !{!693, !483}
!694 = !{!"function_entry_count", i64 7}
!695 = !{!"function_entry_count", i64 12}
!696 = !{!"function_entry_count", i64 10}
!697 = !{!698, !463, i64 8}
!698 = !{!"_ZTS10cException", !699, i64 0, !463, i64 8, !537, i64 16, !461, i64 48, !537, i64 56, !537, i64 88, !463, i64 120}
!699 = !{!"_ZTSSt9exception"}
!700 = !{!698, !461, i64 48}
!701 = !{!698, !463, i64 120}
!702 = !{!"function_entry_count", i64 74225}
!703 = !{!"function_entry_count", i64 192152}
!704 = !{!645, !647, i64 0}
!705 = !{!"function_entry_count", i64 197751}
!706 = !{!645, !428, i64 16}
!707 = !{!645, !428, i64 24}
!708 = !{!645, !464, i64 32}
!709 = !{!"function_entry_count", i64 11}
!710 = !{!"branch_weights", i32 6, i32 6}
!711 = !{!"branch_weights", i32 6, i32 0}
!712 = distinct !{!712, !483}
!713 = !{!"function_entry_count", i64 114}
!714 = !{!"function_entry_count", i64 20}
!715 = !{!"function_entry_count", i64 188204319}
!716 = !{!"branch_weights", i32 13, i32 188204308}
!717 = !{!"branch_weights", i32 7, i32 188204302}
!718 = !{!"branch_weights", i32 1, i32 980215784}
!719 = !{!"function_entry_count", i64 1656274258}
!720 = !{!"branch_weights", i32 1, i32 1656274259}
!721 = !{!"function_entry_count", i64 582939}
!722 = !{!467, !464, i64 0}
!723 = !{!467, !464, i64 8}
!724 = !{!"branch_weights", i32 1, i32 6}
!725 = !{!"branch_weights", i32 1, i32 4}
!726 = !{!"function_entry_count", i64 1891507}
!727 = !{!"function_entry_count", i64 1889443}
!728 = !{!"branch_weights", i32 1257663, i32 631782}
!729 = !{!730, !428, i64 0}
!730 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !428, i64 0}
!731 = !{!"branch_weights", i32 1889444, i32 1}
!732 = !{!"function_entry_count", i64 70451}
!733 = !{!"function_entry_count", i64 70505}
!734 = !{!555, !428, i64 16}
!735 = !{!"function_entry_count", i64 70467}
!736 = !{!"branch_weights", i32 70441, i32 28}
!737 = !{!"function_entry_count", i64 27}
!738 = !{!"function_entry_count", i64 610}
!739 = !{!"function_entry_count", i64 2888}
!740 = !{!511, !428, i64 16}
!741 = !{!"branch_weights", i32 1, i32 610}
!742 = !{!"branch_weights", i32 610, i32 1311}
!743 = distinct !{!743, !483}
!744 = !{!"function_entry_count", i64 1920}
!745 = !{!"function_entry_count", i64 1745}
!746 = !{!"branch_weights", i32 609, i32 1138}
!747 = !{!"function_entry_count", i64 1137}
!748 = !{!"branch_weights", i32 6, i32 99}
!749 = !{!750, !428, i64 0}
!750 = !{!"_ZTSSt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !428, i64 0}
!751 = !{!"branch_weights", i32 -1, i32 1}
!752 = !{i64 0, i64 8, !427}
!753 = !{!"function_entry_count", i64 108}
!754 = !{!"branch_weights", i32 5, i32 99}
!755 = !{!"branch_weights", i32 1, i32 99}
!756 = !{!"branch_weights", i32 99, i32 0}
!757 = distinct !{!757, !483}
!758 = !{!"function_entry_count", i64 113}
!759 = !{!"function_entry_count", i64 7052580}
!760 = !{!"function_entry_count", i64 226}
!761 = !{!"function_entry_count", i64 199}
!762 = !{!"function_entry_count", i64 294}
!763 = !{!461, !461, i64 0}
!764 = !{!765, !461, i64 8}
!765 = !{!"_ZTSSt4pairISt23_Rb_tree_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbE", !527, i64 0, !461, i64 8}
!766 = !{!"branch_weights", i32 5, i32 1}
!767 = !{!"branch_weights", i32 1, i32 0}
!768 = distinct !{!768, !483}
!769 = !{!"branch_weights", i32 6, i32 1}
!770 = !{!"branch_weights", i32 3, i32 1}
!771 = !{!772, !461, i64 8}
!772 = !{!"_ZTSSt4pairISt17_Rb_tree_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbE", !750, i64 0, !461, i64 8}
!773 = !{!774, !428, i64 0}
!774 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !428, i64 0, !428, i64 8}
!775 = !{!774, !428, i64 8}
!776 = !{!"function_entry_count", i64 435559}
!777 = !{!778, !428, i64 0}
!778 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11_Alloc_nodeE", !428, i64 0}
!779 = !{!"branch_weights", i32 1, i32 2000}
