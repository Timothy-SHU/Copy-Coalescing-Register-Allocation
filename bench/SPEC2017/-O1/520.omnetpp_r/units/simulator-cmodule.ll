; ModuleID = 'simulator/cmodule.cc'
source_filename = "simulator/cmodule.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::set.8" = type { %"class.std::_Rb_tree.9" }
%"class.std::_Rb_tree.9" = type { %"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.13", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.13" = type { %"struct.std::less.14" }
%"struct.std::less.14" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.cModule::GateIterator" = type <{ ptr, i32, i8, [3 x i8], i32, [4 x i8] }>
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }
%"struct.cGate::Name" = type <{ %class.opp_string, %class.opp_string, %class.opp_string, i32, [4 x i8] }>
%class.opp_string = type { ptr }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.SimTime = type { i64 }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%class.cPar = type { %class.cObject, ptr, ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [32 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.38" = type { %struct.less_gatePairConnectedInside }
%struct.less_gatePairConnectedInside = type { ptr }
%class.cContextSwitcher = type { ptr }
%class.cContextTypeSwitcher = type { i32 }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%"class.cModule::ChannelIterator" = type <{ %"class.std::vector.26", i32, [4 x i8] }>
%"class.std::vector.26" = type { %"struct.std::_Vector_base.27" }
%"struct.std::_Vector_base.27" = type { %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl" }
%"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl" = type { %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.cMethodCallContextSwitcher = type { %class.cContextSwitcher }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Alloc_node" = type { ptr }

$__clang_call_terminate = comdat any

$_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EED2Ev = comdat any

$_ZNK7cObject6isNameEPKc = comdat any

$_ZN10opp_stringC2EPKc = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cDefaultList11isSoftOwnerEv = comdat any

$_ZN12cDefaultList17setPerformFinalGCEb = comdat any

$_ZN10cComponent10initializeEi = comdat any

$_ZNK10cComponent13numInitStagesEv = comdat any

$_ZNK7cModule8isModuleEv = comdat any

$_ZNK10cComponent12getNumParamsEv = comdat any

$_ZN7cModule13doBuildInsideEv = comdat any

$_ZNK7cModule13isPlaceholderEv = comdat any

$_ZN10cExceptionD2Ev = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_ = comdat any

$_ZN10opp_stringC2ERKS_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIPKcE8allocateEmPKv = comdat any

$_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEEET_S8_S8_RKT0_T1_ = comdat any

$_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEEET_S8_S8_RKT0_T1_ = comdat any

$_ZN28less_gatePairConnectedInsideclEP5cGateS1_ = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN7cModule18lastmodulefullpathB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN7cModule21lastmodulefullpathmodE = dso_local local_unnamed_addr global ptr null, align 8
@_ZTV7cModule = dso_local unnamed_addr constant { [75 x ptr] } { [75 x ptr] [ptr null, ptr @_ZTI7cModule, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN12cDefaultList18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN12cDefaultList14yieldOwnershipEP12cOwnedObjectP7cObject, ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModuleD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cModule11getFullNameEv, ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNK12cDefaultList4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN12cDefaultList4takeEP12cOwnedObject, ptr @_ZN12cDefaultList4dropEP12cOwnedObject, ptr @_ZN12cDefaultList10parsimPackEP11cCommBuffer, ptr @_ZN12cDefaultList12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cModule12forEachChildEP8cVisitor, ptr @_ZN7cModule7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cDefaultList11isSoftOwnerEv, ptr @_ZN12cDefaultList17setPerformFinalGCEb, ptr @_ZN10cComponent16setComponentTypeEP14cComponentType, ptr @_ZN10cComponent6addParEP8cParImpl, ptr @_ZN10cComponent25recordParametersAsScalarsEv, ptr @_ZN10cComponent10initializeEi, ptr @_ZNK10cComponent13numInitStagesEv, ptr @_ZN10cComponent10initializeEv, ptr @_ZN10cComponent6finishEv, ptr @_ZN10cComponent21handleParameterChangeEPKc, ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZNK7cModule13getPropertiesEv, ptr @_ZNK10cComponent14getNedTypeNameEv, ptr @_ZNK7cModule8isModuleEv, ptr @_ZNK7cModule15getParentModuleEv, ptr @_ZN7cModule14callInitializeEv, ptr @_ZN7cModule14callInitializeEi, ptr @_ZN7cModule10callFinishEv, ptr @_ZNK10cComponent12getNumParamsEv, ptr @_ZN10cComponent3parEi, ptr @_ZN10cComponent3parEPKc, ptr @_ZNK10cComponent7findParEPKc, ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN7cModule18initializeChannelsEi, ptr @__cxa_pure_virtual, ptr @_ZN7cModule5setIdEi, ptr @_ZN7cModule8setIndexEii, ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, ptr @_ZN7cModule13doBuildInsideEv, ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN7cModule31getOrCreateFirstUnconnectedGateEPKccbb, ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZN7cModule11buildInsideEv, ptr @_ZNK7cModule8isSimpleEv, ptr @_ZNK7cModule13isPlaceholderEv, ptr @_ZN7cModule4gateEPKci, ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi, ptr @_ZNK7cModule7hasGateEPKci, ptr @_ZNK7cModule8findGateEPKci, ptr @_ZN7cModule4gateEi, ptr @_ZN7cModule10deleteGateEPKc, ptr @_ZNK7cModule12getGateNamesEv, ptr @_ZNK7cModule8gateTypeEPKc, ptr @_ZNK7cModule12isGateVectorEPKc, ptr @_ZNK7cModule8gateSizeEPKc, ptr @_ZNK7cModule10gateBaseIdEPKc, ptr @__cxa_pure_virtual, ptr @_ZN7cModule12deleteModuleEv, ptr @_ZN7cModule14changeParentToEPS_] }, align 8
@.str = private unnamed_addr constant [60 x i8] c"Cannot delete a compound module from one of its submodules!\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTI7cObject = external constant ptr
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTI13cSimpleModule = external constant ptr
@_ZN7cModule8namePoolE = dso_local global %"class.std::set.8" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Cannot delete gate `%s', it is still connected\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"cannot add gate `%s[]': too many vector gates (limit is %d)\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"cannot add gate `%s': too many scalar gates (limit is %d)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"no such gate or gate vector: `%s'\00", align 1
@.str.8 = private unnamed_addr constant [98 x i8] c"Invalid gate Id %d: size of `%s[]' is only %d, so index %d (deduced from the Id) is out of bounds\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"addGate(): Gate `%s' already present\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"addGate(): Wrong gate name `%s', must be without `$i'/`$o' suffix\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"no `%s' or `%s[]' gate\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"setGateSize(): wrong gate name `%s', suffix `$i'/`$o' not accepted here\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"setGateSize(): gate `%s' is not a vector gate\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"setGateSize(): negative vector size (%d) requested for gate %s[]\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"setGateSize(): vector size for gate %s[] too large (%d), limit is %d\00", align 1
@.str.16 = private unnamed_addr constant [82 x i8] c"setGateSize(): Cannot shrink gate vector %s[] to size %d, gate %s still connected\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"gateBaseId(): no such gate or gate vector: `%s'\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"gateBaseId(): inout gate `%s' cannot be referenced without $i/$o suffix\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"Inout gate `%s' cannot be referenced without $i/$o suffix\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Scalar gate `%s' referenced with index\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"%s when accessing vector gate `%s'\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"No gate index specified\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Negative gate index specified\00", align 1
@.str.24 = private unnamed_addr constant [74 x i8] c"Gate index %d out of range when accessing vector gate `%s[]' with size %d\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Cannot delete one half of an inout gate: `%s'\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"getOrCreateFirstUnconnectedGate(): gate `%s' is not a vector gate\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"getOrCreateFirstUnconnectedGate(): gate `%s' AND suffix `%c' given\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"getOrCreateFirstUnconnectedGate(): inout gate specified but no suffix\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"getOrCreateFirstUnconnectedGate(): wrong gate name suffix `%c'\00", align 1
@.str.30 = private unnamed_addr constant [70 x i8] c"getOrCreateFirstUnconnectedGatePair(): gate `%s' is not a vector gate\00", align 1
@.str.31 = private unnamed_addr constant [85 x i8] c"getOrCreateFirstUnconnectedGatePair(): inout gate expected, without `$i'/`$o' suffix\00", align 1
@.str.32 = private unnamed_addr constant [93 x i8] c"Gate `%s' is not connected to a submodule (or internally to another gate of the same module)\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"directIn\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"Gate `%s' is not connected to sibling or parent module\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"getModuleByRelativePath(): syntax error in path `%s'\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"has no ancestor parameter called `%s'\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"buildInside() already called for this module\00", align 1
@.str.39 = private unnamed_addr constant [90 x i8] c"it is not supported to delete module which contains the currently executing simple module\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"changeParentTo(): got NULL pointer\00", align 1
@.str.41 = private unnamed_addr constant [82 x i8] c"changeParentTo(): gates of the module must not be connected (%s is connected now)\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"changeParentTo(): cannot move module under one of its own submodules\00", align 1
@.str.43 = private unnamed_addr constant [79 x i8] c"internal function initializeChannels() may only be called via callInitialize()\00", align 1
@.str.44 = private unnamed_addr constant [78 x i8] c"internal function initializeModules() may only be called via callInitialize()\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"initialize() already called for this module\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"%s during initialize(): %s\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"%s during finish(): %s\00", align 1
@_ZTS7cModule = dso_local constant [9 x i8] c"7cModule\00", align 1
@_ZTI10cComponent = external constant ptr
@_ZTI7cModule = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7cModule, ptr @_ZTI10cComponent }, align 8
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.50 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.52 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%d]\00", align 1
@.str.54 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmodule.cc, ptr null }]

@_ZN7cModuleD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7cModuleD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModuleC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 !prof !168 {
  tail call void @_ZN10cComponentC2EPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null)
  store ptr getelementptr inbounds ({ [75 x ptr] }, ptr @_ZTV7cModule, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  store i32 -1, ptr %2, align 8, !tbaa !172
  %3 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 9
  store i32 0, ptr %3, align 8, !tbaa !184
  %4 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  store i32 -1, ptr %4, align 4, !tbaa !185
  %5 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !186
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  ret void
}

declare void @_ZN10cComponentC2EPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7cModuleD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %2 = alloca %"class.cModule::GateIterator", align 8
  store ptr getelementptr inbounds ({ [75 x ptr] }, ptr @_ZTV7cModule, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %3 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %4 = getelementptr inbounds %class.cEnvir, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !189, !range !193, !noundef !194
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11, !prof !195

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !169
  %9 = getelementptr inbounds ptr, ptr %8, i64 20
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull %0)
          to label %11 unwind label %226, !prof !196

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !197
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %74, !prof !198

15:                                               ; preds = %83, %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #41
  store ptr %0, ptr %2, align 8, !tbaa !199
  %16 = getelementptr inbounds %"class.cModule::GateIterator", ptr %2, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !201
  %17 = getelementptr inbounds %"class.cModule::GateIterator", ptr %2, i64 0, i32 2
  store i8 0, ptr %17, align 4, !tbaa !202
  %18 = getelementptr inbounds %"class.cModule::GateIterator", ptr %2, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !203
  %19 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !204
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %68, !prof !205

22:                                               ; preds = %15, %62
  %23 = phi ptr [ %64, %62 ], [ %0, %15 ]
  %24 = phi i32 [ %63, %62 ], [ 0, %15 ]
  %25 = getelementptr inbounds %class.cModule, ptr %23, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %27, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !206
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31, !prof !208

31:                                               ; preds = %22
  %32 = load i8, ptr %17, align 4, !tbaa !202, !range !193, !noundef !194
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38, !prof !209

34:                                               ; preds = %31
  %35 = getelementptr inbounds %"struct.cGate::Name", ptr %29, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !210
  %37 = icmp eq i32 %36, 79
  br i1 %37, label %59, label %38, !prof !214

38:                                               ; preds = %34, %31
  %39 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %27, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !215
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %46, label %42, !prof !216

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %27, i32 4
  %44 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %27, i32 3
  %45 = select i1 %33, ptr %44, ptr %43, !prof !217
  br label %56

46:                                               ; preds = %38
  %47 = icmp eq i32 %40, 0
  br i1 %47, label %59, label %48, !prof !218

48:                                               ; preds = %46
  %49 = load i32, ptr %18, align 8, !tbaa !203
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %27, i32 3
  %52 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %27, i32 4
  %53 = select i1 %33, ptr %51, ptr %52, !prof !219
  %54 = load ptr, ptr %53, align 8, !tbaa !220
  %55 = getelementptr inbounds ptr, ptr %54, i64 %50
  br label %56

56:                                               ; preds = %42, %48
  %57 = phi ptr [ %55, %48 ], [ %45, %42 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !220
  br label %59

59:                                               ; preds = %56, %46, %34, %22
  %60 = phi ptr [ null, %22 ], [ null, %34 ], [ null, %46 ], [ %58, %56 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %68, !prof !221

62:                                               ; preds = %59
  call void @_ZN7cModule12GateIterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(20) %2)
  %63 = load i32, ptr %16, align 8, !tbaa !201
  %64 = load ptr, ptr %2, align 8, !tbaa !199
  %65 = getelementptr inbounds %class.cModule, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !204
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %22, label %68, !prof !222, !llvm.loop !223

68:                                               ; preds = %62, %59, %15
  %69 = load i32, ptr %16, align 8, !tbaa !201
  %70 = load ptr, ptr %2, align 8, !tbaa !199
  %71 = getelementptr inbounds %class.cModule, ptr %70, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !204
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %113, label %90, !prof !226

74:                                               ; preds = %11, %83
  %75 = phi ptr [ %85, %83 ], [ %13, %11 ]
  %76 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !188
  %77 = getelementptr inbounds %class.cSimulation, ptr %76, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !227
  %79 = icmp eq ptr %75, %78
  br i1 %79, label %80, label %83, !prof !232

80:                                               ; preds = %74
  %81 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %81, ptr noundef nonnull @.str)
          to label %82 unwind label %226

82:                                               ; preds = %80
  invoke void @__cxa_throw(ptr nonnull %81, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %231 unwind label %226

83:                                               ; preds = %74
  %84 = getelementptr inbounds %class.cModule, ptr %75, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !233
  %86 = load ptr, ptr %75, align 8, !tbaa !169
  %87 = getelementptr inbounds ptr, ptr %86, i64 4
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(176) %75) #41, !prof !234
  %89 = icmp eq ptr %85, null
  br i1 %89, label %15, label %74, !prof !235, !llvm.loop !236

90:                                               ; preds = %169, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #41
  %91 = load i32, ptr %19, align 8, !tbaa !204
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %95, !prof !226

93:                                               ; preds = %90
  %94 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  br label %99

95:                                               ; preds = %103, %90
  %96 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !187
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %108, !prof !198

99:                                               ; preds = %103, %93
  %100 = phi i64 [ 0, %93 ], [ %104, %103 ]
  %101 = load ptr, ptr %94, align 8, !tbaa !187
  %102 = getelementptr inbounds %"struct.cGate::Desc", ptr %101, i64 %100
  invoke void @_ZN7cModule15disposeGateDescEPN5cGate4DescEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %102, i1 noundef zeroext false)
          to label %103 unwind label %222

103:                                              ; preds = %99
  %104 = add nuw nsw i64 %100, 1
  %105 = load i32, ptr %19, align 8, !tbaa !204
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %99, label %95, !prof !237, !llvm.loop !238

108:                                              ; preds = %95
  tail call void @_ZdaPv(ptr noundef %97) #43
  br label %109

109:                                              ; preds = %95, %108
  store ptr null, ptr %96, align 8, !tbaa !187
  store i32 0, ptr %19, align 8, !tbaa !204
  %110 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !172
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %178, label %176, !prof !239

113:                                              ; preds = %68, %169
  %114 = phi ptr [ %172, %169 ], [ %70, %68 ]
  %115 = phi i32 [ %171, %169 ], [ %69, %68 ]
  %116 = getelementptr inbounds %class.cModule, ptr %114, i64 0, i32 8
  %117 = load ptr, ptr %116, align 8, !tbaa !187
  %118 = sext i32 %115 to i64
  %119 = getelementptr inbounds %"struct.cGate::Desc", ptr %117, i64 %118, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !206
  %121 = icmp eq ptr %120, null
  br i1 %121, label %150, label %122, !prof !208

122:                                              ; preds = %113
  %123 = load i8, ptr %17, align 4, !tbaa !202, !range !193, !noundef !194
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %129, !prof !209

125:                                              ; preds = %122
  %126 = getelementptr inbounds %"struct.cGate::Name", ptr %120, i64 0, i32 3
  %127 = load i32, ptr %126, align 8, !tbaa !210
  %128 = icmp eq i32 %127, 79
  br i1 %128, label %150, label %129, !prof !214

129:                                              ; preds = %125, %122
  %130 = getelementptr inbounds %"struct.cGate::Desc", ptr %117, i64 %118, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !215
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %137, label %133, !prof !216

133:                                              ; preds = %129
  %134 = getelementptr inbounds %"struct.cGate::Desc", ptr %117, i64 %118, i32 4
  %135 = getelementptr inbounds %"struct.cGate::Desc", ptr %117, i64 %118, i32 3
  %136 = select i1 %124, ptr %135, ptr %134, !prof !217
  br label %147

137:                                              ; preds = %129
  %138 = icmp eq i32 %131, 0
  br i1 %138, label %150, label %139, !prof !218

139:                                              ; preds = %137
  %140 = load i32, ptr %18, align 8, !tbaa !203
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %"struct.cGate::Desc", ptr %117, i64 %118, i32 3
  %143 = getelementptr inbounds %"struct.cGate::Desc", ptr %117, i64 %118, i32 4
  %144 = select i1 %124, ptr %142, ptr %143, !prof !219
  %145 = load ptr, ptr %144, align 8, !tbaa !220
  %146 = getelementptr inbounds ptr, ptr %145, i64 %141
  br label %147

147:                                              ; preds = %133, %139
  %148 = phi ptr [ %146, %139 ], [ %136, %133 ]
  %149 = load ptr, ptr %148, align 8, !tbaa !220
  br label %150

150:                                              ; preds = %147, %137, %125, %113
  %151 = phi ptr [ null, %113 ], [ null, %125 ], [ null, %137 ], [ %149, %147 ]
  %152 = getelementptr inbounds %class.cGate, ptr %151, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !240
  %154 = icmp eq ptr %153, null
  br i1 %154, label %160, label %155, !prof !242

155:                                              ; preds = %150
  %156 = getelementptr inbounds %class.cGate, ptr %153, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !243
  %158 = icmp eq ptr %157, %151
  br i1 %158, label %159, label %160, !prof !244

159:                                              ; preds = %155
  invoke void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %151)
          to label %160 unwind label %224, !prof !244

160:                                              ; preds = %159, %155, %150
  %161 = getelementptr inbounds %class.cGate, ptr %151, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !243
  %163 = icmp eq ptr %162, null
  br i1 %163, label %169, label %164, !prof !242

164:                                              ; preds = %160
  %165 = getelementptr inbounds %class.cGate, ptr %162, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !240
  %167 = icmp eq ptr %166, %151
  br i1 %167, label %168, label %169, !prof !244

168:                                              ; preds = %164
  invoke void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %162)
          to label %169 unwind label %224, !prof !244

169:                                              ; preds = %168, %164, %160
  %170 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %2, i32 poison), !prof !245, !llvm.loop !246
  %171 = load i32, ptr %16, align 8, !tbaa !201
  %172 = load ptr, ptr %2, align 8, !tbaa !199
  %173 = getelementptr inbounds %class.cModule, ptr %172, i64 0, i32 7
  %174 = load i32, ptr %173, align 8, !tbaa !204
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %113, label %90, !prof !247

176:                                              ; preds = %109
  %177 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !188
  invoke void @_ZN11cSimulation16deregisterModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224) %177, ptr noundef nonnull %0)
          to label %178 unwind label %226, !prof !195

178:                                              ; preds = %176, %109
  %179 = load ptr, ptr %0, align 8, !tbaa !169
  %180 = getelementptr inbounds ptr, ptr %179, i64 37
  %181 = load ptr, ptr %180, align 8
  %182 = invoke noundef ptr %181(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %183 unwind label %226, !prof !248

183:                                              ; preds = %178
  %184 = icmp eq ptr %182, null
  br i1 %184, label %216, label %185, !prof !198

185:                                              ; preds = %183
  %186 = load ptr, ptr %0, align 8, !tbaa !169
  %187 = getelementptr inbounds ptr, ptr %186, i64 37
  %188 = load ptr, ptr %187, align 8
  %189 = invoke noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %190 unwind label %226, !prof !249

190:                                              ; preds = %185
  %191 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !233
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194, !prof !250

194:                                              ; preds = %190
  %195 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !251
  %197 = getelementptr inbounds %class.cModule, ptr %192, i64 0, i32 3
  store ptr %196, ptr %197, align 8, !tbaa !251
  br label %198

198:                                              ; preds = %194, %190
  %199 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !251
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202, !prof !235

202:                                              ; preds = %198
  %203 = getelementptr inbounds %class.cModule, ptr %200, i64 0, i32 4
  store ptr %192, ptr %203, align 8, !tbaa !233
  br label %204

204:                                              ; preds = %202, %198
  %205 = getelementptr inbounds %class.cModule, ptr %189, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !197
  %207 = icmp eq ptr %206, %0
  br i1 %207, label %208, label %210, !prof !235

208:                                              ; preds = %204
  %209 = load ptr, ptr %191, align 8, !tbaa !233
  store ptr %209, ptr %205, align 8, !tbaa !197
  br label %210

210:                                              ; preds = %208, %204
  %211 = getelementptr inbounds %class.cModule, ptr %189, i64 0, i32 6
  %212 = load ptr, ptr %211, align 8, !tbaa !252
  %213 = icmp eq ptr %212, %0
  br i1 %213, label %214, label %215, !prof !250

214:                                              ; preds = %210
  store ptr %200, ptr %211, align 8, !tbaa !252
  br label %215

215:                                              ; preds = %210, %214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %199, i8 0, i64 16, i1 false)
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  br label %216

216:                                              ; preds = %215, %183
  %217 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !186
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220, !prof !253

220:                                              ; preds = %216
  tail call void @_ZdaPv(ptr noundef %218) #43
  br label %221

221:                                              ; preds = %220, %216
  tail call void @_ZN10cComponentD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #41
  ret void

222:                                              ; preds = %99
  %223 = landingpad { ptr, i32 }
          catch ptr null
  br label %228

224:                                              ; preds = %168, %159
  %225 = landingpad { ptr, i32 }
          catch ptr null
  br label %228

226:                                              ; preds = %185, %178, %176, %82, %80, %7
  %227 = landingpad { ptr, i32 }
          catch ptr null
  br label %228

228:                                              ; preds = %224, %226, %222
  %229 = phi { ptr, i32 } [ %223, %222 ], [ %225, %224 ], [ %227, %226 ]
  %230 = extractvalue { ptr, i32 } %229, 0
  tail call void @__clang_call_terminate(ptr %230) #44
  unreachable

231:                                              ; preds = %82
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !254 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #41
  tail call void @_ZSt9terminatev() #44
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #8 align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !201
  %4 = load ptr, ptr %0, align 8, !tbaa !199
  %5 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !204
  %7 = icmp sge i32 %3, %6
  ret i1 %7
}

declare void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7cModule12GateIteratorppEi(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 %1) local_unnamed_addr #9 align 2 !prof !255 {
  %3 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !201
  %5 = load ptr, ptr %0, align 8, !tbaa !199
  %6 = getelementptr inbounds %class.cModule, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !204
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %95, !prof !256

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cModule, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !187
  %12 = load i32, ptr %3, align 8, !tbaa !201
  %13 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  %15 = load i8, ptr %13, align 4, !tbaa !202
  %16 = load i32, ptr %14, align 8, !tbaa !203
  br label %17

17:                                               ; preds = %9, %92
  %18 = phi i32 [ %16, %9 ], [ %57, %92 ]
  %19 = phi i8 [ %15, %9 ], [ %58, %92 ]
  %20 = phi i32 [ %12, %9 ], [ %59, %92 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %21, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !206
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25, !prof !257

25:                                               ; preds = %17
  %26 = icmp eq i8 %19, 0
  br i1 %26, label %27, label %32, !prof !258

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"struct.cGate::Name", ptr %23, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !210
  %30 = icmp eq i32 %29, 79
  br i1 %30, label %31, label %32, !prof !259

31:                                               ; preds = %27
  store i8 1, ptr %13, align 4, !tbaa !202
  br label %56

32:                                               ; preds = %27, %25
  %33 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %21, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !215
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %42, !prof !260

36:                                               ; preds = %32
  %37 = add nsw i32 %34, -1
  %38 = icmp slt i32 %18, %37
  br i1 %38, label %39, label %41, !prof !261

39:                                               ; preds = %36
  %40 = add nsw i32 %18, 1
  store i32 %40, ptr %14, align 8, !tbaa !203
  br label %56

41:                                               ; preds = %36
  store i32 0, ptr %14, align 8, !tbaa !203
  br label %42

42:                                               ; preds = %41, %32
  %43 = phi i32 [ 0, %41 ], [ %18, %32 ]
  br i1 %26, label %44, label %49, !prof !262

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.cGate::Name", ptr %23, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !210
  %47 = icmp eq i32 %46, 73
  br i1 %47, label %49, label %48, !prof !263

48:                                               ; preds = %44
  store i8 1, ptr %13, align 4, !tbaa !202
  br label %56

49:                                               ; preds = %44, %42, %17
  %50 = phi i32 [ %43, %44 ], [ %43, %42 ], [ %18, %17 ]
  %51 = icmp slt i32 %20, %7
  br i1 %51, label %52, label %56, !prof !264

52:                                               ; preds = %49
  %53 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  %54 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  %55 = add nsw i32 %20, 1
  store i32 %55, ptr %3, align 8, !tbaa !201
  store i8 0, ptr %53, align 4, !tbaa !202
  store i32 0, ptr %54, align 8, !tbaa !203
  br label %56

56:                                               ; preds = %31, %39, %48, %49, %52
  %57 = phi i32 [ %18, %31 ], [ %40, %39 ], [ %43, %48 ], [ %50, %49 ], [ 0, %52 ]
  %58 = phi i8 [ 1, %31 ], [ %19, %39 ], [ 1, %48 ], [ %19, %49 ], [ 0, %52 ]
  %59 = phi i32 [ %20, %31 ], [ %20, %39 ], [ %20, %48 ], [ %20, %49 ], [ %55, %52 ]
  %60 = icmp slt i32 %59, %7
  br i1 %60, label %61, label %95, !prof !265

61:                                               ; preds = %56
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %62, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !206
  %65 = icmp eq ptr %64, null
  br i1 %65, label %92, label %66, !prof !208

66:                                               ; preds = %61
  %67 = icmp eq i8 %58, 0
  br i1 %67, label %68, label %72, !prof !209

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"struct.cGate::Name", ptr %64, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !210
  %71 = icmp eq i32 %70, 79
  br i1 %71, label %92, label %72, !prof !214

72:                                               ; preds = %68, %66
  %73 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %62, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !215
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %80, label %76, !prof !216

76:                                               ; preds = %72
  %77 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %62, i32 4
  %78 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %62, i32 3
  %79 = select i1 %67, ptr %78, ptr %77, !prof !217
  br label %89

80:                                               ; preds = %72
  %81 = icmp eq i32 %74, 0
  br i1 %81, label %92, label %82, !prof !218

82:                                               ; preds = %80
  %83 = sext i32 %57 to i64
  %84 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %62, i32 3
  %85 = getelementptr inbounds %"struct.cGate::Desc", ptr %11, i64 %62, i32 4
  %86 = select i1 %67, ptr %84, ptr %85, !prof !219
  %87 = load ptr, ptr %86, align 8, !tbaa !220
  %88 = getelementptr inbounds ptr, ptr %87, i64 %83
  br label %89

89:                                               ; preds = %82, %76
  %90 = phi ptr [ %79, %76 ], [ %88, %82 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !220
  br label %92

92:                                               ; preds = %89, %61, %68, %80
  %93 = phi ptr [ null, %61 ], [ null, %68 ], [ null, %80 ], [ %91, %89 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %17, label %95, !prof !266, !llvm.loop !267

95:                                               ; preds = %92, %56, %2
  %96 = phi ptr [ null, %2 ], [ null, %56 ], [ %93, %92 ]
  ret ptr %96
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule10clearGatesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !204
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7, !prof !226

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  br label %11

7:                                                ; preds = %11, %1
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %19, !prof !198

11:                                               ; preds = %5, %11
  %12 = phi i64 [ 0, %5 ], [ %15, %11 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !187
  %14 = getelementptr inbounds %"struct.cGate::Desc", ptr %13, i64 %12
  tail call void @_ZN7cModule15disposeGateDescEPN5cGate4DescEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %14, i1 noundef zeroext false)
  %15 = add nuw nsw i64 %12, 1
  %16 = load i32, ptr %2, align 8, !tbaa !204
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %11, label %7, !prof !237, !llvm.loop !238

19:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef %9) #43
  br label %20

20:                                               ; preds = %19, %7
  %21 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  store ptr null, ptr %8, align 8, !tbaa !187
  store i32 0, ptr %21, align 8, !tbaa !204
  ret void
}

declare void @_ZN11cSimulation16deregisterModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN7cModule15removeSubmoduleEPS_(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !254 {
  %3 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !233
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !250

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !251
  %9 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !251
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !251
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !235

14:                                               ; preds = %10
  %15 = getelementptr inbounds %class.cModule, ptr %12, i64 0, i32 4
  store ptr %4, ptr %15, align 8, !tbaa !233
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !197
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %22, !prof !235

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !233
  store ptr %21, ptr %17, align 8, !tbaa !197
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !252
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %27, !prof !250

26:                                               ; preds = %22
  store ptr %12, ptr %23, align 8, !tbaa !252
  br label %27

27:                                               ; preds = %26, %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN10cComponentD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN7cModuleD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #12 align 2 !prof !254 {
  tail call void @llvm.trap() #44
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cModule12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #14 align 2 !prof !254 {
  %3 = alloca %"class.cModule::GateIterator", align 8
  %4 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !268
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 6
  br label %16

9:                                                ; preds = %16, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41
  call void @_ZN7cModule12GateIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0)
  %10 = getelementptr inbounds %"class.cModule::GateIterator", ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !201
  %12 = load ptr, ptr %3, align 8, !tbaa !199
  %13 = getelementptr inbounds %class.cModule, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !204
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %28, label %27

16:                                               ; preds = %7, %16
  %17 = phi i64 [ 0, %7 ], [ %23, %16 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !269
  %19 = getelementptr inbounds %class.cPar, ptr %18, i64 %17
  %20 = load ptr, ptr %1, align 8, !tbaa !169
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %19)
  %23 = add nuw nsw i64 %17, 1
  %24 = load i16, ptr %4, align 2, !tbaa !268
  %25 = sext i16 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %16, label %9, !llvm.loop !270

27:                                               ; preds = %28, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41
  tail call void @_ZN12cDefaultList12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  ret void

28:                                               ; preds = %9, %28
  %29 = call noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr noundef nonnull align 8 dereferenceable(20) %3)
  %30 = load ptr, ptr %1, align 8, !tbaa !169
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %29)
  %33 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 poison)
  %34 = load i32, ptr %10, align 8, !tbaa !201
  %35 = load ptr, ptr %3, align 8, !tbaa !199
  %36 = getelementptr inbounds %class.cModule, ptr %35, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !204
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %28, label %27, !llvm.loop !271
}

declare void @_ZN12cDefaultList12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7cModule5setIdEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #15 align 2 !prof !168 {
  %3 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule8setIndexEii(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 align 2 !prof !272 {
  %4 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 9
  store i32 %1, ptr %4, align 8, !tbaa !184
  %5 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  store i32 %2, ptr %5, align 4, !tbaa !185
  tail call void @_ZN7cModule14updateFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule14updateFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 align 2 !prof !273 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !274

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %3) #43
  store ptr null, ptr %2, align 8, !tbaa !186
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 4, !tbaa !185
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %59, !prof !275

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !169
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(20) %0), !prof !276
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !277

