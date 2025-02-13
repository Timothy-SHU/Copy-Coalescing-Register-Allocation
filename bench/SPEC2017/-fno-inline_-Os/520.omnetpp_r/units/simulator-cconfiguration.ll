; ModuleID = 'simulator/cconfiguration.cc'
source_filename = "simulator/cconfiguration.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon }
%union.anon = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.FilenamesListTokenizer = type { ptr, ptr }
%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%class.cConfigOption = type { %class.cNoncopyableOwnedObject.base, i8, i8, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%struct._Guard = type { ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_Z8fallbackPKcS0_S0_ = comdat any

$_ZNK13cConfigOption15getDefaultValueEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK13cConfigOption7getUnitEv = comdat any

$_ZN14cConfigurationD0Ev = comdat any

$_ZNK7cObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK7cObject8getOwnerEv = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev = comdat any

$_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZNK13cConfigOption11isPerObjectEv = comdat any

$_ZNK13cConfigOption7getTypeEv = comdat any

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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

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

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_ = comdat any

$_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_ = comdat any

$_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_ = comdat any

$_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_ = comdat any

$_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_ = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV17opp_runtime_error = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"`%s' is not a valid boolean value, use true/false\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c":;\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@_ZTISt9exception = external constant ptr
@.str.10 = private unnamed_addr constant [52 x i8] c"Error getting option %s= from the configuration: %s\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTV14cConfiguration = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI14cConfiguration, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cObjectD2Ev, ptr @_ZN14cConfigurationD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN14cConfiguration11getAsCustomEP13cConfigOptionPKc, ptr @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb, ptr @_ZN14cConfiguration8getAsIntEP13cConfigOptionl, ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc, ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_, ptr @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb, ptr @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl, ptr @_ZN14cConfiguration11getAsDoubleEPKcP13cConfigOptiond, ptr @_ZN14cConfiguration11getAsStringB5cxx11EPKcP13cConfigOptionS1_, ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EPKcP13cConfigOption, ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EPKcP13cConfigOption, ptr @_ZN14cConfiguration9getAsPathB5cxx11EPKcP13cConfigOption] }, align 8
@_ZTS14cConfiguration = dso_local constant [17 x i8] c"14cConfiguration\00", align 1
@_ZTI7cObject = external constant ptr
@_ZTI14cConfiguration = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14cConfiguration, ptr @_ZTI7cObject }, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@.str.11 = private unnamed_addr constant [91 x i8] c"Option %s= is read from the configuration in the wrong way: it is per-object configuration\00", align 1
@.str.12 = private unnamed_addr constant [104 x i8] c"Option %s= is read from the configuration in the wrong way: it is global (not per-object) configuration\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"Option %s= is read from the configuration with the wrong type (type=%s, actual=%s)\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cconfiguration.cc, ptr null }]

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cConfiguration9parseBoolEPKcS1_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !176 {
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr %1, ptr %0, !prof !177
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !178

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10, !prof !178

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.1) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13, !prof !179

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(3) @.str.2) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16, !prof !180

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(6) @.str.3) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !181

19:                                               ; preds = %16
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #15
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #18
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #16
  resume { ptr, i32 } %23

24:                                               ; preds = %13, %16, %7, %10, %3
  %25 = phi i1 [ %2, %3 ], [ true, %10 ], [ true, %7 ], [ false, %16 ], [ false, %13 ]
  ret i1 %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !183
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN14cConfiguration9parseLongEPKcS1_l(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 !prof !186 {
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr %1, ptr %0, !prof !187
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !188

7:                                                ; preds = %3
  %8 = tail call noundef i64 @_Z8opp_atolPKc(ptr noundef nonnull %5) #15
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i64 [ %8, %7 ], [ %2, %3 ]
  ret i64 %10
}

; Function Attrs: optsize
declare noundef i64 @_Z8opp_atolPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN14cConfiguration11parseDoubleEPKcS1_S1_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) local_unnamed_addr #4 align 2 !prof !189 {
  %5 = icmp eq ptr %0, null
  %6 = select i1 %5, ptr %2, ptr %0, !prof !190
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !191

8:                                                ; preds = %4
  %9 = tail call noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef nonnull %6, ptr noundef %1) #15
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi double [ %9, %8 ], [ %3, %4 ]
  ret double %11
}

; Function Attrs: optsize
declare noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !192 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::allocator", align 1
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr %2, ptr %1, !prof !193
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14, !prof !194

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %11 unwind label %12

11:                                               ; preds = %10
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %22

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %23

14:                                               ; preds = %4
  %15 = load i8, ptr %8, align 1, !tbaa !195
  %16 = icmp eq i8 %15, 34
  br i1 %16, label %17, label %18, !prof !197

17:                                               ; preds = %14
  tail call void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %8) #15
  br label %22

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %8, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %19 unwind label %20

19:                                               ; preds = %18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %22

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %23

22:                                               ; preds = %19, %17, %11
  ret void

23:                                               ; preds = %20, %12
  %24 = phi { ptr, i32 } [ %21, %20 ], [ %13, %12 ]
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #20
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #15
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr %3, ptr %1, !prof !199
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !200

10:                                               ; preds = %4
  %11 = load i8, ptr %8, align 1, !tbaa !195
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17, !prof !201

13:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %14 unwind label %15

14:                                               ; preds = %13
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %22

15:                                               ; preds = %13
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %23

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %2, ptr noundef nonnull %8) #15
  %18 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %18, i1 noundef zeroext false) #15
          to label %19 unwind label %20

19:                                               ; preds = %17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %23

22:                                               ; preds = %19, %14
  ret void

23:                                               ; preds = %20, %15
  %24 = phi { ptr, i32 } [ %21, %20 ], [ %16, %15 ]
  resume { ptr, i32 } %24
}

; Function Attrs: optsize
declare void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %5 = alloca %class.FilenamesListTokenizer, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr %3, ptr %1, !prof !203
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.5, ptr %15, !prof !203
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  invoke void @_ZN22FilenamesListTokenizerC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %17) #15
          to label %18 unwind label %36

18:                                               ; preds = %4, %60
  %19 = invoke noundef ptr @_ZN22FilenamesListTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
          to label %20 unwind label %38

20:                                               ; preds = %18
  %21 = icmp eq ptr %19, null
  br i1 %21, label %90, label %22, !prof !203

22:                                               ; preds = %20
  %23 = load i8, ptr %19, align 1, !tbaa !195
  %24 = icmp eq i8 %23, 64
  br i1 %24, label %25, label %75

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !195
  %28 = icmp eq i8 %27, 64
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  %30 = getelementptr inbounds i8, ptr %19, i64 2
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %2, ptr noundef nonnull %30) #15
          to label %31 unwind label %40

31:                                               ; preds = %29
  %32 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %32, i1 noundef zeroext false) #15
          to label %33 unwind label %42

33:                                               ; preds = %31
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %7) #15
          to label %34 unwind label %44

34:                                               ; preds = %33
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %35 unwind label %46