16:                                               ; preds = %10
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #45
  %18 = shl i64 %17, 32
  %19 = add i64 %18, 42949672960
  %20 = ashr exact i64 %19, 32
  br label %21

21:                                               ; preds = %10, %16
  %22 = phi i64 [ %20, %16 ], [ 10, %10 ]
  %23 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %22) #46
  store ptr %23, ptr %2, align 8, !tbaa !186
  %24 = load ptr, ptr %0, align 8, !tbaa !169
  %25 = getelementptr inbounds ptr, ptr %24, i64 6
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(20) %0), !prof !276
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %27) #41
  %29 = load ptr, ptr %2, align 8, !tbaa !186
  %30 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !184
  br label %32

32:                                               ; preds = %32, %21
  %33 = phi ptr [ %29, %21 ], [ %36, %32 ]
  %34 = load i8, ptr %33, align 1, !tbaa !220
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  br i1 %35, label %37, label %32, !prof !278, !llvm.loop !279

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 91, ptr %33, align 1, !tbaa !220
  %39 = icmp ult i32 %31, 10
  br i1 %39, label %40, label %45, !prof !280

40:                                               ; preds = %37
  %41 = trunc i32 %31 to i8
  %42 = or disjoint i8 %41, 48
  %43 = getelementptr inbounds i8, ptr %33, i64 2
  store i8 %42, ptr %38, align 1, !tbaa !220
  %44 = getelementptr inbounds i8, ptr %33, i64 3
  store i8 93, ptr %43, align 1, !tbaa !220
  store i8 0, ptr %44, align 1, !tbaa !220
  br label %59

45:                                               ; preds = %37
  %46 = icmp ult i32 %31, 100
  br i1 %46, label %47, label %57, !prof !281

47:                                               ; preds = %45
  %48 = udiv i32 %31, 10
  %49 = trunc i32 %48 to i8
  %50 = or disjoint i8 %49, 48
  %51 = getelementptr inbounds i8, ptr %33, i64 2
  store i8 %50, ptr %38, align 1, !tbaa !220
  %52 = urem i32 %31, 10
  %53 = trunc i32 %52 to i8
  %54 = or disjoint i8 %53, 48
  %55 = getelementptr inbounds i8, ptr %33, i64 3
  store i8 %54, ptr %51, align 1, !tbaa !220
  %56 = getelementptr inbounds i8, ptr %33, i64 4
  store i8 93, ptr %55, align 1, !tbaa !220
  store i8 0, ptr %56, align 1, !tbaa !220
  br label %59

57:                                               ; preds = %45
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %31) #41
  br label %59

59:                                               ; preds = %57, %47, %40, %6
  %60 = load ptr, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %62, label %63, !prof !282

62:                                               ; preds = %59
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  br label %63

63:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule15insertSubmoduleEPS_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !283 {
  %3 = load ptr, ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1), !prof !284
  %6 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !233
  %7 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !252
  %9 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !251
  %10 = icmp eq ptr %8, null
  br i1 %10, label %13, label %11, !prof !250

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.cModule, ptr %8, i64 0, i32 4
  store ptr %1, ptr %12, align 8, !tbaa !233
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !250

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 8, !tbaa !197
  br label %18

18:                                               ; preds = %17, %13
  store ptr %1, ptr %7, align 8, !tbaa !252
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK7cModule15getParentModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 !prof !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !169
  %3 = getelementptr inbounds ptr, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(36) %0), !prof !286
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !287

7:                                                ; preds = %1
  %8 = tail call ptr @__dynamic_cast(ptr nonnull %5, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cModule, i64 0) #41
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !168 {
  tail call void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1)
  tail call void @_ZN7cModule14updateFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK7cModule11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 !prof !288 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !185
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8, !prof !289

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  br label %13

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !169
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(20) %0), !prof !290
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi ptr [ %7, %5 ], [ %12, %8 ]
  ret ptr %14
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7cModule11getFullPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !291 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = load ptr, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %127, label %9, !prof !292

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !169
  %11 = getelementptr inbounds ptr, ptr %10, i64 37
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(176) %1), !prof !293
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23, !prof !294

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8, !tbaa !169
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(176) %1), !prof !295
  %20 = load i64, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN7cModule18lastmodulefullpathB5cxx11E, i64 0, i32 1), align 8, !tbaa !296
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #41
  %22 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7cModule18lastmodulefullpathB5cxx11E, i64 noundef 0, i64 noundef %20, ptr noundef %19, i64 noundef %21)
  br label %126

23:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41
  %24 = load ptr, ptr %1, align 8, !tbaa !169
  %25 = getelementptr inbounds ptr, ptr %24, i64 37
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(176) %1), !prof !299
  %28 = load ptr, ptr %27, align 8, !tbaa !169
  %29 = getelementptr inbounds ptr, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(176) %27), !prof !300
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !296
  %33 = icmp eq i64 %32, 4611686018427387903
  br i1 %33, label %34, label %36, !prof !301

34:                                               ; preds = %23
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #42
          to label %35 unwind label %106

35:                                               ; preds = %34
  unreachable

36:                                               ; preds = %23
  %37 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %38 unwind label %106

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %39, ptr %5, align 8, !tbaa !302, !alias.scope !303
  %40 = load ptr, ptr %37, align 8, !tbaa !306
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 2
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %48, !prof !307

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !296
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  %47 = add nuw nsw i64 %45, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %39, ptr noundef nonnull align 8 dereferenceable(1) %41, i64 %47, i1 false), !prof !308
  br label %50

48:                                               ; preds = %38
  store ptr %40, ptr %5, align 8, !tbaa !306, !alias.scope !303
  %49 = load i64, ptr %41, align 8, !tbaa !220
  store i64 %49, ptr %39, align 8, !tbaa !220, !alias.scope !303
  br label %50

50:                                               ; preds = %43, %48
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %37, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !296
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %52, ptr %53, align 8, !tbaa !296, !alias.scope !303
  store ptr %41, ptr %37, align 8, !tbaa !306
  store i64 0, ptr %51, align 8, !tbaa !296
  store i8 0, ptr %41, align 8, !tbaa !220
  %54 = load ptr, ptr %1, align 8, !tbaa !169
  %55 = getelementptr inbounds ptr, ptr %54, i64 7
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %58 unwind label %108, !prof !309

58:                                               ; preds = %50
  %59 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #41
  %60 = load i64, ptr %53, align 8, !tbaa !296
  %61 = sub i64 4611686018427387903, %60
  %62 = icmp ult i64 %61, %59
  br i1 %62, label %63, label %65, !prof !301

63:                                               ; preds = %58
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #42
          to label %64 unwind label %108

64:                                               ; preds = %63
  unreachable

65:                                               ; preds = %58
  %66 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, i64 noundef %59)
          to label %67 unwind label %108

67:                                               ; preds = %65
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %68, ptr %4, align 8, !tbaa !302, !alias.scope !310
  %69 = load ptr, ptr %66, align 8, !tbaa !306
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %66, i64 0, i32 2
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %77, !prof !313

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %66, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !296
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  %76 = add nuw nsw i64 %74, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %68, ptr noundef nonnull align 8 dereferenceable(1) %70, i64 %76, i1 false)
  br label %79

77:                                               ; preds = %67
  store ptr %69, ptr %4, align 8, !tbaa !306, !alias.scope !310
  %78 = load i64, ptr %70, align 8, !tbaa !220
  store i64 %78, ptr %68, align 8, !tbaa !220, !alias.scope !310
  br label %79

79:                                               ; preds = %72, %77
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %66, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !296
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %81, ptr %82, align 8, !tbaa !296, !alias.scope !310
  store ptr %70, ptr %66, align 8, !tbaa !306
  store i64 0, ptr %80, align 8, !tbaa !296
  store i8 0, ptr %70, align 8, !tbaa !220
  %83 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7cModule18lastmodulefullpathB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %4) #41
  %84 = load ptr, ptr %4, align 8, !tbaa !306
  %85 = icmp eq ptr %84, %68
  br i1 %85, label %86, label %89, !prof !314

86:                                               ; preds = %79
  %87 = load i64, ptr %82, align 8, !tbaa !296
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %90

89:                                               ; preds = %79
  call void @_ZdlPv(ptr noundef %84) #43
  br label %90

90:                                               ; preds = %86, %89
  %91 = load ptr, ptr %5, align 8, !tbaa !306
  %92 = icmp eq ptr %91, %39
  br i1 %92, label %93, label %96, !prof !315

93:                                               ; preds = %90
  %94 = load i64, ptr %53, align 8, !tbaa !296
  %95 = icmp ult i64 %94, 16
  call void @llvm.assume(i1 %95)
  br label %97

96:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %91) #43
  br label %97

97:                                               ; preds = %93, %96
  %98 = load ptr, ptr %6, align 8, !tbaa !306
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %101, label %104, !prof !315

101:                                              ; preds = %97
  %102 = load i64, ptr %31, align 8, !tbaa !296
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %105

104:                                              ; preds = %97
  call void @_ZdlPv(ptr noundef %98) #43
  br label %105

105:                                              ; preds = %101, %104
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41
  br label %126

106:                                              ; preds = %36, %34
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %116

108:                                              ; preds = %65, %63, %50
  %109 = landingpad { ptr, i32 }
          cleanup
  %110 = load ptr, ptr %5, align 8, !tbaa !306
  %111 = icmp eq ptr %110, %39
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i64, ptr %53, align 8, !tbaa !296
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %116

115:                                              ; preds = %108
  call void @_ZdlPv(ptr noundef %110) #43
  br label %116

116:                                              ; preds = %115, %112, %106
  %117 = phi { ptr, i32 } [ %107, %106 ], [ %109, %112 ], [ %109, %115 ]
  %118 = load ptr, ptr %6, align 8, !tbaa !306
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i64, ptr %31, align 8, !tbaa !296
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %125

124:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %118) #43
  br label %125

125:                                              ; preds = %121, %124
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41
  resume { ptr, i32 } %117

126:                                              ; preds = %105, %15
  store ptr %1, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  br label %127

127:                                              ; preds = %126, %2
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %128, ptr %0, align 8, !tbaa !302
  %129 = load ptr, ptr @_ZN7cModule18lastmodulefullpathB5cxx11E, align 8, !tbaa !306
  %130 = load i64, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN7cModule18lastmodulefullpathB5cxx11E, i64 0, i32 1), align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41
  store i64 %130, ptr %3, align 8, !tbaa !316
  %131 = icmp ugt i64 %130, 15
  br i1 %131, label %132, label %135, !prof !317

132:                                              ; preds = %127
  %133 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
  store ptr %133, ptr %0, align 8, !tbaa !306
  %134 = load i64, ptr %3, align 8, !tbaa !316
  store i64 %134, ptr %128, align 8, !tbaa !220
  br label %135

135:                                              ; preds = %132, %127
  %136 = load ptr, ptr %0, align 8, !tbaa !306
  switch i64 %130, label %139 [
    i64 1, label %137
    i64 0, label %140
  ], !prof !318

137:                                              ; preds = %135
  %138 = load i8, ptr %129, align 1, !tbaa !220
  store i8 %138, ptr %136, align 1, !tbaa !220
  br label %140

139:                                              ; preds = %135
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %136, ptr align 1 %129, i64 %130, i1 false), !prof !319
  br label %140

140:                                              ; preds = %135, %137, %139
  %141 = load i64, ptr %3, align 8, !tbaa !316
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %141, ptr %142, align 8, !tbaa !296
  %143 = load ptr, ptr %0, align 8, !tbaa !306
  %144 = getelementptr inbounds i8, ptr %143, i64 %141
  store i8 0, ptr %144, align 1, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule8isSimpleEv(ptr noundef nonnull readonly align 8 dereferenceable(176) %0) unnamed_addr #19 align 2 !prof !320 {
  %2 = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTI7cModule, ptr nonnull @_ZTI13cSimpleModule, i64 0) #41
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK7cModule13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #14 align 2 !prof !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !169
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %6 = tail call noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %7 = icmp eq ptr %5, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %10 = load ptr, ptr %0, align 8, !tbaa !169
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(20) %0)
  %14 = load ptr, ptr %6, align 8, !tbaa !169
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(168) %6)
  %18 = load ptr, ptr %9, align 8, !tbaa !169
  %19 = getelementptr inbounds ptr, ptr %18, i64 27
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(168) %9, ptr noundef %13, ptr noundef %17)
  br label %27

22:                                               ; preds = %1
  %23 = load ptr, ptr %6, align 8, !tbaa !169
  %24 = getelementptr inbounds ptr, ptr %23, i64 24
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(168) %6)
  br label %27

27:                                               ; preds = %22, %8
  %28 = phi ptr [ %21, %8 ], [ %26, %22 ]
  ret ptr %28
}

declare noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !321 {
  %3 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #46
  invoke void @_ZN5cGateC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %4 unwind label %5, !prof !322

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %3) #43
  resume { ptr, i32 } %6
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare void @_ZN5cGateC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !323
  invoke void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3)
          to label %7 unwind label %4

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #44
  unreachable

7:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !327 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %37, label %5, !prof !328

5:                                                ; preds = %3
  br i1 %2, label %6, label %24, !prof !329

6:                                                ; preds = %5
  %7 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !243
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !240
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %6
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  %16 = load ptr, ptr %1, align 8, !tbaa !169
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %20 unwind label %22

20:                                               ; preds = %14
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %19)
          to label %21 unwind label %22

21:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

22:                                               ; preds = %20, %14
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #41
  resume { ptr, i32 } %23

24:                                               ; preds = %10, %5
  %25 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %26 = getelementptr inbounds %class.cEnvir, ptr %25, i64 0, i32 2
  %27 = load i8, ptr %26, align 1, !tbaa !189, !range !193, !noundef !194
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33, !prof !322

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !169
  %31 = getelementptr inbounds ptr, ptr %30, i64 22
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(288) %25, ptr noundef nonnull %1), !prof !330
  br label %33

33:                                               ; preds = %29, %24
  %34 = load ptr, ptr %1, align 8, !tbaa !169
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(48) %1) #41, !prof !331
  br label %37

37:                                               ; preds = %33, %3
  ret void
}

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule15disposeGateDescEPN5cGate4DescEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nocapture noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 !prof !332 {
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !206
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7, !prof !333

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !215
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %17, !prof !334

11:                                               ; preds = %7
  %12 = load i32, ptr %8, align 8, !tbaa !215
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !335

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 4
  br label %26

17:                                               ; preds = %7
  %18 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !220
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %19, i1 noundef zeroext %2)
  %20 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !220
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %21, i1 noundef zeroext %2)
  br label %52

22:                                               ; preds = %39, %11
  %23 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !220
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %46, !prof !336

26:                                               ; preds = %14, %39
  %27 = phi i64 [ 0, %14 ], [ %40, %39 ]
  %28 = load ptr, ptr %15, align 8, !tbaa !220
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !337

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %28, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !188
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %32, i1 noundef zeroext %2)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load ptr, ptr %16, align 8, !tbaa !220
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !337

36:                                               ; preds = %33
  %37 = getelementptr inbounds ptr, ptr %34, i64 %27
  %38 = load ptr, ptr %37, align 8, !tbaa !188
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %38, i1 noundef zeroext %2)
  br label %39

39:                                               ; preds = %33, %36
  %40 = add nuw i64 %27, 1
  %41 = load i32, ptr %8, align 8, !tbaa !215
  %42 = icmp sgt i32 %41, -1
  %43 = trunc i64 %40 to i32
  %44 = icmp sgt i32 %41, %43
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %26, label %22, !prof !338, !llvm.loop !339

46:                                               ; preds = %22
  tail call void @_ZdaPv(ptr noundef %24) #43
  br label %47

47:                                               ; preds = %46, %22
  %48 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !220
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51, !prof !336

51:                                               ; preds = %47
  tail call void @_ZdaPv(ptr noundef %49) #43
  br label %52

52:                                               ; preds = %47, %51, %17
  store ptr null, ptr %4, align 8, !tbaa !206
  br label %53

53:                                               ; preds = %52, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cModule14clearNamePoolsEv() local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  %1 = load ptr, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !323
  invoke void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7cModule8namePoolE, ptr noundef %1)
          to label %5 unwind label %2, !prof !341

2:                                                ; preds = %0
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #44
  unreachable

5:                                                ; preds = %0
  store ptr null, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !323
  store ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 2), align 8, !tbaa !342
  store ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 3), align 8, !tbaa !343
  store i64 0, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 1), align 8, !tbaa !344
  tail call void @_ZN5cGate17clearFullnamePoolEv()
  ret void
}

declare void @_ZN5cGate17clearFullnamePoolEv() local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN7cModule14adjustGateDescEP5cGatePNS0_4DescE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 align 2 !prof !254 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !345
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  store ptr %13, ptr %6, align 8, !tbaa !345
  br label %14

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !332 {
  %5 = alloca %"struct.cGate::Name", align 8
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !204
  br i1 %3, label %8, label %15, !prof !334

8:                                                ; preds = %4
  %9 = icmp sgt i32 %7, 2045
  br i1 %9, label %10, label %22, !prof !346

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef 2046)
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #41
  br label %201

15:                                               ; preds = %4
  %16 = icmp sgt i32 %7, 524285
  br i1 %16, label %17, label %22, !prof !347

17:                                               ; preds = %15
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef 524286)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #41
  br label %201

22:                                               ; preds = %15, %8
  %23 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !204
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %26, i64 40)
  %28 = extractvalue { i64, i1 } %27, 1
  %29 = extractvalue { i64, i1 } %27, 0
  %30 = select i1 %28, i64 -1, i64 %29, !prof !333
  %31 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %30) #46
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %42, label %33, !prof !333

33:                                               ; preds = %22
  %34 = getelementptr inbounds %"struct.cGate::Desc", ptr %31, i64 %26
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %31, %33 ], [ %40, %35 ]
  store ptr null, ptr %36, align 8, !tbaa !348
  %37 = getelementptr inbounds %"struct.cGate::Desc", ptr %36, i64 0, i32 2
  store i32 -1, ptr %37, align 8, !tbaa !215
  %38 = getelementptr inbounds %"struct.cGate::Desc", ptr %36, i64 0, i32 1
  store ptr null, ptr %38, align 8, !tbaa !206
  %39 = getelementptr inbounds %"struct.cGate::Desc", ptr %36, i64 0, i32 3
  %40 = getelementptr inbounds %"struct.cGate::Desc", ptr %36, i64 1
  %41 = icmp eq ptr %40, %34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  br i1 %41, label %42, label %35, !prof !349

42:                                               ; preds = %35, %22
  %43 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !187
  %45 = sext i32 %24 to i64
  %46 = mul nsw i64 %45, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %31, ptr align 8 %44, i64 %46, i1 false), !prof !350
  %47 = icmp sgt i32 %24, 0
  br i1 %47, label %48, label %50, !prof !351

48:                                               ; preds = %42
  %49 = zext nneg i32 %24 to i64
  br label %52

50:                                               ; preds = %120, %42
  %51 = icmp eq ptr %44, null
  br i1 %51, label %124, label %123, !prof !352

52:                                               ; preds = %48, %120
  %53 = phi i64 [ 0, %48 ], [ %121, %120 ]
  %54 = getelementptr inbounds %"struct.cGate::Desc", ptr %44, i64 %53, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !206
  %56 = icmp eq ptr %55, null
  br i1 %56, label %120, label %57, !prof !353

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"struct.cGate::Desc", ptr %44, i64 %53, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !215
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %63, !prof !354

61:                                               ; preds = %57
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %120, label %85, !prof !341

63:                                               ; preds = %57
  %64 = getelementptr inbounds %"struct.cGate::Desc", ptr %44, i64 %53, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !220
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67, !prof !355

67:                                               ; preds = %63
  %68 = ptrtoint ptr %44 to i64
  %69 = getelementptr inbounds %class.cGate, ptr %65, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !345
  %71 = ptrtoint ptr %70 to i64
  %72 = sub i64 %71, %68
  %73 = getelementptr inbounds i8, ptr %31, i64 %72
  store ptr %73, ptr %69, align 8, !tbaa !345
  br label %74

74:                                               ; preds = %63, %67
  %75 = getelementptr inbounds %"struct.cGate::Desc", ptr %44, i64 %53, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !220
  %77 = icmp eq ptr %76, null
  br i1 %77, label %120, label %78, !prof !356

78:                                               ; preds = %74
  %79 = ptrtoint ptr %44 to i64
  %80 = getelementptr inbounds %class.cGate, ptr %76, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !345
  %82 = ptrtoint ptr %81 to i64
  %83 = sub i64 %82, %79
  %84 = getelementptr inbounds i8, ptr %31, i64 %83
  store ptr %84, ptr %80, align 8, !tbaa !345
  br label %120

85:                                               ; preds = %61, %116
  %86 = phi i64 [ %118, %116 ], [ 0, %61 ]
  %87 = getelementptr inbounds %"struct.cGate::Desc", ptr %44, i64 %53, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !220
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds ptr, ptr %88, i64 %86
  %92 = load ptr, ptr %91, align 8, !tbaa !188
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = ptrtoint ptr %44 to i64
  %96 = getelementptr inbounds %class.cGate, ptr %92, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !345
  %98 = ptrtoint ptr %97 to i64
  %99 = sub i64 %98, %95
  %100 = getelementptr inbounds i8, ptr %31, i64 %99
  store ptr %100, ptr %96, align 8, !tbaa !345
  br label %101

101:                                              ; preds = %94, %90, %85
  %102 = getelementptr inbounds %"struct.cGate::Desc", ptr %44, i64 %53, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !220
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds ptr, ptr %103, i64 %86
  %107 = load ptr, ptr %106, align 8, !tbaa !188
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = ptrtoint ptr %44 to i64
  %111 = getelementptr inbounds %class.cGate, ptr %107, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !345
  %113 = ptrtoint ptr %112 to i64
  %114 = sub i64 %113, %110
  %115 = getelementptr inbounds i8, ptr %31, i64 %114
  store ptr %115, ptr %111, align 8, !tbaa !345
  br label %116

116:                                              ; preds = %109, %105, %101
  %117 = zext nneg i32 %59 to i64
  %118 = add nuw nsw i64 %86, 1
  %119 = icmp eq i64 %118, %117
  br i1 %119, label %120, label %85, !prof !341, !llvm.loop !357

120:                                              ; preds = %116, %61, %78, %74, %52
  %121 = add nuw nsw i64 %53, 1
  %122 = icmp eq i64 %121, %49
  br i1 %122, label %50, label %52, !prof !358, !llvm.loop !359

123:                                              ; preds = %50
  tail call void @_ZdaPv(ptr noundef %44) #43
  br label %124

124:                                              ; preds = %123, %50
  store ptr %31, ptr %43, align 8, !tbaa !187
  %125 = load i32, ptr %23, align 8, !tbaa !204
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %23, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41
  call void @_ZN5cGate4NameC1EPKcNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1, i32 noundef %2)
  %127 = load ptr, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !188
  %128 = icmp eq ptr %127, null
  br i1 %128, label %141, label %129, !prof !360

129:                                              ; preds = %124, %134
  %130 = phi ptr [ %139, %134 ], [ %127, %124 ]
  %131 = phi ptr [ %137, %134 ], [ getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), %124 ]
  %132 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %130, i64 0, i32 1
  %133 = invoke noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %132, ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %134 unwind label %156

134:                                              ; preds = %129
  %135 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %130, i64 0, i32 3
  %136 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %130, i64 0, i32 2
  %137 = select i1 %133, ptr %131, ptr %130, !prof !361
  %138 = select i1 %133, ptr %135, ptr %136, !prof !361
  %139 = load ptr, ptr %138, align 8, !tbaa !188
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %129, !prof !362, !llvm.loop !363

141:                                              ; preds = %134, %124
  %142 = phi ptr [ getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), %124 ], [ %137, %134 ]
  %143 = icmp eq ptr %142, getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0)
  br i1 %143, label %149, label %144, !prof !364

144:                                              ; preds = %141
  %145 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %142, i64 0, i32 1
  %146 = invoke noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %145)
          to label %147 unwind label %158

147:                                              ; preds = %144
  %148 = select i1 %146, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr %142, !prof !365
  br label %149

149:                                              ; preds = %147, %141
  %150 = phi ptr [ getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), %141 ], [ %148, %147 ]
  %151 = icmp eq ptr %150, getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0)
  br i1 %151, label %152, label %162, !prof !366

152:                                              ; preds = %149
  %153 = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7cModule8namePoolE, ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %154 unwind label %160, !prof !367

154:                                              ; preds = %152
  %155 = extractvalue { ptr, i8 } %153, 0
  br label %162

156:                                              ; preds = %129
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %185

158:                                              ; preds = %144
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %185

160:                                              ; preds = %152
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %185

162:                                              ; preds = %154, %149
  %163 = phi ptr [ %155, %154 ], [ %150, %149 ]
  %164 = sext i32 %125 to i64
  %165 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %163, i64 0, i32 1
  %166 = getelementptr inbounds %"struct.cGate::Desc", ptr %31, i64 %164, i32 1
  store ptr %165, ptr %166, align 8, !tbaa !206
  %167 = xor i1 %3, true
  %168 = sext i1 %167 to i32
  %169 = getelementptr inbounds %"struct.cGate::Desc", ptr %31, i64 %164, i32 2
  store i32 %168, ptr %169, align 8, !tbaa !215
  %170 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !368
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173, !prof !369

173:                                              ; preds = %162
  call void @_ZdaPv(ptr noundef %171) #43
  br label %174

174:                                              ; preds = %173, %162
  %175 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !368
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178, !prof !369

178:                                              ; preds = %174
  call void @_ZdaPv(ptr noundef %176) #43
  br label %179

179:                                              ; preds = %178, %174
  %180 = load ptr, ptr %5, align 8, !tbaa !368
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182, !prof !333

182:                                              ; preds = %179
  call void @_ZdaPv(ptr noundef %180) #43
  br label %183

183:                                              ; preds = %179, %182
  %184 = getelementptr inbounds %"struct.cGate::Desc", ptr %31, i64 %164
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  ret ptr %184

185:                                              ; preds = %156, %158, %160
  %186 = phi { ptr, i32 } [ %161, %160 ], [ %157, %156 ], [ %159, %158 ]
  %187 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !368
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  call void @_ZdaPv(ptr noundef %188) #43
  br label %191

191:                                              ; preds = %190, %185
  %192 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !368
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  call void @_ZdaPv(ptr noundef %193) #43
  br label %196

196:                                              ; preds = %195, %191
  %197 = load ptr, ptr %5, align 8, !tbaa !368
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  call void @_ZdaPv(ptr noundef %197) #43
  br label %200

200:                                              ; preds = %196, %199
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  br label %201

201:                                              ; preds = %200, %20, %13
  %202 = phi { ptr, i32 } [ %14, %13 ], [ %186, %200 ], [ %21, %20 ]
  resume { ptr, i32 } %202
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

declare void @_ZN5cGate4NameC1EPKcNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #23 align 2 !prof !370 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %18, !prof !371

7:                                                ; preds = %3
  %8 = add i64 %4, 4294967294
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !220
  %12 = icmp eq i8 %11, 36
  br i1 %12, label %13, label %18, !prof !372

13:                                               ; preds = %7
  %14 = add i64 %4, 4294967295
  %15 = and i64 %14, 4294967295
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !220
  br label %18

18:                                               ; preds = %3, %7, %13
  %19 = phi i8 [ %17, %13 ], [ 0, %7 ], [ 0, %3 ]
  store i8 %19, ptr %2, align 1, !tbaa !220
  switch i8 %19, label %125 [
    i8 0, label %34
    i8 105, label %27
    i8 111, label %20
  ], !prof !373

20:                                               ; preds = %18
  %21 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !204
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %121, !prof !341

24:                                               ; preds = %20
  %25 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  br label %102

27:                                               ; preds = %18
  %28 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !204
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %93, !prof !341

31:                                               ; preds = %27
  %32 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !187
  br label %74

34:                                               ; preds = %18
  %35 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !204
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %65, !prof !374

38:                                               ; preds = %34
  %39 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !187
  br label %47

41:                                               ; preds = %62
  %42 = zext nneg i32 %36 to i64
  %43 = zext nneg i32 %36 to i64
  %44 = add nuw nsw i64 %48, 1
  %45 = icmp ult i64 %44, %42
  %46 = icmp eq i64 %44, %43
  br i1 %46, label %65, label %47, !prof !375, !llvm.loop !376

47:                                               ; preds = %38, %41
  %48 = phi i64 [ 0, %38 ], [ %44, %41 ]
  %49 = phi i1 [ %37, %38 ], [ %45, %41 ]
  %50 = phi i32 [ undef, %38 ], [ %64, %41 ]
  %51 = getelementptr inbounds %"struct.cGate::Desc", ptr %40, i64 %48, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !206
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54, !prof !377

54:                                               ; preds = %47
  %55 = load ptr, ptr %52, align 8, !tbaa !368
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str.54, ptr %55, !prof !377
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) %1) #45
  %59 = icmp eq i32 %58, 0
  %60 = trunc i64 %48 to i32
  br i1 %59, label %62, label %61, !prof !378

61:                                               ; preds = %54, %47
  br label %62

62:                                               ; preds = %54, %61
  %63 = phi i1 [ true, %61 ], [ false, %54 ]
  %64 = phi i32 [ %50, %61 ], [ %60, %54 ]
  br i1 %63, label %41, label %65, !prof !379

65:                                               ; preds = %62, %41, %34
  %66 = phi i1 [ %37, %34 ], [ %49, %62 ], [ %45, %41 ]
  %67 = phi i32 [ undef, %34 ], [ %64, %41 ], [ %64, %62 ]
  br i1 %66, label %125, label %124, !prof !380

68:                                               ; preds = %90
  %69 = zext nneg i32 %29 to i64
  %70 = zext nneg i32 %29 to i64
  %71 = add nuw nsw i64 %75, 1
  %72 = icmp ult i64 %71, %69
  %73 = icmp eq i64 %71, %70
  br i1 %73, label %93, label %74, !prof !381, !llvm.loop !382

74:                                               ; preds = %31, %68
  %75 = phi i64 [ 0, %31 ], [ %71, %68 ]
  %76 = phi i1 [ %30, %31 ], [ %72, %68 ]
  %77 = phi i32 [ undef, %31 ], [ %92, %68 ]
  %78 = getelementptr inbounds %"struct.cGate::Desc", ptr %33, i64 %75, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !206
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81, !prof !381

81:                                               ; preds = %74
  %82 = getelementptr inbounds %"struct.cGate::Name", ptr %79, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !368
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr @.str.54, ptr %83, !prof !383
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(1) %1) #45
  %87 = icmp eq i32 %86, 0
  %88 = trunc i64 %75 to i32
  br i1 %87, label %90, label %89, !prof !384

89:                                               ; preds = %81, %74
  br label %90

90:                                               ; preds = %81, %89
  %91 = phi i1 [ true, %89 ], [ false, %81 ]
  %92 = phi i32 [ %77, %89 ], [ %88, %81 ]
  br i1 %91, label %68, label %93, !prof !383

93:                                               ; preds = %90, %68, %27
  %94 = phi i1 [ %30, %27 ], [ %76, %90 ], [ %72, %68 ]
  %95 = phi i32 [ undef, %27 ], [ %92, %68 ], [ %92, %90 ]
  br i1 %94, label %125, label %124, !prof !385

96:                                               ; preds = %118
  %97 = zext nneg i32 %22 to i64
  %98 = zext nneg i32 %22 to i64
  %99 = add nuw nsw i64 %103, 1
  %100 = icmp ult i64 %99, %97
  %101 = icmp eq i64 %99, %98
  br i1 %101, label %121, label %102, !prof !386, !llvm.loop !387

102:                                              ; preds = %24, %96
  %103 = phi i64 [ 0, %24 ], [ %99, %96 ]
  %104 = phi i1 [ %23, %24 ], [ %100, %96 ]
  %105 = phi i32 [ undef, %24 ], [ %120, %96 ]
  %106 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %103, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !206
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109, !prof !386

109:                                              ; preds = %102
  %110 = getelementptr inbounds %"struct.cGate::Name", ptr %107, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !368
  %112 = icmp eq ptr %111, null
  %113 = select i1 %112, ptr @.str.54, ptr %111, !prof !388
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %113, ptr noundef nonnull dereferenceable(1) %1) #45
  %115 = icmp eq i32 %114, 0
  %116 = trunc i64 %103 to i32
  br i1 %115, label %118, label %117, !prof !389

117:                                              ; preds = %109, %102
  br label %118

118:                                              ; preds = %109, %117
  %119 = phi i1 [ true, %117 ], [ false, %109 ]
  %120 = phi i32 [ %105, %117 ], [ %116, %109 ]
  br i1 %119, label %96, label %121, !prof !388

121:                                              ; preds = %118, %96, %20
  %122 = phi i1 [ %23, %20 ], [ %104, %118 ], [ %100, %96 ]
  %123 = phi i32 [ undef, %20 ], [ %120, %96 ], [ %120, %118 ]
  br i1 %122, label %125, label %124, !prof !390

124:                                              ; preds = %121, %93, %65
  br label %125

125:                                              ; preds = %121, %93, %65, %18, %124
  %126 = phi i32 [ -1, %124 ], [ -1, %18 ], [ %67, %65 ], [ %95, %93 ], [ %123, %121 ]
  ret i32 %126
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 !prof !391 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %18, !prof !371

7:                                                ; preds = %3
  %8 = add i64 %4, 4294967294
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !220
  %12 = icmp eq i8 %11, 36
  br i1 %12, label %13, label %18, !prof !372

13:                                               ; preds = %7
  %14 = add i64 %4, 4294967295
  %15 = and i64 %14, 4294967295
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !220
  br label %18

18:                                               ; preds = %13, %7, %3
  %19 = phi i8 [ %17, %13 ], [ 0, %7 ], [ 0, %3 ]
  store i8 %19, ptr %2, align 1, !tbaa !220
  switch i8 %19, label %122 [
    i8 0, label %34
    i8 105, label %27
    i8 111, label %20
  ], !prof !373

20:                                               ; preds = %18
  %21 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !204
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %118, !prof !341

24:                                               ; preds = %20
  %25 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  br label %99

27:                                               ; preds = %18
  %28 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !204
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %91, !prof !341

31:                                               ; preds = %27
  %32 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !187
  br label %72

34:                                               ; preds = %18
  %35 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !204
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %64, !prof !374

38:                                               ; preds = %34
  %39 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !187
  br label %46

41:                                               ; preds = %61
  %42 = zext nneg i32 %36 to i64
  %43 = add nuw nsw i64 %47, 1
  %44 = icmp ult i64 %43, %42
  %45 = icmp eq i64 %43, %42
  br i1 %45, label %64, label %46, !prof !375, !llvm.loop !376

46:                                               ; preds = %41, %38
  %47 = phi i64 [ 0, %38 ], [ %43, %41 ]
  %48 = phi i1 [ true, %38 ], [ %44, %41 ]
  %49 = phi i32 [ undef, %38 ], [ %63, %41 ]
  %50 = getelementptr inbounds %"struct.cGate::Desc", ptr %40, i64 %47, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !206
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53, !prof !377

53:                                               ; preds = %46
  %54 = load ptr, ptr %51, align 8, !tbaa !368
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @.str.54, ptr %54, !prof !377
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) %1) #45
  %58 = icmp eq i32 %57, 0
  %59 = trunc i64 %47 to i32
  br i1 %58, label %61, label %60, !prof !378

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %53
  %62 = phi i1 [ true, %60 ], [ false, %53 ]
  %63 = phi i32 [ %49, %60 ], [ %59, %53 ]
  br i1 %62, label %41, label %64, !prof !379

64:                                               ; preds = %61, %41, %34
  %65 = phi i1 [ %37, %34 ], [ %48, %61 ], [ %44, %41 ]
  %66 = phi i32 [ undef, %34 ], [ %63, %41 ], [ %63, %61 ]
  br i1 %65, label %122, label %121, !prof !380

67:                                               ; preds = %88
  %68 = zext nneg i32 %29 to i64
  %69 = add nuw nsw i64 %73, 1
  %70 = icmp ult i64 %69, %68
  %71 = icmp eq i64 %69, %68
  br i1 %71, label %91, label %72, !prof !381, !llvm.loop !382

72:                                               ; preds = %67, %31
  %73 = phi i64 [ 0, %31 ], [ %69, %67 ]
  %74 = phi i1 [ true, %31 ], [ %70, %67 ]
  %75 = phi i32 [ undef, %31 ], [ %90, %67 ]
  %76 = getelementptr inbounds %"struct.cGate::Desc", ptr %33, i64 %73, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !206
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79, !prof !381

79:                                               ; preds = %72
  %80 = getelementptr inbounds %"struct.cGate::Name", ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !368
  %82 = icmp eq ptr %81, null
  %83 = select i1 %82, ptr @.str.54, ptr %81, !prof !383
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) %1) #45
  %85 = icmp eq i32 %84, 0
  %86 = trunc i64 %73 to i32
  br i1 %85, label %88, label %87, !prof !384

87:                                               ; preds = %79, %72
  br label %88

88:                                               ; preds = %87, %79
  %89 = phi i1 [ true, %87 ], [ false, %79 ]
  %90 = phi i32 [ %75, %87 ], [ %86, %79 ]
  br i1 %89, label %67, label %91, !prof !383

91:                                               ; preds = %88, %67, %27
  %92 = phi i1 [ %30, %27 ], [ %74, %88 ], [ %70, %67 ]
  %93 = phi i32 [ undef, %27 ], [ %90, %67 ], [ %90, %88 ]
  br i1 %92, label %122, label %121, !prof !385

94:                                               ; preds = %115
  %95 = zext nneg i32 %22 to i64
  %96 = add nuw nsw i64 %100, 1
  %97 = icmp ult i64 %96, %95
  %98 = icmp eq i64 %96, %95
  br i1 %98, label %118, label %99, !prof !386, !llvm.loop !387

99:                                               ; preds = %94, %24
  %100 = phi i64 [ 0, %24 ], [ %96, %94 ]
  %101 = phi i1 [ true, %24 ], [ %97, %94 ]
  %102 = phi i32 [ undef, %24 ], [ %117, %94 ]
  %103 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %100, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !206
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106, !prof !386

106:                                              ; preds = %99
  %107 = getelementptr inbounds %"struct.cGate::Name", ptr %104, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !368
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, ptr @.str.54, ptr %108, !prof !388
  %111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) %1) #45
  %112 = icmp eq i32 %111, 0
  %113 = trunc i64 %100 to i32
  br i1 %112, label %115, label %114, !prof !389

114:                                              ; preds = %106, %99
  br label %115

115:                                              ; preds = %114, %106
  %116 = phi i1 [ true, %114 ], [ false, %106 ]
  %117 = phi i32 [ %102, %114 ], [ %113, %106 ]
  br i1 %116, label %94, label %118, !prof !388

118:                                              ; preds = %115, %94, %20
  %119 = phi i1 [ %23, %20 ], [ %101, %115 ], [ %97, %94 ]
  %120 = phi i32 [ undef, %20 ], [ %117, %94 ], [ %117, %115 ]
  br i1 %119, label %122, label %121, !prof !390

121:                                              ; preds = %118, %91, %64
  br label %122

122:                                              ; preds = %18, %64, %91, %118, %121
  %123 = phi i32 [ -1, %121 ], [ -1, %18 ], [ %66, %64 ], [ %93, %91 ], [ %120, %118 ]
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130, !prof !392

125:                                              ; preds = %122
  %126 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %126, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %1)
          to label %127 unwind label %128

127:                                              ; preds = %125
  tail call void @__cxa_throw(ptr nonnull %126, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

128:                                              ; preds = %125
  %129 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %126) #41
  resume { ptr, i32 } %129

130:                                              ; preds = %122
  %131 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !187
  %133 = zext nneg i32 %123 to i64
  %134 = getelementptr inbounds %"struct.cGate::Desc", ptr %132, i64 %133
  ret ptr %134
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZN7cModule4gateEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 !prof !393 {
  %3 = icmp ult i32 %1, 1048576
  br i1 %3, label %4, label %63, !prof !394

4:                                                ; preds = %2
  %5 = lshr i32 %1, 1
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !204
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %14, label %9, !prof !395

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %153

14:                                               ; preds = %4
  %15 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = zext nneg i32 %5 to i64
  %18 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26, !prof !396

21:                                               ; preds = %14
  %22 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %153

26:                                               ; preds = %14
  %27 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !215
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %35, !prof !396

30:                                               ; preds = %26
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %32 unwind label %33

32:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %153

35:                                               ; preds = %26
  %36 = and i32 %1, 1
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %"struct.cGate::Name", ptr %19, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !210
  br i1 %37, label %40, label %42, !prof !395

40:                                               ; preds = %35
  %41 = icmp eq i32 %39, 79
  br i1 %41, label %44, label %49, !prof !396

42:                                               ; preds = %35
  %43 = icmp eq i32 %39, 73
  br i1 %43, label %44, label %49

44:                                               ; preds = %42, %40
  %45 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %45, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %46 unwind label %47

46:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %153

49:                                               ; preds = %42, %40
  %50 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 3
  %51 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 4
  %52 = select i1 %37, ptr %50, ptr %51, !prof !395
  %53 = load ptr, ptr %52, align 8, !tbaa !220
  %54 = getelementptr inbounds %class.cGate, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !397
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %36, %56
  br i1 %57, label %151, label %58, !prof !395

58:                                               ; preds = %49
  %59 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %59, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %60 unwind label %61

60:                                               ; preds = %58
  tail call void @__cxa_throw(ptr nonnull %59, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %153

63:                                               ; preds = %2
  %64 = lshr i32 %1, 20
  %65 = add nsw i32 %64, -1
  %66 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !204
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %74, label %69, !prof !398

69:                                               ; preds = %63
  %70 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %70, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %71 unwind label %72

71:                                               ; preds = %69
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

72:                                               ; preds = %69
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %153

74:                                               ; preds = %63
  %75 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !187
  %77 = zext i32 %65 to i64
  %78 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !206
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %86, !prof !399

81:                                               ; preds = %74
  %82 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %82, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %83 unwind label %84

83:                                               ; preds = %81
  tail call void @__cxa_throw(ptr nonnull %82, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

84:                                               ; preds = %81
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %153

86:                                               ; preds = %74
  %87 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !215
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %95, label %90, !prof !398

90:                                               ; preds = %86
  %91 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %91, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %92 unwind label %93

92:                                               ; preds = %90
  tail call void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

93:                                               ; preds = %90
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %153

95:                                               ; preds = %86
  %96 = and i32 %1, 524288
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %"struct.cGate::Name", ptr %79, i64 0, i32 3
  %99 = load i32, ptr %98, align 8, !tbaa !210
  br i1 %97, label %102, label %100, !prof !398

100:                                              ; preds = %95
  %101 = icmp eq i32 %99, 73
  br i1 %101, label %104, label %109

102:                                              ; preds = %95
  %103 = icmp eq i32 %99, 79
  br i1 %103, label %104, label %109, !prof !399

104:                                              ; preds = %102, %100
  %105 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %105, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %106 unwind label %107

106:                                              ; preds = %104
  tail call void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

107:                                              ; preds = %104
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %153

109:                                              ; preds = %102, %100
  %110 = and i32 %1, 524287
  %111 = icmp ult i32 %110, %88
  br i1 %111, label %140, label %112, !prof !398

112:                                              ; preds = %109
  %113 = icmp ult i32 %110, 100000
  %114 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  br i1 %113, label %115, label %136

115:                                              ; preds = %112
  %116 = load ptr, ptr %78, align 8, !tbaa !206
  %117 = getelementptr inbounds %"struct.cGate::Name", ptr %116, i64 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !210
  %119 = icmp eq i32 %118, 66
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  br i1 %97, label %121, label %123

121:                                              ; preds = %120
  %122 = getelementptr inbounds %"struct.cGate::Name", ptr %116, i64 0, i32 1
  br label %125

123:                                              ; preds = %120
  %124 = getelementptr inbounds %"struct.cGate::Name", ptr %116, i64 0, i32 2
  br label %125

125:                                              ; preds = %115, %121, %123
  %126 = phi ptr [ %122, %121 ], [ %124, %123 ], [ %116, %115 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !368
  %128 = icmp eq ptr %127, null
  %129 = select i1 %128, ptr @.str.54, ptr %127
  %130 = load i32, ptr %87, align 8, !tbaa !215
  %131 = icmp sgt i32 %130, -1
  %132 = select i1 %131, i32 %130, i32 1
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %114, ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef nonnull %129, i32 noundef %132, i32 noundef %110)
          to label %133 unwind label %134

133:                                              ; preds = %125
  tail call void @__cxa_throw(ptr nonnull %114, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

134:                                              ; preds = %125
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %153

136:                                              ; preds = %112
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %114, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1)
          to label %137 unwind label %138

137:                                              ; preds = %136
  tail call void @__cxa_throw(ptr nonnull %114, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

138:                                              ; preds = %136
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %153

140:                                              ; preds = %109
  %141 = zext nneg i32 %110 to i64
  br i1 %97, label %144, label %142, !prof !398

142:                                              ; preds = %140
  %143 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 4
  br label %146

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 3
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi ptr [ %145, %144 ], [ %143, %142 ]
  %148 = load ptr, ptr %147, align 8, !tbaa !220
  %149 = getelementptr inbounds ptr, ptr %148, i64 %141
  %150 = load ptr, ptr %149, align 8, !tbaa !188
  br label %151

151:                                              ; preds = %49, %146
  %152 = phi ptr [ %150, %146 ], [ %53, %49 ]
  ret ptr %152

153:                                              ; preds = %72, %107, %138, %134, %93, %84, %12, %61, %47, %33, %24
  %154 = phi ptr [ %70, %72 ], [ %105, %107 ], [ %114, %138 ], [ %114, %134 ], [ %91, %93 ], [ %82, %84 ], [ %10, %12 ], [ %59, %61 ], [ %45, %47 ], [ %31, %33 ], [ %22, %24 ]
  %155 = phi { ptr, i32 } [ %73, %72 ], [ %108, %107 ], [ %139, %138 ], [ %135, %134 ], [ %94, %93 ], [ %85, %84 ], [ %13, %12 ], [ %62, %61 ], [ %48, %47 ], [ %34, %33 ], [ %25, %24 ]
  tail call void @__cxa_free_exception(ptr %154) #41
  resume { ptr, i32 } %155
}

declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule7addGateEPKcN5cGate4TypeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !332 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #41
  %6 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %13, !prof !333

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %1)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %60

13:                                               ; preds = %4
  %14 = load i8, ptr %5, align 1, !tbaa !220
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16, !prof !400

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef %1)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %60

21:                                               ; preds = %13
  %22 = tail call noundef ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  store ptr %0, ptr %22, align 8, !tbaa !348
  br i1 %3, label %59, label %23, !prof !334

23:                                               ; preds = %21
  %24 = icmp eq i32 %2, 79
  br i1 %24, label %43, label %25, !prof !401

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !169
  %27 = getelementptr inbounds ptr, ptr %26, i64 50
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %2), !prof !402
  %30 = getelementptr inbounds %"struct.cGate::Desc", ptr %22, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !220
  %31 = getelementptr inbounds %class.cGate, ptr %29, i64 0, i32 1
  store ptr %22, ptr %31, align 8, !tbaa !345
  %32 = getelementptr inbounds %class.cGate, ptr %29, i64 0, i32 2
  store i32 -4, ptr %32, align 8, !tbaa !397
  %33 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %34 = getelementptr inbounds %class.cEnvir, ptr %33, i64 0, i32 2
  %35 = load i8, ptr %34, align 1, !tbaa !189, !range !193, !noundef !194
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41, !prof !403

37:                                               ; preds = %25
  %38 = load ptr, ptr %33, align 8, !tbaa !169
  %39 = getelementptr inbounds ptr, ptr %38, i64 21
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(288) %33, ptr noundef %29), !prof !404
  br label %41

41:                                               ; preds = %37, %25
  %42 = icmp eq i32 %2, 73
  br i1 %42, label %59, label %43, !prof !405

43:                                               ; preds = %41, %23
  %44 = load ptr, ptr %0, align 8, !tbaa !169
  %45 = getelementptr inbounds ptr, ptr %44, i64 50
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %2), !prof !402
  %48 = getelementptr inbounds %"struct.cGate::Desc", ptr %22, i64 0, i32 4
  store ptr %47, ptr %48, align 8, !tbaa !220
  %49 = getelementptr inbounds %class.cGate, ptr %47, i64 0, i32 1
  store ptr %22, ptr %49, align 8, !tbaa !345
  %50 = getelementptr inbounds %class.cGate, ptr %47, i64 0, i32 2
  store i32 -3, ptr %50, align 8, !tbaa !397
  %51 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %52 = getelementptr inbounds %class.cEnvir, ptr %51, i64 0, i32 2
  %53 = load i8, ptr %52, align 1, !tbaa !189, !range !193, !noundef !194
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %59, !prof !403

55:                                               ; preds = %43
  %56 = load ptr, ptr %51, align 8, !tbaa !169
  %57 = getelementptr inbounds ptr, ptr %56, i64 21
  %58 = load ptr, ptr %57, align 8
  tail call void %58(ptr noundef nonnull align 8 dereferenceable(288) %51, ptr noundef %47), !prof !404
  br label %59

59:                                               ; preds = %55, %43, %41, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #41
  ret void

60:                                               ; preds = %19, %11
  %61 = phi ptr [ %17, %19 ], [ %9, %11 ]
  %62 = phi { ptr, i32 } [ %20, %19 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %61) #41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #41
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule11setGateSizeEPKci(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !406 {
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #41
  %7 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14, !prof !407

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %1, ptr noundef %1)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %323

14:                                               ; preds = %3
  %15 = load i8, ptr %4, align 1, !tbaa !220
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17, !prof !408

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef %1)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %323

22:                                               ; preds = %14
  %23 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !187
  %25 = zext nneg i32 %7 to i64
  %26 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25
  %27 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !215
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %35, label %30, !prof !408

30:                                               ; preds = %22
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull %0, ptr noundef nonnull @.str.13, ptr noundef %1)
          to label %32 unwind label %33

32:                                               ; preds = %30
  tail call void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

33:                                               ; preds = %30
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %323

35:                                               ; preds = %22
  %36 = icmp slt i32 %2, 0
  br i1 %36, label %37, label %42, !prof !407

37:                                               ; preds = %35
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %2, ptr noundef %1)
          to label %39 unwind label %40

39:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %323

42:                                               ; preds = %35
  %43 = icmp sgt i32 %2, 524287
  br i1 %43, label %44, label %49, !prof !407

44:                                               ; preds = %42
  %45 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %45, ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef %2, i32 noundef 524287)
          to label %46 unwind label %47

46:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %323

49:                                               ; preds = %42
  %50 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !206
  %52 = getelementptr inbounds %"struct.cGate::Name", ptr %51, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !210
  %54 = icmp slt i32 %28, 8
  br i1 %54, label %61, label %55, !prof !409

55:                                               ; preds = %49
  %56 = icmp slt i32 %28, 32
  br i1 %56, label %61, label %57, !prof !410

57:                                               ; preds = %55
  %58 = icmp slt i32 %28, 256
  %59 = select i1 %58, i32 15, i32 63, !prof !411
  %60 = select i1 %58, i32 2147483632, i32 2147483584, !prof !411
  br label %61

61:                                               ; preds = %57, %55, %49
  %62 = phi i32 [ 1, %49 ], [ 3, %55 ], [ %59, %57 ]
  %63 = phi i32 [ 2147483646, %49 ], [ 2147483644, %55 ], [ %60, %57 ]
  %64 = add nuw nsw i32 %28, %62
  %65 = and i32 %64, %63
  %66 = icmp slt i32 %2, 8
  br i1 %66, label %73, label %67, !prof !412

67:                                               ; preds = %61
  %68 = icmp slt i32 %2, 32
  br i1 %68, label %73, label %69, !prof !413

69:                                               ; preds = %67
  %70 = icmp slt i32 %2, 256
  %71 = select i1 %70, i32 15, i32 63, !prof !414
  %72 = select i1 %70, i32 2147483632, i32 2147483584, !prof !414
  br label %73

73:                                               ; preds = %69, %67, %61
  %74 = phi i32 [ 1, %61 ], [ 3, %67 ], [ %71, %69 ]
  %75 = phi i32 [ 2147483646, %61 ], [ 2147483644, %67 ], [ %72, %69 ]
  %76 = add nuw nsw i32 %74, %2
  %77 = and i32 %76, %75
  %78 = icmp sgt i32 %28, %2
  br i1 %78, label %79, label %220, !prof !407

79:                                               ; preds = %73
  %80 = icmp eq i32 %53, 79
  %81 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 3
  %82 = icmp eq i32 %53, 73
  %83 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 4
  %84 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 3
  %85 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 4
  br label %88

86:                                               ; preds = %212
  %87 = icmp eq i32 %53, 79
  br i1 %87, label %217, label %214

88:                                               ; preds = %79, %212
  %89 = phi i32 [ %28, %79 ], [ %90, %212 ]
  %90 = add nsw i32 %89, -1
  br i1 %80, label %137, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %81, align 8, !tbaa !220
  %93 = zext nneg i32 %90 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !188
  %96 = getelementptr inbounds %class.cGate, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !243
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = getelementptr inbounds %class.cGate, ptr %95, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !240
  %102 = icmp eq ptr %101, null
  br i1 %102, label %128, label %103

103:                                              ; preds = %99, %91
  %104 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41
  %105 = load ptr, ptr %95, align 8, !tbaa !169
  %106 = getelementptr inbounds ptr, ptr %105, i64 8
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %108 unwind label %112

108:                                              ; preds = %103
  %109 = load ptr, ptr %5, align 8, !tbaa !306
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %104, ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %2, ptr noundef %109)
          to label %110 unwind label %114

110:                                              ; preds = %108
  invoke void @__cxa_throw(ptr nonnull %104, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %111 unwind label %114

111:                                              ; preds = %110
  unreachable

112:                                              ; preds = %103
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %125

114:                                              ; preds = %110, %108
  %115 = phi i1 [ false, %110 ], [ true, %108 ]
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = load ptr, ptr %5, align 8, !tbaa !306
  %118 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !296
  %123 = icmp ult i64 %122, 16
  call void @llvm.assume(i1 %123)
  br label %125

124:                                              ; preds = %114
  call void @_ZdlPv(ptr noundef %117) #43
  br label %125

125:                                              ; preds = %124, %120, %112
  %126 = phi i1 [ true, %112 ], [ %115, %120 ], [ %115, %124 ]
  %127 = phi { ptr, i32 } [ %113, %112 ], [ %116, %120 ], [ %116, %124 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  br i1 %126, label %323, label %326

128:                                              ; preds = %99
  %129 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %130 = getelementptr inbounds %class.cEnvir, ptr %129, i64 0, i32 2
  %131 = load i8, ptr %130, align 1, !tbaa !189, !range !193, !noundef !194
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load ptr, ptr %129, align 8, !tbaa !169
  %135 = getelementptr inbounds ptr, ptr %134, i64 22
  %136 = load ptr, ptr %135, align 8
  tail call void %136(ptr noundef nonnull align 8 dereferenceable(288) %129, ptr noundef nonnull %95)
  br label %137

137:                                              ; preds = %133, %128, %88
  br i1 %82, label %184, label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr %83, align 8, !tbaa !220
  %140 = zext nneg i32 %90 to i64
  %141 = getelementptr inbounds ptr, ptr %139, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !188
  %143 = getelementptr inbounds %class.cGate, ptr %142, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !243
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = getelementptr inbounds %class.cGate, ptr %142, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !240
  %149 = icmp eq ptr %148, null
  br i1 %149, label %175, label %150

150:                                              ; preds = %146, %138
  %151 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #41
  %152 = load ptr, ptr %142, align 8, !tbaa !169
  %153 = getelementptr inbounds ptr, ptr %152, i64 8
  %154 = load ptr, ptr %153, align 8
  invoke void %154(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %142)
          to label %155 unwind label %159

155:                                              ; preds = %150
  %156 = load ptr, ptr %6, align 8, !tbaa !306
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %151, ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %2, ptr noundef %156)
          to label %157 unwind label %161

157:                                              ; preds = %155
  invoke void @__cxa_throw(ptr nonnull %151, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %158 unwind label %161

158:                                              ; preds = %157
  unreachable

159:                                              ; preds = %150
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %172

161:                                              ; preds = %157, %155
  %162 = phi i1 [ false, %157 ], [ true, %155 ]
  %163 = landingpad { ptr, i32 }
          cleanup
  %164 = load ptr, ptr %6, align 8, !tbaa !306
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !296
  %170 = icmp ult i64 %169, 16
  call void @llvm.assume(i1 %170)
  br label %172

171:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %164) #43
  br label %172

172:                                              ; preds = %171, %167, %159
  %173 = phi i1 [ true, %159 ], [ %162, %167 ], [ %162, %171 ]
  %174 = phi { ptr, i32 } [ %160, %159 ], [ %163, %167 ], [ %163, %171 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #41
  br i1 %173, label %323, label %326

175:                                              ; preds = %146
  %176 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %177 = getelementptr inbounds %class.cEnvir, ptr %176, i64 0, i32 2
  %178 = load i8, ptr %177, align 1, !tbaa !189, !range !193, !noundef !194
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load ptr, ptr %176, align 8, !tbaa !169
  %182 = getelementptr inbounds ptr, ptr %181, i64 22
  %183 = load ptr, ptr %182, align 8
  tail call void %183(ptr noundef nonnull align 8 dereferenceable(288) %176, ptr noundef nonnull %142)
  br label %184

184:                                              ; preds = %180, %175, %137
  store i32 %90, ptr %27, align 8, !tbaa !215
  br i1 %80, label %198, label %185

185:                                              ; preds = %184
  %186 = load ptr, ptr %84, align 8, !tbaa !220
  %187 = zext nneg i32 %90 to i64
  %188 = getelementptr inbounds ptr, ptr %186, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !188
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %185
  %192 = load ptr, ptr %189, align 8, !tbaa !169
  %193 = getelementptr inbounds ptr, ptr %192, i64 4
  %194 = load ptr, ptr %193, align 8
  tail call void %194(ptr noundef nonnull align 8 dereferenceable(48) %189) #41
  br label %195

195:                                              ; preds = %191, %185
  %196 = load ptr, ptr %84, align 8, !tbaa !220
  %197 = getelementptr inbounds ptr, ptr %196, i64 %187
  store ptr null, ptr %197, align 8, !tbaa !188
  br label %198

198:                                              ; preds = %195, %184
  br i1 %82, label %212, label %199

199:                                              ; preds = %198
  %200 = load ptr, ptr %85, align 8, !tbaa !220
  %201 = zext nneg i32 %90 to i64
  %202 = getelementptr inbounds ptr, ptr %200, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !188
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr %203, align 8, !tbaa !169
  %207 = getelementptr inbounds ptr, ptr %206, i64 4
  %208 = load ptr, ptr %207, align 8
  tail call void %208(ptr noundef nonnull align 8 dereferenceable(48) %203) #41
  br label %209

209:                                              ; preds = %205, %199
  %210 = load ptr, ptr %85, align 8, !tbaa !220
  %211 = getelementptr inbounds ptr, ptr %210, i64 %201
  store ptr null, ptr %211, align 8, !tbaa !188
  br label %212

212:                                              ; preds = %198, %209
  %213 = icmp sgt i32 %90, %2
  br i1 %213, label %88, label %86, !llvm.loop !415

214:                                              ; preds = %86
  %215 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 3
  tail call fastcc void @_ZL12reallocGatevRPP5cGateii(ptr noundef nonnull align 8 dereferenceable(8) %215, i32 noundef %65, i32 noundef %77)
  %216 = icmp eq i32 %53, 73
  br i1 %216, label %219, label %217

217:                                              ; preds = %86, %214
  %218 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 4
  tail call fastcc void @_ZL12reallocGatevRPP5cGateii(ptr noundef nonnull align 8 dereferenceable(8) %218, i32 noundef %65, i32 noundef %77)
  br label %219

219:                                              ; preds = %217, %214
  store i32 %2, ptr %27, align 8, !tbaa !215
  br label %220

220:                                              ; preds = %219, %73
  %221 = icmp slt i32 %28, %2
  br i1 %221, label %222, label %322, !prof !408

222:                                              ; preds = %220
  %223 = icmp eq i32 %53, 79
  br i1 %223, label %246, label %224, !prof !416

224:                                              ; preds = %222
  %225 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 3
  %226 = icmp eq i32 %65, %77
  br i1 %226, label %246, label %227, !prof !417

227:                                              ; preds = %224
  %228 = zext nneg i32 %77 to i64
  %229 = shl nuw nsw i64 %228, 3
  %230 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %229) #46
  %231 = load ptr, ptr %225, align 8, !tbaa !188
  %232 = icmp ult i32 %65, %77
  %233 = tail call i32 @llvm.smin.i32(i32 %65, i32 %77)
  %234 = zext nneg i32 %233 to i64
  %235 = shl nuw nsw i64 %234, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %230, ptr align 8 %231, i64 %235, i1 false), !prof !418
  br i1 %232, label %236, label %242, !prof !419

236:                                              ; preds = %227
  %237 = zext nneg i32 %65 to i64
  %238 = getelementptr inbounds ptr, ptr %230, i64 %237
  %239 = sub nsw i32 %77, %65
  %240 = sext i32 %239 to i64
  %241 = shl nsw i64 %240, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %238, i8 0, i64 %241, i1 false), !prof !420
  br label %242

242:                                              ; preds = %236, %227
  %243 = icmp eq ptr %231, null
  br i1 %243, label %245, label %244, !prof !421

244:                                              ; preds = %242
  tail call void @_ZdaPv(ptr noundef %231) #43
  br label %245

245:                                              ; preds = %244, %242
  store ptr %230, ptr %225, align 8, !tbaa !188
  br label %246

246:                                              ; preds = %245, %224, %222
  %247 = icmp eq i32 %53, 73
  br i1 %247, label %270, label %248, !prof !416

248:                                              ; preds = %246
  %249 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 4
  %250 = icmp eq i32 %65, %77
  br i1 %250, label %270, label %251, !prof !417

251:                                              ; preds = %248
  %252 = zext nneg i32 %77 to i64
  %253 = shl nuw nsw i64 %252, 3
  %254 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %253) #46
  %255 = load ptr, ptr %249, align 8, !tbaa !188
  %256 = icmp ult i32 %65, %77
  %257 = tail call i32 @llvm.smin.i32(i32 %65, i32 %77)
  %258 = zext nneg i32 %257 to i64
  %259 = shl nuw nsw i64 %258, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %254, ptr align 8 %255, i64 %259, i1 false), !prof !418
  br i1 %256, label %260, label %266, !prof !419

260:                                              ; preds = %251
  %261 = zext nneg i32 %65 to i64
  %262 = getelementptr inbounds ptr, ptr %254, i64 %261
  %263 = sub nsw i32 %77, %65
  %264 = sext i32 %263 to i64
  %265 = shl nsw i64 %264, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %262, i8 0, i64 %265, i1 false), !prof !420
  br label %266

266:                                              ; preds = %260, %251
  %267 = icmp eq ptr %255, null
  br i1 %267, label %269, label %268, !prof !421

268:                                              ; preds = %266
  tail call void @_ZdaPv(ptr noundef %255) #43
  br label %269