35:                                               ; preds = %34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %60

36:                                               ; preds = %4
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %93

38:                                               ; preds = %18
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %91

40:                                               ; preds = %29
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %52

42:                                               ; preds = %31
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %50

44:                                               ; preds = %33
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %48

46:                                               ; preds = %34
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %43, %42 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %91

54:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %2, ptr noundef nonnull %26) #15
          to label %55 unwind label %61

55:                                               ; preds = %54
  %56 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %56, i1 noundef zeroext false) #15
          to label %57 unwind label %63

57:                                               ; preds = %55
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %10) #15
          to label %58 unwind label %65

58:                                               ; preds = %57
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %9) #15
          to label %59 unwind label %67

59:                                               ; preds = %58
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  br label %60

60:                                               ; preds = %59, %79, %35
  br label %18, !llvm.loop !204

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %73

63:                                               ; preds = %55
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %71

65:                                               ; preds = %57
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %69

67:                                               ; preds = %58
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %64, %63 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  br label %91

75:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #16
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %2, ptr noundef nonnull %19) #15
          to label %76 unwind label %80

76:                                               ; preds = %75
  %77 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %77, i1 noundef zeroext false) #15
          to label %78 unwind label %82

78:                                               ; preds = %76
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
          to label %79 unwind label %84

79:                                               ; preds = %78
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %60

80:                                               ; preds = %75
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %88

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %86

84:                                               ; preds = %78
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %83, %82 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %91

90:                                               ; preds = %20
  call void @_ZN22FilenamesListTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret void

91:                                               ; preds = %88, %73, %52, %38
  %92 = phi { ptr, i32 } [ %53, %52 ], [ %74, %73 ], [ %89, %88 ], [ %39, %38 ]
  call void @_ZN22FilenamesListTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  br label %93

93:                                               ; preds = %91, %36
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %94
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !206 {
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZN22FilenamesListTokenizerC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN22FilenamesListTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !207 {
  %3 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !182 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, ptr noundef %1) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN22FilenamesListTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !209
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %5 = alloca %class.StringTokenizer, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, ptr %3, ptr %1, !prof !213
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.5, ptr %9, !prof !213
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #16
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %11, ptr noundef nonnull @.str.8) #15
          to label %12 unwind label %21

12:                                               ; preds = %4, %30
  %13 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #15
          to label %14 unwind label %23

14:                                               ; preds = %12
  %15 = icmp eq ptr %13, null
  br i1 %15, label %41, label %16, !prof !214

16:                                               ; preds = %14
  %17 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19, !prof !203

19:                                               ; preds = %16
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.9) #15
          to label %25 unwind label %23

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %44

23:                                               ; preds = %19, %12
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %42

25:                                               ; preds = %19, %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %2, ptr noundef nonnull %13) #15
          to label %26 unwind label %31

26:                                               ; preds = %25
  %27 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %27, i1 noundef zeroext false) #15
          to label %28 unwind label %33

28:                                               ; preds = %26
  %29 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #15
          to label %30 unwind label %35

30:                                               ; preds = %28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %12, !llvm.loop !215

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %39

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %37

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %42

41:                                               ; preds = %14
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #16
  ret void

42:                                               ; preds = %39, %23
  %43 = phi { ptr, i32 } [ %40, %39 ], [ %24, %23 ]
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  br label %44

44:                                               ; preds = %42, %21
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: optsize
declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: nounwind optsize
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN14cConfiguration11getAsCustomEP13cConfigOptionPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 7) #15
  %4 = load ptr, ptr %1, align 8, !tbaa !183
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %8 unwind label %21

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #15
          to label %13 unwind label %21

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %15 = load ptr, ptr %0, align 8, !tbaa !183
  %16 = getelementptr inbounds ptr, ptr %15, i64 19
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %14) #15
          to label %19 unwind label %21

19:                                               ; preds = %13
  %20 = tail call noundef ptr @_Z8fallbackPKcS0_S0_(ptr noundef %12, ptr noundef %18, ptr noundef %2) #15
  ret ptr %20

21:                                               ; preds = %13, %8, %3
  %22 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %23 = extractvalue { ptr, i32 } %22, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = extractvalue { ptr, i32 } %22, 0
  %28 = tail call ptr @__cxa_begin_catch(ptr %27) #16
  %29 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %30 = load ptr, ptr %1, align 8, !tbaa !183
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %34 unwind label %40

34:                                               ; preds = %26
  %35 = load ptr, ptr %28, align 8, !tbaa !183
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %28) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %29, ptr noundef nonnull @.str.10, ptr noundef %33, ptr noundef %38) #15
          to label %39 unwind label %40

39:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %51 unwind label %42

40:                                               ; preds = %34, %26
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %29) #16
  br label %44

42:                                               ; preds = %39
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  invoke void @__cxa_end_catch()
          to label %46 unwind label %48

46:                                               ; preds = %44, %21
  %47 = phi { ptr, i32 } [ %22, %21 ], [ %45, %44 ]
  resume { ptr, i32 } %47

48:                                               ; preds = %44
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #21
  unreachable

51:                                               ; preds = %39
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef nonnull %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !216 !PGOFuncName !217 {
  %4 = tail call noundef zeroext i1 @_ZNK13cConfigOption11isPerObjectEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #15
  %5 = xor i1 %4, %1
  br i1 %5, label %6, label %24, !prof !218

6:                                                ; preds = %3
  %7 = tail call noundef zeroext i1 @_ZNK13cConfigOption11isPerObjectEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #15
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  br i1 %7, label %12, label %18

12:                                               ; preds = %6
  %13 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(20) %0) #15
          to label %14 unwind label %16

14:                                               ; preds = %12
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull @.str.11, ptr noundef %13) #15
          to label %15 unwind label %16

15:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

16:                                               ; preds = %14, %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %43

18:                                               ; preds = %6
  %19 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(20) %0) #15
          to label %20 unwind label %22

20:                                               ; preds = %18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull @.str.12, ptr noundef %19) #15
          to label %21 unwind label %22

21:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

22:                                               ; preds = %20, %18
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %43

24:                                               ; preds = %3
  %25 = tail call noundef i32 @_ZNK13cConfigOption7getTypeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #15
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %42, label %27, !prof !219

27:                                               ; preds = %24
  %28 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %29 = load ptr, ptr %0, align 8, !tbaa !183
  %30 = getelementptr inbounds ptr, ptr %29, i64 6
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(20) %0) #15
          to label %33 unwind label %40

33:                                               ; preds = %27
  %34 = invoke noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %2) #15
          to label %35 unwind label %40

35:                                               ; preds = %33
  %36 = tail call noundef i32 @_ZNK13cConfigOption7getTypeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #15
  %37 = invoke noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %36) #15
          to label %38 unwind label %40

38:                                               ; preds = %35
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %28, ptr noundef nonnull @.str.13, ptr noundef %32, ptr noundef %34, ptr noundef %37) #15
          to label %39 unwind label %40

39:                                               ; preds = %38
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