269:                                              ; preds = %268, %266
  store ptr %254, ptr %249, align 8, !tbaa !188
  br label %270

270:                                              ; preds = %269, %248, %246
  store i32 %2, ptr %27, align 8, !tbaa !215
  %271 = icmp slt i32 %28, %2
  br i1 %271, label %272, label %322, !prof !422

272:                                              ; preds = %270
  %273 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 3
  %274 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 4
  %275 = zext nneg i32 %28 to i64
  br label %276

276:                                              ; preds = %272, %318
  %277 = phi i64 [ %275, %272 ], [ %319, %318 ]
  br i1 %223, label %297, label %278, !prof !337

278:                                              ; preds = %276
  %279 = load ptr, ptr %0, align 8, !tbaa !169
  %280 = getelementptr inbounds ptr, ptr %279, i64 50
  %281 = load ptr, ptr %280, align 8
  %282 = tail call noundef ptr %281(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %53), !prof !423
  %283 = load ptr, ptr %273, align 8, !tbaa !220
  %284 = getelementptr inbounds ptr, ptr %283, i64 %277
  store ptr %282, ptr %284, align 8, !tbaa !188
  %285 = getelementptr inbounds %class.cGate, ptr %282, i64 0, i32 1
  store ptr %26, ptr %285, align 8, !tbaa !345
  %286 = trunc i64 %277 to i32
  %287 = shl i32 %286, 2
  %288 = getelementptr inbounds %class.cGate, ptr %282, i64 0, i32 2
  store i32 %287, ptr %288, align 8, !tbaa !397
  %289 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %290 = getelementptr inbounds %class.cEnvir, ptr %289, i64 0, i32 2
  %291 = load i8, ptr %290, align 1, !tbaa !189, !range !193, !noundef !194
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %297, !prof !424

293:                                              ; preds = %278
  %294 = load ptr, ptr %289, align 8, !tbaa !169
  %295 = getelementptr inbounds ptr, ptr %294, i64 21
  %296 = load ptr, ptr %295, align 8
  tail call void %296(ptr noundef nonnull align 8 dereferenceable(288) %289, ptr noundef %282), !prof !425
  br label %297

297:                                              ; preds = %293, %278, %276
  br i1 %247, label %318, label %298, !prof !337

298:                                              ; preds = %297
  %299 = load ptr, ptr %0, align 8, !tbaa !169
  %300 = getelementptr inbounds ptr, ptr %299, i64 50
  %301 = load ptr, ptr %300, align 8
  %302 = tail call noundef ptr %301(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %53), !prof !423
  %303 = load ptr, ptr %274, align 8, !tbaa !220
  %304 = getelementptr inbounds ptr, ptr %303, i64 %277
  store ptr %302, ptr %304, align 8, !tbaa !188
  %305 = getelementptr inbounds %class.cGate, ptr %302, i64 0, i32 1
  store ptr %26, ptr %305, align 8, !tbaa !345
  %306 = trunc i64 %277 to i32
  %307 = shl i32 %306, 2
  %308 = or disjoint i32 %307, 1
  %309 = getelementptr inbounds %class.cGate, ptr %302, i64 0, i32 2
  store i32 %308, ptr %309, align 8, !tbaa !397
  %310 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %311 = getelementptr inbounds %class.cEnvir, ptr %310, i64 0, i32 2
  %312 = load i8, ptr %311, align 1, !tbaa !189, !range !193, !noundef !194
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %314, label %318, !prof !424

314:                                              ; preds = %298
  %315 = load ptr, ptr %310, align 8, !tbaa !169
  %316 = getelementptr inbounds ptr, ptr %315, i64 21
  %317 = load ptr, ptr %316, align 8
  tail call void %317(ptr noundef nonnull align 8 dereferenceable(288) %310, ptr noundef %302), !prof !425
  br label %318

318:                                              ; preds = %314, %298, %297
  %319 = add nuw nsw i64 %277, 1
  %320 = trunc i64 %319 to i32
  %321 = icmp slt i32 %320, %2
  br i1 %321, label %276, label %322, !prof !426, !llvm.loop !427

322:                                              ; preds = %318, %270, %220
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #41
  ret void

323:                                              ; preds = %172, %125, %12, %20, %47, %40, %33
  %324 = phi ptr [ %31, %33 ], [ %38, %40 ], [ %45, %47 ], [ %18, %20 ], [ %10, %12 ], [ %104, %125 ], [ %151, %172 ]
  %325 = phi { ptr, i32 } [ %34, %33 ], [ %41, %40 ], [ %48, %47 ], [ %21, %20 ], [ %13, %12 ], [ %127, %125 ], [ %174, %172 ]
  call void @__cxa_free_exception(ptr %324) #41
  br label %326

326:                                              ; preds = %323, %172, %125
  %327 = phi { ptr, i32 } [ %127, %125 ], [ %174, %172 ], [ %325, %323 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #41
  resume { ptr, i32 } %327
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12reallocGatevRPP5cGateii(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !254 !PGOFuncName !428 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %26, label %5, !prof !417

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = icmp slt i32 %2, 0
  %8 = shl nsw i64 %6, 3
  %9 = select i1 %7, i64 -1, i64 %8, !prof !429
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #46
  %11 = load ptr, ptr %0, align 8, !tbaa !188
  %12 = icmp slt i32 %1, %2
  %13 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %10, ptr align 8 %11, i64 %15, i1 false), !prof !430
  br i1 %12, label %16, label %22, !prof !419

16:                                               ; preds = %5
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %10, i64 %17
  %19 = sub nsw i32 %2, %1
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %18, i8 0, i64 %21, i1 false), !prof !431
  br label %22

22:                                               ; preds = %16, %5
  %23 = icmp eq ptr %11, null
  br i1 %23, label %25, label %24, !prof !421

24:                                               ; preds = %22
  tail call void @_ZdaPv(ptr noundef %11) #43
  br label %25

25:                                               ; preds = %24, %22
  store ptr %10, ptr %0, align 8, !tbaa !188
  br label %26

26:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK7cModule8gateSizeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !432 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #41
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !215
  %7 = icmp sgt i32 %6, -1
  %8 = select i1 %7, i32 %6, i32 1, !prof !433
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #41
  ret i32 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK7cModule10gateBaseIdEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #41
  %4 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef %1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %46

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !187
  %14 = zext nneg i32 %4 to i64
  %15 = getelementptr inbounds %"struct.cGate::Desc", ptr %13, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = getelementptr inbounds %"struct.cGate::Name", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !210
  %19 = icmp ne i32 %18, 66
  %20 = load i8, ptr %3, align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef %1)
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %46

28:                                               ; preds = %11
  %29 = icmp ne i8 %20, 105
  %30 = icmp ne i32 %18, 73
  %31 = and i1 %30, %29
  %32 = getelementptr inbounds %"struct.cGate::Desc", ptr %13, i64 %14, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !215
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = zext i1 %31 to i32
  %37 = shl nuw i32 %4, 1
  %38 = or disjoint i32 %37, %36
  br label %44

39:                                               ; preds = %28
  %40 = shl i32 %4, 20
  %41 = add i32 %40, 1048576
  %42 = select i1 %31, i32 524288, i32 0
  %43 = or disjoint i32 %42, %41
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %43, %39 ], [ %38, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #41
  ret i32 %45

46:                                               ; preds = %26, %9
  %47 = phi ptr [ %24, %26 ], [ %7, %9 ]
  %48 = phi { ptr, i32 } [ %27, %26 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %47) #41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #41
  resume { ptr, i32 } %48
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZN7cModule4gateEPKci(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 !prof !434 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %18, !prof !371

7:                                                ; preds = %3
  %8 = add i64 %4, 4294967294
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !220
  %12 = icmp eq i8 %11, 36
  br i1 %12, label %13, label %18, !prof !372

13:                                               ; preds = %7
  %14 = add i64 %4, 4294967295
  %15 = and i64 %14, 4294967295
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !220
  br label %18

18:                                               ; preds = %13, %7, %3
  %19 = phi i8 [ %17, %13 ], [ 0, %7 ], [ 0, %3 ]
  switch i8 %19, label %122 [
    i8 0, label %34
    i8 105, label %27
    i8 111, label %20
  ], !prof !373

20:                                               ; preds = %18
  %21 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !204
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %118, !prof !341

24:                                               ; preds = %20
  %25 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  br label %99

27:                                               ; preds = %18
  %28 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !204
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %91, !prof !341

31:                                               ; preds = %27
  %32 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !187
  br label %72

34:                                               ; preds = %18
  %35 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !204
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %64, !prof !374

38:                                               ; preds = %34
  %39 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !187
  br label %46

41:                                               ; preds = %61
  %42 = zext nneg i32 %36 to i64
  %43 = add nuw nsw i64 %47, 1
  %44 = icmp ult i64 %43, %42
  %45 = icmp eq i64 %43, %42
  br i1 %45, label %64, label %46, !prof !375, !llvm.loop !376

46:                                               ; preds = %41, %38
  %47 = phi i64 [ 0, %38 ], [ %43, %41 ]
  %48 = phi i1 [ true, %38 ], [ %44, %41 ]
  %49 = phi i32 [ undef, %38 ], [ %63, %41 ]
  %50 = getelementptr inbounds %"struct.cGate::Desc", ptr %40, i64 %47, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !206
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53, !prof !377

53:                                               ; preds = %46
  %54 = load ptr, ptr %51, align 8, !tbaa !368
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @.str.54, ptr %54, !prof !377
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) %1) #45
  %58 = icmp eq i32 %57, 0
  %59 = trunc i64 %47 to i32
  br i1 %58, label %61, label %60, !prof !378

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %53
  %62 = phi i1 [ true, %60 ], [ false, %53 ]
  %63 = phi i32 [ %49, %60 ], [ %59, %53 ]
  br i1 %62, label %41, label %64, !prof !379

64:                                               ; preds = %61, %41, %34
  %65 = phi i1 [ %37, %34 ], [ %48, %61 ], [ %44, %41 ]
  %66 = phi i32 [ undef, %34 ], [ %63, %41 ], [ %63, %61 ]
  br i1 %65, label %122, label %121, !prof !380

67:                                               ; preds = %88
  %68 = zext nneg i32 %29 to i64
  %69 = add nuw nsw i64 %73, 1
  %70 = icmp ult i64 %69, %68
  %71 = icmp eq i64 %69, %68
  br i1 %71, label %91, label %72, !prof !381, !llvm.loop !382

72:                                               ; preds = %67, %31
  %73 = phi i64 [ 0, %31 ], [ %69, %67 ]
  %74 = phi i1 [ true, %31 ], [ %70, %67 ]
  %75 = phi i32 [ undef, %31 ], [ %90, %67 ]
  %76 = getelementptr inbounds %"struct.cGate::Desc", ptr %33, i64 %73, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !206
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79, !prof !381

79:                                               ; preds = %72
  %80 = getelementptr inbounds %"struct.cGate::Name", ptr %77, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !368
  %82 = icmp eq ptr %81, null
  %83 = select i1 %82, ptr @.str.54, ptr %81, !prof !383
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) %1) #45
  %85 = icmp eq i32 %84, 0
  %86 = trunc i64 %73 to i32
  br i1 %85, label %88, label %87, !prof !384

87:                                               ; preds = %79, %72
  br label %88

88:                                               ; preds = %87, %79
  %89 = phi i1 [ true, %87 ], [ false, %79 ]
  %90 = phi i32 [ %75, %87 ], [ %86, %79 ]
  br i1 %89, label %67, label %91, !prof !383

91:                                               ; preds = %88, %67, %27
  %92 = phi i1 [ %30, %27 ], [ %74, %88 ], [ %70, %67 ]
  %93 = phi i32 [ undef, %27 ], [ %90, %67 ], [ %90, %88 ]
  br i1 %92, label %122, label %121, !prof !385

94:                                               ; preds = %115
  %95 = zext nneg i32 %22 to i64
  %96 = add nuw nsw i64 %100, 1
  %97 = icmp ult i64 %96, %95
  %98 = icmp eq i64 %96, %95
  br i1 %98, label %118, label %99, !prof !386, !llvm.loop !387

99:                                               ; preds = %94, %24
  %100 = phi i64 [ 0, %24 ], [ %96, %94 ]
  %101 = phi i1 [ true, %24 ], [ %97, %94 ]
  %102 = phi i32 [ undef, %24 ], [ %117, %94 ]
  %103 = getelementptr inbounds %"struct.cGate::Desc", ptr %26, i64 %100, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !206
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106, !prof !386

106:                                              ; preds = %99
  %107 = getelementptr inbounds %"struct.cGate::Name", ptr %104, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !368
  %109 = icmp eq ptr %108, null
  %110 = select i1 %109, ptr @.str.54, ptr %108, !prof !388
  %111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) %1) #45
  %112 = icmp eq i32 %111, 0
  %113 = trunc i64 %100 to i32
  br i1 %112, label %115, label %114, !prof !389

114:                                              ; preds = %106, %99
  br label %115

115:                                              ; preds = %114, %106
  %116 = phi i1 [ true, %114 ], [ false, %106 ]
  %117 = phi i32 [ %102, %114 ], [ %113, %106 ]
  br i1 %116, label %94, label %118, !prof !388

118:                                              ; preds = %115, %94, %20
  %119 = phi i1 [ %23, %20 ], [ %101, %115 ], [ %97, %94 ]
  %120 = phi i32 [ undef, %20 ], [ %117, %94 ], [ %117, %115 ]
  br i1 %119, label %122, label %121, !prof !390

121:                                              ; preds = %118, %91, %64
  br label %122

122:                                              ; preds = %121, %118, %91, %64, %18
  %123 = phi i32 [ -1, %121 ], [ -1, %18 ], [ %66, %64 ], [ %93, %91 ], [ %120, %118 ]
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %133, !prof !392

125:                                              ; preds = %122
  %126 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %126, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %1)
          to label %127 unwind label %131

127:                                              ; preds = %125
  tail call void @__cxa_throw(ptr nonnull %126, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

128:                                              ; preds = %147, %182, %174, %161, %131
  %129 = phi ptr [ %145, %147 ], [ %179, %182 ], [ %170, %174 ], [ %159, %161 ], [ %126, %131 ]
  %130 = phi { ptr, i32 } [ %148, %147 ], [ %183, %182 ], [ %175, %174 ], [ %162, %161 ], [ %132, %131 ]
  tail call void @__cxa_free_exception(ptr %129) #41
  resume { ptr, i32 } %130

131:                                              ; preds = %125
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %128

133:                                              ; preds = %122
  %134 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !187
  %136 = zext nneg i32 %123 to i64
  %137 = getelementptr inbounds %"struct.cGate::Desc", ptr %135, i64 %136, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !206
  %139 = getelementptr inbounds %"struct.cGate::Name", ptr %138, i64 0, i32 3
  %140 = load i32, ptr %139, align 8, !tbaa !210
  %141 = icmp ne i32 %140, 66
  %142 = icmp ne i8 %19, 0
  %143 = or i1 %142, %141
  br i1 %143, label %149, label %144, !prof !435

144:                                              ; preds = %133
  %145 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %145, ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %1)
          to label %146 unwind label %147

146:                                              ; preds = %144
  tail call void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

147:                                              ; preds = %144
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %128

149:                                              ; preds = %133
  %150 = icmp eq i8 %19, 105
  %151 = icmp eq i32 %140, 73
  %152 = or i1 %150, %151
  %153 = getelementptr inbounds %"struct.cGate::Desc", ptr %135, i64 %136, i32 2
  %154 = load i32, ptr %153, align 8, !tbaa !215
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %167, label %156, !prof !436

156:                                              ; preds = %149
  %157 = icmp eq i32 %2, -1
  br i1 %157, label %163, label %158, !prof !437

158:                                              ; preds = %156
  %159 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %159, ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef %1)
          to label %160 unwind label %161

160:                                              ; preds = %158
  tail call void @__cxa_throw(ptr nonnull %159, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

161:                                              ; preds = %158
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %128

163:                                              ; preds = %156
  %164 = getelementptr inbounds %"struct.cGate::Desc", ptr %135, i64 %136, i32 3
  %165 = getelementptr inbounds %"struct.cGate::Desc", ptr %135, i64 %136, i32 4
  %166 = select i1 %152, ptr %164, ptr %165, !prof !438
  br label %194

167:                                              ; preds = %149
  %168 = icmp slt i32 %2, 0
  br i1 %168, label %169, label %176, !prof !439

169:                                              ; preds = %167
  %170 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  %171 = icmp eq i32 %2, -1
  %172 = select i1 %171, ptr @.str.22, ptr @.str.23
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %170, ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %172, ptr noundef %1)
          to label %173 unwind label %174

173:                                              ; preds = %169
  tail call void @__cxa_throw(ptr nonnull %170, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

174:                                              ; preds = %169
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %128

176:                                              ; preds = %167
  %177 = icmp sgt i32 %154, %2
  br i1 %177, label %184, label %178, !prof !440

178:                                              ; preds = %176
  %179 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  %180 = load i32, ptr %153, align 8, !tbaa !215
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %179, ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i32 noundef %2, ptr noundef %1, i32 noundef %180)
          to label %181 unwind label %182

181:                                              ; preds = %178
  tail call void @__cxa_throw(ptr nonnull %179, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

182:                                              ; preds = %178
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %128

184:                                              ; preds = %176
  %185 = zext nneg i32 %2 to i64
  br i1 %152, label %186, label %190, !prof !441

186:                                              ; preds = %184
  %187 = getelementptr inbounds %"struct.cGate::Desc", ptr %135, i64 %136, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !220
  %189 = getelementptr inbounds ptr, ptr %188, i64 %185
  br label %194

190:                                              ; preds = %184
  %191 = getelementptr inbounds %"struct.cGate::Desc", ptr %135, i64 %136, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !220
  %193 = getelementptr inbounds ptr, ptr %192, i64 %185
  br label %194

194:                                              ; preds = %186, %190, %163
  %195 = phi ptr [ %166, %163 ], [ %189, %186 ], [ %193, %190 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !220
  ret ptr %196
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK7cModule8findGateEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #14 align 2 !prof !254 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #41
  %5 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = zext nneg i32 %5 to i64
  %11 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !206
  %13 = getelementptr inbounds %"struct.cGate::Name", ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !210
  %15 = icmp ne i32 %14, 66
  %16 = load i8, ptr %4, align 1
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %7
  %20 = icmp eq i8 %16, 105
  %21 = icmp eq i32 %14, 73
  %22 = or i1 %21, %20
  %23 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !215
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = icmp eq i32 %2, -1
  br i1 %27, label %28, label %49

28:                                               ; preds = %26
  br i1 %22, label %29, label %31

29:                                               ; preds = %28
  %30 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 3
  br label %45

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 4
  br label %45

33:                                               ; preds = %19
  %34 = icmp ugt i32 %24, %2
  br i1 %34, label %35, label %49

35:                                               ; preds = %33
  %36 = zext nneg i32 %2 to i64
  br i1 %22, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !220
  %40 = getelementptr inbounds ptr, ptr %39, i64 %36
  br label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !220
  %44 = getelementptr inbounds ptr, ptr %43, i64 %36
  br label %45

45:                                               ; preds = %31, %29, %41, %37
  %46 = phi ptr [ %40, %37 ], [ %44, %41 ], [ %30, %29 ], [ %32, %31 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !220
  %48 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %47)
  br label %49

49:                                               ; preds = %45, %7, %33, %26, %3
  %50 = phi i32 [ -1, %3 ], [ -1, %7 ], [ -1, %26 ], [ -1, %33 ], [ %48, %45 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #41
  ret i32 %50
}

declare noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 !prof !442 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #41
  %6 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %7 = icmp eq i32 %2, 73
  %8 = getelementptr inbounds %"struct.cGate::Desc", ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = getelementptr inbounds %"struct.cGate::Name", ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.cGate::Name", ptr %9, i64 0, i32 1
  %12 = select i1 %7, ptr %11, ptr %10, !prof !443
  %13 = load ptr, ptr %12, align 8, !tbaa !368
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.54, ptr %13
  %16 = load ptr, ptr %0, align 8, !tbaa !169
  %17 = getelementptr inbounds ptr, ptr %16, i64 59
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %15, i32 noundef %3), !prof !444
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #41
  ret ptr %19
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule7hasGateEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #26 align 2 !prof !445 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #41
  %5 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7, !prof !446

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = zext nneg i32 %5 to i64
  %11 = icmp eq i32 %2, -1
  br i1 %11, label %18, label %12, !prof !447

12:                                               ; preds = %7
  %13 = icmp sgt i32 %2, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !215
  %17 = icmp sgt i32 %16, %2
  br label %18

18:                                               ; preds = %7, %14, %12, %3
  %19 = phi i1 [ false, %3 ], [ true, %7 ], [ false, %12 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #41
  ret i1 %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cModule10deleteGateEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #41
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = load i8, ptr %3, align 1, !tbaa !220
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef %1)
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #41
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  tail call void @_ZN7cModule15disposeGateDescEPN5cGate4DescEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %4, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #41
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK7cModule12getGateNamesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = load i32, ptr %6, align 8, !tbaa !204
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 8
  br label %11

11:                                               ; preds = %9, %36
  %12 = phi i64 [ 0, %9 ], [ %37, %36 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !187
  %14 = getelementptr inbounds %"struct.cGate::Desc", ptr %13, i64 %12, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41
  %18 = load ptr, ptr %14, align 8, !tbaa !206
  %19 = load ptr, ptr %18, align 8, !tbaa !368
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str.54, ptr %19
  store ptr %21, ptr %3, align 8, !tbaa !188
  %22 = load ptr, ptr %4, align 8, !tbaa !188
  %23 = load ptr, ptr %5, align 8, !tbaa !448
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  store ptr %21, ptr %22, align 8, !tbaa !188
  %26 = load ptr, ptr %4, align 8, !tbaa !450
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  store ptr %27, ptr %4, align 8, !tbaa !450
  br label %29

28:                                               ; preds = %17
  invoke void @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %22, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %29 unwind label %30

29:                                               ; preds = %25, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  br label %36

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  %32 = load ptr, ptr %0, align 8, !tbaa !451
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef %32) #43
  br label %35

35:                                               ; preds = %30, %34
  resume { ptr, i32 } %31

36:                                               ; preds = %11, %29
  %37 = add nuw nsw i64 %12, 1
  %38 = load i32, ptr %6, align 8, !tbaa !204
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %11, label %41, !llvm.loop !452

41:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK7cModule8gateTypeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #14 align 2 !prof !254 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #41
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = load i8, ptr %3, align 1, !tbaa !220
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp eq i8 %5, 105
  %9 = select i1 %8, i32 73, i32 79
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !206
  %13 = getelementptr inbounds %"struct.cGate::Name", ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !210
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ %9, %7 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #41
  ret i32 %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule12isGateVectorEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #14 align 2 !prof !254 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #41
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %5 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !215
  %7 = icmp sgt i32 %6, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #41
  ret i1 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN7cModule31getOrCreateFirstUnconnectedGateEPKccbb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i8 noundef signext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #41
  %9 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %10 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !215
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef %1)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %106

18:                                               ; preds = %5
  %19 = load i8, ptr %6, align 1, !tbaa !220
  %20 = icmp ne i8 %19, 0
  %21 = icmp ne i8 %2, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  %25 = sext i8 %2 to i32
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %106

29:                                               ; preds = %18
  %30 = or i8 %19, %2
  switch i8 %30, label %44 [
    i8 0, label %31
    i8 111, label %50
    i8 105, label %50
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !206
  %34 = getelementptr inbounds %"struct.cGate::Name", ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !210
  %36 = icmp eq i32 %35, 66
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull %0, ptr noundef nonnull @.str.28)
          to label %39 unwind label %40

39:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %106

42:                                               ; preds = %31
  %43 = icmp eq i32 %35, 73
  br label %52

44:                                               ; preds = %29
  %45 = sext i8 %30 to i32
  %46 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %46, ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i32 noundef %45)
          to label %47 unwind label %48

47:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

48:                                               ; preds = %44
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %106

50:                                               ; preds = %29, %29
  %51 = icmp eq i8 %30, 105
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi i1 [ %51, %50 ], [ %43, %42 ]
  %54 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 3
  %55 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 4
  %56 = select i1 %53, ptr %54, ptr %55
  %57 = load ptr, ptr %56, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #41
  %58 = zext nneg i32 %11 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  br i1 %3, label %60, label %62

60:                                               ; preds = %52
  store ptr null, ptr %7, align 8, !tbaa !188
  %61 = call noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEEET_S8_S8_RKT0_T1_(ptr noundef %57, ptr noundef %59, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %64

62:                                               ; preds = %52
  store ptr null, ptr %8, align 8, !tbaa !188
  %63 = call noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEEET_S8_S8_RKT0_T1_(ptr noundef %57, ptr noundef %59, ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi ptr [ %61, %60 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #41
  %66 = zext nneg i32 %11 to i64
  %67 = getelementptr inbounds ptr, ptr %57, i64 %66
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %64
  br i1 %4, label %75, label %70

70:                                               ; preds = %69
  %71 = icmp eq i32 %11, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %70
  %73 = call i32 @llvm.smax.i32(i32 %11, i32 1)
  %74 = zext nneg i32 %73 to i64
  br label %87

75:                                               ; preds = %69
  %76 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !206
  %78 = load ptr, ptr %77, align 8, !tbaa !368
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr @.str.54, ptr %78
  %81 = add nuw nsw i32 %11, 1
  %82 = load ptr, ptr %0, align 8, !tbaa !169
  %83 = getelementptr inbounds ptr, ptr %82, i64 53
  %84 = load ptr, ptr %83, align 8
  call void %84(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %80, i32 noundef %81)
  %85 = load ptr, ptr %56, align 8, !tbaa !220
  %86 = getelementptr inbounds ptr, ptr %85, i64 %66
  br label %101

87:                                               ; preds = %72, %98
  %88 = phi i64 [ 0, %72 ], [ %99, %98 ]
  %89 = getelementptr inbounds ptr, ptr %57, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !188
  br i1 %3, label %91, label %93

91:                                               ; preds = %87
  %92 = call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %90)
  br i1 %92, label %98, label %95

93:                                               ; preds = %87
  %94 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %90)
  br i1 %94, label %98, label %95

95:                                               ; preds = %93, %91
  %96 = and i64 %88, 4294967295
  %97 = getelementptr inbounds ptr, ptr %57, i64 %96
  br label %101

98:                                               ; preds = %91, %93
  %99 = add nuw nsw i64 %88, 1
  %100 = icmp eq i64 %99, %74
  br i1 %100, label %104, label %87, !llvm.loop !453

101:                                              ; preds = %64, %75, %95
  %102 = phi ptr [ %97, %95 ], [ %86, %75 ], [ %65, %64 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !188
  br label %104

104:                                              ; preds = %98, %101, %70
  %105 = phi ptr [ null, %70 ], [ %103, %101 ], [ null, %98 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #41
  ret ptr %105

106:                                              ; preds = %40, %48, %27, %16
  %107 = phi ptr [ %38, %40 ], [ %46, %48 ], [ %24, %27 ], [ %14, %16 ]
  %108 = phi { ptr, i32 } [ %41, %40 ], [ %49, %48 ], [ %28, %27 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %107) #41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #41
  resume { ptr, i32 } %108
}

declare noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !454 {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.38", align 8
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #41
  %9 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %10 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !215
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %18, label %13, !prof !455

13:                                               ; preds = %6
  %14 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %1)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %149

18:                                               ; preds = %6
  %19 = load i8, ptr %8, align 1, !tbaa !220
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21, !prof !455

21:                                               ; preds = %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull %0, ptr noundef nonnull @.str.31)
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %149

26:                                               ; preds = %18
  %27 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !220
  %29 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !220
  br i1 %2, label %31, label %50, !prof !456

31:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %30, ptr %7, align 8
  %32 = icmp eq i32 %11, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %31
  %34 = zext nneg i32 %11 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi ptr [ %46, %35 ], [ %28, %33 ]
  %37 = phi i64 [ %45, %35 ], [ %34, %33 ]
  %38 = lshr i64 %37, 1
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !188
  %41 = call noundef zeroext i1 @_ZN28less_gatePairConnectedInsideclEP5cGateS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %40, ptr noundef null)
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  %43 = xor i64 %38, -1
  %44 = add nsw i64 %37, %43
  %45 = select i1 %41, i64 %44, i64 %38
  %46 = select i1 %41, ptr %42, ptr %36
  %47 = icmp sgt i64 %45, 0
  br i1 %47, label %35, label %48, !llvm.loop !457

48:                                               ; preds = %35, %31
  %49 = phi ptr [ %28, %31 ], [ %46, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %86

50:                                               ; preds = %26
  %51 = icmp eq i32 %11, 0
  br i1 %51, label %86, label %52, !prof !458

52:                                               ; preds = %50
  %53 = zext nneg i32 %11 to i64
  br label %54

54:                                               ; preds = %52, %78
  %55 = phi ptr [ %84, %78 ], [ %28, %52 ]
  %56 = phi i64 [ %83, %78 ], [ %53, %52 ]
  %57 = lshr i64 %56, 1
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !188
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61, !prof !459

61:                                               ; preds = %54
  %62 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %59)
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i32 [ 0, %54 ], [ %63, %61 ]
  %66 = icmp eq i32 %65, 0
  %67 = or i1 %60, %66
  br i1 %67, label %78, label %68, !prof !460

68:                                               ; preds = %64
  %69 = getelementptr inbounds %class.cGate, ptr %59, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !397
  %71 = ashr i32 %70, 2
  %72 = icmp eq i32 %71, -1
  %73 = select i1 %72, i32 0, i32 %71, !prof !459
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %30, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !188
  %77 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %76)
  br label %78

78:                                               ; preds = %64, %68
  %79 = phi i1 [ false, %64 ], [ %77, %68 ]
  %80 = getelementptr inbounds ptr, ptr %58, i64 1
  %81 = xor i64 %57, -1
  %82 = add nsw i64 %56, %81
  %83 = select i1 %79, i64 %82, i64 %57, !prof !461
  %84 = select i1 %79, ptr %80, ptr %55, !prof !461
  %85 = icmp sgt i64 %83, 0
  br i1 %85, label %54, label %86, !prof !462, !llvm.loop !463

86:                                               ; preds = %78, %50, %48
  %87 = phi ptr [ %49, %48 ], [ %28, %50 ], [ %84, %78 ]
  %88 = zext nneg i32 %11 to i64
  %89 = getelementptr inbounds ptr, ptr %28, i64 %88
  %90 = icmp eq ptr %87, %89
  br i1 %90, label %101, label %91, !prof !455

91:                                               ; preds = %86
  %92 = load ptr, ptr %87, align 8, !tbaa !188
  store ptr %92, ptr %4, align 8, !tbaa !188
  %93 = getelementptr inbounds %class.cGate, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !397
  %95 = ashr i32 %94, 2
  %96 = icmp eq i32 %95, -1
  %97 = select i1 %96, i32 0, i32 %95
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %30, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !188
  store ptr %100, ptr %5, align 8, !tbaa !188
  br label %148

101:                                              ; preds = %86
  br i1 %3, label %107, label %102, !prof !455

102:                                              ; preds = %101
  %103 = icmp eq i32 %11, 0
  br i1 %103, label %147, label %104

104:                                              ; preds = %102
  %105 = call i32 @llvm.smax.i32(i32 %11, i32 1)
  %106 = zext nneg i32 %105 to i64
  br label %123

107:                                              ; preds = %101
  %108 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !206
  %110 = load ptr, ptr %109, align 8, !tbaa !368
  %111 = icmp eq ptr %110, null
  %112 = select i1 %111, ptr @.str.54, ptr %110, !prof !456
  %113 = add nuw nsw i32 %11, 1
  %114 = load ptr, ptr %0, align 8, !tbaa !169
  %115 = getelementptr inbounds ptr, ptr %114, i64 53
  %116 = load ptr, ptr %115, align 8
  call void %116(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %112, i32 noundef %113), !prof !464
  %117 = load ptr, ptr %27, align 8, !tbaa !220
  %118 = getelementptr inbounds ptr, ptr %117, i64 %88
  %119 = load ptr, ptr %118, align 8, !tbaa !188
  store ptr %119, ptr %4, align 8, !tbaa !188
  %120 = load ptr, ptr %29, align 8, !tbaa !220
  %121 = getelementptr inbounds ptr, ptr %120, i64 %88
  %122 = load ptr, ptr %121, align 8, !tbaa !188
  store ptr %122, ptr %5, align 8, !tbaa !188
  br label %148

123:                                              ; preds = %104, %144
  %124 = phi i64 [ 0, %104 ], [ %145, %144 ]
  %125 = getelementptr inbounds ptr, ptr %28, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !188
  br i1 %2, label %127, label %129

127:                                              ; preds = %123
  %128 = call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %126)
  br i1 %128, label %144, label %131

129:                                              ; preds = %123
  %130 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %126)
  br i1 %130, label %144, label %131

131:                                              ; preds = %129, %127
  %132 = getelementptr inbounds ptr, ptr %30, i64 %124
  %133 = load ptr, ptr %132, align 8, !tbaa !188
  br i1 %2, label %134, label %136

134:                                              ; preds = %131
  %135 = call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %133)
  br i1 %135, label %144, label %138

136:                                              ; preds = %131
  %137 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %133)
  br i1 %137, label %144, label %138

138:                                              ; preds = %136, %134
  %139 = and i64 %124, 4294967295
  %140 = getelementptr inbounds ptr, ptr %28, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !188
  store ptr %141, ptr %4, align 8, !tbaa !188
  %142 = getelementptr inbounds ptr, ptr %30, i64 %139
  %143 = load ptr, ptr %142, align 8, !tbaa !188
  store ptr %143, ptr %5, align 8, !tbaa !188
  br label %148

144:                                              ; preds = %127, %129, %136, %134
  %145 = add nuw nsw i64 %124, 1
  %146 = icmp eq i64 %145, %106
  br i1 %146, label %147, label %123, !llvm.loop !465

147:                                              ; preds = %144, %102
  store ptr null, ptr %5, align 8, !tbaa !188
  store ptr null, ptr %4, align 8, !tbaa !188
  br label %148

148:                                              ; preds = %138, %147, %107, %91
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #41
  ret void

149:                                              ; preds = %24, %16
  %150 = phi ptr [ %22, %24 ], [ %14, %16 ]
  %151 = phi { ptr, i32 } [ %25, %24 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %150) #41
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #41
  resume { ptr, i32 } %151
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK7cModule9gateCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #8 align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !204
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  %8 = zext nneg i32 %3 to i64
  br label %11

9:                                                ; preds = %31, %1
  %10 = phi i32 [ 0, %1 ], [ %32, %31 ]
  ret i32 %10

11:                                               ; preds = %5, %31
  %12 = phi i64 [ 0, %5 ], [ %33, %31 ]
  %13 = phi i32 [ 0, %5 ], [ %32, %31 ]
  %14 = getelementptr inbounds %"struct.cGate::Desc", ptr %7, i64 %12, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !206
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.cGate::Desc", ptr %7, i64 %12, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !215
  %20 = icmp sgt i32 %19, -1
  %21 = getelementptr inbounds %"struct.cGate::Name", ptr %15, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !210
  %23 = icmp eq i32 %22, 66
  br i1 %20, label %27, label %24

24:                                               ; preds = %17
  %25 = select i1 %23, i32 2, i32 1
  %26 = add nsw i32 %25, %13
  br label %31

27:                                               ; preds = %17
  %28 = zext i1 %23 to i32
  %29 = shl nuw nsw i32 %19, %28
  %30 = add nsw i32 %29, %13
  br label %31

31:                                               ; preds = %24, %27, %11
  %32 = phi i32 [ %30, %27 ], [ %26, %24 ], [ %13, %11 ]
  %33 = add nuw nsw i64 %12, 1
  %34 = icmp eq i64 %33, %8
  br i1 %34, label %9, label %11, !llvm.loop !466
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK7cModule13gateByOrdinalEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #27 align 2 !prof !254 {
  %3 = alloca %"class.cModule::GateIterator", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41
  call void @_ZN7cModule12GateIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0)
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %2 ]
  %7 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 poison)
  %8 = add nuw nsw i32 %6, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %5, !llvm.loop !467

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds %"class.cModule::GateIterator", ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !201
  %13 = load ptr, ptr %3, align 8, !tbaa !199
  %14 = getelementptr inbounds %class.cModule, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !204
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr noundef nonnull align 8 dereferenceable(20) %3)
  br label %19

19:                                               ; preds = %10, %17
  %20 = phi ptr [ %18, %17 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41
  ret ptr %20
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN7cModule12GateIteratorpLEi(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #27 align 2 !prof !254 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %6, %2
  %5 = tail call noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr noundef nonnull align 8 dereferenceable(20) %0)
  ret ptr %5

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = tail call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 poison)
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %4, label %6, !llvm.loop !467
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule24checkInternalConnectionsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !468 {
  %2 = alloca %"class.cModule::GateIterator", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.cModule::GateIterator", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #41
  store ptr %0, ptr %2, align 8, !tbaa !199
  %6 = getelementptr inbounds %"class.cModule::GateIterator", ptr %2, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !201
  %7 = getelementptr inbounds %"class.cModule::GateIterator", ptr %2, i64 0, i32 2
  store i8 0, ptr %7, align 4, !tbaa !202
  %8 = getelementptr inbounds %"class.cModule::GateIterator", ptr %2, i64 0, i32 4
  store i32 0, ptr %8, align 8, !tbaa !203
  %9 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !204
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %58, !prof !205

12:                                               ; preds = %1, %52
  %13 = phi ptr [ %54, %52 ], [ %0, %1 ]
  %14 = phi i32 [ %53, %52 ], [ 0, %1 ]
  %15 = getelementptr inbounds %class.cModule, ptr %13, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21, !prof !208

21:                                               ; preds = %12
  %22 = load i8, ptr %7, align 4, !tbaa !202, !range !193, !noundef !194
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28, !prof !209

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.cGate::Name", ptr %19, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !210
  %27 = icmp eq i32 %26, 79
  br i1 %27, label %49, label %28, !prof !214

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !215
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %36, label %32, !prof !216

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 4
  %34 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 3
  %35 = select i1 %23, ptr %34, ptr %33, !prof !217
  br label %46

36:                                               ; preds = %28
  %37 = icmp eq i32 %30, 0
  br i1 %37, label %49, label %38, !prof !218

38:                                               ; preds = %36
  %39 = load i32, ptr %8, align 8, !tbaa !203
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 3
  %42 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 4
  %43 = select i1 %23, ptr %41, ptr %42, !prof !219
  %44 = load ptr, ptr %43, align 8, !tbaa !220
  %45 = getelementptr inbounds ptr, ptr %44, i64 %40
  br label %46

46:                                               ; preds = %32, %38
  %47 = phi ptr [ %45, %38 ], [ %35, %32 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !220
  br label %49

49:                                               ; preds = %46, %36, %24, %12
  %50 = phi ptr [ null, %12 ], [ null, %24 ], [ null, %36 ], [ %48, %46 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %58, !prof !221

52:                                               ; preds = %49
  call void @_ZN7cModule12GateIterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(20) %2)
  %53 = load i32, ptr %6, align 8, !tbaa !201
  %54 = load ptr, ptr %2, align 8, !tbaa !199
  %55 = getelementptr inbounds %class.cModule, ptr %54, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !204
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %12, label %58, !prof !222, !llvm.loop !223

58:                                               ; preds = %49, %52, %1
  %59 = load i32, ptr %6, align 8, !tbaa !201
  %60 = load ptr, ptr %2, align 8, !tbaa !199
  %61 = getelementptr inbounds %class.cModule, ptr %60, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !204
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %72, label %64, !prof !469

64:                                               ; preds = %144, %58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #41
  %65 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !188
  %67 = icmp eq ptr %66, null
  br i1 %67, label %151, label %68, !prof !470

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.cModule::GateIterator", ptr %4, i64 0, i32 1
  %70 = getelementptr inbounds %"class.cModule::GateIterator", ptr %4, i64 0, i32 2
  %71 = getelementptr inbounds %"class.cModule::GateIterator", ptr %4, i64 0, i32 4
  br label %152

72:                                               ; preds = %58, %144
  %73 = phi ptr [ %147, %144 ], [ %60, %58 ]
  %74 = phi i32 [ %146, %144 ], [ %59, %58 ]
  %75 = getelementptr inbounds %class.cModule, ptr %73, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !187
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !206
  %80 = icmp eq ptr %79, null
  br i1 %80, label %109, label %81, !prof !208

81:                                               ; preds = %72
  %82 = load i8, ptr %7, align 4, !tbaa !202, !range !193, !noundef !194
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %88, !prof !209

84:                                               ; preds = %81
  %85 = getelementptr inbounds %"struct.cGate::Name", ptr %79, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !210
  %87 = icmp eq i32 %86, 79
  br i1 %87, label %109, label %88, !prof !214

88:                                               ; preds = %84, %81
  %89 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !215
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %96, label %92, !prof !216

92:                                               ; preds = %88
  %93 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 4
  %94 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 3
  %95 = select i1 %83, ptr %94, ptr %93, !prof !217
  br label %106

96:                                               ; preds = %88
  %97 = icmp eq i32 %90, 0
  br i1 %97, label %109, label %98, !prof !218

98:                                               ; preds = %96
  %99 = load i32, ptr %8, align 8, !tbaa !203
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 3
  %102 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 4
  %103 = select i1 %83, ptr %101, ptr %102, !prof !219
  %104 = load ptr, ptr %103, align 8, !tbaa !220
  %105 = getelementptr inbounds ptr, ptr %104, i64 %100
  br label %106

106:                                              ; preds = %98, %92
  %107 = phi ptr [ %95, %92 ], [ %105, %98 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !220
  br label %109

109:                                              ; preds = %106, %72, %84, %96
  %110 = phi ptr [ null, %72 ], [ null, %84 ], [ null, %96 ], [ %108, %106 ]
  %111 = getelementptr inbounds %class.cGate, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !345
  %113 = getelementptr inbounds %"struct.cGate::Desc", ptr %112, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !215
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %144, label %116, !prof !471

116:                                              ; preds = %109
  %117 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %110)
  br i1 %117, label %144, label %118, !prof !472

118:                                              ; preds = %116
  %119 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41
  %120 = load ptr, ptr %110, align 8, !tbaa !169
  %121 = getelementptr inbounds ptr, ptr %120, i64 8
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %110)
          to label %123 unwind label %126

123:                                              ; preds = %118
  %124 = load ptr, ptr %3, align 8, !tbaa !306
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %119, ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef %124)
          to label %125 unwind label %128

125:                                              ; preds = %123
  invoke void @__cxa_throw(ptr nonnull %119, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %307 unwind label %128

126:                                              ; preds = %118
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %139

128:                                              ; preds = %125, %123
  %129 = phi i1 [ false, %125 ], [ true, %123 ]
  %130 = landingpad { ptr, i32 }
          cleanup
  %131 = load ptr, ptr %3, align 8, !tbaa !306
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !296
  %137 = icmp ult i64 %136, 16
  call void @llvm.assume(i1 %137)
  br label %139

138:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %131) #43
  br label %139

139:                                              ; preds = %138, %134, %126
  %140 = phi i1 [ true, %126 ], [ %129, %134 ], [ %129, %138 ]
  %141 = phi { ptr, i32 } [ %127, %126 ], [ %130, %134 ], [ %130, %138 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41
  br i1 %140, label %142, label %143

142:                                              ; preds = %139
  call void @__cxa_free_exception(ptr %119) #41
  br label %143

143:                                              ; preds = %142, %139
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #41
  br label %305

144:                                              ; preds = %116, %109
  %145 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %2, i32 poison)
  %146 = load i32, ptr %6, align 8, !tbaa !201
  %147 = load ptr, ptr %2, align 8, !tbaa !199
  %148 = getelementptr inbounds %class.cModule, ptr %147, i64 0, i32 7
  %149 = load i32, ptr %148, align 8, !tbaa !204
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %72, label %64, !prof !473, !llvm.loop !474

151:                                              ; preds = %209, %64
  ret i1 true

152:                                              ; preds = %68, %209
  %153 = phi ptr [ %66, %68 ], [ %211, %209 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #41
  store ptr %153, ptr %4, align 8, !tbaa !199
  store i32 0, ptr %69, align 8, !tbaa !201
  store i8 0, ptr %70, align 4, !tbaa !202
  store i32 0, ptr %71, align 8, !tbaa !203
  %154 = getelementptr inbounds %class.cModule, ptr %153, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !204
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %203, !prof !205

157:                                              ; preds = %152, %197
  %158 = phi ptr [ %199, %197 ], [ %153, %152 ]
  %159 = phi i32 [ %198, %197 ], [ 0, %152 ]
  %160 = getelementptr inbounds %class.cModule, ptr %158, i64 0, i32 8
  %161 = load ptr, ptr %160, align 8, !tbaa !187
  %162 = sext i32 %159 to i64
  %163 = getelementptr inbounds %"struct.cGate::Desc", ptr %161, i64 %162, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !206
  %165 = icmp eq ptr %164, null
  br i1 %165, label %194, label %166, !prof !208

166:                                              ; preds = %157
  %167 = load i8, ptr %70, align 4, !tbaa !202, !range !193, !noundef !194
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %173, !prof !209

169:                                              ; preds = %166
  %170 = getelementptr inbounds %"struct.cGate::Name", ptr %164, i64 0, i32 3
  %171 = load i32, ptr %170, align 8, !tbaa !210
  %172 = icmp eq i32 %171, 79
  br i1 %172, label %194, label %173, !prof !214

173:                                              ; preds = %169, %166
  %174 = getelementptr inbounds %"struct.cGate::Desc", ptr %161, i64 %162, i32 2
  %175 = load i32, ptr %174, align 8, !tbaa !215
  %176 = icmp sgt i32 %175, -1
  br i1 %176, label %181, label %177, !prof !216

177:                                              ; preds = %173
  %178 = getelementptr inbounds %"struct.cGate::Desc", ptr %161, i64 %162, i32 4
  %179 = getelementptr inbounds %"struct.cGate::Desc", ptr %161, i64 %162, i32 3
  %180 = select i1 %168, ptr %179, ptr %178, !prof !217
  br label %191

181:                                              ; preds = %173
  %182 = icmp eq i32 %175, 0
  br i1 %182, label %194, label %183, !prof !218

183:                                              ; preds = %181
  %184 = load i32, ptr %71, align 8, !tbaa !203
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %"struct.cGate::Desc", ptr %161, i64 %162, i32 3
  %187 = getelementptr inbounds %"struct.cGate::Desc", ptr %161, i64 %162, i32 4
  %188 = select i1 %168, ptr %186, ptr %187, !prof !219
  %189 = load ptr, ptr %188, align 8, !tbaa !220
  %190 = getelementptr inbounds ptr, ptr %189, i64 %185
  br label %191

191:                                              ; preds = %177, %183
  %192 = phi ptr [ %190, %183 ], [ %180, %177 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !220
  br label %194

194:                                              ; preds = %191, %181, %169, %157
  %195 = phi ptr [ null, %157 ], [ null, %169 ], [ null, %181 ], [ %193, %191 ]
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %203, !prof !221

197:                                              ; preds = %194
  call void @_ZN7cModule12GateIterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(20) %4)
  %198 = load i32, ptr %69, align 8, !tbaa !201
  %199 = load ptr, ptr %4, align 8, !tbaa !199
  %200 = getelementptr inbounds %class.cModule, ptr %199, i64 0, i32 7
  %201 = load i32, ptr %200, align 8, !tbaa !204
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %157, label %203, !prof !222, !llvm.loop !223

203:                                              ; preds = %194, %197, %152
  %204 = load i32, ptr %69, align 8, !tbaa !201
  %205 = load ptr, ptr %4, align 8, !tbaa !199
  %206 = getelementptr inbounds %class.cModule, ptr %205, i64 0, i32 7
  %207 = load i32, ptr %206, align 8, !tbaa !204
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %213, label %209, !prof !475

209:                                              ; preds = %298, %203
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41
  %210 = getelementptr inbounds %class.cModule, ptr %153, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !188
  %212 = icmp eq ptr %211, null
  br i1 %212, label %151, label %152, !prof !476, !llvm.loop !477

213:                                              ; preds = %203, %298
  %214 = phi ptr [ %301, %298 ], [ %205, %203 ]
  %215 = phi i32 [ %300, %298 ], [ %204, %203 ]
  %216 = getelementptr inbounds %class.cModule, ptr %214, i64 0, i32 8
  %217 = load ptr, ptr %216, align 8, !tbaa !187
  %218 = sext i32 %215 to i64
  %219 = getelementptr inbounds %"struct.cGate::Desc", ptr %217, i64 %218, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !206
  %221 = icmp eq ptr %220, null
  br i1 %221, label %250, label %222, !prof !208

222:                                              ; preds = %213
  %223 = load i8, ptr %70, align 4, !tbaa !202, !range !193, !noundef !194
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %229, !prof !209

225:                                              ; preds = %222
  %226 = getelementptr inbounds %"struct.cGate::Name", ptr %220, i64 0, i32 3
  %227 = load i32, ptr %226, align 8, !tbaa !210
  %228 = icmp eq i32 %227, 79
  br i1 %228, label %250, label %229, !prof !214

229:                                              ; preds = %225, %222
  %230 = getelementptr inbounds %"struct.cGate::Desc", ptr %217, i64 %218, i32 2
  %231 = load i32, ptr %230, align 8, !tbaa !215
  %232 = icmp sgt i32 %231, -1
  br i1 %232, label %237, label %233, !prof !216

233:                                              ; preds = %229
  %234 = getelementptr inbounds %"struct.cGate::Desc", ptr %217, i64 %218, i32 4
  %235 = getelementptr inbounds %"struct.cGate::Desc", ptr %217, i64 %218, i32 3
  %236 = select i1 %224, ptr %235, ptr %234, !prof !217
  br label %247

237:                                              ; preds = %229
  %238 = icmp eq i32 %231, 0
  br i1 %238, label %250, label %239, !prof !218

239:                                              ; preds = %237
  %240 = load i32, ptr %71, align 8, !tbaa !203
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %"struct.cGate::Desc", ptr %217, i64 %218, i32 3
  %243 = getelementptr inbounds %"struct.cGate::Desc", ptr %217, i64 %218, i32 4
  %244 = select i1 %224, ptr %242, ptr %243, !prof !219
  %245 = load ptr, ptr %244, align 8, !tbaa !220
  %246 = getelementptr inbounds ptr, ptr %245, i64 %241
  br label %247

247:                                              ; preds = %239, %233
  %248 = phi ptr [ %236, %233 ], [ %246, %239 ]
  %249 = load ptr, ptr %248, align 8, !tbaa !220
  br label %250

250:                                              ; preds = %247, %213, %225, %237
  %251 = phi ptr [ null, %213 ], [ null, %225 ], [ null, %237 ], [ %249, %247 ]
  %252 = getelementptr inbounds %class.cGate, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !345
  %254 = getelementptr inbounds %"struct.cGate::Desc", ptr %253, i64 0, i32 2
  %255 = load i32, ptr %254, align 8, !tbaa !215
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %298, label %257, !prof !329

257:                                              ; preds = %250
  %258 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %251)
  br i1 %258, label %298, label %259, !prof !322

259:                                              ; preds = %257
  %260 = tail call noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48) %251)
  %261 = load ptr, ptr %260, align 8, !tbaa !169
  %262 = getelementptr inbounds ptr, ptr %261, i64 24
  %263 = load ptr, ptr %262, align 8
  %264 = tail call noundef zeroext i1 %263(ptr noundef nonnull align 8 dereferenceable(40) %260, ptr noundef nonnull @.str.33, ptr noundef null)
  br i1 %264, label %298, label %265

265:                                              ; preds = %259
  %266 = tail call noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48) %251)
  %267 = load ptr, ptr %266, align 8, !tbaa !169
  %268 = getelementptr inbounds ptr, ptr %267, i64 24
  %269 = load ptr, ptr %268, align 8
  %270 = tail call noundef zeroext i1 %269(ptr noundef nonnull align 8 dereferenceable(40) %266, ptr noundef nonnull @.str.34, ptr noundef null)
  br i1 %270, label %298, label %271

271:                                              ; preds = %265
  %272 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41
  %273 = load ptr, ptr %251, align 8, !tbaa !169
  %274 = getelementptr inbounds ptr, ptr %273, i64 8
  %275 = load ptr, ptr %274, align 8
  invoke void %275(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %251)
          to label %276 unwind label %280

276:                                              ; preds = %271
  %277 = load ptr, ptr %5, align 8, !tbaa !306
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %272, ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef %277)
          to label %278 unwind label %282

278:                                              ; preds = %276
  invoke void @__cxa_throw(ptr nonnull %272, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %279 unwind label %282

279:                                              ; preds = %278
  unreachable

280:                                              ; preds = %271
  %281 = landingpad { ptr, i32 }
          cleanup
  br label %293

282:                                              ; preds = %278, %276
  %283 = phi i1 [ false, %278 ], [ true, %276 ]
  %284 = landingpad { ptr, i32 }
          cleanup
  %285 = load ptr, ptr %5, align 8, !tbaa !306
  %286 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %287 = icmp eq ptr %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %282
  %289 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %290 = load i64, ptr %289, align 8, !tbaa !296
  %291 = icmp ult i64 %290, 16
  call void @llvm.assume(i1 %291)
  br label %293

292:                                              ; preds = %282
  call void @_ZdlPv(ptr noundef %285) #43
  br label %293

293:                                              ; preds = %292, %288, %280
  %294 = phi { ptr, i32 } [ %281, %280 ], [ %284, %288 ], [ %284, %292 ]
  %295 = phi i1 [ true, %280 ], [ %283, %288 ], [ %283, %292 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  call void @__cxa_free_exception(ptr %272) #41
  br label %297

297:                                              ; preds = %296, %293
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #41
  br label %305

298:                                              ; preds = %265, %259, %257, %250
  %299 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %4, i32 poison)
  %300 = load i32, ptr %69, align 8, !tbaa !201
  %301 = load ptr, ptr %4, align 8, !tbaa !199
  %302 = getelementptr inbounds %class.cModule, ptr %301, i64 0, i32 7
  %303 = load i32, ptr %302, align 8, !tbaa !204
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %213, label %209, !prof !478, !llvm.loop !479

305:                                              ; preds = %297, %143
  %306 = phi { ptr, i32 } [ %141, %143 ], [ %294, %297 ]
  resume { ptr, i32 } %306

307:                                              ; preds = %125
  unreachable
}

declare noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN7cModule13findSubmoduleEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #14 align 2 !prof !254 {
  %4 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, -1
  br label %9

9:                                                ; preds = %7, %24
  %10 = phi ptr [ %5, %7 ], [ %26, %24 ]
  %11 = tail call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1)
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  br i1 %8, label %13, label %17

13:                                               ; preds = %12
  %14 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !185
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %12
  %18 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !184
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %24

21:                                               ; preds = %13, %17
  %22 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !172
  br label %28

24:                                               ; preds = %17, %9
  %25 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !188
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !480

28:                                               ; preds = %24, %3, %21
  %29 = phi i32 [ %23, %21 ], [ -1, %3 ], [ -1, %24 ]
  ret i32 %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !481 {
  %3 = load ptr, ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !482
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  br i1 %7, label %16, label %9, !prof !483

9:                                                ; preds = %2
  br i1 %8, label %12, label %10, !prof !483

10:                                               ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #45
  br label %21

12:                                               ; preds = %9
  %13 = load i8, ptr %6, align 1, !tbaa !220
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i32
  br label %21

16:                                               ; preds = %2
  br i1 %8, label %21, label %17

17:                                               ; preds = %16
  %18 = load i8, ptr %1, align 1, !tbaa !220
  %19 = icmp ne i8 %18, 0
  %20 = sext i1 %19 to i32
  br label %21

21:                                               ; preds = %10, %12, %16, %17
  %22 = phi i32 [ %11, %10 ], [ %15, %12 ], [ 0, %16 ], [ %20, %17 ]
  %23 = icmp eq i32 %22, 0
  ret i1 %23
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !484 {
  %4 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7, !prof !485

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br label %9

9:                                                ; preds = %7, %42
  %10 = phi ptr [ %5, %7 ], [ %44, %42 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10), !prof !486
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !483

16:                                               ; preds = %9
  br i1 %8, label %19, label %17, !prof !483

17:                                               ; preds = %16
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #45
  br label %29

19:                                               ; preds = %16
  %20 = load i8, ptr %14, align 1, !tbaa !220
  %21 = icmp ne i8 %20, 0
  %22 = zext i1 %21 to i32
  br label %29

23:                                               ; preds = %9
  %24 = icmp eq ptr %1, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = load i8, ptr %1, align 1, !tbaa !220
  %27 = icmp ne i8 %26, 0
  %28 = sext i1 %27 to i32
  br label %29

29:                                               ; preds = %17, %19, %23, %25
  %30 = phi i32 [ %18, %17 ], [ %22, %19 ], [ 0, %23 ], [ %28, %25 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42, !prof !487

32:                                               ; preds = %29
  %33 = icmp eq i32 %2, -1
  br i1 %33, label %34, label %38, !prof !488

34:                                               ; preds = %32
  %35 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 10
  %36 = load i32, ptr %35, align 4, !tbaa !185
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %46, !prof !489

38:                                               ; preds = %34, %32
  %39 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !184
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %29
  %43 = getelementptr inbounds %class.cModule, ptr %10, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !188
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %9, !prof !490, !llvm.loop !491

46:                                               ; preds = %42, %38, %34, %3
  %47 = phi ptr [ %5, %3 ], [ %44, %42 ], [ %10, %38 ], [ %10, %34 ]
  ret ptr %47
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN7cModule23getModuleByRelativePathEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca %class.opp_string, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41
  call void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  %4 = load ptr, ptr %3, align 8, !tbaa !368
  %5 = call ptr @strtok(ptr noundef %4, ptr noundef nonnull @.str.2) #41
  br label %6

6:                                                ; preds = %74, %2
  %7 = phi ptr [ %0, %2 ], [ %75, %74 ]
  %8 = phi ptr [ %5, %2 ], [ %76, %74 ]
  %9 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 91) #45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %6
  %12 = getelementptr inbounds %class.cModule, ptr %7, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !188
  %14 = icmp eq ptr %13, null
  br i1 %14, label %74, label %15

15:                                               ; preds = %11, %27
  %16 = phi ptr [ %29, %27 ], [ %13, %11 ]
  %17 = invoke noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %8)
          to label %18 unwind label %31

18:                                               ; preds = %15
  br i1 %17, label %19, label %27

19:                                               ; preds = %18
  %20 = getelementptr inbounds %class.cModule, ptr %16, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !185
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = getelementptr inbounds %class.cModule, ptr %16, i64 0, i32 9
  %25 = load i32, ptr %24, align 8, !tbaa !184
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %74, label %27

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %class.cModule, ptr %16, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !188
  %30 = icmp eq ptr %29, null
  br i1 %30, label %74, label %15, !llvm.loop !491

31:                                               ; preds = %15
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %85

33:                                               ; preds = %57
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %85

35:                                               ; preds = %45
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %85

37:                                               ; preds = %6
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #45
  %39 = add i64 %38, -1
  %40 = getelementptr inbounds i8, ptr %8, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !220
  %42 = icmp eq i8 %41, 93
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %44, ptr noundef nonnull %0, ptr noundef nonnull @.str.36, ptr noundef %1)
          to label %45 unwind label %46

45:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %44, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %91 unwind label %35

46:                                               ; preds = %43
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %44) #41
  br label %85

48:                                               ; preds = %37
  store i8 0, ptr %9, align 1, !tbaa !220
  %49 = getelementptr inbounds i8, ptr %9, i64 1
  %50 = call i64 @strtol(ptr nocapture noundef nonnull %49, ptr noundef null, i32 noundef 10) #41
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %class.cModule, ptr %7, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !188
  %54 = icmp eq ptr %53, null
  br i1 %54, label %74, label %55

55:                                               ; preds = %48
  %56 = icmp eq i32 %51, -1
  br label %57

57:                                               ; preds = %55, %70
  %58 = phi ptr [ %53, %55 ], [ %72, %70 ]
  %59 = invoke noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %8)
          to label %60 unwind label %33

60:                                               ; preds = %57
  br i1 %59, label %61, label %70

61:                                               ; preds = %60
  br i1 %56, label %62, label %66

62:                                               ; preds = %61
  %63 = getelementptr inbounds %class.cModule, ptr %58, i64 0, i32 10
  %64 = load i32, ptr %63, align 4, !tbaa !185
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %74

66:                                               ; preds = %62, %61
  %67 = getelementptr inbounds %class.cModule, ptr %58, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !184
  %69 = icmp eq i32 %68, %51
  br i1 %69, label %74, label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %class.cModule, ptr %58, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !188
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %57, !llvm.loop !491

74:                                               ; preds = %70, %66, %62, %27, %19, %23, %48, %11
  %75 = phi ptr [ %13, %11 ], [ %53, %48 ], [ %16, %23 ], [ %16, %19 ], [ %29, %27 ], [ %58, %62 ], [ %58, %66 ], [ %72, %70 ]
  %76 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.2) #41
  %77 = icmp ne ptr %76, null
  %78 = icmp ne ptr %75, null
  %79 = and i1 %78, %77
  br i1 %79, label %6, label %80, !llvm.loop !492

80:                                               ; preds = %74
  %81 = load ptr, ptr %3, align 8, !tbaa !368
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @_ZdaPv(ptr noundef %81) #43
  br label %84

84:                                               ; preds = %80, %83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  ret ptr %75

85:                                               ; preds = %31, %35, %33, %46
  %86 = phi { ptr, i32 } [ %47, %46 ], [ %32, %31 ], [ %34, %33 ], [ %36, %35 ]
  %87 = load ptr, ptr %3, align 8, !tbaa !368
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  call void @_ZdaPv(ptr noundef %87) #43
  br label %90

90:                                               ; preds = %85, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  resume { ptr, i32 } %86

91:                                               ; preds = %45
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !493 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4, !prof !494

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !220
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7, !prof !494

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #45
  %9 = add i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #46
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #41
  br label %12

12:                                               ; preds = %2, %4, %7
  %13 = phi ptr [ %10, %7 ], [ null, %4 ], [ null, %2 ]
  store ptr %13, ptr %0, align 8, !tbaa !368
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #28

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN7cModule14getAncestorParEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = load ptr, ptr %0, align 8, !tbaa !169
  %4 = getelementptr inbounds ptr, ptr %3, i64 44
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %22

8:                                                ; preds = %14
  %9 = load ptr, ptr %20, align 8, !tbaa !169
  %10 = getelementptr inbounds ptr, ptr %9, i64 44
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(104) %20, ptr noundef %1)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22, !llvm.loop !495

14:                                               ; preds = %2, %8
  %15 = phi i32 [ %12, %8 ], [ %6, %2 ]
  %16 = phi ptr [ %20, %8 ], [ %0, %2 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !169
  %18 = getelementptr inbounds ptr, ptr %17, i64 37
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(176) %16)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !495

22:                                               ; preds = %8, %14, %2
  %23 = phi i32 [ %6, %2 ], [ %12, %8 ], [ %15, %14 ]
  %24 = phi ptr [ %0, %2 ], [ %20, %14 ], [ %20, %8 ]
  %25 = phi i1 [ false, %2 ], [ %21, %14 ], [ %21, %8 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull %0, ptr noundef nonnull @.str.37, ptr noundef %1)
          to label %28 unwind label %29

28:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %27) #41
  resume { ptr, i32 } %30