40:                                               ; preds = %38, %35, %33, %27
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %43

42:                                               ; preds = %24
  ret void

43:                                               ; preds = %40, %22, %16
  %44 = phi ptr [ %28, %40 ], [ %8, %22 ], [ %8, %16 ]
  %45 = phi { ptr, i32 } [ %41, %40 ], [ %23, %22 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %44) #16
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z8fallbackPKcS0_S0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !220 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr %2, ptr %1
  %7 = select i1 %4, ptr %6, ptr %0, !prof !221
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #6 comdat align 2 !prof !222 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5
  %3 = tail call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br i1 %3, label %6, label %4, !prof !223

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !224 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0) #15
  %4 = load ptr, ptr %1, align 8, !tbaa !183
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %8 unwind label %22

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #15
          to label %13 unwind label %22

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %15 = load ptr, ptr %0, align 8, !tbaa !183
  %16 = getelementptr inbounds ptr, ptr %15, i64 19
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %14) #15
          to label %19 unwind label %22

19:                                               ; preds = %13
  %20 = invoke noundef zeroext i1 @_ZN14cConfiguration9parseBoolEPKcS1_b(ptr noundef %12, ptr noundef %18, i1 noundef zeroext %2) #15
          to label %21 unwind label %22

21:                                               ; preds = %19
  ret i1 %20

22:                                               ; preds = %19, %13, %8, %3
  %23 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %24 = extractvalue { ptr, i32 } %23, 1
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = extractvalue { ptr, i32 } %23, 0
  %29 = tail call ptr @__cxa_begin_catch(ptr %28) #16
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %31 = load ptr, ptr %1, align 8, !tbaa !183
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %35 unwind label %41

35:                                               ; preds = %27
  %36 = load ptr, ptr %29, align 8, !tbaa !183
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.10, ptr noundef %34, ptr noundef %39) #15
          to label %40 unwind label %41

40:                                               ; preds = %35
  invoke void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %52 unwind label %43

41:                                               ; preds = %35, %27
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #16
  br label %45

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  invoke void @__cxa_end_catch()
          to label %47 unwind label %49

47:                                               ; preds = %45, %22
  %48 = phi { ptr, i32 } [ %23, %22 ], [ %46, %45 ]
  resume { ptr, i32 } %48

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #21
  unreachable

52:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN14cConfiguration8getAsIntEP13cConfigOptionl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !225 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 1) #15
  %4 = load ptr, ptr %1, align 8, !tbaa !183
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %8 unwind label %22

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #15
          to label %13 unwind label %22

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %15 = load ptr, ptr %0, align 8, !tbaa !183
  %16 = getelementptr inbounds ptr, ptr %15, i64 19
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %14) #15
          to label %19 unwind label %22

19:                                               ; preds = %13
  %20 = invoke noundef i64 @_ZN14cConfiguration9parseLongEPKcS1_l(ptr noundef %12, ptr noundef %18, i64 noundef %2) #15
          to label %21 unwind label %22

21:                                               ; preds = %19
  ret i64 %20

22:                                               ; preds = %19, %13, %8, %3
  %23 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %24 = extractvalue { ptr, i32 } %23, 1
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = extractvalue { ptr, i32 } %23, 0
  %29 = tail call ptr @__cxa_begin_catch(ptr %28) #16
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %31 = load ptr, ptr %1, align 8, !tbaa !183
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %35 unwind label %41

35:                                               ; preds = %27
  %36 = load ptr, ptr %29, align 8, !tbaa !183
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.10, ptr noundef %34, ptr noundef %39) #15
          to label %40 unwind label %41

40:                                               ; preds = %35
  invoke void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %52 unwind label %43

41:                                               ; preds = %35, %27
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #16
  br label %45

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  invoke void @__cxa_end_catch()
          to label %47 unwind label %49

47:                                               ; preds = %45, %22
  %48 = phi { ptr, i32 } [ %23, %22 ], [ %46, %45 ]
  resume { ptr, i32 } %48

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #21
  unreachable

52:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, double noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !189 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 2) #15
  %4 = load ptr, ptr %1, align 8, !tbaa !183
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %8 unwind label %23

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #15
          to label %13 unwind label %23

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %15 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !183
  %17 = getelementptr inbounds ptr, ptr %16, i64 19
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %15) #15
          to label %20 unwind label %23

20:                                               ; preds = %13
  %21 = invoke noundef double @_ZN14cConfiguration11parseDoubleEPKcS1_S1_d(ptr noundef %12, ptr noundef %14, ptr noundef %19, double noundef %2) #15
          to label %22 unwind label %23

22:                                               ; preds = %20
  ret double %21

23:                                               ; preds = %20, %13, %8, %3
  %24 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #16
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %32 = load ptr, ptr %1, align 8, !tbaa !183
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %36 unwind label %42

36:                                               ; preds = %28
  %37 = load ptr, ptr %30, align 8, !tbaa !183
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %30) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.10, ptr noundef %35, ptr noundef %40) #15
          to label %41 unwind label %42

41:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %53 unwind label %44

42:                                               ; preds = %36, %28
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #16
  br label %46

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  invoke void @__cxa_end_catch()
          to label %48 unwind label %50

48:                                               ; preds = %46, %23
  %49 = phi { ptr, i32 } [ %24, %23 ], [ %47, %46 ]
  resume { ptr, i32 } %49

50:                                               ; preds = %46
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #21
  unreachable

53:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #6 comdat align 2 !prof !189 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4
  %3 = tail call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br i1 %3, label %6, label %4, !prof !197

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !192 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 3) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %9 unwind label %22

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !183
  %11 = getelementptr inbounds ptr, ptr %10, i64 20
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8) #15
          to label %14 unwind label %22

14:                                               ; preds = %9
  %15 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %16 = load ptr, ptr %1, align 8, !tbaa !183
  %17 = getelementptr inbounds ptr, ptr %16, i64 19
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %15) #15
          to label %20 unwind label %22

20:                                               ; preds = %14
  invoke void @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %13, ptr noundef %19, ptr noundef %3) #15
          to label %21 unwind label %22

21:                                               ; preds = %20
  ret void

22:                                               ; preds = %20, %14, %9, %4
  %23 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %24 = extractvalue { ptr, i32 } %23, 1
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = extractvalue { ptr, i32 } %23, 0
  %29 = tail call ptr @__cxa_begin_catch(ptr %28) #16
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %31 = load ptr, ptr %2, align 8, !tbaa !183
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %35 unwind label %41

35:                                               ; preds = %27
  %36 = load ptr, ptr %29, align 8, !tbaa !183
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.10, ptr noundef %34, ptr noundef %39) #15
          to label %40 unwind label %41

40:                                               ; preds = %35
  invoke void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %52 unwind label %43

41:                                               ; preds = %35, %27
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #16
  br label %45

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  invoke void @__cxa_end_catch()
          to label %47 unwind label %49

47:                                               ; preds = %45, %22
  %48 = phi { ptr, i32 } [ %23, %22 ], [ %46, %45 ]
  resume { ptr, i32 } %48

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #21
  unreachable

52:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 4) #15
  %4 = load ptr, ptr %2, align 8, !tbaa !183
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
  %8 = load ptr, ptr %1, align 8, !tbaa !183
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #15
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %16 unwind label %29

16:                                               ; preds = %3
  %17 = load ptr, ptr %11, align 8, !tbaa !183
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %21 unwind label %29

21:                                               ; preds = %16
  %22 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %23 = load ptr, ptr %1, align 8, !tbaa !183
  %24 = getelementptr inbounds ptr, ptr %23, i64 19
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %22) #15
          to label %27 unwind label %29

27:                                               ; preds = %21
  invoke void @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15, ptr noundef %20, ptr noundef %26) #15
          to label %28 unwind label %29

28:                                               ; preds = %27
  ret void

29:                                               ; preds = %27, %21, %16, %3
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = tail call ptr @__cxa_begin_catch(ptr %35) #16
  %37 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %38 = load ptr, ptr %2, align 8, !tbaa !183
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %42 unwind label %48

42:                                               ; preds = %34
  %43 = load ptr, ptr %36, align 8, !tbaa !183
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %36) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull @.str.10, ptr noundef %41, ptr noundef %46) #15
          to label %47 unwind label %48

47:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %59 unwind label %50

48:                                               ; preds = %42, %34
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #16
  br label %52

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  invoke void @__cxa_end_catch()
          to label %54 unwind label %56

54:                                               ; preds = %52, %29
  %55 = phi { ptr, i32 } [ %30, %29 ], [ %53, %52 ]
  resume { ptr, i32 } %55

56:                                               ; preds = %52
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %47
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 5) #15
  %4 = load ptr, ptr %2, align 8, !tbaa !183
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
  %8 = load ptr, ptr %1, align 8, !tbaa !183
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #15
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %16 unwind label %29

16:                                               ; preds = %3
  %17 = load ptr, ptr %11, align 8, !tbaa !183
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %21 unwind label %29

21:                                               ; preds = %16
  %22 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %23 = load ptr, ptr %1, align 8, !tbaa !183
  %24 = getelementptr inbounds ptr, ptr %23, i64 19
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %22) #15
          to label %27 unwind label %29

27:                                               ; preds = %21
  invoke void @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef %15, ptr noundef %20, ptr noundef %26) #15
          to label %28 unwind label %29

28:                                               ; preds = %27
  ret void

29:                                               ; preds = %27, %21, %16, %3
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = tail call ptr @__cxa_begin_catch(ptr %35) #16
  %37 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %38 = load ptr, ptr %2, align 8, !tbaa !183
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %42 unwind label %48

42:                                               ; preds = %34
  %43 = load ptr, ptr %36, align 8, !tbaa !183
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %36) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull @.str.10, ptr noundef %41, ptr noundef %46) #15
          to label %47 unwind label %48

47:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %59 unwind label %50

48:                                               ; preds = %42, %34
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #16
  br label %52

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  invoke void @__cxa_end_catch()
          to label %54 unwind label %56

54:                                               ; preds = %52, %29
  %55 = phi { ptr, i32 } [ %30, %29 ], [ %53, %52 ]
  resume { ptr, i32 } %55

56:                                               ; preds = %52
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %47
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 6) #15
  %4 = load ptr, ptr %2, align 8, !tbaa !183
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
  %8 = load ptr, ptr %1, align 8, !tbaa !183
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #15
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %16 unwind label %29

16:                                               ; preds = %3
  %17 = load ptr, ptr %11, align 8, !tbaa !183
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %11) #15
          to label %21 unwind label %29

21:                                               ; preds = %16
  %22 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %23 = load ptr, ptr %1, align 8, !tbaa !183
  %24 = getelementptr inbounds ptr, ptr %23, i64 19
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %22) #15
          to label %27 unwind label %29

27:                                               ; preds = %21
  invoke void @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15, ptr noundef %20, ptr noundef %26) #15
          to label %28 unwind label %29

28:                                               ; preds = %27
  ret void

29:                                               ; preds = %27, %21, %16, %3
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = tail call ptr @__cxa_begin_catch(ptr %35) #16
  %37 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %38 = load ptr, ptr %2, align 8, !tbaa !183
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %42 unwind label %48

42:                                               ; preds = %34
  %43 = load ptr, ptr %36, align 8, !tbaa !183
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %36) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull @.str.10, ptr noundef %41, ptr noundef %46) #15
          to label %47 unwind label %48

47:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %59 unwind label %50

48:                                               ; preds = %42, %34
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #16
  br label %52

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  invoke void @__cxa_end_catch()
          to label %54 unwind label %56

54:                                               ; preds = %52, %29
  %55 = phi { ptr, i32 } [ %30, %29 ], [ %53, %52 ]
  resume { ptr, i32 } %55

56:                                               ; preds = %52
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #21
  unreachable

59:                                               ; preds = %47
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 7) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %9 unwind label %22

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !183
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8) #15
          to label %14 unwind label %22

14:                                               ; preds = %9
  %15 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !183
  %17 = getelementptr inbounds ptr, ptr %16, i64 19
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %15) #15
          to label %20 unwind label %22

20:                                               ; preds = %14
  %21 = tail call noundef ptr @_Z8fallbackPKcS0_S0_(ptr noundef %13, ptr noundef %19, ptr noundef %3) #15
  ret ptr %21

22:                                               ; preds = %14, %9, %4
  %23 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %24 = extractvalue { ptr, i32 } %23, 1
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = extractvalue { ptr, i32 } %23, 0
  %29 = tail call ptr @__cxa_begin_catch(ptr %28) #16
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %31 = load ptr, ptr %2, align 8, !tbaa !183
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %35 unwind label %41

35:                                               ; preds = %27
  %36 = load ptr, ptr %29, align 8, !tbaa !183
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.10, ptr noundef %34, ptr noundef %39) #15
          to label %40 unwind label %41

40:                                               ; preds = %35
  invoke void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %52 unwind label %43

41:                                               ; preds = %35, %27
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #16
  br label %45

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  invoke void @__cxa_end_catch()
          to label %47 unwind label %49

47:                                               ; preds = %45, %22
  %48 = phi { ptr, i32 } [ %23, %22 ], [ %46, %45 ]
  resume { ptr, i32 } %48

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #21
  unreachable

52:                                               ; preds = %40
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !226 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 0) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %9 unwind label %23

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !183
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8) #15
          to label %14 unwind label %23

14:                                               ; preds = %9
  %15 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !183
  %17 = getelementptr inbounds ptr, ptr %16, i64 19
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %15) #15
          to label %20 unwind label %23

20:                                               ; preds = %14
  %21 = invoke noundef zeroext i1 @_ZN14cConfiguration9parseBoolEPKcS1_b(ptr noundef %13, ptr noundef %19, i1 noundef zeroext %3) #15
          to label %22 unwind label %23

22:                                               ; preds = %20
  ret i1 %21