31:                                               ; preds = %22
  %32 = load ptr, ptr %24, align 8, !tbaa !169
  %33 = getelementptr inbounds ptr, ptr %32, i64 42
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef nonnull align 8 dereferenceable(24) ptr %34(ptr noundef nonnull align 8 dereferenceable(104) %24, i32 noundef %23)
  ret ptr %35
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %2 = alloca %class.cContextSwitcher, align 8
  %3 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #41
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0)
          to label %4 unwind label %12, !prof !195

4:                                                ; preds = %1
  invoke void @_ZN10cComponent18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %5 unwind label %14, !prof !195

5:                                                ; preds = %4
  %6 = invoke noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %7 unwind label %14, !prof !195

7:                                                ; preds = %5
  %8 = load ptr, ptr %6, align 8, !tbaa !169
  %9 = getelementptr inbounds ptr, ptr %8, i64 32
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull %0)
          to label %11 unwind label %14, !prof !496

11:                                               ; preds = %7
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #41
  ret void

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %5, %7, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #41
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #41
  resume { ptr, i32 } %17
}

declare void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #0

declare void @_ZN10cComponent18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7cModule11buildInsideEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %2 = alloca %class.cContextSwitcher, align 8
  %3 = alloca %class.cContextTypeSwitcher, align 4
  %4 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !497
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8, !prof !195

8:                                                ; preds = %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.38)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #41
  br label %34

13:                                               ; preds = %1
  %14 = and i16 %5, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20, !prof !239

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !169
  %18 = getelementptr inbounds ptr, ptr %17, i64 33
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %20

20:                                               ; preds = %16, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #41
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0)
          to label %21 unwind label %28, !prof !195

21:                                               ; preds = %20
  %22 = load ptr, ptr %0, align 8, !tbaa !169
  %23 = getelementptr inbounds ptr, ptr %22, i64 51
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %25 unwind label %30, !prof !498

25:                                               ; preds = %21
  %26 = load i16, ptr %4, align 8, !tbaa !497
  %27 = or i16 %26, 128
  store i16 %27, ptr %4, align 8, !tbaa !497
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #41
  ret i32 0

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %21
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #41
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #41
  br label %34

34:                                               ; preds = %32, %11
  %35 = phi { ptr, i32 } [ %12, %11 ], [ %33, %32 ]
  resume { ptr, i32 } %35
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cModule12deleteModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  %2 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !188
  %3 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !341

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %17, %13 ], [ %3, %1 ]
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.39)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #41
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !169
  %15 = getelementptr inbounds ptr, ptr %14, i64 37
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(176) %6)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !prof !341, !llvm.loop !499

19:                                               ; preds = %13, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !169
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(176) %0) #41, !prof !500
  ret void
}

declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cModule14changeParentToEPS_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca %"class.cModule::GateIterator", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.40)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #41
  br label %82

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41
  call void @_ZN7cModule12GateIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0)
  %11 = getelementptr inbounds %"class.cModule::GateIterator", ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !201
  %13 = load ptr, ptr %3, align 8, !tbaa !199
  %14 = getelementptr inbounds %class.cModule, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !204
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %31, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41
  br label %63

18:                                               ; preds = %10, %31
  %19 = call noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr noundef nonnull align 8 dereferenceable(20) %3)
  %20 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %19)
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  %23 = load ptr, ptr %19, align 8, !tbaa !169
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(48) %19)
          to label %27 unwind label %29

27:                                               ; preds = %21
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef %26)
          to label %28 unwind label %29

28:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

29:                                               ; preds = %27, %21
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41
  br label %82

31:                                               ; preds = %18
  %32 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 poison)
  %33 = load i32, ptr %11, align 8, !tbaa !201
  %34 = load ptr, ptr %3, align 8, !tbaa !199
  %35 = getelementptr inbounds %class.cModule, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !204
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %18, label %17, !llvm.loop !501

38:                                               ; preds = %71
  %39 = load ptr, ptr %0, align 8, !tbaa !169
  %40 = getelementptr inbounds ptr, ptr %39, i64 37
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(176) %0)
  tail call void @_ZN7cModule15removeSubmoduleEPS_(ptr noundef nonnull align 8 dereferenceable(176) %42, ptr noundef nonnull %0)
  %43 = load ptr, ptr %1, align 8, !tbaa !169
  %44 = getelementptr inbounds ptr, ptr %43, i64 12
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %0)
  %46 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !233
  %47 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !252
  %49 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !251
  %50 = icmp eq ptr %48, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds %class.cModule, ptr %48, i64 0, i32 4
  store ptr %0, ptr %52, align 8, !tbaa !233
  br label %53

53:                                               ; preds = %51, %38
  %54 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !197
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store ptr %0, ptr %54, align 8, !tbaa !197
  br label %58

58:                                               ; preds = %53, %57
  store ptr %0, ptr %47, align 8, !tbaa !252
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !188
  %59 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !188
  %60 = getelementptr inbounds %class.cEnvir, ptr %59, i64 0, i32 2
  %61 = load i8, ptr %60, align 1, !tbaa !189, !range !193, !noundef !194
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %77, label %81

63:                                               ; preds = %17, %71
  %64 = phi ptr [ %1, %17 ], [ %75, %71 ]
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %67, ptr noundef nonnull %0, ptr noundef nonnull @.str.42)
          to label %68 unwind label %69

68:                                               ; preds = %66
  tail call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

69:                                               ; preds = %66
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %67) #41
  br label %82

71:                                               ; preds = %63
  %72 = load ptr, ptr %64, align 8, !tbaa !169
  %73 = getelementptr inbounds ptr, ptr %72, i64 37
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(176) %64)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %38, label %63, !llvm.loop !502

77:                                               ; preds = %58
  %78 = load ptr, ptr %59, align 8, !tbaa !169
  %79 = getelementptr inbounds ptr, ptr %78, i64 16
  %80 = load ptr, ptr %79, align 8
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(288) %59, ptr noundef nonnull %0, ptr noundef nonnull %42)
  br label %81

81:                                               ; preds = %58, %77
  ret void

82:                                               ; preds = %29, %69, %8
  %83 = phi { ptr, i32 } [ %9, %8 ], [ %30, %29 ], [ %70, %69 ]
  resume { ptr, i32 } %83
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7cModule14callInitializeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  %2 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #41
  call void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 1)
  br label %3

3:                                                ; preds = %1, %27
  %4 = phi i1 [ true, %1 ], [ %33, %27 ]
  %5 = phi i1 [ true, %1 ], [ %31, %27 ]
  %6 = phi i32 [ 0, %1 ], [ %29, %27 ]
  %7 = phi i8 [ 1, %1 ], [ %19, %27 ]
  %8 = phi i8 [ 1, %1 ], [ %28, %27 ]
  br i1 %5, label %9, label %18, !prof !503

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !169
  %11 = getelementptr inbounds ptr, ptr %10, i64 46
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %6)
          to label %14 unwind label %16, !prof !504

14:                                               ; preds = %9
  %15 = zext i1 %13 to i8
  br label %18

16:                                               ; preds = %20, %9
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #41
  resume { ptr, i32 } %17

18:                                               ; preds = %14, %3
  %19 = phi i8 [ %15, %14 ], [ %7, %3 ]
  br i1 %4, label %20, label %27, !prof !505

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !169
  %22 = getelementptr inbounds ptr, ptr %21, i64 45
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %6)
          to label %25 unwind label %16, !prof !506

25:                                               ; preds = %20
  %26 = zext i1 %24 to i8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i8 [ %26, %25 ], [ %8, %18 ]
  %29 = add nuw nsw i32 %6, 1
  %30 = and i8 %19, 1
  %31 = icmp ne i8 %30, 0
  %32 = and i8 %28, 1
  %33 = icmp ne i8 %32, 0
  %34 = select i1 %31, i1 true, i1 %33, !prof !507
  br i1 %34, label %3, label %35, !prof !503, !llvm.loop !508

35:                                               ; preds = %27
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #41
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cModule14callInitializeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #41
  call void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 1)
  %4 = load ptr, ptr %0, align 8, !tbaa !169
  %5 = getelementptr inbounds ptr, ptr %4, i64 46
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1)
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !169
  %10 = getelementptr inbounds ptr, ptr %9, i64 45
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1)
          to label %13 unwind label %17

13:                                               ; preds = %8
  %14 = or i1 %7, %12
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41
  ret i1 %14

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #41
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cModule18initializeChannelsEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %3 = alloca %"class.cModule::ChannelIterator", align 8
  %4 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !188
  %5 = getelementptr inbounds %class.cSimulation, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !509
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %13, label %8, !prof !195

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.43)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #41
  br label %35

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN7cModule15ChannelIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %0)
          to label %14 unwind label %30, !prof !510

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"class.cModule::ChannelIterator", ptr %3, i64 0, i32 1
  %16 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !511
  %18 = load ptr, ptr %3, align 8, !tbaa !513
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 3
  %23 = trunc i64 %22 to i32
  %24 = load i32, ptr %15, align 8, !tbaa !514
  %25 = icmp eq i32 %24, %23
  br i1 %25, label %39, label %26, !prof !519

26:                                               ; preds = %14
  %27 = sext i32 %24 to i64
  %28 = shl i64 %21, 29
  %29 = ashr i64 %28, 32
  br label %54

30:                                               ; preds = %13
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load ptr, ptr %3, align 8, !tbaa !513
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %32) #43
  br label %35

35:                                               ; preds = %11, %53, %30, %34
  %36 = phi { ptr, i32 } [ %31, %34 ], [ %31, %30 ], [ %12, %11 ], [ %49, %53 ]
  resume { ptr, i32 } %36

37:                                               ; preds = %64
  %38 = trunc i64 %66 to i32
  br label %39

39:                                               ; preds = %37, %14
  %40 = phi i32 [ %24, %14 ], [ %38, %37 ]
  %41 = phi i8 [ 0, %14 ], [ %65, %37 ]
  store i32 %40, ptr %15, align 8, !tbaa !514
  %42 = icmp eq ptr %18, null
  br i1 %42, label %44, label %43, !prof !520

43:                                               ; preds = %39
  tail call void @_ZdlPv(ptr noundef %18) #43
  br label %44

44:                                               ; preds = %39, %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41
  %45 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !188
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %73, !prof !198

48:                                               ; preds = %54
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = trunc i64 %55 to i32
  store i32 %50, ptr %15, align 8, !tbaa !514
  %51 = icmp eq ptr %18, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @_ZdlPv(ptr noundef %18) #43
  br label %53

53:                                               ; preds = %48, %52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41
  br label %35

54:                                               ; preds = %26, %64
  %55 = phi i64 [ %27, %26 ], [ %66, %64 ]
  %56 = phi i8 [ 0, %26 ], [ %65, %64 ]
  %57 = icmp slt i64 %55, %29
  tail call void @llvm.assume(i1 %57)
  %58 = getelementptr inbounds ptr, ptr %18, i64 %55
  %59 = load ptr, ptr %58, align 8, !tbaa !188
  %60 = load ptr, ptr %59, align 8, !tbaa !169
  %61 = getelementptr inbounds ptr, ptr %60, i64 45
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(116) %59, i32 noundef %1)
          to label %64 unwind label %48, !prof !521

64:                                               ; preds = %54
  %65 = select i1 %63, i8 1, i8 %56, !prof !522
  %66 = add nsw i64 %55, 1
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %67, %23
  br i1 %68, label %37, label %54, !prof !523, !llvm.loop !524

69:                                               ; preds = %73, %44
  %70 = phi i8 [ %41, %44 ], [ %80, %73 ]
  %71 = and i8 %70, 1
  %72 = icmp ne i8 %71, 0
  ret i1 %72

73:                                               ; preds = %44, %73
  %74 = phi ptr [ %82, %73 ], [ %46, %44 ]
  %75 = phi i8 [ %80, %73 ], [ %41, %44 ]
  %76 = load ptr, ptr %74, align 8, !tbaa !169
  %77 = getelementptr inbounds ptr, ptr %76, i64 46
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef zeroext i1 %78(ptr noundef nonnull align 8 dereferenceable(176) %74, i32 noundef %1), !prof !525
  %80 = select i1 %79, i8 1, i8 %75, !prof !232
  %81 = getelementptr inbounds %class.cModule, ptr %74, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !188
  %83 = icmp eq ptr %82, null
  br i1 %83, label %69, label %73, !prof !235, !llvm.loop !526
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cModule17initializeModulesEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !527 {
  %3 = alloca %class.cMethodCallContextSwitcher, align 8
  %4 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !188
  %5 = getelementptr inbounds %class.cSimulation, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !509
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %15, label %8, !prof !510

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.44)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %9) #41
  br label %120

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %37, !prof !528

17:                                               ; preds = %15
  %18 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !497
  %20 = and i16 %19, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %29, label %22, !prof !195

22:                                               ; preds = %17
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #41
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull %0, ptr noundef nonnull @.str.45)
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  tail call void @__cxa_free_exception(ptr %23) #41
  br label %120

29:                                               ; preds = %17
  %30 = and i16 %19, 128
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %37, !prof !239

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !169
  %34 = getelementptr inbounds ptr, ptr %33, i64 56
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef i32 %35(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %37

37:                                               ; preds = %29, %32, %15
  %38 = load ptr, ptr %0, align 8, !tbaa !169
  %39 = getelementptr inbounds ptr, ptr %38, i64 29
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef i32 %40(ptr noundef nonnull align 8 dereferenceable(104) %0), !prof !529
  %42 = icmp sgt i32 %41, %1
  br i1 %42, label %43, label %98, !prof !530

43:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41
  call void @_ZN26cMethodCallContextSwitcherC1EPK10cComponentb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %0, i1 noundef zeroext false)
  invoke void (ptr, ptr, ...) @_ZN26cMethodCallContextSwitcher10methodCallEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.46)
          to label %44 unwind label %48, !prof !531

44:                                               ; preds = %43
  %45 = load ptr, ptr %0, align 8, !tbaa !169
  %46 = getelementptr inbounds ptr, ptr %45, i64 28
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1)
          to label %91 unwind label %52, !prof !532

48:                                               ; preds = %43
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = extractvalue { ptr, i32 } %49, 0
  %51 = extractvalue { ptr, i32 } %49, 1
  br label %95

52:                                               ; preds = %44
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  %54 = extractvalue { ptr, i32 } %53, 0
  %55 = extractvalue { ptr, i32 } %53, 1
  %56 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI10cException) #41
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call ptr @__cxa_begin_catch(ptr %54) #41
  invoke void @__cxa_rethrow() #42
          to label %128 unwind label %86

60:                                               ; preds = %52
  %61 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #41
  %62 = icmp eq i32 %55, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = call ptr @__cxa_begin_catch(ptr %54) #41
  %65 = call ptr @__cxa_allocate_exception(i64 128) #41
  %66 = load ptr, ptr %64, align 8, !tbaa !169
  %67 = getelementptr inbounds ptr, ptr %66, i64 -1
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %68)
          to label %70 unwind label %77

70:                                               ; preds = %63
  %71 = load ptr, ptr %64, align 8, !tbaa !169
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %64) #41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %65, ptr noundef nonnull @.str.47, ptr noundef %69, ptr noundef %74)
          to label %75 unwind label %77

75:                                               ; preds = %70
  invoke void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %76 unwind label %79

76:                                               ; preds = %75
  unreachable

77:                                               ; preds = %70, %63
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %65) #41
  br label %81

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ]
  invoke void @__cxa_end_catch()
          to label %83 unwind label %125

83:                                               ; preds = %81
  %84 = extractvalue { ptr, i32 } %82, 0
  %85 = extractvalue { ptr, i32 } %82, 1
  br label %95

86:                                               ; preds = %58
  %87 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %88 unwind label %125

88:                                               ; preds = %86
  %89 = extractvalue { ptr, i32 } %87, 1
  %90 = extractvalue { ptr, i32 } %87, 0
  br label %95

91:                                               ; preds = %44
  %92 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %93 = load i16, ptr %92, align 8, !tbaa !497
  %94 = or i16 %93, 8
  store i16 %94, ptr %92, align 8, !tbaa !497
  call void @_ZN26cMethodCallContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  br label %98

95:                                               ; preds = %88, %83, %60, %48
  %96 = phi i32 [ %89, %88 ], [ %85, %83 ], [ %55, %60 ], [ %51, %48 ]
  %97 = phi ptr [ %90, %88 ], [ %84, %83 ], [ %54, %60 ], [ %50, %48 ]
  call void @_ZN26cMethodCallContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  br label %120

98:                                               ; preds = %91, %37
  %99 = add nsw i32 %41, -1
  %100 = icmp sgt i32 %99, %1
  %101 = zext i1 %100 to i8
  %102 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !188
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %109, !prof !533

105:                                              ; preds = %109, %98
  %106 = phi i8 [ %101, %98 ], [ %116, %109 ]
  %107 = and i8 %106, 1
  %108 = icmp ne i8 %107, 0
  ret i1 %108

109:                                              ; preds = %98, %109
  %110 = phi ptr [ %118, %109 ], [ %103, %98 ]
  %111 = phi i8 [ %116, %109 ], [ %101, %98 ]
  %112 = load ptr, ptr %110, align 8, !tbaa !169
  %113 = getelementptr inbounds ptr, ptr %112, i64 45
  %114 = load ptr, ptr %113, align 8
  %115 = call noundef zeroext i1 %114(ptr noundef nonnull align 8 dereferenceable(176) %110, i32 noundef %1), !prof !534
  %116 = select i1 %115, i8 1, i8 %111, !prof !535
  %117 = getelementptr inbounds %class.cModule, ptr %110, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !188
  %119 = icmp eq ptr %118, null
  br i1 %119, label %105, label %109, !prof !536, !llvm.loop !537

120:                                              ; preds = %95, %25, %11
  %121 = phi i32 [ %14, %11 ], [ %28, %25 ], [ %96, %95 ]
  %122 = phi ptr [ %13, %11 ], [ %27, %25 ], [ %97, %95 ]
  %123 = insertvalue { ptr, i32 } poison, ptr %122, 0
  %124 = insertvalue { ptr, i32 } %123, i32 %121, 1
  resume { ptr, i32 } %124

125:                                              ; preds = %86, %81
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  call void @__clang_call_terminate(ptr %127) #44
  unreachable

128:                                              ; preds = %58
  unreachable
}

declare void @_ZN26cMethodCallContextSwitcherC1EPK10cComponentb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #0

declare void @_ZN26cMethodCallContextSwitcher10methodCallEPKcz(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #29

declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN26cMethodCallContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule10callFinishEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %2 = alloca %"class.cModule::ChannelIterator", align 8
  %3 = alloca %class.cContextSwitcher, align 8
  %4 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN7cModule15ChannelIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull %0)
          to label %5 unwind label %21, !prof !510

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.cModule::ChannelIterator", ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !511
  %9 = load ptr, ptr %2, align 8, !tbaa !513
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load i32, ptr %6, align 8, !tbaa !514
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %30, label %17, !prof !519

17:                                               ; preds = %5
  %18 = sext i32 %15 to i64
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  br label %46

21:                                               ; preds = %1
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %2, align 8, !tbaa !513
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #43
  br label %26

26:                                               ; preds = %21, %25, %129
  %27 = phi { ptr, i32 } [ %133, %129 ], [ %22, %25 ], [ %22, %21 ]
  resume { ptr, i32 } %27

28:                                               ; preds = %54
  %29 = trunc i64 %55 to i32
  br label %30

30:                                               ; preds = %28, %5
  %31 = phi i32 [ %15, %5 ], [ %29, %28 ]
  store i32 %31, ptr %6, align 8, !tbaa !514
  %32 = icmp eq ptr %9, null
  br i1 %32, label %34, label %33, !prof !520

33:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %9) #43
  br label %34

34:                                               ; preds = %30, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #41
  %35 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !188
  %37 = icmp eq ptr %36, null
  br i1 %37, label %58, label %59, !prof !198

38:                                               ; preds = %46
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = trunc i64 %47 to i32
  store i32 %40, ptr %6, align 8, !tbaa !514
  %41 = extractvalue { ptr, i32 } %39, 0
  %42 = extractvalue { ptr, i32 } %39, 1
  %43 = icmp eq ptr %9, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void @_ZdlPv(ptr noundef %9) #43
  br label %45

45:                                               ; preds = %38, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #41
  br label %129

46:                                               ; preds = %17, %54
  %47 = phi i64 [ %18, %17 ], [ %55, %54 ]
  %48 = icmp slt i64 %47, %20
  tail call void @llvm.assume(i1 %48)
  %49 = getelementptr inbounds ptr, ptr %9, i64 %47
  %50 = load ptr, ptr %49, align 8, !tbaa !188
  %51 = load ptr, ptr %50, align 8, !tbaa !169
  %52 = getelementptr inbounds ptr, ptr %51, i64 40
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(116) %50)
          to label %54 unwind label %38, !prof !538

54:                                               ; preds = %46
  %55 = add nsw i64 %47, 1
  %56 = trunc i64 %55 to i32
  %57 = icmp eq i32 %56, %14
  br i1 %57, label %28, label %46, !prof !523, !llvm.loop !539

58:                                               ; preds = %59, %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #41
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3)
          to label %67 unwind label %75, !prof !195

59:                                               ; preds = %34, %59
  %60 = phi ptr [ %65, %59 ], [ %36, %34 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !169
  %62 = getelementptr inbounds ptr, ptr %61, i64 40
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(176) %60), !prof !540
  %64 = getelementptr inbounds %class.cModule, ptr %60, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !188
  %66 = icmp eq ptr %65, null
  br i1 %66, label %58, label %59, !prof !235, !llvm.loop !541

67:                                               ; preds = %58
  %68 = load ptr, ptr %0, align 8, !tbaa !169
  %69 = getelementptr inbounds ptr, ptr %68, i64 27
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %71 unwind label %79, !prof !542

71:                                               ; preds = %67
  %72 = load ptr, ptr %0, align 8, !tbaa !169
  %73 = getelementptr inbounds ptr, ptr %72, i64 31
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %122 unwind label %83, !prof !543

75:                                               ; preds = %58
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = extractvalue { ptr, i32 } %76, 1
  br label %126

79:                                               ; preds = %67
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = extractvalue { ptr, i32 } %80, 0
  %82 = extractvalue { ptr, i32 } %80, 1
  br label %123

83:                                               ; preds = %71
  %84 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  %85 = extractvalue { ptr, i32 } %84, 0
  %86 = extractvalue { ptr, i32 } %84, 1
  %87 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI10cException) #41
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call ptr @__cxa_begin_catch(ptr %85) #41
  invoke void @__cxa_rethrow() #42
          to label %137 unwind label %117

91:                                               ; preds = %83
  %92 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #41
  %93 = icmp eq i32 %86, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %91
  %95 = call ptr @__cxa_begin_catch(ptr %85) #41
  %96 = call ptr @__cxa_allocate_exception(i64 128) #41
  %97 = load ptr, ptr %95, align 8, !tbaa !169
  %98 = getelementptr inbounds ptr, ptr %97, i64 -1
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %99)
          to label %101 unwind label %108

101:                                              ; preds = %94
  %102 = load ptr, ptr %95, align 8, !tbaa !169
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8
  %105 = call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %95) #41
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %96, ptr noundef nonnull @.str.48, ptr noundef %100, ptr noundef %105)
          to label %106 unwind label %108

106:                                              ; preds = %101
  invoke void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #42
          to label %107 unwind label %110

107:                                              ; preds = %106
  unreachable

108:                                              ; preds = %101, %94
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %96) #41
  br label %112

110:                                              ; preds = %106
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi { ptr, i32 } [ %111, %110 ], [ %109, %108 ]
  invoke void @__cxa_end_catch()
          to label %114 unwind label %134

114:                                              ; preds = %112
  %115 = extractvalue { ptr, i32 } %113, 0
  %116 = extractvalue { ptr, i32 } %113, 1
  br label %123

117:                                              ; preds = %89
  %118 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %119 unwind label %134

119:                                              ; preds = %117
  %120 = extractvalue { ptr, i32 } %118, 1
  %121 = extractvalue { ptr, i32 } %118, 0
  br label %123

122:                                              ; preds = %71
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %4) #41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #41
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  ret void

123:                                              ; preds = %119, %114, %91, %79
  %124 = phi i32 [ %120, %119 ], [ %116, %114 ], [ %86, %91 ], [ %82, %79 ]
  %125 = phi ptr [ %121, %119 ], [ %115, %114 ], [ %85, %91 ], [ %81, %79 ]
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %4) #41
  br label %126

126:                                              ; preds = %123, %75
  %127 = phi i32 [ %124, %123 ], [ %78, %75 ]
  %128 = phi ptr [ %125, %123 ], [ %77, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #41
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  br label %129

129:                                              ; preds = %126, %45
  %130 = phi i32 [ %42, %45 ], [ %127, %126 ]
  %131 = phi ptr [ %41, %45 ], [ %128, %126 ]
  %132 = insertvalue { ptr, i32 } poison, ptr %131, 0
  %133 = insertvalue { ptr, i32 } %132, i32 %130, 1
  br label %26

134:                                              ; preds = %117, %112
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  call void @__clang_call_terminate(ptr %136) #44
  unreachable

137:                                              ; preds = %89
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN7cModule12GateIterator4initEPKS_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #9 align 2 !prof !254 {
  store ptr %1, ptr %0, align 8, !tbaa !199
  %3 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !201
  %4 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 4, !tbaa !202
  %5 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !203
  %6 = load ptr, ptr %0, align 8, !tbaa !199
  %7 = getelementptr inbounds %class.cModule, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !204
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %56, !prof !205

10:                                               ; preds = %2, %50
  %11 = phi ptr [ %52, %50 ], [ %6, %2 ]
  %12 = phi i32 [ %51, %50 ], [ 0, %2 ]
  %13 = getelementptr inbounds %class.cModule, ptr %11, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds %"struct.cGate::Desc", ptr %14, i64 %15, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !206
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19, !prof !208

19:                                               ; preds = %10
  %20 = load i8, ptr %4, align 4, !tbaa !202, !range !193, !noundef !194
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26, !prof !209

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.cGate::Name", ptr %17, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !210
  %25 = icmp eq i32 %24, 79
  br i1 %25, label %47, label %26, !prof !214

26:                                               ; preds = %22, %19
  %27 = getelementptr inbounds %"struct.cGate::Desc", ptr %14, i64 %15, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !215
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %34, label %30, !prof !216

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.cGate::Desc", ptr %14, i64 %15, i32 4
  %32 = getelementptr inbounds %"struct.cGate::Desc", ptr %14, i64 %15, i32 3
  %33 = select i1 %21, ptr %32, ptr %31, !prof !217
  br label %44

34:                                               ; preds = %26
  %35 = icmp eq i32 %28, 0
  br i1 %35, label %47, label %36, !prof !218

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 8, !tbaa !203
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %"struct.cGate::Desc", ptr %14, i64 %15, i32 3
  %40 = getelementptr inbounds %"struct.cGate::Desc", ptr %14, i64 %15, i32 4
  %41 = select i1 %21, ptr %39, ptr %40, !prof !219
  %42 = load ptr, ptr %41, align 8, !tbaa !220
  %43 = getelementptr inbounds ptr, ptr %42, i64 %38
  br label %44

44:                                               ; preds = %36, %30
  %45 = phi ptr [ %33, %30 ], [ %43, %36 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !220
  br label %47

47:                                               ; preds = %44, %10, %22, %34
  %48 = phi ptr [ null, %10 ], [ null, %22 ], [ null, %34 ], [ %46, %44 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %56, !prof !221

50:                                               ; preds = %47
  tail call void @_ZN7cModule12GateIterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(20) %0)
  %51 = load i32, ptr %3, align 8, !tbaa !201
  %52 = load ptr, ptr %0, align 8, !tbaa !199
  %53 = getelementptr inbounds %class.cModule, ptr %52, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !204
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %10, label %56, !prof !222, !llvm.loop !223

56:                                               ; preds = %47, %50, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #30 align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !201
  %4 = load ptr, ptr %0, align 8, !tbaa !199
  %5 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !204
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %45, !prof !544

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !206
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15, !prof !208

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !202, !range !193, !noundef !194
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23, !prof !209

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.cGate::Name", ptr %13, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !210
  %22 = icmp eq i32 %21, 79
  br i1 %22, label %45, label %23, !prof !214

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !215
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %31, label %27, !prof !216

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 4
  %29 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 3
  %30 = select i1 %18, ptr %29, ptr %28, !prof !217
  br label %42

31:                                               ; preds = %23
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %45, label %33, !prof !218

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !203
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 3
  %38 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 4
  %39 = select i1 %18, ptr %37, ptr %38, !prof !219
  %40 = load ptr, ptr %39, align 8, !tbaa !220
  %41 = getelementptr inbounds ptr, ptr %40, i64 %36
  br label %42

42:                                               ; preds = %33, %27
  %43 = phi ptr [ %30, %27 ], [ %41, %33 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !220
  br label %45

45:                                               ; preds = %42, %8, %19, %31, %1
  %46 = phi ptr [ null, %1 ], [ null, %8 ], [ null, %19 ], [ null, %31 ], [ %44, %42 ]
  ret ptr %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN7cModule12GateIterator7advanceEv(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #31 align 2 !prof !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !199
  %3 = getelementptr inbounds %class.cModule, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !201
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !206
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11, !prof !257

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !202, !range !193, !noundef !194
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20, !prof !258

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"struct.cGate::Name", ptr %9, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !210
  %18 = icmp eq i32 %17, 79
  br i1 %18, label %19, label %20, !prof !259

19:                                               ; preds = %15
  store i8 1, ptr %12, align 4, !tbaa !202
  br label %46

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 %7, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !215
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %32, !prof !260

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !203
  %27 = add nsw i32 %22, -1
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31, !prof !261

29:                                               ; preds = %24
  %30 = add nsw i32 %26, 1
  store i32 %30, ptr %25, align 8, !tbaa !203
  br label %46

31:                                               ; preds = %24
  store i32 0, ptr %25, align 8, !tbaa !203
  br label %32

32:                                               ; preds = %31, %20
  br i1 %14, label %33, label %38, !prof !262

33:                                               ; preds = %32
  %34 = getelementptr inbounds %"struct.cGate::Name", ptr %9, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !210
  %36 = icmp eq i32 %35, 73
  br i1 %36, label %38, label %37, !prof !263

37:                                               ; preds = %33
  store i8 1, ptr %12, align 4, !tbaa !202
  br label %46

38:                                               ; preds = %32, %33, %1
  %39 = getelementptr inbounds %class.cModule, ptr %2, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !204
  %41 = icmp slt i32 %6, %40
  br i1 %41, label %42, label %46, !prof !264

42:                                               ; preds = %38
  %43 = add nsw i32 %6, 1
  store i32 %43, ptr %5, align 8, !tbaa !201
  %44 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  store i8 0, ptr %44, align 4, !tbaa !202
  %45 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  store i32 0, ptr %45, align 8, !tbaa !203
  br label %46

46:                                               ; preds = %38, %42, %37, %29, %19
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7cModule15ChannelIterator4initEPKS_(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !527 {
  %3 = alloca %"class.cModule::GateIterator", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !513
  %5 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !511
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %9, label %8, !prof !510

8:                                                ; preds = %2
  store ptr %4, ptr %5, align 8, !tbaa !511
  br label %9

9:                                                ; preds = %2, %8
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11, !prof !545

11:                                               ; preds = %9
  %12 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !197
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  %16 = getelementptr inbounds %"class.cModule::GateIterator", ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %"class.cModule::GateIterator", ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %"class.cModule::GateIterator", ptr %3, i64 0, i32 4
  br label %21

19:                                               ; preds = %86
  %20 = getelementptr inbounds %"class.cModule::ChannelIterator", ptr %0, i64 0, i32 1
  store i32 0, ptr %20, align 8, !tbaa !514
  ret void

21:                                               ; preds = %14, %86
  %22 = phi i8 [ 0, %14 ], [ %25, %86 ]
  %23 = phi ptr [ %15, %14 ], [ %87, %86 ]
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i8 1, i8 %22, !prof !546
  %26 = select i1 %24, ptr %1, ptr %23, !prof !546
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #41
  store ptr %26, ptr %3, align 8, !tbaa !199
  store i32 0, ptr %16, align 8, !tbaa !201
  store i8 0, ptr %17, align 4, !tbaa !202
  store i32 0, ptr %18, align 8, !tbaa !203
  %27 = getelementptr inbounds %class.cModule, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !204
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %76, !prof !205

30:                                               ; preds = %21, %70
  %31 = phi ptr [ %72, %70 ], [ %26, %21 ]
  %32 = phi i32 [ %71, %70 ], [ 0, %21 ]
  %33 = getelementptr inbounds %class.cModule, ptr %31, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !187
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds %"struct.cGate::Desc", ptr %34, i64 %35, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !206
  %38 = icmp eq ptr %37, null
  br i1 %38, label %67, label %39, !prof !208

39:                                               ; preds = %30
  %40 = load i8, ptr %17, align 4, !tbaa !202, !range !193, !noundef !194
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46, !prof !209

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"struct.cGate::Name", ptr %37, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !210
  %45 = icmp eq i32 %44, 79
  br i1 %45, label %67, label %46, !prof !214

46:                                               ; preds = %42, %39
  %47 = getelementptr inbounds %"struct.cGate::Desc", ptr %34, i64 %35, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !215
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %54, label %50, !prof !216

50:                                               ; preds = %46
  %51 = getelementptr inbounds %"struct.cGate::Desc", ptr %34, i64 %35, i32 4
  %52 = getelementptr inbounds %"struct.cGate::Desc", ptr %34, i64 %35, i32 3
  %53 = select i1 %41, ptr %52, ptr %51, !prof !217
  br label %64

54:                                               ; preds = %46
  %55 = icmp eq i32 %48, 0
  br i1 %55, label %67, label %56, !prof !218

56:                                               ; preds = %54
  %57 = load i32, ptr %18, align 8, !tbaa !203
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %"struct.cGate::Desc", ptr %34, i64 %35, i32 3
  %60 = getelementptr inbounds %"struct.cGate::Desc", ptr %34, i64 %35, i32 4
  %61 = select i1 %41, ptr %59, ptr %60, !prof !219
  %62 = load ptr, ptr %61, align 8, !tbaa !220
  %63 = getelementptr inbounds ptr, ptr %62, i64 %58
  br label %64

64:                                               ; preds = %50, %56
  %65 = phi ptr [ %63, %56 ], [ %53, %50 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !220
  br label %67

67:                                               ; preds = %64, %54, %42, %30
  %68 = phi ptr [ null, %30 ], [ null, %42 ], [ null, %54 ], [ %66, %64 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %76, !prof !221

70:                                               ; preds = %67
  call void @_ZN7cModule12GateIterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(20) %3)
  %71 = load i32, ptr %16, align 8, !tbaa !201
  %72 = load ptr, ptr %3, align 8, !tbaa !199
  %73 = getelementptr inbounds %class.cModule, ptr %72, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !204
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %30, label %76, !prof !222, !llvm.loop !223

76:                                               ; preds = %67, %70, %21
  %77 = load i32, ptr %16, align 8, !tbaa !201
  %78 = load ptr, ptr %3, align 8, !tbaa !199
  %79 = getelementptr inbounds %class.cModule, ptr %78, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !204
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %90, label %82, !prof !547

82:                                               ; preds = %180, %76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #41
  br i1 %24, label %86, label %83, !prof !546

83:                                               ; preds = %82
  %84 = getelementptr inbounds %class.cModule, ptr %23, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !233
  br label %86

86:                                               ; preds = %82, %83
  %87 = phi ptr [ %23, %82 ], [ %85, %83 ]
  %88 = and i8 %25, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %21, label %19, !prof !548, !llvm.loop !549

90:                                               ; preds = %76, %180
  %91 = phi ptr [ %183, %180 ], [ %78, %76 ]
  %92 = phi i32 [ %182, %180 ], [ %77, %76 ]
  %93 = getelementptr inbounds %class.cModule, ptr %91, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !187
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds %"struct.cGate::Desc", ptr %94, i64 %95, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !206
  %98 = icmp eq ptr %97, null
  br i1 %98, label %127, label %99, !prof !208

99:                                               ; preds = %90
  %100 = load i8, ptr %17, align 4, !tbaa !202, !range !193, !noundef !194
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %106, !prof !209

102:                                              ; preds = %99
  %103 = getelementptr inbounds %"struct.cGate::Name", ptr %97, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !210
  %105 = icmp eq i32 %104, 79
  br i1 %105, label %127, label %106, !prof !214

106:                                              ; preds = %102, %99
  %107 = getelementptr inbounds %"struct.cGate::Desc", ptr %94, i64 %95, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !215
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %114, label %110, !prof !216

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"struct.cGate::Desc", ptr %94, i64 %95, i32 4
  %112 = getelementptr inbounds %"struct.cGate::Desc", ptr %94, i64 %95, i32 3
  %113 = select i1 %101, ptr %112, ptr %111, !prof !217
  br label %124

114:                                              ; preds = %106
  %115 = icmp eq i32 %108, 0
  br i1 %115, label %127, label %116, !prof !218

116:                                              ; preds = %114
  %117 = load i32, ptr %18, align 8, !tbaa !203
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %"struct.cGate::Desc", ptr %94, i64 %95, i32 3
  %120 = getelementptr inbounds %"struct.cGate::Desc", ptr %94, i64 %95, i32 4
  %121 = select i1 %101, ptr %119, ptr %120, !prof !219
  %122 = load ptr, ptr %121, align 8, !tbaa !220
  %123 = getelementptr inbounds ptr, ptr %122, i64 %118
  br label %124

124:                                              ; preds = %116, %110
  %125 = phi ptr [ %113, %110 ], [ %123, %116 ]
  %126 = load ptr, ptr %125, align 8, !tbaa !220
  br label %127

127:                                              ; preds = %124, %90, %102, %114
  %128 = phi ptr [ null, %90 ], [ null, %102 ], [ null, %114 ], [ %126, %124 ]
  %129 = icmp eq ptr %128, null
  br i1 %129, label %180, label %130, !prof !550

130:                                              ; preds = %127
  %131 = getelementptr inbounds %class.cGate, ptr %128, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !551
  %133 = icmp eq ptr %132, null
  br i1 %133, label %180, label %134, !prof !552

134:                                              ; preds = %130
  %135 = and i8 %25, 1
  %136 = icmp eq i8 %135, 0
  %137 = getelementptr inbounds %class.cGate, ptr %128, i64 0, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !397
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  %141 = xor i1 %136, %140
  br i1 %141, label %142, label %180, !prof !553

142:                                              ; preds = %134
  %143 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %144 = load ptr, ptr %5, align 8, !tbaa !188
  %145 = load ptr, ptr %143, align 8, !tbaa !554
  %146 = icmp eq ptr %144, %145
  br i1 %146, label %150, label %147, !prof !555

147:                                              ; preds = %142
  store ptr %132, ptr %144, align 8, !tbaa !188
  %148 = load ptr, ptr %5, align 8, !tbaa !511
  %149 = getelementptr inbounds ptr, ptr %148, i64 1
  store ptr %149, ptr %5, align 8, !tbaa !511
  br label %180

150:                                              ; preds = %142
  %151 = load ptr, ptr %0, align 8, !tbaa !188
  %152 = ptrtoint ptr %144 to i64
  %153 = ptrtoint ptr %151 to i64
  %154 = sub i64 %152, %153
  %155 = icmp eq i64 %154, 9223372036854775800
  br i1 %155, label %156, label %157, !prof !556

156:                                              ; preds = %150
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #42
  unreachable

157:                                              ; preds = %150
  %158 = ashr exact i64 %154, 3
  %159 = tail call i64 @llvm.umax.i64(i64 %158, i64 1)
  %160 = add i64 %159, %158
  %161 = icmp ult i64 %160, %158
  %162 = tail call i64 @llvm.umin.i64(i64 %160, i64 1152921504606846975)
  %163 = select i1 %161, i64 1152921504606846975, i64 %162, !prof !556
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %168, label %165, !prof !556

165:                                              ; preds = %157
  %166 = shl nuw nsw i64 %163, 3
  %167 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %166) #46
  br label %168

168:                                              ; preds = %165, %157
  %169 = phi ptr [ %167, %165 ], [ null, %157 ]
  %170 = getelementptr inbounds ptr, ptr %169, i64 %158
  store ptr %132, ptr %170, align 8, !tbaa !188
  %171 = icmp sgt i64 %154, 0
  br i1 %171, label %172, label %173, !prof !557

172:                                              ; preds = %168
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %169, ptr align 8 %151, i64 %154, i1 false), !prof !558
  br label %173

173:                                              ; preds = %172, %168
  %174 = getelementptr inbounds i8, ptr %169, i64 %154
  %175 = getelementptr inbounds ptr, ptr %174, i64 1
  %176 = icmp eq ptr %151, null
  br i1 %176, label %178, label %177, !prof !559

177:                                              ; preds = %173
  tail call void @_ZdlPv(ptr noundef %151) #43
  br label %178

178:                                              ; preds = %173, %177
  store ptr %169, ptr %0, align 8, !tbaa !513
  store ptr %175, ptr %5, align 8, !tbaa !511
  %179 = getelementptr inbounds ptr, ptr %169, i64 %163
  store ptr %179, ptr %143, align 8, !tbaa !554
  br label %180

180:                                              ; preds = %178, %147, %134, %130, %127
  %181 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 poison)
  %182 = load i32, ptr %16, align 8, !tbaa !201
  %183 = load ptr, ptr %3, align 8, !tbaa !199
  %184 = getelementptr inbounds %class.cModule, ptr %183, i64 0, i32 7
  %185 = load i32, ptr %184, align 8, !tbaa !204
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %90, label %82, !prof !560, !llvm.loop !561
}

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN12cDefaultList18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

declare void @_ZN12cDefaultList14yieldOwnershipEP12cOwnedObjectP7cObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #32 comdat align 2 !prof !562 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !563
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.54, ptr %3, !prof !564
  ret ptr %5
}

declare void @_ZNK12cDefaultList4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN12cDefaultList4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

declare void @_ZN12cDefaultList4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

declare void @_ZN12cDefaultList10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

declare void @_ZN12cDefaultList12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #32 comdat align 2 !prof !565 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !566
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #32 comdat align 2 !prof !567 {
  ret i1 true
}

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !497
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cDefaultList11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  ret i1 true
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12cDefaultList17setPerformFinalGCEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 !prof !254 {
  %3 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !497
  %5 = and i16 %4, -3
  %6 = select i1 %1, i16 2, i16 0
  %7 = or disjoint i16 %5, %6
  store i16 %7, ptr %3, align 8, !tbaa !497
  ret void
}

declare void @_ZN10cComponent16setComponentTypeEP14cComponentType(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare void @_ZN10cComponent6addParEP8cParImpl(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare void @_ZN10cComponent25recordParametersAsScalarsEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cComponent10initializeEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 !prof !568 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8, !prof !569

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !169
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(104) %0), !prof !570
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent13numInitStagesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !571 {
  ret i32 1
}

declare void @_ZN10cComponent10initializeEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare void @_ZN10cComponent6finishEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

declare void @_ZN10cComponent21handleParameterChangeEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK10cComponent14getNedTypeNameEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule8isModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !572 {
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !573 {
  %2 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !268
  %4 = sext i16 %3 to i32
  ret i32 %4
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare noundef i32 @_ZNK10cComponent7findParEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #0

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7cModule13doBuildInsideEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !574 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule13isPlaceholderEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  ret i1 false
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !340 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !169
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !341

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !296
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #43
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !306
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !341

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !296
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #43
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !306
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !485

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !296
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #43
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #41
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #41
  tail call void @_ZdlPv(ptr noundef %0) #43
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !prof !340 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #46
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #43
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !575
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 !prof !254 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !296
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #41
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.50)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !302, !alias.scope !578
  %10 = load ptr, ptr %7, align 8, !tbaa !306
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !296
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !306, !alias.scope !578
  %19 = load i64, ptr %11, align 8, !tbaa !220
  store i64 %19, ptr %9, align 8, !tbaa !220, !alias.scope !578
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !296
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !296, !alias.scope !578
  store ptr %11, ptr %7, align 8, !tbaa !306
  store i64 0, ptr %21, align 8, !tbaa !296
  store i8 0, ptr %11, align 8, !tbaa !220
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !296, !noalias !581
  %27 = load i64, ptr %23, align 8, !tbaa !296, !noalias !581
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #42
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !306, !noalias !581
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !302, !alias.scope !581
  %37 = load ptr, ptr %34, align 8, !tbaa !306
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !296
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !306, !alias.scope !581
  %46 = load i64, ptr %38, align 8, !tbaa !220
  store i64 %46, ptr %36, align 8, !tbaa !220, !alias.scope !581
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !296
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !296, !alias.scope !581
  store ptr %38, ptr %34, align 8, !tbaa !306
  store i64 0, ptr %48, align 8, !tbaa !296
  store i8 0, ptr %38, align 8, !tbaa !220
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #41
  %52 = load ptr, ptr %3, align 8, !tbaa !306
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !296
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #43
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !306
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !296
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #43
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !306
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !296
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #43
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !306
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !296
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #43
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !306
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !296
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #43
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #41
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !prof !340 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !584, !range !193, !noundef !194
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !585
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !302
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.52) #42
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #41
  store i64 %9, ptr %4, align 8, !tbaa !316
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !586

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !306
  %13 = load i64, ptr %4, align 8, !tbaa !316
  store i64 %13, ptr %5, align 8, !tbaa !220
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !306
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !587

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !220
  store i8 %17, ptr %15, align 1, !tbaa !220
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !588
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !316
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !296
  %22 = load ptr, ptr %0, align 8, !tbaa !306
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #41
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #33

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #33

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #34

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !589 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4, !prof !590

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !591
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !592
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %10) #41
  tail call void @_ZdlPv(ptr noundef %5) #43
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %4, !prof !367, !llvm.loop !593

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !594 {
  %3 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !368
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !595

6:                                                ; preds = %2
  tail call void @_ZdaPv(ptr noundef %4) #43
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !368
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !595

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef %9) #43
  br label %12

12:                                               ; preds = %11, %7
  %13 = load ptr, ptr %1, align 8, !tbaa !368
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !596

15:                                               ; preds = %12
  tail call void @_ZdaPv(ptr noundef %13) #43
  br label %16

16:                                               ; preds = %12, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #35

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #28

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

declare noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #14 comdat align 2 !prof !594 {
  %3 = alloca %"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Alloc_node", align 8
  %4 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1)
  %5 = extractvalue { ptr, ptr } %4, 0
  %6 = extractvalue { ptr, ptr } %4, 1
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !596

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #41
  store ptr %0, ptr %3, align 8, !tbaa !188
  %9 = call ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #41
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ %5, %2 ]
  %12 = phi i8 [ 1, %8 ], [ 0, %2 ]
  %13 = insertvalue { ptr, i8 } poison, ptr %11, 0
  %14 = insertvalue { ptr, i8 } %13, i8 %12, 1
  ret { ptr, i8 } %14
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #14 comdat align 2 !prof !594 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !188
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !597

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %14, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %8, i64 0, i32 1
  %10 = tail call noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %9)
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %8, i64 0, i32 2
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %8, i64 0, i32 3
  %13 = select i1 %10, ptr %11, ptr %12, !prof !598
  %14 = load ptr, ptr %13, align 8, !tbaa !188
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !prof !599, !llvm.loop !600

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %4, %2 ], [ %8, %7 ]
  %18 = phi i1 [ true, %2 ], [ %10, %7 ]
  %19 = phi ptr [ %5, %2 ], [ %14, %7 ]
  br i1 %18, label %20, label %26, !prof !601

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %0, i64 24
  %22 = load ptr, ptr %21, align 8, !tbaa !342
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %32, label %24, !prof !503

24:                                               ; preds = %20
  %25 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %17) #45
  br label %26

26:                                               ; preds = %24, %16
  %27 = phi ptr [ %25, %24 ], [ %17, %16 ]
  %28 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %27, i64 0, i32 1
  %29 = tail call noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %28, ptr noundef nonnull align 8 dereferenceable(28) %1)
  %30 = select i1 %29, ptr %19, ptr %27, !prof !602
  %31 = select i1 %29, ptr %17, ptr null, !prof !602
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi ptr [ %19, %20 ], [ %30, %26 ]
  %34 = phi ptr [ %17, %20 ], [ %31, %26 ]
  %35 = insertvalue { ptr, ptr } poison, ptr %33, 0
  %36 = insertvalue { ptr, ptr } %35, ptr %34, 1
  ret { ptr, ptr } %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #14 comdat align 2 !prof !594 {
  %6 = icmp ne ptr %1, null
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = icmp eq ptr %7, %2
  %9 = select i1 %6, i1 true, i1 %8, !prof !596
  br i1 %9, label %13, label %10, !prof !603

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1
  %12 = tail call noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %11)
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i1 [ true, %5 ], [ %12, %10 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !604
  %16 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #46
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull %16, ptr noundef nonnull align 8 dereferenceable(28) %3)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %14, ptr noundef nonnull %16, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %7) #41
  %17 = getelementptr inbounds i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !344
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !344
  ret ptr %16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #36

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !594 {
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  invoke void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(28) %2)
          to label %11 unwind label %5, !prof !367

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = tail call ptr @__cxa_begin_catch(ptr %7) #41
  tail call void @_ZdlPv(ptr noundef %1) #43
  invoke void @__cxa_rethrow() #42
          to label %16 unwind label %9

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %12 unwind label %13

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %9
  resume { ptr, i32 } %10

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #44
  unreachable

16:                                               ; preds = %5
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #33

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #33

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !594 {
  tail call void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %4 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.cGate::Name", ptr %2, i64 0, i32 1
  invoke void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %9, !prof !367

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.cGate::Name", ptr %2, i64 0, i32 2
  invoke void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %22 unwind label %11, !prof !367

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %16

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = load ptr, ptr %4, align 8, !tbaa !368
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZdaPv(ptr noundef %13) #43
  br label %16

16:                                               ; preds = %15, %11, %9
  %17 = phi { ptr, i32 } [ %10, %9 ], [ %12, %11 ], [ %12, %15 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !368
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef %18) #43
  br label %21

21:                                               ; preds = %20, %16
  resume { ptr, i32 } %17

22:                                               ; preds = %6
  %23 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %"struct.cGate::Name", ptr %2, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !210
  store i32 %25, ptr %23, align 8, !tbaa !210
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #14 comdat align 2 !prof !606 {
  %3 = load ptr, ptr %1, align 8, !tbaa !368
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !607

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 1, !tbaa !220
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8, !prof !608

8:                                                ; preds = %5
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #45
  %10 = add i64 %9, 1
  %11 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %10) #46
  %12 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %3) #41
  br label %13

13:                                               ; preds = %2, %5, %8
  %14 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %2 ]
  store ptr %14, ptr %0, align 8, !tbaa !368
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !609 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !450
  %6 = load ptr, ptr %0, align 8, !tbaa !188
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12, !prof !610

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #42
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 3
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 1152921504606846975)
  %18 = select i1 %16, i64 1152921504606846975, i64 %17, !prof !610
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23, !prof !610

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  %28 = load ptr, ptr %2, align 8, !tbaa !188
  store ptr %28, ptr %27, align 8, !tbaa !188
  %29 = icmp sgt i64 %20, 0
  br i1 %29, label %30, label %31, !prof !610

30:                                               ; preds = %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %6, i64 %20, i1 false)
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %20
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = sub i64 %7, %19
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37, !prof !610

36:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %33, ptr align 8 %1, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %31, %36
  %38 = icmp eq ptr %6, null
  br i1 %38, label %40, label %39, !prof !611

39:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %6) #43
  br label %40

40:                                               ; preds = %37, %39
  %41 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %42 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %26, ptr %0, align 8, !tbaa !451
  store ptr %42, ptr %4, align 8, !tbaa !450
  %43 = getelementptr inbounds ptr, ptr %26, i64 %18
  store ptr %43, ptr %41, align 8, !tbaa !448
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #14 comdat align 2 !prof !612 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !613

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #46
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #22

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #14 comdat !prof !254 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %3, %26
  %10 = phi ptr [ %33, %26 ], [ %0, %3 ]
  %11 = phi i64 [ %32, %26 ], [ %7, %3 ]
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !188
  %15 = load ptr, ptr %2, align 8, !tbaa !188
  %16 = icmp eq ptr %14, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi i32 [ 0, %9 ], [ %19, %17 ]
  %22 = icmp eq ptr %15, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ 0, %20 ], [ %25, %23 ]
  %28 = icmp ugt i32 %21, %27
  %29 = getelementptr inbounds ptr, ptr %13, i64 1
  %30 = xor i64 %12, -1
  %31 = add nsw i64 %11, %30
  %32 = select i1 %28, i64 %31, i64 %12
  %33 = select i1 %28, ptr %29, ptr %10
  %34 = icmp sgt i64 %32, 0
  br i1 %34, label %9, label %35, !llvm.loop !614

35:                                               ; preds = %26, %3
  %36 = phi ptr [ %0, %3 ], [ %33, %26 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #14 comdat !prof !254 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %3, %26
  %10 = phi ptr [ %33, %26 ], [ %0, %3 ]
  %11 = phi i64 [ %32, %26 ], [ %7, %3 ]
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !188
  %15 = load ptr, ptr %2, align 8, !tbaa !188
  %16 = icmp eq ptr %14, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi i32 [ 0, %9 ], [ %19, %17 ]
  %22 = icmp eq ptr %15, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i32 [ 0, %20 ], [ %25, %23 ]
  %28 = icmp ugt i32 %21, %27
  %29 = getelementptr inbounds ptr, ptr %13, i64 1
  %30 = xor i64 %12, -1
  %31 = add nsw i64 %11, %30
  %32 = select i1 %28, i64 %31, i64 %12
  %33 = select i1 %28, ptr %29, ptr %10
  %34 = icmp sgt i64 %32, 0
  br i1 %34, label %9, label %35, !llvm.loop !615

35:                                               ; preds = %26, %3
  %36 = phi ptr [ %0, %3 ], [ %33, %26 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN28less_gatePairConnectedInsideclEP5cGateS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 comdat align 2 !prof !254 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ %13, %11 ]
  %16 = icmp ugt i32 %9, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  br i1 %4, label %30, label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr %0, align 8, !tbaa !616
  %20 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !397
  %22 = ashr i32 %21, 2
  %23 = icmp eq i32 %22, -1
  %24 = select i1 %23, i32 0, i32 %22
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %19, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  %28 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %27)
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %18, %17
  %31 = phi i32 [ 0, %17 ], [ %29, %18 ]
  br i1 %10, label %44, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 8, !tbaa !616
  %34 = getelementptr inbounds %class.cGate, ptr %2, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !397
  %36 = ashr i32 %35, 2
  %37 = icmp eq i32 %36, -1
  %38 = select i1 %37, i32 0, i32 %36
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %33, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !188
  %42 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %41)
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %32, %30
  %45 = phi i32 [ 0, %30 ], [ %43, %32 ]
  %46 = icmp ugt i32 %31, %45
  br label %47