23:                                               ; preds = %20, %14, %9, %4
  %24 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #16
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %32 = load ptr, ptr %2, align 8, !tbaa !183
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %36 unwind label %42

36:                                               ; preds = %28
  %37 = load ptr, ptr %30, align 8, !tbaa !183
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %30) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.10, ptr noundef %35, ptr noundef %40) #15
          to label %41 unwind label %42

41:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %53 unwind label %44

42:                                               ; preds = %36, %28
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #16
  br label %46

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  invoke void @__cxa_end_catch()
          to label %48 unwind label %50

48:                                               ; preds = %46, %23
  %49 = phi { ptr, i32 } [ %24, %23 ], [ %47, %46 ]
  resume { ptr, i32 } %49

50:                                               ; preds = %46
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #21
  unreachable

53:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 1) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %9 unwind label %23

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !183
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8) #15
          to label %14 unwind label %23

14:                                               ; preds = %9
  %15 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %16 = load ptr, ptr %0, align 8, !tbaa !183
  %17 = getelementptr inbounds ptr, ptr %16, i64 19
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %15) #15
          to label %20 unwind label %23

20:                                               ; preds = %14
  %21 = invoke noundef i64 @_ZN14cConfiguration9parseLongEPKcS1_l(ptr noundef %13, ptr noundef %19, i64 noundef %3) #15
          to label %22 unwind label %23

22:                                               ; preds = %20
  ret i64 %21

23:                                               ; preds = %20, %14, %9, %4
  %24 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #16
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %32 = load ptr, ptr %2, align 8, !tbaa !183
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %36 unwind label %42

36:                                               ; preds = %28
  %37 = load ptr, ptr %30, align 8, !tbaa !183
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %30) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.10, ptr noundef %35, ptr noundef %40) #15
          to label %41 unwind label %42

41:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %53 unwind label %44

42:                                               ; preds = %36, %28
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #16
  br label %46

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  invoke void @__cxa_end_catch()
          to label %48 unwind label %50

48:                                               ; preds = %46, %23
  %49 = phi { ptr, i32 } [ %24, %23 ], [ %47, %46 ]
  resume { ptr, i32 } %49

50:                                               ; preds = %46
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #21
  unreachable

53:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZN14cConfiguration11getAsDoubleEPKcP13cConfigOptiond(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull %2, double noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 2) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %9 unwind label %24

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !183
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8) #15
          to label %14 unwind label %24

14:                                               ; preds = %9
  %15 = tail call noundef ptr @_ZNK13cConfigOption7getUnitEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %16 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %17 = load ptr, ptr %0, align 8, !tbaa !183
  %18 = getelementptr inbounds ptr, ptr %17, i64 19
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %16) #15
          to label %21 unwind label %24

21:                                               ; preds = %14
  %22 = invoke noundef double @_ZN14cConfiguration11parseDoubleEPKcS1_S1_d(ptr noundef %13, ptr noundef %15, ptr noundef %20, double noundef %3) #15
          to label %23 unwind label %24

23:                                               ; preds = %21
  ret double %22

24:                                               ; preds = %21, %14, %9, %4
  %25 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %26 = extractvalue { ptr, i32 } %25, 1
  %27 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = extractvalue { ptr, i32 } %25, 0
  %31 = tail call ptr @__cxa_begin_catch(ptr %30) #16
  %32 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %33 = load ptr, ptr %2, align 8, !tbaa !183
  %34 = getelementptr inbounds ptr, ptr %33, i64 6
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(20) %2) #15
          to label %37 unwind label %43

37:                                               ; preds = %29
  %38 = load ptr, ptr %31, align 8, !tbaa !183
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %31) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %32, ptr noundef nonnull @.str.10, ptr noundef %36, ptr noundef %41) #15
          to label %42 unwind label %43

42:                                               ; preds = %37
  invoke void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %54 unwind label %45

43:                                               ; preds = %37, %29
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %32) #16
  br label %47

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ]
  invoke void @__cxa_end_catch()
          to label %49 unwind label %51

49:                                               ; preds = %47, %24
  %50 = phi { ptr, i32 } [ %25, %24 ], [ %48, %47 ]
  resume { ptr, i32 } %50

51:                                               ; preds = %47
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #21
  unreachable

54:                                               ; preds = %42
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration11getAsStringB5cxx11EPKcP13cConfigOptionS1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 3) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !183
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
          to label %10 unwind label %23

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 8, !tbaa !183
  %12 = getelementptr inbounds ptr, ptr %11, i64 22
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %9) #15
          to label %15 unwind label %23

15:                                               ; preds = %10
  %16 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %3) #15
  %17 = load ptr, ptr %1, align 8, !tbaa !183
  %18 = getelementptr inbounds ptr, ptr %17, i64 19
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %16) #15
          to label %21 unwind label %23

21:                                               ; preds = %15
  invoke void @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %14, ptr noundef %20, ptr noundef %4) #15
          to label %22 unwind label %23

22:                                               ; preds = %21
  ret void

23:                                               ; preds = %21, %15, %10, %5
  %24 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #16
  %31 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %32 = load ptr, ptr %3, align 8, !tbaa !183
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
          to label %36 unwind label %42

36:                                               ; preds = %28
  %37 = load ptr, ptr %30, align 8, !tbaa !183
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %30) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull @.str.10, ptr noundef %35, ptr noundef %40) #15
          to label %41 unwind label %42

41:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %53 unwind label %44

42:                                               ; preds = %36, %28
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #16
  br label %46

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  invoke void @__cxa_end_catch()
          to label %48 unwind label %50

48:                                               ; preds = %46, %23
  %49 = phi { ptr, i32 } [ %24, %23 ], [ %47, %46 ]
  resume { ptr, i32 } %49

50:                                               ; preds = %46
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #21
  unreachable

53:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration13getAsFilenameB5cxx11EPKcP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture readnone %2, ptr noundef nonnull %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 4) #15
  %5 = load ptr, ptr %3, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
  %9 = load ptr, ptr %1, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 21
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8) #15
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
          to label %17 unwind label %30

17:                                               ; preds = %4
  %18 = load ptr, ptr %12, align 8, !tbaa !183
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
          to label %22 unwind label %30

22:                                               ; preds = %17
  %23 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %3) #15
  %24 = load ptr, ptr %1, align 8, !tbaa !183
  %25 = getelementptr inbounds ptr, ptr %24, i64 19
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %23) #15
          to label %28 unwind label %30

28:                                               ; preds = %22
  invoke void @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %16, ptr noundef %21, ptr noundef %27) #15
          to label %29 unwind label %30

29:                                               ; preds = %28
  ret void

30:                                               ; preds = %28, %22, %17, %4
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %32 = extractvalue { ptr, i32 } %31, 1
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = extractvalue { ptr, i32 } %31, 0
  %37 = tail call ptr @__cxa_begin_catch(ptr %36) #16
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %39 = load ptr, ptr %3, align 8, !tbaa !183
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
          to label %43 unwind label %49

43:                                               ; preds = %35
  %44 = load ptr, ptr %37, align 8, !tbaa !183
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %37) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull @.str.10, ptr noundef %42, ptr noundef %47) #15
          to label %48 unwind label %49

48:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %60 unwind label %51

49:                                               ; preds = %43, %35
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %38) #16
  br label %53

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  invoke void @__cxa_end_catch()
          to label %55 unwind label %57

55:                                               ; preds = %53, %30
  %56 = phi { ptr, i32 } [ %31, %30 ], [ %54, %53 ]
  resume { ptr, i32 } %56

57:                                               ; preds = %53
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #21
  unreachable

60:                                               ; preds = %48
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration14getAsFilenamesB5cxx11EPKcP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture readnone %2, ptr noundef nonnull %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 5) #15
  %5 = load ptr, ptr %3, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
  %9 = load ptr, ptr %1, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 21
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8) #15
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
          to label %17 unwind label %30

17:                                               ; preds = %4
  %18 = load ptr, ptr %12, align 8, !tbaa !183
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
          to label %22 unwind label %30

22:                                               ; preds = %17
  %23 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %3) #15
  %24 = load ptr, ptr %1, align 8, !tbaa !183
  %25 = getelementptr inbounds ptr, ptr %24, i64 19
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %23) #15
          to label %28 unwind label %30

28:                                               ; preds = %22
  invoke void @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef %16, ptr noundef %21, ptr noundef %27) #15
          to label %29 unwind label %30

29:                                               ; preds = %28
  ret void

30:                                               ; preds = %28, %22, %17, %4
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %32 = extractvalue { ptr, i32 } %31, 1
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = extractvalue { ptr, i32 } %31, 0
  %37 = tail call ptr @__cxa_begin_catch(ptr %36) #16
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %39 = load ptr, ptr %3, align 8, !tbaa !183
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
          to label %43 unwind label %49

43:                                               ; preds = %35
  %44 = load ptr, ptr %37, align 8, !tbaa !183
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %37) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull @.str.10, ptr noundef %42, ptr noundef %47) #15
          to label %48 unwind label %49

48:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %60 unwind label %51

49:                                               ; preds = %43, %35
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %38) #16
  br label %53

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  invoke void @__cxa_end_catch()
          to label %55 unwind label %57

55:                                               ; preds = %53, %30
  %56 = phi { ptr, i32 } [ %31, %30 ], [ %54, %53 ]
  resume { ptr, i32 } %56

57:                                               ; preds = %53
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #21
  unreachable

60:                                               ; preds = %48
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14cConfiguration9getAsPathB5cxx11EPKcP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture readnone %2, ptr noundef nonnull %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 5) #15
  %5 = load ptr, ptr %3, align 8, !tbaa !183
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
  %9 = load ptr, ptr %1, align 8, !tbaa !183
  %10 = getelementptr inbounds ptr, ptr %9, i64 21
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8) #15
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
          to label %17 unwind label %30

17:                                               ; preds = %4
  %18 = load ptr, ptr %12, align 8, !tbaa !183
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %12) #15
          to label %22 unwind label %30

22:                                               ; preds = %17
  %23 = tail call noundef ptr @_ZNK13cConfigOption15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(144) %3) #15
  %24 = load ptr, ptr %1, align 8, !tbaa !183
  %25 = getelementptr inbounds ptr, ptr %24, i64 19
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %23) #15
          to label %28 unwind label %30

28:                                               ; preds = %22
  invoke void @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %16, ptr noundef %21, ptr noundef %27) #15
          to label %29 unwind label %30

29:                                               ; preds = %28
  ret void

30:                                               ; preds = %28, %22, %17, %4
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %32 = extractvalue { ptr, i32 } %31, 1
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = extractvalue { ptr, i32 } %31, 0
  %37 = tail call ptr @__cxa_begin_catch(ptr %36) #16
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %39 = load ptr, ptr %3, align 8, !tbaa !183
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(20) %3) #15
          to label %43 unwind label %49

43:                                               ; preds = %35
  %44 = load ptr, ptr %37, align 8, !tbaa !183
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %37) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull @.str.10, ptr noundef %42, ptr noundef %47) #15
          to label %48 unwind label %49

48:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %60 unwind label %51

49:                                               ; preds = %43, %35
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %38) #16
  br label %53

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  invoke void @__cxa_end_catch()
          to label %55 unwind label %57

55:                                               ; preds = %53, %30
  %56 = phi { ptr, i32 } [ %31, %30 ], [ %54, %53 ]
  resume { ptr, i32 } %56

57:                                               ; preds = %53
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #21
  unreachable