47:                                               ; preds = %44, %14
  %48 = phi i1 [ false, %14 ], [ %46, %44 ]
  ret i1 %48
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cmodule.cc() #37 section ".text.startup" personality ptr @__gxx_personality_v0 !prof !340 !PGOFuncName !618 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #41
  store ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN7cModule18lastmodulefullpathB5cxx11E, i64 0, i32 2), ptr @_ZN7cModule18lastmodulefullpathB5cxx11E, align 8, !tbaa !302
  store i64 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN7cModule18lastmodulefullpathB5cxx11E, i64 0, i32 1), align 8, !tbaa !296
  store i8 0, ptr getelementptr inbounds (%"class.std::__cxx11::basic_string", ptr @_ZN7cModule18lastmodulefullpathB5cxx11E, i64 0, i32 2), align 8, !tbaa !220
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7cModule18lastmodulefullpathB5cxx11E, ptr nonnull @__dso_handle) #41
  store i32 0, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), align 8, !tbaa !619
  store ptr null, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 1), align 8, !tbaa !323
  store ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 2), align 8, !tbaa !342
  store ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0), ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 0, i32 3), align 8, !tbaa !343
  store i64 0, ptr getelementptr inbounds (%"class.std::set.8", ptr @_ZN7cModule8namePoolE, i64 0, i32 0, i32 0, i32 1, i32 1), align 8, !tbaa !344
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EED2Ev, ptr nonnull @_ZN7cModule8namePoolE, ptr nonnull @__dso_handle) #41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #39

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #39

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { inlinehint mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nosync nounwind memory(none) }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #39 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { nounwind }
attributes #42 = { noreturn }
attributes #43 = { builtin nounwind }
attributes #44 = { noreturn nounwind }
attributes #45 = { nounwind willreturn memory(read) }
attributes #46 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!167}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!35 = !{ptr @_ZN7cModuleC2Ev, ptr @_ZN10cComponentC2EPKc, i64 29423}
!36 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, i64 71388}
!37 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZdaPv, i64 38274}
!38 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN5cGate10disconnectEv, i64 65602}
!39 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule12GateIteratorppEi, i64 113504}
!40 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN11cSimulation16deregisterModuleEP7cModule, i64 29423}
!41 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK7cModule15getParentModuleEv, i64 58845}
!42 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN10cComponentD2Ev, i64 29423}
!43 = !{ptr @_ZN7cModule8setIndexEii, ptr @_ZN7cModule14updateFullNameEv, i64 8852}
!44 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 17704}
!45 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @strlen, i64 8852}
!46 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_Znam, i64 8852}
!47 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @strcpy, i64 8852}
!48 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @sprintf, i64 20}
!49 = !{ptr @_ZN7cModule15insertSubmoduleEPS_, ptr @_ZN12cDefaultList4takeEP12cOwnedObject, i64 29422}
!50 = !{ptr @_ZNK7cModule15getParentModuleEv, ptr @_ZNK12cOwnedObject8getOwnerEv, i64 643082}
!51 = !{ptr @_ZNK7cModule15getParentModuleEv, ptr @__dynamic_cast, i64 643082}
!52 = !{ptr @_ZN7cModule7setNameEPKc, ptr @_ZN12cNamedObject7setNameEPKc, i64 29423}
!53 = !{ptr @_ZN7cModule7setNameEPKc, ptr @_ZN7cModule14updateFullNameEv, i64 29423}
!54 = !{ptr @_ZNK7cModule11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 159976}
!55 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNK7cModule15getParentModuleEv, i64 563894}
!56 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNK7cModule11getFullNameEv, i64 325702}
!57 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @strlen, i64 325695}
!58 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 87510}
!59 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNK7cModule11getFullPathB5cxx11Ev, i64 238192}
!60 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 476377}
!61 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_, i64 238181}
!62 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZdlPv, i64 238192}
!63 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1054749}
!64 = !{ptr @_ZNK7cModule8isSimpleEv, ptr @__dynamic_cast, i64 109137}
!65 = !{ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, ptr @_Znwm, i64 113504}
!66 = !{ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, ptr @_ZN5cGateC1Ev, i64 113504}
!67 = !{ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, ptr @_ZN7cModule17disposeGateObjectEP5cGateb, i64 160148}
!68 = !{ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, ptr @_ZdaPv, i64 11600}
!69 = !{ptr @_ZN7cModule14clearNamePoolsEv, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, i64 1}
!70 = !{ptr @_ZN7cModule14clearNamePoolsEv, ptr @_ZN5cGate17clearFullnamePoolEv, i64 1}
!71 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_Znam, i64 71388}
!72 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZdaPv, i64 142162}
!73 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZN5cGate4NameC1EPKcNS_4TypeE, i64 71388}
!74 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNK5cGate4NameltERKS0_, i64 316401}
!75 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, i64 8}
!76 = !{ptr @_ZNK7cModule12findGateDescEPKcRc, ptr @strlen, i64 88894}
!77 = !{ptr @_ZNK7cModule12findGateDescEPKcRc, ptr @strcmp, i64 111264}
!78 = !{ptr @_ZNK7cModule8gateDescEPKcRc, ptr @strlen, i64 52798}
!79 = !{ptr @_ZNK7cModule8gateDescEPKcRc, ptr @strcmp, i64 66085}
!80 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZNK7cModule12findGateDescEPKcRc, i64 71388}
!81 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, i64 71388}
!82 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, i64 74192}
!83 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZNK7cModule12findGateDescEPKcRc, i64 16522}
!84 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_Znam, i64 16000}
!85 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZdaPv, i64 4400}
!86 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, i64 39312}
!87 = !{ptr @_ZNK7cModule8gateSizeEPKc, ptr @_ZNK7cModule8gateDescEPKcRc, i64 1368}
!88 = !{ptr @_ZN7cModule4gateEPKci, ptr @strlen, i64 316920037}
!89 = !{ptr @_ZN7cModule4gateEPKci, ptr @strcmp, i64 396672244}
!90 = !{ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi, ptr @_ZNK7cModule8gateDescEPKcRc, i64 45248}
!91 = !{ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi, ptr @_ZN7cModule4gateEPKci, i64 45248}
!92 = !{ptr @_ZNK7cModule7hasGateEPKci, ptr @_ZNK7cModule12findGateDescEPKcRc, i64 984}
!93 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK7cModule8gateDescEPKcRc, i64 6182}
!94 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK5cGate18isConnectedOutsideEv, i64 24138}
!95 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZN7cModule11setGateSizeEPKci, i64 6182}
!96 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK5cGate17isConnectedInsideEv, i64 17700}
!97 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZN7cModule12GateIteratorppEi, i64 131204}
!98 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK5cGate18isConnectedOutsideEv, i64 113504}
!99 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @_ZNK12cNamedObject7getNameEv, i64 609323}
!100 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @strcmp, i64 1074529}
!101 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZNK12cNamedObject7getNameEv, i64 791559}
!102 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @strcmp, i64 1395900}
!103 = !{ptr @_ZN10opp_stringC2EPKc, ptr @strlen, i64 4934}
!104 = !{ptr @_ZN10opp_stringC2EPKc, ptr @_Znam, i64 4934}
!105 = !{ptr @_ZN10opp_stringC2EPKc, ptr @strcpy, i64 4934}
!106 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 29423}
!107 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 29423}
!108 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN10cComponent18finalizeParametersEv, i64 29423}
!109 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZNK10cComponent16getComponentTypeEv, i64 29423}
!110 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 29423}
!111 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN16cContextSwitcherD1Ev, i64 29423}
!112 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 29423}
!113 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 29423}
!114 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN7cModule13doBuildInsideEv, i64 23952}
!115 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 29423}
!116 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN16cContextSwitcherD1Ev, i64 29423}
!117 = !{ptr @_ZN7cModule12deleteModuleEv, ptr @_ZNK11cSimulation16getContextModuleEv, i64 1}
!118 = !{ptr @_ZN7cModule14callInitializeEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 1}
!119 = !{ptr @_ZN7cModule14callInitializeEv, ptr @_ZN7cModule18initializeChannelsEi, i64 1}
!120 = !{ptr @_ZN7cModule14callInitializeEv, ptr @_ZN7cModule17initializeModulesEi, i64 2}
!121 = !{ptr @_ZN7cModule14callInitializeEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 1}
!122 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule15ChannelIterator4initEPKS_, i64 29423}
!123 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZdlPv, i64 301}
!124 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule18initializeChannelsEi, i64 29422}
!125 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZNK10cComponent13numInitStagesEv, i64 48998}
!126 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN26cMethodCallContextSwitcherC1EPK10cComponentb, i64 34347}
!127 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN26cMethodCallContextSwitcher10methodCallEPKcz, i64 34347}
!128 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN10cComponent10initializeEi, i64 24499}
!129 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN26cMethodCallContextSwitcherD1Ev, i64 34347}
!130 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN7cModule17initializeModulesEi, i64 58844}
!131 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule15ChannelIterator4initEPKS_, i64 29423}
!132 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZdlPv, i64 301}
!133 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 29423}
!134 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 29423}
!135 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule10callFinishEv, i64 29422}
!136 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN10cComponent25recordParametersAsScalarsEv, i64 29423}
!137 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN10cComponent6finishEv, i64 5471}
!138 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 29423}
!139 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN16cContextSwitcherD1Ev, i64 29423}
!140 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_Znwm, i64 3966}
!141 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZdlPv, i64 3364}
!142 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZN7cModule12GateIteratorppEi, i64 454016}
!143 = !{ptr @_ZN10cComponent10initializeEi, ptr @_ZN10cComponent10initializeEv, i64 15233}
!144 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!145 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!146 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, i64 8}
!147 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_, i64 8}
!148 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, ptr @_ZdlPv, i64 8}
!149 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_, ptr @_ZdaPv, i64 12}
!150 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, i64 8}
!151 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, i64 8}
!152 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNK5cGate4NameltERKS0_, i64 24}
!153 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, i64 1}
!154 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNK5cGate4NameltERKS0_, i64 7}
!155 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_Znwm, i64 8}
!156 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_, i64 8}
!157 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 8}
!158 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_, i64 8}
!159 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_, ptr @_ZN10opp_stringC2ERKS_, i64 24}
!160 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @strlen, i64 28}
!161 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @_Znam, i64 28}
!162 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @strcpy, i64 28}
!163 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv, i64 11}
!164 = !{ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv, ptr @_Znwm, i64 27}
!165 = !{ptr @_GLOBAL__sub_I_cmodule.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!166 = !{ptr @_GLOBAL__sub_I_cmodule.cc, ptr @__cxa_atexit, i64 3}
!167 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!168 = !{!"function_entry_count", i64 29423}
!169 = !{!170, !170, i64 0}
!170 = !{!"vtable pointer", !171, i64 0}
!171 = !{!"Simple C++ TBAA"}
!172 = !{!173, !183, i64 112}
!173 = !{!"_ZTS7cModule", !174, i64 0, !180, i64 104, !183, i64 112, !180, i64 120, !180, i64 128, !180, i64 136, !180, i64 144, !183, i64 152, !180, i64 160, !183, i64 168, !183, i64 172}
!174 = !{!"_ZTS10cComponent", !175, i64 0, !180, i64 56, !182, i64 64, !180, i64 72, !182, i64 80, !182, i64 82, !180, i64 88, !180, i64 96}
!175 = !{!"_ZTS12cDefaultList", !176, i64 0, !180, i64 40, !183, i64 48, !183, i64 52}
!176 = !{!"_ZTS23cNoncopyableOwnedObject", !177, i64 0}
!177 = !{!"_ZTS12cOwnedObject", !178, i64 0, !180, i64 24, !183, i64 32}
!178 = !{!"_ZTS12cNamedObject", !179, i64 0, !180, i64 8, !182, i64 16, !182, i64 18}
!179 = !{!"_ZTS7cObject"}
!180 = !{!"any pointer", !181, i64 0}
!181 = !{!"omnipotent char", !171, i64 0}
!182 = !{!"short", !181, i64 0}
!183 = !{!"int", !181, i64 0}
!184 = !{!173, !183, i64 168}
!185 = !{!173, !183, i64 172}
!186 = !{!173, !180, i64 104}
!187 = !{!173, !180, i64 160}
!188 = !{!180, !180, i64 0}
!189 = !{!190, !191, i64 9}
!190 = !{!"_ZTS6cEnvir", !191, i64 8, !191, i64 9, !191, i64 10, !192, i64 16}
!191 = !{!"bool", !181, i64 0}
!192 = !{!"_ZTSSo"}
!193 = !{i8 0, i8 2}
!194 = !{}
!195 = !{!"branch_weights", i32 29423, i32 0}
!196 = !{!"VP", i32 0, i64 29423, i64 -630522151790643147, i64 29423}
!197 = !{!173, !180, i64 136}
!198 = !{!"branch_weights", i32 1, i32 29422}
!199 = !{!200, !180, i64 0}
!200 = !{!"_ZTSN7cModule12GateIteratorE", !180, i64 0, !183, i64 8, !191, i64 12, !183, i64 16}
!201 = !{!200, !183, i64 8}
!202 = !{!200, !191, i64 12}
!203 = !{!200, !183, i64 16}
!204 = !{!173, !183, i64 152}
!205 = !{!"branch_weights", i32 127, i32 1}
!206 = !{!207, !180, i64 8}
!207 = !{!"_ZTSN5cGate4DescE", !180, i64 0, !180, i64 8, !183, i64 16, !181, i64 24, !181, i64 32}
!208 = !{!"branch_weights", i32 0, i32 1568400}
!209 = !{!"branch_weights", i32 869676, i32 698724}
!210 = !{!211, !213, i64 24}
!211 = !{!"_ZTSN5cGate4NameE", !212, i64 0, !212, i64 8, !212, i64 16, !213, i64 24}
!212 = !{!"_ZTS10opp_string", !180, i64 0}
!213 = !{!"_ZTSN5cGate4TypeE", !181, i64 0}
!214 = !{!"branch_weights", i32 170952, i32 698724}
!215 = !{!207, !183, i64 16}
!216 = !{!"branch_weights", i32 486248, i32 911200}
!217 = !{!"branch_weights", i32 455600, i32 455600}
!218 = !{!"branch_weights", i32 0, i32 486248}
!219 = !{!"branch_weights", i32 243124, i32 243124}
!220 = !{!181, !181, i64 0}
!221 = !{!"branch_weights", i32 0, i32 182002}
!222 = !{!"branch_weights", i32 5823937, i32 127}
!223 = distinct !{!223, !224, !225}
!224 = !{!"llvm.loop.mustprogress"}
!225 = !{!"llvm.loop.unroll.disable"}
!226 = !{!"branch_weights", i32 29422, i32 1}
!227 = !{!228, !180, i64 80}
!228 = !{!"_ZTS11cSimulation", !176, i64 0, !183, i64 36, !183, i64 40, !180, i64 48, !183, i64 56, !180, i64 64, !180, i64 72, !180, i64 80, !180, i64 88, !183, i64 96, !180, i64 104, !180, i64 112, !229, i64 120, !230, i64 128, !180, i64 136, !180, i64 144, !180, i64 152, !231, i64 160}
!229 = !{!"_ZTS7SimTime", !230, i64 0}
!230 = !{!"long", !181, i64 0}
!231 = !{!"_ZTS12cMessageHeap", !177, i64 0, !180, i64 40, !183, i64 48, !183, i64 52, !230, i64 56}
!232 = !{!"branch_weights", i32 0, i32 29422}
!233 = !{!173, !180, i64 128}
!234 = !{!"VP", i32 0, i64 29422, i64 -8265274823861625093, i64 8550, i64 3173085487394358214, i64 5470, i64 2798749748382281577, i64 4924}
!235 = !{!"branch_weights", i32 29422, i32 0}
!236 = distinct !{!236, !224, !225}
!237 = !{!"branch_weights", i32 41966, i32 29422}
!238 = distinct !{!238, !224, !225}
!239 = !{!"branch_weights", i32 0, i32 29423}
!240 = !{!241, !180, i64 40}
!241 = !{!"_ZTS5cGate", !179, i64 0, !180, i64 8, !183, i64 16, !180, i64 24, !180, i64 32, !180, i64 40}
!242 = !{!"branch_weights", i32 80703, i32 32801}
!243 = !{!241, !180, i64 32}
!244 = !{!"branch_weights", i32 32801, i32 0}
!245 = !{!"branch_weights", i32 113504}
!246 = distinct !{!246, !224, !225}
!247 = !{!"branch_weights", i32 84082, i32 29422}
!248 = !{!"VP", i32 0, i64 29423, i64 903573696113973049, i64 29423}
!249 = !{!"VP", i32 0, i64 29422, i64 903573696113973049, i64 29422}
!250 = !{!"branch_weights", i32 5471, i32 23951}
!251 = !{!173, !180, i64 120}
!252 = !{!173, !180, i64 144}
!253 = !{!"branch_weights", i32 20571, i32 8852}
!254 = !{!"function_entry_count", i64 0}
!255 = !{!"function_entry_count", i64 698724}
!256 = !{!"branch_weights", i32 698724, i32 0}
!257 = !{!"branch_weights", i32 0, i32 869676}
!258 = !{!"branch_weights", i32 520314, i32 349362}
!259 = !{!"branch_weights", i32 170952, i32 349362}
!260 = !{!"branch_weights", i32 243124, i32 455600}
!261 = !{!"branch_weights", i32 173032, i32 70092}
!262 = !{!"branch_weights", i32 262846, i32 262846}
!263 = !{!"branch_weights", i32 170952, i32 91894}
!264 = !{!"branch_weights", i32 433798, i32 0}
!265 = !{!"branch_weights", i32 687674, i32 182002}
!266 = !{!"branch_weights", i32 170952, i32 516722}
!267 = distinct !{!267, !224, !225}
!268 = !{!174, !182, i64 82}
!269 = !{!174, !180, i64 88}
!270 = distinct !{!270, !224, !225}
!271 = distinct !{!271, !224, !225}
!272 = !{!"function_entry_count", i64 8852}
!273 = !{!"function_entry_count", i64 38275}
!274 = !{!"branch_weights", i32 38275, i32 0}
!275 = !{!"branch_weights", i32 8852, i32 29423}
!276 = !{!"VP", i32 0, i64 8852, i64 -1846066915438621208, i64 8852}
!277 = !{!"branch_weights", i32 0, i32 8852}
!278 = !{!"branch_weights", i32 8852, i32 34114}
!279 = distinct !{!279, !224, !225}
!280 = !{!"branch_weights", i32 7004, i32 1848}
!281 = !{!"branch_weights", i32 1828, i32 20}
!282 = !{!"branch_weights", i32 0, i32 38275}
!283 = !{!"function_entry_count", i64 29422}
!284 = !{!"VP", i32 0, i64 29422, i64 8477931185142474970, i64 29422}
!285 = !{!"function_entry_count", i64 643082}
!286 = !{!"VP", i32 0, i64 643082, i64 4823069506739400254, i64 643082}
!287 = !{!"branch_weights", i32 0, i32 643082}
!288 = !{!"function_entry_count", i64 325702}
!289 = !{!"branch_weights", i32 165726, i32 159976}
!290 = !{!"VP", i32 0, i64 159976, i64 -1846066915438621208, i64 159976}
!291 = !{!"function_entry_count", i64 1487576}
!292 = !{!"branch_weights", i32 1161874, i32 325702}
!293 = !{!"VP", i32 0, i64 325702, i64 903573696113973049, i64 325702}
!294 = !{!"branch_weights", i32 87510, i32 238192}
!295 = !{!"VP", i32 0, i64 87510, i64 2720038336376758007, i64 87510}
!296 = !{!297, !230, i64 8}
!297 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !298, i64 0, !230, i64 8, !181, i64 16}
!298 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !180, i64 0}
!299 = !{!"VP", i32 0, i64 238192, i64 903573696113973049, i64 238192}
!300 = !{!"VP", i32 0, i64 238192, i64 712553159999434609, i64 238192}
!301 = !{!"branch_weights", i32 0, i32 2138389}
!302 = !{!298, !180, i64 0}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!305 = distinct !{!305, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!306 = !{!297, !180, i64 0}
!307 = !{!"branch_weights", i32 87508, i32 150684}
!308 = !{!"VP", i32 1, i64 87508, i64 9, i64 87508}
!309 = !{!"VP", i32 0, i64 238192, i64 2720038336376758007, i64 238192}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!312 = distinct !{!312, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!313 = !{!"branch_weights", i32 0, i32 238192}
!314 = !{!"branch_weights", i32 1, i32 238191}
!315 = !{!"branch_weights", i32 238192, i32 0}
!316 = !{!230, !230, i64 0}
!317 = !{!"branch_weights", i32 1399683, i32 574359}
!318 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!319 = !{!"VP", i32 1, i64 1198742, i64 17, i64 624996, i64 32, i64 231363, i64 33, i64 197631, i64 8, i64 73924}
!320 = !{!"function_entry_count", i64 109137}
!321 = !{!"function_entry_count", i64 113504}
!322 = !{!"branch_weights", i32 113504, i32 0}
!323 = !{!324, !180, i64 8}
!324 = !{!"_ZTSSt15_Rb_tree_header", !325, i64 0, !230, i64 32}
!325 = !{!"_ZTSSt18_Rb_tree_node_base", !326, i64 0, !180, i64 8, !180, i64 16, !180, i64 24}
!326 = !{!"_ZTSSt14_Rb_tree_color", !181, i64 0}
!327 = !{!"function_entry_count", i64 160148}
!328 = !{!"branch_weights", i32 46644, i32 113504}
!329 = !{!"branch_weights", i32 0, i32 113504}
!330 = !{!"VP", i32 0, i64 113504, i64 4165716452902023311, i64 113504}
!331 = !{!"VP", i32 0, i64 113504, i64 -1657225767424287869, i64 113504}
!332 = !{!"function_entry_count", i64 71388}
!333 = !{!"branch_weights", i32 0, i32 71388}
!334 = !{!"branch_weights", i32 10970, i32 60418}
!335 = !{!"branch_weights", i32 1, i32 10969}
!336 = !{!"branch_weights", i32 5170, i32 5800}
!337 = !{!"branch_weights", i32 13474, i32 19656}
!338 = !{!"branch_weights", i32 22161, i32 10969}
!339 = distinct !{!339, !224, !225}
!340 = !{!"function_entry_count", i64 1}
!341 = !{!"branch_weights", i32 1, i32 0}
!342 = !{!324, !180, i64 16}
!343 = !{!324, !180, i64 24}
!344 = !{!324, !230, i64 32}
!345 = !{!241, !180, i64 8}
!346 = !{!"branch_weights", i32 0, i32 10970}
!347 = !{!"branch_weights", i32 0, i32 60418}
!348 = !{!207, !180, i64 0}
!349 = !{!"branch_weights", i32 71388, i32 65288}
!350 = !{!"VP", i32 1, i64 71388, i64 0, i64 29422, i64 33, i64 23568, i64 65, i64 18398}
!351 = !{!"branch_weights", i32 65288, i32 6100}
!352 = !{!"branch_weights", i32 29422, i32 41966}
!353 = !{!"branch_weights", i32 0, i32 65288}
!354 = !{!"branch_weights", i32 24866, i32 40422}
!355 = !{!"branch_weights", i32 8550, i32 31872}
!356 = !{!"branch_weights", i32 31872, i32 8550}
!357 = distinct !{!357, !224, !225}
!358 = !{!"branch_weights", i32 65288, i32 0}
!359 = distinct !{!359, !224, !225}
!360 = !{!"branch_weights", i32 1, i32 71387}
!361 = !{!"branch_weights", i32 129519, i32 115500}
!362 = !{!"branch_weights", i32 71387, i32 173632}
!363 = distinct !{!363, !224, !225}
!364 = !{!"branch_weights", i32 5, i32 71383}
!365 = !{!"branch_weights", i32 3, i32 71380}
!366 = !{!"branch_weights", i32 8, i32 71380}
!367 = !{!"branch_weights", i32 8, i32 0}
!368 = !{!212, !180, i64 0}
!369 = !{!"branch_weights", i32 56984, i32 14404}
!370 = !{!"function_entry_count", i64 88894}
!371 = !{!"branch_weights", i32 317042033, i32 19696}
!372 = !{!"branch_weights", i32 49591695, i32 267450338}
!373 = !{!"branch_weights", i32 0, i32 267470034, i32 22624, i32 49569071}
!374 = !{!"branch_weights", i32 71387, i32 1}
!375 = !{!"branch_weights", i32 71387, i32 347068691}
!376 = distinct !{!376, !224, !225}
!377 = !{!"branch_weights", i32 0, i32 347140078}
!378 = !{!"branch_weights", i32 267398646, i32 79741432}
!379 = !{!"branch_weights", i32 79741432, i32 267398646}
!380 = !{!"branch_weights", i32 267398646, i32 71388}
!381 = !{!"branch_weights", i32 0, i32 39724}
!382 = distinct !{!382, !224, !225}
!383 = !{!"branch_weights", i32 17100, i32 22624}
!384 = !{!"branch_weights", i32 22624, i32 17100}
!385 = !{!"branch_weights", i32 22624, i32 0}
!386 = !{!"branch_weights", i32 0, i32 49603271}
!387 = distinct !{!387, !224, !225}
!388 = !{!"branch_weights", i32 34200, i32 49569071}
!389 = !{!"branch_weights", i32 49569071, i32 34200}
!390 = !{!"branch_weights", i32 49569071, i32 0}
!391 = !{!"function_entry_count", i64 52798}
!392 = !{!"branch_weights", i32 0, i32 316972835}
!393 = !{!"function_entry_count", i64 202351116}
!394 = !{!"branch_weights", i32 187923219, i32 14427897}
!395 = !{!"branch_weights", i32 187923219, i32 0}
!396 = !{!"branch_weights", i32 0, i32 187923219}
!397 = !{!241, !183, i64 16}
!398 = !{!"branch_weights", i32 14427897, i32 0}
!399 = !{!"branch_weights", i32 0, i32 14427897}
!400 = !{!"branch_weights", i32 71388, i32 0}
!401 = !{!"branch_weights", i32 23322, i32 37096}
!402 = !{!"VP", i32 0, i64 37096, i64 8523063092396505834, i64 37096}
!403 = !{!"branch_weights", i32 37096, i32 0}
!404 = !{!"VP", i32 0, i64 37096, i64 4620296276430227091, i64 37096}
!405 = !{!"branch_weights", i32 23322, i32 13774}
!406 = !{!"function_entry_count", i64 16522}
!407 = !{!"branch_weights", i32 0, i32 16522}
!408 = !{!"branch_weights", i32 16522, i32 0}
!409 = !{!"branch_weights", i32 14864, i32 1658}
!410 = !{!"branch_weights", i32 1599, i32 59}
!411 = !{!"branch_weights", i32 59, i32 0}
!412 = !{!"branch_weights", i32 14042, i32 2480}
!413 = !{!"branch_weights", i32 2403, i32 77}
!414 = !{!"branch_weights", i32 77, i32 0}
!415 = distinct !{!415, !224, !225}
!416 = !{!"branch_weights", i32 5170, i32 11352}
!417 = !{!"branch_weights", i32 6704, i32 16000}
!418 = !{!"VP", i32 1, i64 8000, i64 0, i64 5800, i64 16, i64 630, i64 32, i64 630, i64 33, i64 414}
!419 = !{!"branch_weights", i32 16000, i32 0}
!420 = !{!"VP", i32 1, i64 8000, i64 16, i64 7228, i64 32, i64 520, i64 128, i64 242, i64 257, i64 6}
!421 = !{!"branch_weights", i32 11600, i32 4400}
!422 = !{!"branch_weights", i32 16521, i32 1}
!423 = !{!"VP", i32 0, i64 19656, i64 8523063092396505834, i64 19656}
!424 = !{!"branch_weights", i32 19656, i32 0}
!425 = !{!"VP", i32 0, i64 19656, i64 4620296276430227091, i64 19656}
!426 = !{!"branch_weights", i32 16609, i32 16521}
!427 = distinct !{!427, !224, !225}
!428 = !{!"simulator/cmodule.cc;_ZL12reallocGatevRPP5cGateii"}
!429 = !{!"branch_weights", i32 0, i32 16000}
!430 = !{!"VP", i32 1, i64 0, i64 0, i64 0, i64 16, i64 0, i64 32, i64 0, i64 33, i64 0}
!431 = !{!"VP", i32 1, i64 0, i64 16, i64 0, i64 32, i64 0, i64 128, i64 0, i64 257, i64 0}
!432 = !{!"function_entry_count", i64 1368}
!433 = !{!"branch_weights", i32 1368, i32 0}
!434 = !{!"function_entry_count", i64 316920037}
!435 = !{!"branch_weights", i32 316920037, i32 0}
!436 = !{!"branch_weights", i32 123110509, i32 193809528}
!437 = !{!"branch_weights", i32 193809528, i32 0}
!438 = !{!"branch_weights", i32 187917716, i32 5891812}
!439 = !{!"branch_weights", i32 0, i32 123110509}
!440 = !{!"branch_weights", i32 123110509, i32 0}
!441 = !{!"branch_weights", i32 17346, i32 123093163}
!442 = !{!"function_entry_count", i64 45248}
!443 = !{!"branch_weights", i32 22624, i32 22624}
!444 = !{!"VP", i32 0, i64 45248, i64 4042957260223999037, i64 45248}
!445 = !{!"function_entry_count", i64 984}
!446 = !{!"branch_weights", i32 0, i32 984}
!447 = !{!"branch_weights", i32 984, i32 0}
!448 = !{!449, !180, i64 16}
!449 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !180, i64 0, !180, i64 8, !180, i64 16}
!450 = !{!449, !180, i64 8}
!451 = !{!449, !180, i64 0}
!452 = distinct !{!452, !224, !225}
!453 = distinct !{!453, !224, !225}
!454 = !{!"function_entry_count", i64 6182}
!455 = !{!"branch_weights", i32 6182, i32 0}
!456 = !{!"branch_weights", i32 0, i32 6182}
!457 = distinct !{!457, !224, !225}
!458 = !{!"branch_weights", i32 1, i32 6181}
!459 = !{!"branch_weights", i32 0, i32 12069}
!460 = !{!"branch_weights", i32 0, i32 145660761}
!461 = !{!"branch_weights", i32 12069, i32 0}
!462 = !{!"branch_weights", i32 5888, i32 6181}
!463 = distinct !{!463, !224, !225}
!464 = !{!"VP", i32 0, i64 6182, i64 -2936499215978827596, i64 6182}
!465 = distinct !{!465, !224, !225}
!466 = distinct !{!466, !224, !225}
!467 = distinct !{!467, !224, !225}
!468 = !{!"function_entry_count", i64 5471}
!469 = !{!"branch_weights", i32 5470, i32 1}
!470 = !{!"branch_weights", i32 1, i32 5470}
!471 = !{!"branch_weights", i32 0, i32 17700}
!472 = !{!"branch_weights", i32 17700, i32 0}
!473 = !{!"branch_weights", i32 12230, i32 5470}
!474 = distinct !{!474, !224, !225}
!475 = !{!"branch_weights", i32 29421, i32 1}
!476 = !{!"branch_weights", i32 5470, i32 23952}
!477 = distinct !{!477, !224, !225}
!478 = !{!"branch_weights", i32 84083, i32 29421}
!479 = distinct !{!479, !224, !225}
!480 = distinct !{!480, !224, !225}
!481 = !{!"function_entry_count", i64 1074529}
!482 = !{!"VP", i32 0, i64 1074529, i64 -1846066915438621208, i64 609323, i64 8390818187414654894, i64 396372, i64 -3513973037635291526, i64 68833}
!483 = !{!"branch_weights", i32 0, i32 2470429}
!484 = !{!"function_entry_count", i64 9840}
!485 = !{!"branch_weights", i32 0, i32 1}
!486 = !{!"VP", i32 0, i64 1395900, i64 -1846066915438621208, i64 791559, i64 8390818187414654894, i64 514919, i64 -3513973037635291526, i64 89420}
!487 = !{!"branch_weights", i32 9840, i32 1386060}
!488 = !{!"branch_weights", i32 9840, i32 0}
!489 = !{!"branch_weights", i32 0, i32 9840}
!490 = !{!"branch_weights", i32 0, i32 1395900}
!491 = distinct !{!491, !224, !225}
!492 = distinct !{!492, !224, !225}
!493 = !{!"function_entry_count", i64 4934}
!494 = !{!"branch_weights", i32 0, i32 4934}
!495 = distinct !{!495, !224, !225}
!496 = !{!"VP", i32 0, i64 29423, i64 2693964200771973158, i64 29423}
!497 = !{!178, !182, i64 16}
!498 = !{!"VP", i32 0, i64 29423, i64 -1358596959212599064, i64 23952, i64 -2339468322438546162, i64 5471}
!499 = distinct !{!499, !224, !225}
!500 = !{!"VP", i32 0, i64 1, i64 3173085487394358214, i64 1}
!501 = distinct !{!501, !224, !225}
!502 = distinct !{!502, !224, !225}
!503 = !{!"branch_weights", i32 1, i32 1}
!504 = !{!"VP", i32 0, i64 1, i64 -6428313771886367534, i64 1}
!505 = !{!"branch_weights", i32 2, i32 0}
!506 = !{!"VP", i32 0, i64 2, i64 -3510181417708079216, i64 2}
!507 = !{!"branch_weights", i32 1, i32 2}
!508 = distinct !{!508, !224, !225}
!509 = !{!228, !183, i64 96}
!510 = !{!"branch_weights", i32 58846, i32 0}
!511 = !{!512, !180, i64 8}
!512 = !{!"_ZTSNSt12_Vector_baseIP8cChannelSaIS1_EE17_Vector_impl_dataE", !180, i64 0, !180, i64 8, !180, i64 16}
!513 = !{!512, !180, i64 0}
!514 = !{!515, !183, i64 24}
!515 = !{!"_ZTSN7cModule15ChannelIteratorE", !516, i64 0, !183, i64 24}
!516 = !{!"_ZTSSt6vectorIP8cChannelSaIS1_EE", !517, i64 0}
!517 = !{!"_ZTSSt12_Vector_baseIP8cChannelSaIS1_EE", !518, i64 0}
!518 = !{!"_ZTSNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implE", !512, i64 0}
!519 = !{!"branch_weights", i32 19661, i32 9762}
!520 = !{!"branch_weights", i32 29122, i32 301}
!521 = !{!"VP", i32 0, i64 9762, i64 5839372009215239754, i64 9762}
!522 = !{!"branch_weights", i32 0, i32 9762}
!523 = !{!"branch_weights", i32 9762, i32 0}
!524 = distinct !{!524, !224, !225}
!525 = !{!"VP", i32 0, i64 29422, i64 -6428313771886367534, i64 29422}
!526 = distinct !{!526, !224, !225}
!527 = !{!"function_entry_count", i64 58846}
!528 = !{!"branch_weights", i32 29423, i32 29423}
!529 = !{!"VP", i32 0, i64 58846, i64 4160559986605887891, i64 48998, i64 1908352654673172577, i64 9848}
!530 = !{!"branch_weights", i32 34347, i32 24499}
!531 = !{!"branch_weights", i32 34347, i32 0}
!532 = !{!"VP", i32 0, i64 34347, i64 -7289409267474522448, i64 24499, i64 351361098732361116, i64 9848}
!533 = !{!"branch_weights", i32 2, i32 58844}
!534 = !{!"VP", i32 0, i64 58844, i64 -3510181417708079216, i64 58844}
!535 = !{!"branch_weights", i32 10148, i32 48696}
!536 = !{!"branch_weights", i32 58844, i32 0}
!537 = distinct !{!537, !224, !225}
!538 = !{!"VP", i32 0, i64 9762, i64 2289117655070331827, i64 9762}
!539 = distinct !{!539, !224, !225}
!540 = !{!"VP", i32 0, i64 29422, i64 -1205116461865144208, i64 29422}
!541 = distinct !{!541, !224, !225}
!542 = !{!"VP", i32 0, i64 29423, i64 6143921863443203653, i64 29423}
!543 = !{!"VP", i32 0, i64 29423, i64 -7356043800151478954, i64 8550, i64 -2958117250217189417, i64 5471, i64 -4621555754606343275, i64 4924}
!544 = !{!"branch_weights", i32 1568400, i32 0}
!545 = !{!"branch_weights", i32 0, i32 58846}
!546 = !{!"branch_weights", i32 58846, i32 58844}
!547 = !{!"branch_weights", i32 117689, i32 1}
!548 = !{!"branch_weights", i32 58844, i32 58846}
!549 = distinct !{!549, !224, !225}
!550 = !{!"branch_weights", i32 0, i32 454016}
!551 = !{!241, !180, i64 24}
!552 = !{!"branch_weights", i32 414968, i32 39048}
!553 = !{!"branch_weights", i32 19524, i32 19524}
!554 = !{!512, !180, i64 16}
!555 = !{!"branch_weights", i32 3966, i32 15558}
!556 = !{!"branch_weights", i32 0, i32 3966}
!557 = !{!"branch_weights", i32 3364, i32 602}
!558 = !{!"VP", i32 1, i64 3364, i64 8, i64 602, i64 16, i64 602, i64 32, i64 602, i64 64, i64 602}
!559 = !{!"branch_weights", i32 602, i32 3364}
!560 = !{!"branch_weights", i32 336327, i32 117689}
!561 = distinct !{!561, !224, !225}
!562 = !{!"function_entry_count", i64 192538233}
!563 = !{!178, !180, i64 8}
!564 = !{!"branch_weights", i32 0, i32 192538233}
!565 = !{!"function_entry_count", i64 542987320}
!566 = !{!177, !180, i64 24}
!567 = !{!"function_entry_count", i64 147484992}
!568 = !{!"function_entry_count", i64 34261}
!569 = !{!"branch_weights", i32 34261, i32 0}
!570 = !{!"VP", i32 0, i64 34261, i64 -5034543447025417462, i64 15233, i64 1541411220275178054, i64 8550, i64 6640289822870487726, i64 4924}
!571 = !{!"function_entry_count", i64 58760}
!572 = !{!"function_entry_count", i64 524615}
!573 = !{!"function_entry_count", i64 420856}
!574 = !{!"function_entry_count", i64 23952}
!575 = !{!576, !183, i64 8}
!576 = !{!"_ZTS10cException", !577, i64 0, !183, i64 8, !297, i64 16, !191, i64 48, !297, i64 56, !297, i64 88, !183, i64 120}
!577 = !{!"_ZTSSt9exception"}
!578 = !{!579}
!579 = distinct !{!579, !580, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!580 = distinct !{!580, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!581 = !{!582}
!582 = distinct !{!582, !583, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!583 = distinct !{!583, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!584 = !{!576, !191, i64 48}
!585 = !{!576, !183, i64 120}
!586 = !{!"branch_weights", i32 1257662, i32 631781}
!587 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!588 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!589 = !{!"function_entry_count", i64 9}
!590 = !{!"branch_weights", i32 1, i32 8}
!591 = !{!325, !180, i64 24}
!592 = !{!325, !180, i64 16}
!593 = distinct !{!593, !224, !225}
!594 = !{!"function_entry_count", i64 8}
!595 = !{!"branch_weights", i32 6, i32 2}
!596 = !{!"branch_weights", i32 0, i32 8}
!597 = !{!"branch_weights", i32 1, i32 127}
!598 = !{!"branch_weights", i32 4, i32 13}
!599 = !{!"branch_weights", i32 127, i32 145}
!600 = distinct !{!600, !224, !225}
!601 = !{!"branch_weights", i32 2, i32 6}
!602 = !{!"branch_weights", i32 7, i32 0}
!603 = !{!"branch_weights", i32 1, i32 7}
!604 = !{!605, !180, i64 0}
!605 = !{!"_ZTSNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeE", !180, i64 0}
!606 = !{!"function_entry_count", i64 40}
!607 = !{!"branch_weights", i32 12, i32 28}
!608 = !{!"branch_weights", i32 0, i32 28}
!609 = !{!"function_entry_count", i64 11}
!610 = !{!"branch_weights", i32 0, i32 11}
!611 = !{!"branch_weights", i32 11, i32 0}
!612 = !{!"function_entry_count", i64 27}
!613 = !{!"branch_weights", i32 0, i32 27}
!614 = distinct !{!614, !224, !225}
!615 = distinct !{!615, !224, !225}
!616 = !{!617, !180, i64 0}
!617 = !{!"_ZTS28less_gatePairConnectedInside", !180, i64 0}
!618 = !{!"simulator/cmodule.cc;_GLOBAL__sub_I_cmodule.cc"}
!619 = !{!324, !326, i64 0}