60:                                               ; preds = %48
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14cConfigurationD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  ret ptr @.str.5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !227 {
  %2 = load ptr, ptr %0, align 8, !tbaa !183
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !228 {
  ret i1 false
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !206 {
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !206 {
  tail call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !206 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !206 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !206 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13cConfigOption11isPerObjectEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 4, !tbaa !230, !range !243, !noundef !244
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13cConfigOption7getTypeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #6 comdat align 2 !prof !216 {
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !245
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !202 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !183
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !202 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #23
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #22
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !246
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !182 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14) #15
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #15
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !202 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !249, !range !243, !noundef !244
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !250
  ret i32 %3
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !251 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !252 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !253 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !254 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  store i64 %6, ptr %4, align 8, !tbaa !255
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !256

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #15
  %10 = load i64, ptr %4, align 8, !tbaa !255
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #15
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #19
  store ptr null, ptr %5, align 8, !tbaa !257
  %15 = load i64, ptr %4, align 8, !tbaa !255
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #15
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !254 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !259
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !254 {
  store ptr %1, ptr %0, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !260

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !254 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !254 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !262 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !209
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  invoke void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !264

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %5) #15
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !265, !llvm.loop !266

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !267 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !268 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !269

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !270 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !263
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  %9 = load ptr, ptr %3, align 8, !tbaa !212
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !212
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 !prof !271 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.19) #15
  %7 = load ptr, ptr %0, align 8, !tbaa !209
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %10 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %12 = call noundef ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #15
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !259
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %17 = call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #19
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %20 = load ptr, ptr %19, align 8, !tbaa !259
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %22 = call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #19
  %23 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !263
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 5
  call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #15
  store ptr %12, ptr %0, align 8, !tbaa !209
  store ptr %22, ptr %8, align 8, !tbaa !212
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !263
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !273 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !182 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 !prof !271 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !273 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !255
  %6 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !274

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %13 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !255
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %15 = load i64, ptr %14, align 8, !tbaa !255
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %17 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !274

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !274

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !273 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !259
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !259
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 5
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !273 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !273 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !274

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 !prof !275 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !276 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !275 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !277 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = load ptr, ptr %0, align 8, !tbaa !209
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !278 {
  %3 = load i64, ptr %0, align 8, !tbaa !255
  %4 = load i64, ptr %1, align 8, !tbaa !255
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !279
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !275 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 288230376151711743, ptr %2, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !255
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %6 = load i64, ptr %5, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !275 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !275 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !280 {
  %3 = load i64, ptr %1, align 8, !tbaa !255
  %4 = load i64, ptr %0, align 8, !tbaa !255
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !281
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !275 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !282 {
  ret i64 288230376151711743
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !275 {
  %3 = load ptr, ptr %1, align 8, !tbaa !259
  store ptr %3, ptr %0, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !273 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !285

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 576460752303423487
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat !prof !275 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat !prof !275 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !286

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 1
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !287, !llvm.loop !288

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !289 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !290 {
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !290 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !290 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !182 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = load ptr, ptr %0, align 8, !tbaa !283
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !259
  call void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !283
  ret ptr %2
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cconfiguration.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { noreturn }
attributes #19 = { nounwind optsize }
attributes #20 = { noreturn optsize }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind optsize }
attributes #23 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!175}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!35 = !{ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, ptr @strcmp, i64 1829074}
!36 = !{ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, ptr @__cxa_allocate_exception, i64 1}
!37 = !{ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, ptr @_ZN17opp_runtime_errorC1EPKcz, i64 1}
!38 = !{ptr @_ZN14cConfiguration9parseLongEPKcS1_l, ptr @_Z8opp_atolPKc, i64 117}
!39 = !{ptr @_ZN14cConfiguration11parseDoubleEPKcS1_S1_d, ptr @_ZN14UnitConversion13parseQuantityEPKcS1_, i64 4}
!40 = !{ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, ptr @_ZNSaIcEC2Ev, i64 10}
!41 = !{ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 10}
!42 = !{ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 10}
!43 = !{ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, ptr @_Z18opp_parsequotedstrB5cxx11PKc, i64 1}
!44 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_ZNSaIcEC2Ev, i64 2}
!45 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 2}
!46 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 2}
!47 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_Z16concatDirAndFileB5cxx11PKcS0_, i64 2}
!48 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 2}
!49 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_Z12tidyFilenameB5cxx11PKcb, i64 2}
!50 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 2}
!51 = !{ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, i64 1}
!52 = !{ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, ptr @_ZN22FilenamesListTokenizerC1EPKc, i64 1}
!53 = !{ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, ptr @_ZN22FilenamesListTokenizer9nextTokenEv, i64 1}
!54 = !{ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, ptr @_ZN22FilenamesListTokenizerD1Ev, i64 1}
!55 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, i64 609}
!56 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_, i64 1919}
!57 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 606}
!58 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, i64 606}
!59 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 606}
!60 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 1}
!61 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZN15StringTokenizerC1EPKcS1_, i64 1}
!62 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZN15StringTokenizer9nextTokenEv, i64 2}
!63 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, i64 1}
!64 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_Z16concatDirAndFileB5cxx11PKcS0_, i64 1}
!65 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!66 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_Z12tidyFilenameB5cxx11PKcb, i64 1}
!67 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_, i64 1}
!68 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 2}
!69 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZN15StringTokenizerD1Ev, i64 1}
!70 = !{ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, ptr @_ZNK13cConfigOption11isPerObjectEv, i64 889936}
!71 = !{ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, ptr @__cxa_allocate_exception, i64 2}
!72 = !{ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, ptr @_ZNK13cConfigOption7getTypeEv, i64 889934}
!73 = !{ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, ptr @__cxa_free_exception, i64 2}
!74 = !{ptr @_ZNK13cConfigOption15getDefaultValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 889945}
!75 = !{ptr @_ZNK13cConfigOption15getDefaultValueEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 664545}
!76 = !{ptr @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 15}
!77 = !{ptr @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 15}
!78 = !{ptr @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb, ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, i64 15}
!79 = !{ptr @_ZN14cConfiguration8getAsIntEP13cConfigOptionl, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 116}
!80 = !{ptr @_ZN14cConfiguration8getAsIntEP13cConfigOptionl, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 116}
!81 = !{ptr @_ZN14cConfiguration8getAsIntEP13cConfigOptionl, ptr @_ZN14cConfiguration9parseLongEPKcS1_l, i64 116}
!82 = !{ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 6}
!83 = !{ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZNK13cConfigOption7getUnitEv, i64 6}
!84 = !{ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 6}
!85 = !{ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZN14cConfiguration11parseDoubleEPKcS1_S1_d, i64 6}
!86 = !{ptr @_ZNK13cConfigOption7getUnitEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 6}
!87 = !{ptr @_ZNK13cConfigOption7getUnitEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 5}
!88 = !{ptr @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 11}
!89 = !{ptr @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 11}
!90 = !{ptr @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc, ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, i64 11}
!91 = !{ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 4}
!92 = !{ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 4}
!93 = !{ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, i64 4}
!94 = !{ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 1}
!95 = !{ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 1}
!96 = !{ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, i64 1}
!97 = !{ptr @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 1}
!98 = !{ptr @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 1}
!99 = !{ptr @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, i64 1}
!100 = !{ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 112694}
!101 = !{ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 112694}
!102 = !{ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_, ptr @_Z8fallbackPKcS0_S0_, i64 112694}
!103 = !{ptr @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 664393}
!104 = !{ptr @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 664392}
!105 = !{ptr @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb, ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, i64 664391}
!106 = !{ptr @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 112694}
!107 = !{ptr @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl, ptr @_ZNK13cConfigOption15getDefaultValueEv, i64 112694}
!108 = !{ptr @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl, ptr @_ZN14cConfiguration9parseLongEPKcS1_l, i64 112694}
!109 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, i64 609}
!110 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, ptr @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, i64 609}
!111 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev, i64 609}
!112 = !{ptr @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, i64 609}
!113 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!114 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!115 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!116 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!117 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!118 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!119 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!120 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!121 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!122 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!123 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!124 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!125 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!126 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!127 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!128 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!129 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!130 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!131 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!132 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!133 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, i64 610}
!134 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, i64 606}
!135 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, i64 606}
!136 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, i64 610}
!137 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, i64 1918}
!138 = !{ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1920}
!139 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, i64 1137}
!140 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, i64 1137}
!141 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_, i64 3503}
!142 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, i64 1136}
!143 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, i64 1136}
!144 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_, i64 1136}
!145 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, i64 1136}
!146 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_, i64 1136}
!147 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv, i64 2272}
!148 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 2272}
!149 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, i64 2272}
!150 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, i64 1136}
!151 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_, i64 1139}
!152 = !{ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 3503}
!153 = !{ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, i64 2278}
!154 = !{ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, i64 4553}
!155 = !{ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!156 = !{ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 1138}
!157 = !{ptr @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv, i64 2278}
!158 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_, i64 1139}
!159 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m, i64 1138}
!160 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_, ptr @_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, i64 2278}
!161 = !{ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 2278}
!162 = !{ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, i64 2278}
!163 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_, i64 2278}
!164 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_, ptr @_ZSt3minImERKT_S2_S2_, i64 2278}
!165 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_, ptr @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv, i64 2278}
!166 = !{ptr @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv, i64 2278}
!167 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, i64 1139}
!168 = !{ptr @_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_, i64 6834}
!169 = !{ptr @_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, ptr @_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, i64 2278}
!170 = !{ptr @_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_, ptr @_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, i64 1584}
!171 = !{ptr @_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_, i64 1584}
!172 = !{ptr @_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_, i64 1584}
!173 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_, i64 1584}
!174 = !{ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1584}
!175 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!176 = !{!"function_entry_count", i64 664408}
!177 = !{!"branch_weights", i32 279559, i32 384851}
!178 = !{!"branch_weights", i32 1, i32 664409}
!179 = !{!"branch_weights", i32 414277, i32 250133}
!180 = !{!"branch_weights", i32 1, i32 250133}
!181 = !{!"branch_weights", i32 250133, i32 1}
!182 = !{!"function_entry_count", i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"vtable pointer", !185, i64 0}
!185 = !{!"Simple C++ TBAA"}
!186 = !{!"function_entry_count", i64 112812}
!187 = !{!"branch_weights", i32 112812, i32 2}
!188 = !{!"branch_weights", i32 112697, i32 117}
!189 = !{!"function_entry_count", i64 6}
!190 = !{!"branch_weights", i32 5, i32 3}
!191 = !{!"branch_weights", i32 3, i32 5}
!192 = !{!"function_entry_count", i64 11}
!193 = !{!"branch_weights", i32 11, i32 2}
!194 = !{!"branch_weights", i32 6, i32 7}
!195 = !{!196, !196, i64 0}
!196 = !{!"omnipotent char", !185, i64 0}
!197 = !{!"branch_weights", i32 1, i32 7}
!198 = !{!"function_entry_count", i64 4}
!199 = !{!"branch_weights", i32 4, i32 2}
!200 = !{!"branch_weights", i32 2, i32 4}
!201 = !{!"branch_weights", i32 1, i32 4}
!202 = !{!"function_entry_count", i64 1}
!203 = !{!"branch_weights", i32 2, i32 1}
!204 = distinct !{!204, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !{!"function_entry_count", i64 609}
!207 = !{!"function_entry_count", i64 1919}
!208 = !{!"function_entry_count", i64 606}
!209 = !{!210, !211, i64 0}
!210 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !211, i64 0, !211, i64 8, !211, i64 16}
!211 = !{!"any pointer", !196, i64 0}
!212 = !{!210, !211, i64 8}
!213 = !{!"branch_weights", i32 1, i32 2}
!214 = !{!"branch_weights", i32 2, i32 2}
!215 = distinct !{!215, !205}
!216 = !{!"function_entry_count", i64 889935}
!217 = !{!"cconfiguration.cc:_ZL10assertTypeP13cConfigOptionbNS_4TypeE"}
!218 = !{!"branch_weights", i32 1, i32 889936}
!219 = !{!"branch_weights", i32 889936, i32 1}
!220 = !{!"function_entry_count", i64 112694}
!221 = !{!"branch_weights", i32 112695, i32 1}
!222 = !{!"function_entry_count", i64 889945}
!223 = !{!"branch_weights", i32 225401, i32 664546}
!224 = !{!"function_entry_count", i64 15}
!225 = !{!"function_entry_count", i64 116}
!226 = !{!"function_entry_count", i64 664393}
!227 = !{!"function_entry_count", i64 235321}
!228 = !{!"function_entry_count", i64 26398}
!229 = !{!"function_entry_count", i64 889955}
!230 = !{!231, !238, i64 36}
!231 = !{!"_ZTS13cConfigOption", !232, i64 0, !238, i64 36, !238, i64 37, !239, i64 40, !240, i64 48, !240, i64 80, !240, i64 112}
!232 = !{!"_ZTS23cNoncopyableOwnedObject", !233, i64 0}
!233 = !{!"_ZTS12cOwnedObject", !234, i64 0, !211, i64 24, !237, i64 32}
!234 = !{!"_ZTS12cNamedObject", !235, i64 0, !211, i64 8, !236, i64 16, !236, i64 18}
!235 = !{!"_ZTS7cObject"}
!236 = !{!"short", !196, i64 0}
!237 = !{!"int", !196, i64 0}
!238 = !{!"bool", !196, i64 0}
!239 = !{!"_ZTSN13cConfigOption4TypeE", !196, i64 0}
!240 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !241, i64 0, !242, i64 8, !196, i64 16}
!241 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !211, i64 0}
!242 = !{!"long", !196, i64 0}
!243 = !{i8 0, i8 2}
!244 = !{}
!245 = !{!231, !239, i64 40}
!246 = !{!247, !237, i64 8}
!247 = !{!"_ZTS10cException", !248, i64 0, !237, i64 8, !240, i64 16, !238, i64 48, !240, i64 56, !240, i64 88, !237, i64 120}
!248 = !{!"_ZTSSt9exception"}
!249 = !{!247, !238, i64 48}
!250 = !{!247, !237, i64 120}
!251 = !{!"function_entry_count", i64 2}
!252 = !{!"function_entry_count", i64 2107073}
!253 = !{!"function_entry_count", i64 1891507}
!254 = !{!"function_entry_count", i64 1889443}
!255 = !{!242, !242, i64 0}
!256 = !{!"branch_weights", i32 1257663, i32 631782}
!257 = !{!258, !211, i64 0}
!258 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !211, i64 0}
!259 = !{!211, !211, i64 0}
!260 = !{!"branch_weights", i32 1889444, i32 1}
!261 = !{!"function_entry_count", i64 610}
!262 = !{!"function_entry_count", i64 2888}
!263 = !{!210, !211, i64 16}
!264 = !{!"branch_weights", i32 1, i32 610}
!265 = !{!"branch_weights", i32 610, i32 1311}
!266 = distinct !{!266, !205}
!267 = !{!"function_entry_count", i64 1920}
!268 = !{!"function_entry_count", i64 1745}
!269 = !{!"branch_weights", i32 609, i32 1138}
!270 = !{!"function_entry_count", i64 1137}
!271 = !{!"function_entry_count", i64 3503}
!272 = !{!"function_entry_count", i64 1136}
!273 = !{!"function_entry_count", i64 1139}
!274 = !{!"branch_weights", i32 1, i32 1140}
!275 = !{!"function_entry_count", i64 2278}
!276 = !{!"function_entry_count", i64 4556}
!277 = !{!"function_entry_count", i64 105782}
!278 = !{!"function_entry_count", i64 147735}
!279 = !{!"branch_weights", i32 61980, i32 85757}
!280 = !{!"function_entry_count", i64 295467}
!281 = !{!"branch_weights", i32 2, i32 295467}
!282 = !{!"function_entry_count", i64 3417}
!283 = !{!284, !211, i64 0}
!284 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE", !211, i64 0}
!285 = !{!"branch_weights", i32 1, i32 2000}
!286 = !{!"branch_weights", i32 694, i32 1585}
!287 = !{!"branch_weights", i32 1585, i32 0}
!288 = distinct !{!288, !205}
!289 = !{!"function_entry_count", i64 6834}
!290 = !{!"function_entry_count", i64 1584}
