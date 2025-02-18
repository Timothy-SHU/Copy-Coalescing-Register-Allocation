; ModuleID = 'simulator/scenario.cc'
source_filename = "simulator/scenario.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%class.Resolver = type { %"class.Expression::Resolver", ptr }
%"class.Expression::Resolver" = type { ptr }
%"class.Scenario::VariableReference" = type { %"class.Expression::Functor", ptr, %"class.std::__cxx11::basic_string" }
%"class.Expression::Functor" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }
%class.Scenario = type { ptr, ptr, %"class.std::vector", %"class.std::map" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl" }
%"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl" = type { %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.ValueIterator = type <{ %"class.std::vector.12", i32, i32, i32, [4 x i8] }>
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" }
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.SectionBasedConfiguration::IterationVariable" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.18" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }
%"struct.Expression::Value" = type { i32, i8, double, %"class.std::__cxx11::basic_string" }
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"struct.ValueIterator::Item" = type <{ i8, [7 x i8], %"class.std::__cxx11::basic_string", double, double, double, i32, [4 x i8] }>

$_ZN8Scenario17VariableReferenceC2EPS_PKc = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10Expression8ResolverD2Ev = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_ = comdat any

$_ZN10Expression5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN8ResolverD0Ev = comdat any

$_ZN8Scenario17VariableReferenceD2Ev = comdat any

$_ZN8Scenario17VariableReferenceD0Ev = comdat any

$_ZNK8Scenario17VariableReference3dupEv = comdat any

$_ZNK8Scenario17VariableReference7getNameEv = comdat any

$_ZNK8Scenario17VariableReference11getArgTypesEv = comdat any

$_ZNK10Expression7Functor10getNumArgsEv = comdat any

$_ZNK8Scenario17VariableReference13getReturnTypeEv = comdat any

$_ZN8Scenario17VariableReference8evaluateEPN10Expression5ValueEi = comdat any

$_ZN8Scenario17VariableReference3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

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

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_ = comdat any

$_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv = comdat any

$_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2ERKS3_ = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTSN10Expression8ResolverE = comdat any

$_ZTIN10Expression8ResolverE = comdat any

$_ZTVN8Scenario17VariableReferenceE = comdat any

$_ZTSN8Scenario17VariableReferenceE = comdat any

$_ZTSN10Expression7FunctorE = comdat any

$_ZTIN10Expression7FunctorE = comdat any

$_ZTIN8Scenario17VariableReferenceE = comdat any

$_ZTV17opp_runtime_error = comdat any

$_ZTV10cException = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [28 x i8] c"Unrecognized function: %s()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTISt9exception = external constant ptr
@.str.1 = private unnamed_addr constant [44 x i8] c"Cannot parse constraint expression `%s': %s\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Wrong value for iteration variable %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Are you sure you want to generate more than one million runs?\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Cannot evaluate constraint expression: %s\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"Iterators or constraint too restrictive: not even one run can be generated\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Run number %d is out of range\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Unknown iteration variable: %s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@_ZTV8Resolver = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI8Resolver, ptr @_ZN10Expression8ResolverD2Ev, ptr @_ZN8ResolverD0Ev, ptr @_ZN8Resolver15resolveVariableEPKc, ptr @_ZN8Resolver15resolveFunctionEPKci] }, align 8
@_ZTS8Resolver = dso_local constant [10 x i8] c"8Resolver\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN10Expression8ResolverE = linkonce_odr dso_local constant [24 x i8] c"N10Expression8ResolverE\00", comdat, align 1
@_ZTIN10Expression8ResolverE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10Expression8ResolverE }, comdat, align 8
@_ZTI8Resolver = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8Resolver, ptr @_ZTIN10Expression8ResolverE }, align 8
@_ZTVN8Scenario17VariableReferenceE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8Scenario17VariableReferenceE, ptr @_ZN8Scenario17VariableReferenceD2Ev, ptr @_ZN8Scenario17VariableReferenceD0Ev, ptr @_ZNK8Scenario17VariableReference3dupEv, ptr @_ZNK8Scenario17VariableReference7getNameEv, ptr @_ZNK8Scenario17VariableReference11getArgTypesEv, ptr @_ZNK10Expression7Functor10getNumArgsEv, ptr @_ZNK8Scenario17VariableReference13getReturnTypeEv, ptr @_ZN8Scenario17VariableReference8evaluateEPN10Expression5ValueEi, ptr @_ZN8Scenario17VariableReference3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, comdat, align 8
@_ZTSN8Scenario17VariableReferenceE = linkonce_odr dso_local constant [31 x i8] c"N8Scenario17VariableReferenceE\00", comdat, align 1
@_ZTSN10Expression7FunctorE = linkonce_odr dso_local constant [23 x i8] c"N10Expression7FunctorE\00", comdat, align 1
@_ZTIN10Expression7FunctorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10Expression7FunctorE }, comdat, align 8
@_ZTIN8Scenario17VariableReferenceE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8Scenario17VariableReferenceE, ptr @_ZTIN10Expression7FunctorE }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8

@_ZN8ScenarioC1ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc
@_ZN8ScenarioD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8ScenarioD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8Resolver15resolveVariableEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = load i8, ptr %1, align 1, !tbaa !81
  %4 = icmp eq i8 %3, 36
  %5 = zext i1 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
  %8 = getelementptr inbounds %class.Resolver, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN8Scenario17VariableReferenceC2EPS_PKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %9, ptr noundef nonnull %6)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %7

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %7) #19
  resume { ptr, i32 } %12
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReferenceC2EPS_PKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN8Scenario17VariableReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %4 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2, i32 2
  store ptr %5, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %6, align 8, !tbaa !92
  store i8 0, ptr %5, align 8, !tbaa !81
  %7 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !95
  %8 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20
  %9 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %8)
          to label %10 unwind label %11

10:                                               ; preds = %3
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = load ptr, ptr %4, align 8, !tbaa !98
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, ptr %6, align 8, !tbaa !92
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %19

18:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #19
  br label %19

19:                                               ; preds = %15, %18
  resume { ptr, i32 } %12
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8Resolver15resolveFunctionEPKci(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %4 = tail call noundef zeroext i1 @_ZN12MathFunction8supportsEPKc(ptr noundef %1)
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18
  invoke void @_ZN12MathFunctionC1EPKc(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef %1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %6) #19
  br label %15

10:                                               ; preds = %3
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, ptr noundef %1)
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #21
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #20
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi { ptr, i32 } [ %9, %8 ], [ %14, %13 ]
  resume { ptr, i32 } %16
}

declare noundef zeroext i1 @_ZN12MathFunction8supportsEPKc(ptr noundef) local_unnamed_addr #3

declare void @_ZN12MathFunctionC1EPKc(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !92
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %4 = alloca %class.Resolver, align 8
  store ptr %1, ptr %0, align 8, !tbaa !100
  %5 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %7 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  store i32 0, ptr %8, align 8, !tbaa !101
  %9 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !105
  %10 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %8, ptr %10, align 8, !tbaa !106
  %11 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %8, ptr %11, align 8, !tbaa !107
  %12 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1, i32 1
  store i64 0, ptr %12, align 8, !tbaa !108
  %13 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  store ptr null, ptr %13, align 8, !tbaa !109
  %14 = icmp eq ptr %2, null
  br i1 %14, label %58, label %15, !prof !120

15:                                               ; preds = %3
  %16 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %17 unwind label %23

17:                                               ; preds = %15
  invoke void @_ZN10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %16)
          to label %18 unwind label %27

18:                                               ; preds = %17
  store ptr %16, ptr %13, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV8Resolver, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !88
  %19 = getelementptr inbounds %class.Resolver, ptr %4, i64 0, i32 1
  store ptr %0, ptr %19, align 8, !tbaa !84
  %20 = load ptr, ptr %16, align 8, !tbaa !88
  %21 = getelementptr inbounds ptr, ptr %20, i64 9
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(20) %16, ptr noundef nonnull %2, ptr noundef nonnull %4)
          to label %54 unwind label %31

23:                                               ; preds = %58, %15
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  br label %109

27:                                               ; preds = %17
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = extractvalue { ptr, i32 } %28, 1
  tail call void @_ZdlPv(ptr noundef %16) #19
  br label %109

31:                                               ; preds = %18
  %32 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = extractvalue { ptr, i32 } %32, 1
  %35 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #20
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = call ptr @__cxa_begin_catch(ptr %33) #20
  %39 = call ptr @__cxa_allocate_exception(i64 128) #20
  %40 = load ptr, ptr %38, align 8, !tbaa !88
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %38) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %39, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef %43)
          to label %44 unwind label %45

44:                                               ; preds = %37
  invoke void @__cxa_throw(ptr nonnull %39, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %134 unwind label %47

45:                                               ; preds = %37
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %39) #20
  br label %49

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ]
  invoke void @__cxa_end_catch()
          to label %51 unwind label %131

51:                                               ; preds = %49
  %52 = extractvalue { ptr, i32 } %50, 0
  %53 = extractvalue { ptr, i32 } %50, 1
  br label %55

54:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %58

55:                                               ; preds = %51, %31
  %56 = phi i32 [ %53, %51 ], [ %34, %31 ]
  %57 = phi ptr [ %52, %51 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %109

58:                                               ; preds = %54, %3
  %59 = load ptr, ptr %0, align 8, !tbaa !121
  %60 = getelementptr inbounds %"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data", ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !122
  %62 = load ptr, ptr %59, align 8, !tbaa !124
  %63 = ptrtoint ptr %61 to i64
  %64 = ptrtoint ptr %62 to i64
  %65 = sub i64 %63, %64
  %66 = ashr exact i64 %65, 7
  invoke void @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %66)
          to label %67 unwind label %23, !prof !120

67:                                               ; preds = %58
  %68 = load ptr, ptr %0, align 8, !tbaa !121
  %69 = getelementptr inbounds %"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data", ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !122
  %71 = load ptr, ptr %68, align 8, !tbaa !124
  %72 = ptrtoint ptr %70 to i64
  %73 = ptrtoint ptr %71 to i64
  %74 = sub i64 %72, %73
  %75 = lshr exact i64 %74, 7
  %76 = trunc i64 %75 to i32
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %79, label %78, !prof !125

78:                                               ; preds = %92, %67
  ret void

79:                                               ; preds = %67, %92
  %80 = phi i64 [ %94, %92 ], [ 0, %67 ]
  %81 = phi ptr [ %98, %92 ], [ %71, %67 ]
  %82 = load ptr, ptr %5, align 8, !tbaa !126
  %83 = getelementptr inbounds %class.ValueIterator, ptr %82, i64 %80
  %84 = getelementptr inbounds %"struct.SectionBasedConfiguration::IterationVariable", ptr %81, i64 %80, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !98
  invoke void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36) %83, ptr noundef %85)
          to label %86 unwind label %105, !prof !120

86:                                               ; preds = %79
  %87 = load ptr, ptr %5, align 8, !tbaa !126
  %88 = load ptr, ptr %0, align 8, !tbaa !121
  %89 = load ptr, ptr %88, align 8, !tbaa !124
  %90 = getelementptr inbounds %"struct.SectionBasedConfiguration::IterationVariable", ptr %89, i64 %80
  %91 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %90)
          to label %92 unwind label %105, !prof !120

92:                                               ; preds = %86
  %93 = getelementptr inbounds %class.ValueIterator, ptr %87, i64 %80
  store ptr %93, ptr %91, align 8, !tbaa !100
  %94 = add nuw nsw i64 %80, 1
  %95 = load ptr, ptr %0, align 8, !tbaa !121
  %96 = getelementptr inbounds %"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data", ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !122
  %98 = load ptr, ptr %95, align 8, !tbaa !124
  %99 = ptrtoint ptr %97 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = shl i64 %101, 25
  %103 = ashr i64 %102, 32
  %104 = icmp slt i64 %94, %103
  br i1 %104, label %79, label %78, !prof !127, !llvm.loop !128

105:                                              ; preds = %86, %79
  %106 = landingpad { ptr, i32 }
          cleanup
  %107 = extractvalue { ptr, i32 } %106, 0
  %108 = extractvalue { ptr, i32 } %106, 1
  br label %109

109:                                              ; preds = %105, %55, %27, %23
  %110 = phi i32 [ %108, %105 ], [ %26, %23 ], [ %56, %55 ], [ %30, %27 ]
  %111 = phi ptr [ %107, %105 ], [ %25, %23 ], [ %57, %55 ], [ %29, %27 ]
  %112 = load ptr, ptr %9, align 8, !tbaa !105
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %112)
          to label %116 unwind label %113

113:                                              ; preds = %109
  %114 = landingpad { ptr, i32 }
          catch ptr null
  %115 = extractvalue { ptr, i32 } %114, 0
  call void @__clang_call_terminate(ptr %115) #22
  unreachable

116:                                              ; preds = %109
  %117 = load ptr, ptr %5, align 8, !tbaa !126
  %118 = load ptr, ptr %6, align 8, !tbaa !131
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %117, %116 ]
  call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %121) #20
  %122 = getelementptr inbounds %class.ValueIterator, ptr %121, i64 1
  %123 = icmp eq ptr %122, %118
  br i1 %123, label %124, label %120, !llvm.loop !132

124:                                              ; preds = %120, %116
  %125 = load ptr, ptr %5, align 8, !tbaa !126
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  call void @_ZdlPv(ptr noundef %125) #19
  br label %128

128:                                              ; preds = %124, %127
  %129 = insertvalue { ptr, i32 } poison, ptr %111, 0
  %130 = insertvalue { ptr, i32 } %129, i32 %110, 1
  resume { ptr, i32 } %130

131:                                              ; preds = %49
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #22
  unreachable

134:                                              ; preds = %44
  unreachable
}

declare void @_ZN10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !80 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10Expression8ResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = load ptr, ptr %0, align 8, !tbaa !126
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = icmp ult i64 %9, %1
  br i1 %10, label %11, label %13, !prof !120

11:                                               ; preds = %2
  %12 = sub i64 %1, %9
  tail call void @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %12)
  br label %23

13:                                               ; preds = %2
  %14 = icmp ugt i64 %9, %1
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = getelementptr inbounds %class.ValueIterator, ptr %5, i64 %1
  %17 = icmp eq ptr %4, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %20, %18 ], [ %16, %15 ]
  tail call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %19) #20
  %20 = getelementptr inbounds %class.ValueIterator, ptr %19, i64 1
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %22, label %18, !llvm.loop !132

22:                                               ; preds = %18
  store ptr %16, ptr %3, align 8, !tbaa !131
  br label %23

23:                                               ; preds = %22, %15, %13, %11
  ret void
}

declare void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = alloca %"class.std::tuple", align 8
  %4 = alloca %"class.std::tuple.18", align 1
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %33, label %10, !prof !120

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %8, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !92
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 %12)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = load ptr, ptr %1, align 8, !tbaa !98
  %21 = tail call i32 @memcmp(ptr noundef %20, ptr noundef %19, i64 noundef %15) #20
  br label %22

22:                                               ; preds = %17, %10
  %23 = phi i32 [ %21, %17 ], [ 0, %10 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = sub i64 %12, %14
  %27 = tail call i64 @llvm.smax.i64(i64 %26, i64 -2147483648)
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 2147483647)
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi i32 [ %23, %22 ], [ %29, %25 ]
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2, %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr %1, ptr %3, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  %34 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %8, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %34, %33 ], [ %8, %30 ]
  %37 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %36, i64 0, i32 1, i32 0, i64 32
  ret ptr %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN8ScenarioD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4)
          to label %8 unwind label %5, !prof !120

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #22
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %18, label %14, !prof !127

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %16, %14 ], [ %10, %8 ]
  tail call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %15) #20
  %16 = getelementptr inbounds %class.ValueIterator, ptr %15, i64 1
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %18, label %14, !prof !125, !llvm.loop !132

18:                                               ; preds = %14, %8
  %19 = load ptr, ptr %9, align 8, !tbaa !126
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !133

21:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %19) #19
  br label %22

22:                                               ; preds = %18, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN8Scenario20getIterationVariableEPKc(ptr dead_on_unwind noalias writable sret(%"struct.Expression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @_ZNK8Scenario11getVariableB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2)
  %6 = load ptr, ptr %4, align 8, !tbaa !98
  %7 = load i8, ptr %6, align 1, !tbaa !81
  %8 = icmp eq i8 %7, 34
  br i1 %8, label %9, label %51

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %6)
          to label %10 unwind label %23

10:                                               ; preds = %9
  invoke void @_ZN10Expression5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %11 unwind label %25

11:                                               ; preds = %10
  %12 = load ptr, ptr %5, align 8, !tbaa !98
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !92
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %11
  call void @_ZdlPv(ptr noundef %12) #19
  br label %20

20:                                               ; preds = %15, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %80

21:                                               ; preds = %67
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %37

23:                                               ; preds = %9
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %35

25:                                               ; preds = %10
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %27 = load ptr, ptr %5, align 8, !tbaa !98
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !92
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %35

34:                                               ; preds = %25
  call void @_ZdlPv(ptr noundef %27) #19
  br label %35

35:                                               ; preds = %34, %30, %23
  %36 = phi { ptr, i32 } [ %24, %23 ], [ %26, %30 ], [ %26, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %22, %21 ]
  %39 = extractvalue { ptr, i32 } %38, 1
  %40 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #20
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %37
  %43 = extractvalue { ptr, i32 } %38, 0
  %44 = call ptr @__cxa_begin_catch(ptr %43) #20
  %45 = call ptr @__cxa_allocate_exception(i64 128) #20
  %46 = load ptr, ptr %44, align 8, !tbaa !88
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %44) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %45, ptr noundef nonnull @.str.4, ptr noundef %2, ptr noundef %49)
          to label %50 unwind label %74

50:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %104 unwind label %76

51:                                               ; preds = %3
  %52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.2) #23
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  %56 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 2
  store ptr %56, ptr %55, align 8, !tbaa !90
  %57 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %57, align 8, !tbaa !92
  store i8 0, ptr %56, align 8, !tbaa !81
  store i32 66, ptr %0, align 8, !tbaa !134
  %58 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 1
  store i8 1, ptr %58, align 4, !tbaa !139
  br label %80

59:                                               ; preds = %51
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(6) @.str.3) #23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 2
  store ptr %64, ptr %63, align 8, !tbaa !90
  %65 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %65, align 8, !tbaa !92
  store i8 0, ptr %64, align 8, !tbaa !81
  store i32 66, ptr %0, align 8, !tbaa !134
  %66 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 1
  store i8 0, ptr %66, align 4, !tbaa !139
  br label %80

67:                                               ; preds = %59
  %68 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef nonnull %6, ptr noundef null)
          to label %69 unwind label %21

69:                                               ; preds = %67
  %70 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  %71 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 2
  store ptr %71, ptr %70, align 8, !tbaa !90
  %72 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %72, align 8, !tbaa !92
  store i8 0, ptr %71, align 8, !tbaa !81
  store i32 68, ptr %0, align 8, !tbaa !134
  %73 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 2
  store double %68, ptr %73, align 8, !tbaa !140
  br label %80

74:                                               ; preds = %42
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %45) #20
  br label %78

76:                                               ; preds = %50
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi { ptr, i32 } [ %77, %76 ], [ %75, %74 ]
  invoke void @__cxa_end_catch()
          to label %90 unwind label %101

80:                                               ; preds = %69, %62, %54, %20
  %81 = load ptr, ptr %4, align 8, !tbaa !98
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !92
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %80
  call void @_ZdlPv(ptr noundef %81) #19
  br label %89

89:                                               ; preds = %84, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  ret void

90:                                               ; preds = %78, %37
  %91 = phi { ptr, i32 } [ %38, %37 ], [ %79, %78 ]
  %92 = load ptr, ptr %4, align 8, !tbaa !98
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !92
  %98 = icmp ult i64 %97, 16
  call void @llvm.assume(i1 %98)
  br label %100

99:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %92) #19
  br label %100

100:                                              ; preds = %95, %99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  resume { ptr, i32 } %91

101:                                              ; preds = %78
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #22
  unreachable

104:                                              ; preds = %50
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK8Scenario11getVariableB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %6 unwind label %24, !prof !142

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.Scenario, ptr %1, i64 0, i32 3
  %8 = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %9 unwind label %26, !prof !142

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8, !tbaa !98
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %17, !prof !142

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !92
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  br label %18

17:                                               ; preds = %9
  call void @_ZdlPv(ptr noundef %10) #19
  br label %18

18:                                               ; preds = %13, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  %19 = getelementptr inbounds %class.Scenario, ptr %1, i64 0, i32 3, i32 0, i32 0, i32 1
  %20 = icmp eq ptr %8, %19
  br i1 %20, label %21, label %40, !prof !143

21:                                               ; preds = %18
  %22 = call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull @.str.9, ptr noundef %2)
          to label %23 unwind label %38

23:                                               ; preds = %21
  call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

24:                                               ; preds = %3
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %36

26:                                               ; preds = %6
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load ptr, ptr %4, align 8, !tbaa !98
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !92
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  br label %36

35:                                               ; preds = %26
  call void @_ZdlPv(ptr noundef %28) #19
  br label %36

36:                                               ; preds = %35, %31, %24
  %37 = phi { ptr, i32 } [ %25, %24 ], [ %27, %31 ], [ %27, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %43

38:                                               ; preds = %21
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %22) #20
  br label %43

40:                                               ; preds = %18
  %41 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %8, i64 0, i32 1, i32 0, i64 32
  %42 = load ptr, ptr %41, align 8, !tbaa !144
  call void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %42)
  ret void

43:                                               ; preds = %38, %36
  %44 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  resume { ptr, i32 } %44
}

declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10Expression5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 2
  store ptr %4, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %5, align 8, !tbaa !92
  store i8 0, ptr %4, align 8, !tbaa !81
  store i32 83, ptr %0, align 8, !tbaa !134
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %3, align 8, !tbaa !98
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i64, ptr %5, align 8, !tbaa !92
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %15

14:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #19
  br label %15

15:                                               ; preds = %11, %14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN8Scenario10getNumRunsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %2 = tail call noundef zeroext i1 @_ZN8Scenario7restartEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %2, label %3, label %16, !prof !120

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZN8Scenario4nextEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %4, label %5, label %16, !prof !146

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 1, %3 ]
  %7 = icmp eq i32 %6, 1000001
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.5)
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %6, 1
  %15 = tail call noundef zeroext i1 @_ZN8Scenario4nextEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %15, label %5, label %16, !prof !146, !llvm.loop !147

16:                                               ; preds = %13, %3, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %14, %13 ]
  ret i32 %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario7restartEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !141 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = load ptr, ptr %2, align 8, !tbaa !126
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %47, label %7, !prof !143

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !131
  %9 = load ptr, ptr %2, align 8, !tbaa !126
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 40
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %21, label %47, !prof !125

16:                                               ; preds = %21
  %17 = and i8 %29, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %47, label %19, !prof !143

19:                                               ; preds = %16
  %20 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  br label %40

21:                                               ; preds = %7, %21
  %22 = phi i64 [ %30, %21 ], [ 0, %7 ]
  %23 = phi ptr [ %32, %21 ], [ %9, %7 ]
  %24 = phi i8 [ %29, %21 ], [ 0, %7 ]
  %25 = getelementptr inbounds %class.ValueIterator, ptr %23, i64 %22
  tail call void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36) %25)
  %26 = load ptr, ptr %2, align 8, !tbaa !126
  %27 = getelementptr inbounds %class.ValueIterator, ptr %26, i64 %22
  %28 = tail call noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36) %27)
  %29 = select i1 %28, i8 %24, i8 1, !prof !143
  %30 = add nuw nsw i64 %22, 1
  %31 = load ptr, ptr %3, align 8, !tbaa !131
  %32 = load ptr, ptr %2, align 8, !tbaa !126
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 40
  %37 = shl i64 %36, 32
  %38 = ashr exact i64 %37, 32
  %39 = icmp slt i64 %30, %38
  br i1 %39, label %21, label %16, !prof !127, !llvm.loop !148

40:                                               ; preds = %19, %45
  %41 = load ptr, ptr %20, align 8, !tbaa !109
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43, !prof !142

43:                                               ; preds = %40
  %44 = tail call noundef zeroext i1 @_ZN8Scenario18evaluateConstraintEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call noundef zeroext i1 @_ZN8Scenario3incEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %46, label %40, label %47, !llvm.loop !149

47:                                               ; preds = %45, %40, %43, %7, %16, %1
  %48 = phi i1 [ true, %1 ], [ false, %16 ], [ false, %7 ], [ true, %43 ], [ true, %40 ], [ false, %45 ]
  ret i1 %48
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario4nextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !99 {
  %2 = tail call noundef zeroext i1 @_ZN8Scenario3incEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %2, label %3, label %12, !prof !133

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %3, %10
  %6 = load ptr, ptr %4, align 8, !tbaa !109
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call noundef zeroext i1 @_ZN8Scenario18evaluateConstraintEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call noundef zeroext i1 @_ZN8Scenario3incEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %11, label %5, label %12, !llvm.loop !150

12:                                               ; preds = %10, %5, %8, %1
  %13 = phi i1 [ false, %1 ], [ true, %8 ], [ true, %5 ], [ false, %10 ]
  ret i1 %13
}

declare void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario18evaluateConstraintEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret i1 %7

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #20
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #20
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %18 = load ptr, ptr %16, align 8, !tbaa !88
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %16) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.6, ptr noundef %21)
          to label %22 unwind label %23

22:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %34 unwind label %25

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #20
  br label %27

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  invoke void @__cxa_end_catch()
          to label %29 unwind label %31

29:                                               ; preds = %27, %9
  %30 = phi { ptr, i32 } [ %10, %9 ], [ %28, %27 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario3incEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !99 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = load ptr, ptr %2, align 8, !tbaa !126
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 40
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %32, !prof !125

13:                                               ; preds = %1
  %14 = zext nneg i32 %11 to i64
  %15 = load ptr, ptr %2, align 8, !tbaa !126
  %16 = getelementptr inbounds %class.ValueIterator, ptr %15, i64 %14
  tail call void @_ZN13ValueIteratorppEi(ptr noundef nonnull align 8 dereferenceable(36) %16, i32 noundef 0)
  %17 = load ptr, ptr %2, align 8, !tbaa !126
  %18 = getelementptr inbounds %class.ValueIterator, ptr %17, i64 %14
  %19 = tail call noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36) %18)
  br i1 %19, label %27, label %32, !prof !151

20:                                               ; preds = %27
  %21 = add nsw i64 %28, -1
  %22 = load ptr, ptr %2, align 8, !tbaa !126
  %23 = getelementptr inbounds %class.ValueIterator, ptr %22, i64 %21
  tail call void @_ZN13ValueIteratorppEi(ptr noundef nonnull align 8 dereferenceable(36) %23, i32 noundef 0)
  %24 = load ptr, ptr %2, align 8, !tbaa !126
  %25 = getelementptr inbounds %class.ValueIterator, ptr %24, i64 %21
  %26 = tail call noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36) %25)
  br i1 %26, label %27, label %32, !prof !120, !llvm.loop !152

27:                                               ; preds = %13, %20
  %28 = phi i64 [ %21, %20 ], [ %14, %13 ]
  %29 = load ptr, ptr %2, align 8, !tbaa !126
  %30 = getelementptr inbounds %class.ValueIterator, ptr %29, i64 %28
  tail call void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36) %30)
  %31 = icmp sgt i64 %28, 0
  br i1 %31, label %20, label %32, !prof !127, !llvm.loop !152

32:                                               ; preds = %20, %27, %13, %1
  %33 = phi i1 [ %12, %1 ], [ %12, %13 ], [ %31, %27 ], [ %31, %20 ]
  ret i1 %33
}

declare void @_ZN13ValueIteratorppEi(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN8Scenario7gotoRunEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = tail call noundef zeroext i1 @_ZN8Scenario7restartEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %3, label %4, label %6, !prof !120

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %15, label %14, !prof !146

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.7)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %15
  %12 = add nuw nsw i32 %16, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %15, !prof !151, !llvm.loop !153

14:                                               ; preds = %11, %4
  ret void

15:                                               ; preds = %4, %11
  %16 = phi i32 [ %12, %11 ], [ 0, %4 ]
  %17 = tail call noundef zeroext i1 @_ZN8Scenario4nextEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br i1 %17, label %11, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %19, ptr noundef nonnull @.str.8, i32 noundef %1)
          to label %20 unwind label %21

20:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi ptr [ %19, %21 ], [ %7, %9 ]
  %25 = phi { ptr, i32 } [ %22, %21 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %24) #20
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !90
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #21
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 %9, ptr %4, align 8, !tbaa !154
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !155

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !98
  %13 = load i64, ptr %4, align 8, !tbaa !154
  store i64 %13, ptr %5, align 8, !tbaa !81
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !98
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !156

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !81
  store i8 %17, ptr %15, align 1, !tbaa !81
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !157
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !154
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !92
  %22 = load ptr, ptr %0, align 8, !tbaa !98
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

declare void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK8Scenario19getIteratorPositionEPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %5 unwind label %23, !prof !120

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3
  %7 = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %8 unwind label %25, !prof !120

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16, !prof !120

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !92
  %15 = icmp ult i64 %14, 16
  call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %8
  call void @_ZdlPv(ptr noundef %9) #19
  br label %17

17:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  %18 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  %19 = icmp eq ptr %7, %18
  br i1 %19, label %20, label %39, !prof !133

20:                                               ; preds = %17
  %21 = call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef nonnull @.str.9, ptr noundef %1)
          to label %22 unwind label %37

22:                                               ; preds = %20
  call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

23:                                               ; preds = %2
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %35

25:                                               ; preds = %5
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = load ptr, ptr %3, align 8, !tbaa !98
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !92
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %35

34:                                               ; preds = %25
  call void @_ZdlPv(ptr noundef %27) #19
  br label %35

35:                                               ; preds = %34, %30, %23
  %36 = phi { ptr, i32 } [ %24, %23 ], [ %26, %30 ], [ %26, %34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %44

37:                                               ; preds = %20
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %21) #20
  br label %44

39:                                               ; preds = %17
  %40 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 32
  %41 = load ptr, ptr %40, align 8, !tbaa !144
  %42 = getelementptr inbounds %class.ValueIterator, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !158
  ret i32 %43

44:                                               ; preds = %37, %35
  %45 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  resume { ptr, i32 } %45
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK8Scenario3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %5 = load ptr, ptr %1, align 8, !tbaa !121
  %6 = getelementptr inbounds %"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = load ptr, ptr %5, align 8, !tbaa !124
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 7
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %3, i64 16
  %17 = getelementptr inbounds %class.Scenario, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  br label %22

20:                                               ; preds = %54, %2
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %21)
          to label %81 unwind label %83

22:                                               ; preds = %15, %54
  %23 = phi i64 [ 0, %15 ], [ %55, %54 ]
  %24 = icmp eq i64 %23, 0
  %25 = select i1 %24, ptr @.str.11, ptr @.str.10
  %26 = select i1 %24, i64 0, i64 2
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %25, i64 noundef %26)
          to label %28 unwind label %66

28:                                               ; preds = %22
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %30 unwind label %66

30:                                               ; preds = %28
  %31 = load ptr, ptr %1, align 8, !tbaa !121
  %32 = load ptr, ptr %31, align 8, !tbaa !124
  %33 = getelementptr inbounds %"struct.SectionBasedConfiguration::IterationVariable", ptr %32, i64 %23, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = getelementptr inbounds %"struct.SectionBasedConfiguration::IterationVariable", ptr %32, i64 %23, i32 1, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !92
  %37 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %34, i64 noundef %36)
          to label %38 unwind label %66

38:                                               ; preds = %30
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %40 unwind label %66

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %41 = load ptr, ptr %17, align 8, !tbaa !126
  %42 = getelementptr inbounds %class.ValueIterator, ptr %41, i64 %23
  invoke void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %43 unwind label %68

43:                                               ; preds = %40
  %44 = load ptr, ptr %4, align 8, !tbaa !98
  %45 = load i64, ptr %18, align 8, !tbaa !92
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %44, i64 noundef %45)
          to label %47 unwind label %70

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !98
  %49 = icmp eq ptr %48, %19
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, ptr %18, align 8, !tbaa !92
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %54

53:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %48) #19
  br label %54

54:                                               ; preds = %50, %53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  %55 = add nuw nsw i64 %23, 1
  %56 = load ptr, ptr %1, align 8, !tbaa !121
  %57 = getelementptr inbounds %"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data", ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !122
  %59 = load ptr, ptr %56, align 8, !tbaa !124
  %60 = ptrtoint ptr %58 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = shl i64 %62, 25
  %64 = ashr i64 %63, 32
  %65 = icmp slt i64 %55, %64
  br i1 %65, label %22, label %20, !llvm.loop !165

66:                                               ; preds = %38, %30, %28, %22
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %85

68:                                               ; preds = %40
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %79

70:                                               ; preds = %43
  %71 = landingpad { ptr, i32 }
          cleanup
  %72 = load ptr, ptr %4, align 8, !tbaa !98
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, ptr %18, align 8, !tbaa !92
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %79

78:                                               ; preds = %70
  call void @_ZdlPv(ptr noundef %72) #19
  br label %79

79:                                               ; preds = %78, %75, %68
  %80 = phi { ptr, i32 } [ %69, %68 ], [ %71, %75 ], [ %71, %78 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %85

81:                                               ; preds = %20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #20
  %82 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %82) #20
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  ret void

83:                                               ; preds = %20
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %85

85:                                               ; preds = %66, %79, %83
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %80, %79 ], [ %67, %66 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #20
  %87 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %87) #20
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN8Scenario17VariableReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !92
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %11

11:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN8Scenario17VariableReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !92
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8Scenario17VariableReference3dupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18
  %3 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  invoke void @_ZN8Scenario17VariableReferenceC2EPS_PKc(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret ptr %2

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #19
  resume { ptr, i32 } %9
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8Scenario17VariableReference7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8Scenario17VariableReference11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  ret ptr @.str.11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10Expression7Functor10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !80 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #23
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK8Scenario17VariableReference13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  ret i8 68
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReference8evaluateEPN10Expression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.Expression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !80 {
  %5 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  tail call void @_ZN8Scenario20getIterationVariableEPKc(ptr dead_on_unwind writable sret(%"struct.Expression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef %8)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReference3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !88
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !92
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !88
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !151

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !92
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !151

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !92
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #19
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !146

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !92
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #19
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #19
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !167
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !80 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !92
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !90, !alias.scope !170
  %10 = load ptr, ptr %7, align 8, !tbaa !98
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !92
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !98, !alias.scope !170
  %19 = load i64, ptr %11, align 8, !tbaa !81
  store i64 %19, ptr %9, align 8, !tbaa !81, !alias.scope !170
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !92
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !92, !alias.scope !170
  store ptr %11, ptr %7, align 8, !tbaa !98
  store i64 0, ptr %21, align 8, !tbaa !92
  store i8 0, ptr %11, align 8, !tbaa !81
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !92, !noalias !173
  %27 = load i64, ptr %23, align 8, !tbaa !92, !noalias !173
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #21
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !98, !noalias !173
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !90, !alias.scope !173
  %37 = load ptr, ptr %34, align 8, !tbaa !98
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !92
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !98, !alias.scope !173
  %46 = load i64, ptr %38, align 8, !tbaa !81
  store i64 %46, ptr %36, align 8, !tbaa !81, !alias.scope !173
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !92
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !92, !alias.scope !173
  store ptr %38, ptr %34, align 8, !tbaa !98
  store i64 0, ptr %48, align 8, !tbaa !92
  store i8 0, ptr %38, align 8, !tbaa !81
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %52 = load ptr, ptr %3, align 8, !tbaa !98
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !92
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #19
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !98
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !92
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #19
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !98
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !92
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #19
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !98
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !92
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #19
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !98
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !92
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #19
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !176, !range !177, !noundef !178
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !179
  ret i32 %3
}

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #9 align 2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4, !prof !180

4:                                                ; preds = %2, %19
  %5 = phi ptr [ %9, %19 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1, i32 0, i64 16
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %18, !prof !120

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1, i32 0, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa !92
  %17 = icmp ult i64 %16, 16
  tail call void @llvm.assume(i1 %17)
  br label %19

18:                                               ; preds = %4
  tail call void @_ZdlPv(ptr noundef %11) #19
  br label %19

19:                                               ; preds = %14, %18
  tail call void @_ZdlPv(ptr noundef %5) #19
  %20 = icmp eq ptr %9, null
  br i1 %20, label %21, label %4, !prof !120, !llvm.loop !183

21:                                               ; preds = %19, %2
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %72, label %4, !prof !133

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = load ptr, ptr %0, align 8, !tbaa !126
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 40
  %12 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = sdiv exact i64 %15, 40
  %17 = icmp ult i64 %11, 230584300921369396
  tail call void @llvm.assume(i1 %17)
  %18 = sub nuw nsw i64 230584300921369395, %11
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %23, label %21, !prof !120

21:                                               ; preds = %4
  %22 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_(ptr noundef %6, i64 noundef %1)
  store ptr %22, ptr %5, align 8, !tbaa !131
  br label %72

23:                                               ; preds = %4
  %24 = icmp ult i64 %18, %1
  br i1 %24, label %25, label %26, !prof !133

25:                                               ; preds = %23
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #21
  unreachable

26:                                               ; preds = %23
  %27 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %28 = add i64 %27, %11
  %29 = icmp ult i64 %28, %11
  %30 = tail call i64 @llvm.umin.i64(i64 %28, i64 230584300921369395)
  %31 = select i1 %29, i64 230584300921369395, i64 %30, !prof !133
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33, !prof !133

33:                                               ; preds = %26
  %34 = tail call noundef ptr @_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %31, ptr noundef null)
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi ptr [ %34, %33 ], [ null, %26 ]
  %37 = getelementptr inbounds %class.ValueIterator, ptr %36, i64 %11
  %38 = invoke noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_(ptr noundef %37, i64 noundef %1)
          to label %39 unwind label %43, !prof !120

39:                                               ; preds = %35
  %40 = invoke noundef ptr @_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_(ptr noundef %7, ptr noundef %6, ptr noundef %36)
          to label %41 unwind label %43, !prof !120

41:                                               ; preds = %39
  %42 = icmp eq ptr %7, %6
  br i1 %42, label %66, label %62, !prof !151

43:                                               ; preds = %39, %35
  %44 = phi ptr [ null, %35 ], [ %37, %39 ]
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = tail call ptr @__cxa_begin_catch(ptr %46) #20
  %48 = icmp eq ptr %44, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %class.ValueIterator, ptr %44, i64 %1
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi ptr [ %53, %51 ], [ %44, %49 ]
  tail call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %52) #20
  %53 = getelementptr inbounds %class.ValueIterator, ptr %52, i64 1
  %54 = icmp eq ptr %53, %50
  br i1 %54, label %57, label %51, !llvm.loop !132

55:                                               ; preds = %60
  %56 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %61 unwind label %73

57:                                               ; preds = %51, %43
  %58 = icmp eq ptr %36, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %57
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %60

60:                                               ; preds = %59, %57
  invoke void @__cxa_rethrow() #21
          to label %76 unwind label %55

61:                                               ; preds = %55
  resume { ptr, i32 } %56

62:                                               ; preds = %41, %62
  %63 = phi ptr [ %64, %62 ], [ %7, %41 ]
  tail call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %63) #20
  %64 = getelementptr inbounds %class.ValueIterator, ptr %63, i64 1
  %65 = icmp eq ptr %64, %6
  br i1 %65, label %66, label %62, !prof !151, !llvm.loop !132

66:                                               ; preds = %62, %41
  %67 = icmp eq ptr %7, null
  br i1 %67, label %69, label %68, !prof !120

68:                                               ; preds = %66
  tail call void @_ZdlPv(ptr noundef %7) #19
  br label %69

69:                                               ; preds = %66, %68
  store ptr %36, ptr %0, align 8, !tbaa !126
  %70 = getelementptr inbounds %class.ValueIterator, ptr %37, i64 %1
  store ptr %70, ptr %5, align 8, !tbaa !131
  %71 = getelementptr inbounds %class.ValueIterator, ptr %36, i64 %31
  store ptr %71, ptr %12, align 8, !tbaa !184
  br label %72

72:                                               ; preds = %21, %69, %2
  ret void

73:                                               ; preds = %55
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  tail call void @__clang_call_terminate(ptr %75) #22
  unreachable

76:                                               ; preds = %60
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %21, label %4, !prof !127

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZN13ValueIteratorC1EPKc(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef null)
          to label %7 unwind label %11, !prof !120

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %class.ValueIterator, ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %21, label %4, !prof !125, !llvm.loop !185

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #20
  %15 = icmp eq ptr %5, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %18, %16 ], [ %0, %11 ]
  tail call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %17) #20
  %18 = getelementptr inbounds %class.ValueIterator, ptr %17, i64 1
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %16, !llvm.loop !132

20:                                               ; preds = %16, %11
  invoke void @__cxa_rethrow() #21
          to label %29 unwind label %23

21:                                               ; preds = %7, %2
  %22 = phi ptr [ %0, %2 ], [ %9, %7 ]
  ret ptr %22

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %26

25:                                               ; preds = %23
  resume { ptr, i32 } %24

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #22
  unreachable

29:                                               ; preds = %20
  unreachable
}

declare void @_ZN13ValueIteratorC1EPKc(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !99 {
  %4 = icmp ugt i64 %1, 230584300921369395
  br i1 %4, label %5, label %9, !prof !133

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 461168601842738790
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 40
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !99 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %24, label %5, !prof !151

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %12, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %11, %8 ], [ %0, %3 ]
  invoke void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %8 unwind label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.ValueIterator, ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %class.ValueIterator, ptr %7, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false)
  %11 = getelementptr inbounds %class.ValueIterator, ptr %7, i64 1
  %12 = getelementptr inbounds %class.ValueIterator, ptr %6, i64 1
  %13 = icmp eq ptr %11, %1
  br i1 %13, label %24, label %5, !prof !151, !llvm.loop !186

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #20
  %18 = icmp eq ptr %6, %2
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %2, %14 ]
  tail call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %20) #20
  %21 = getelementptr inbounds %class.ValueIterator, ptr %20, i64 1
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %19, !llvm.loop !132

23:                                               ; preds = %19, %14
  invoke void @__cxa_rethrow() #21
          to label %32 unwind label %26

24:                                               ; preds = %8, %3
  %25 = phi ptr [ %2, %3 ], [ %12, %8 ]
  ret ptr %25

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %28 unwind label %29

28:                                               ; preds = %26
  resume { ptr, i32 } %27

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #22
  unreachable

32:                                               ; preds = %23
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = load ptr, ptr %1, align 8, !tbaa !188
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 72
  %10 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !188
  store ptr %16, ptr %10, align 8, !tbaa !187
  %17 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !189
  %18 = load ptr, ptr %1, align 8, !tbaa !100
  %19 = load ptr, ptr %3, align 8, !tbaa !100
  %20 = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %18, ptr %19, ptr noundef %16)
          to label %21 unwind label %22

21:                                               ; preds = %15
  store ptr %20, ptr %10, align 8, !tbaa !187
  ret void

22:                                               ; preds = %15
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %0, align 8, !tbaa !188
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %24) #19
  br label %27

27:                                               ; preds = %26, %22
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !99 {
  %4 = icmp ugt i64 %1, 128102389400760775
  br i1 %4, label %5, label %9, !prof !133

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 256204778801521550
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 72
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #18
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !80 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %42, label %5

5:                                                ; preds = %3, %16
  %6 = phi ptr [ %20, %16 ], [ %2, %3 ]
  %7 = phi ptr [ %19, %16 ], [ %0, %3 ]
  %8 = load i8, ptr %7, align 8, !tbaa !190, !range !177, !noundef !178
  store i8 %8, ptr %6, align 8, !tbaa !190
  %9 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %6, i64 0, i32 2
  %10 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %6, i64 0, i32 2, i32 2
  store ptr %11, ptr %9, align 8, !tbaa !90
  %12 = load ptr, ptr %10, align 8, !tbaa !98
  %13 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %12, ptr noundef %15)
          to label %16 unwind label %22

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %6, i64 0, i32 3
  %18 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, ptr noundef nonnull align 8 dereferenceable(28) %18, i64 28, i1 false)
  %19 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 1
  %20 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %6, i64 1
  %21 = icmp eq ptr %19, %1
  br i1 %21, label %42, label %5, !llvm.loop !192

22:                                               ; preds = %5
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = tail call ptr @__cxa_begin_catch(ptr %24) #20
  %26 = icmp eq ptr %6, %2
  br i1 %26, label %41, label %27

27:                                               ; preds = %22, %38
  %28 = phi ptr [ %39, %38 ], [ %2, %22 ]
  %29 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  %31 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %28, i64 0, i32 2, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %28, i64 0, i32 2, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !92
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  br label %38

37:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %30) #19
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %28, i64 1
  %40 = icmp eq ptr %39, %6
  br i1 %40, label %41, label %27, !llvm.loop !193

41:                                               ; preds = %38, %22
  invoke void @__cxa_rethrow() #21
          to label %50 unwind label %44

42:                                               ; preds = %16, %3
  %43 = phi ptr [ %2, %3 ], [ %20, %16 ]
  ret ptr %43

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %46 unwind label %47

46:                                               ; preds = %44
  resume { ptr, i32 } %45

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  tail call void @__clang_call_terminate(ptr %49) #22
  unreachable

50:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !194 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !154
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !195

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !98
  %11 = load i64, ptr %4, align 8, !tbaa !154
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !81
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !98
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !196

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !81
  store i8 %16, ptr %14, align 1, !tbaa !81
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !197
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !154
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !92
  %21 = load ptr, ptr %0, align 8, !tbaa !98
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %6 = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %8 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %9 unwind label %15, !prof !120

9:                                                ; preds = %5
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = extractvalue { ptr, ptr } %8, 1
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13, !prof !133

13:                                               ; preds = %9
  %14 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %6)
          to label %26 unwind label %15, !prof !120

15:                                               ; preds = %13, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load ptr, ptr %7, align 8, !tbaa !98
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 16
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %22 = load i64, ptr %21, align 8, !tbaa !92
  %23 = icmp ult i64 %22, 16
  tail call void @llvm.assume(i1 %23)
  br label %25

24:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef %17) #19
  br label %25

25:                                               ; preds = %24, %20
  tail call void @_ZdlPv(ptr noundef %6) #19
  resume { ptr, i32 } %16

26:                                               ; preds = %9, %13
  %27 = phi ptr [ null, %13 ], [ %6, %9 ]
  %28 = phi ptr [ %14, %13 ], [ %10, %9 ]
  %29 = icmp eq ptr %27, null
  br i1 %29, label %41, label %30, !prof !120

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %27, i64 0, i32 1, i32 0, i64 16
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %27, i64 0, i32 1, i32 0, i64 8
  %37 = load i64, ptr %36, align 8, !tbaa !92
  %38 = icmp ult i64 %37, 16
  tail call void @llvm.assume(i1 %38)
  br label %40

39:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %32) #19
  br label %40

40:                                               ; preds = %39, %35
  tail call void @_ZdlPv(ptr noundef %27) #19
  br label %41

41:                                               ; preds = %26, %40
  ret ptr %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6, !prof !151

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !92
  br label %9

9:                                                ; preds = %6, %29
  %10 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %11 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !92
  %14 = tail call i64 @llvm.umin.i64(i64 %8, i64 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %17, i64 noundef %14) #20
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i32 [ %20, %16 ], [ 0, %9 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %13, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  %34 = select i1 %31, ptr %11, ptr %10
  %35 = select i1 %31, ptr %32, ptr %33
  %36 = load ptr, ptr %35, align 8, !tbaa !100
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %9, !prof !151, !llvm.loop !198

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %39, !prof !120

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !108
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %35, label %10, !prof !120

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !92
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %14)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %2, align 8, !tbaa !98
  %22 = load ptr, ptr %20, align 8, !tbaa !98
  %23 = tail call i32 @memcmp(ptr noundef %22, ptr noundef %21, i64 noundef %17) #20
  br label %24

24:                                               ; preds = %19, %10
  %25 = phi i32 [ %23, %19 ], [ 0, %10 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = sub i64 %14, %16
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 -2147483648)
  %30 = tail call i64 @llvm.smin.i64(i64 %29, i64 2147483647)
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %24, %27
  %33 = phi i32 [ %25, %24 ], [ %31, %27 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %150, label %35

35:                                               ; preds = %32, %6
  %36 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %37 = extractvalue { ptr, ptr } %36, 0
  %38 = extractvalue { ptr, ptr } %36, 1
  br label %150

39:                                               ; preds = %3
  %40 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !92
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa !92
  %45 = tail call i64 @llvm.umin.i64(i64 %44, i64 %42)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %40, align 8, !tbaa !98
  %49 = load ptr, ptr %2, align 8, !tbaa !98
  %50 = tail call i32 @memcmp(ptr noundef %49, ptr noundef %48, i64 noundef %45) #20
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i32 [ %50, %47 ], [ 0, %39 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = sub i64 %42, %44
  %56 = tail call i64 @llvm.smax.i64(i64 %55, i64 -2147483648)
  %57 = tail call i64 @llvm.smin.i64(i64 %56, i64 2147483647)
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %51, %54
  %60 = phi i32 [ %52, %51 ], [ %58, %54 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %0, i64 24
  %64 = load ptr, ptr %63, align 8, !tbaa !100
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %150, label %66

66:                                               ; preds = %62
  %67 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %1) #23
  %68 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %67, i64 0, i32 1, i32 0, i64 8
  %69 = load i64, ptr %68, align 8, !tbaa !92
  %70 = tail call i64 @llvm.umin.i64(i64 %42, i64 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %67, i64 0, i32 1
  %74 = load ptr, ptr %2, align 8, !tbaa !98
  %75 = load ptr, ptr %73, align 8, !tbaa !98
  %76 = tail call i32 @memcmp(ptr noundef %75, ptr noundef %74, i64 noundef %70) #20
  br label %77

77:                                               ; preds = %72, %66
  %78 = phi i32 [ %76, %72 ], [ 0, %66 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = sub i64 %69, %42
  %82 = tail call i64 @llvm.smax.i64(i64 %81, i64 -2147483648)
  %83 = tail call i64 @llvm.smin.i64(i64 %82, i64 2147483647)
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %77, %80
  %86 = phi i32 [ %78, %77 ], [ %84, %80 ]
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %67, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !181
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr null, ptr %1
  %93 = select i1 %91, ptr %67, ptr %1
  br label %150

94:                                               ; preds = %85
  %95 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %96 = extractvalue { ptr, ptr } %95, 0
  %97 = extractvalue { ptr, ptr } %95, 1
  br label %150

98:                                               ; preds = %59
  br i1 %46, label %103, label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %2, align 8, !tbaa !98
  %101 = load ptr, ptr %40, align 8, !tbaa !98
  %102 = tail call i32 @memcmp(ptr noundef %101, ptr noundef %100, i64 noundef %45) #20
  br label %103

103:                                              ; preds = %99, %98
  %104 = phi i32 [ %102, %99 ], [ 0, %98 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = sub i64 %44, %42
  %108 = tail call i64 @llvm.smax.i64(i64 %107, i64 -2147483648)
  %109 = tail call i64 @llvm.smin.i64(i64 %108, i64 2147483647)
  %110 = trunc i64 %109 to i32
  br label %111

111:                                              ; preds = %103, %106
  %112 = phi i32 [ %104, %103 ], [ %110, %106 ]
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %150

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %0, i64 32
  %116 = load ptr, ptr %115, align 8, !tbaa !100
  %117 = icmp eq ptr %116, %1
  br i1 %117, label %150, label %118

118:                                              ; preds = %114
  %119 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #23
  %120 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %119, i64 0, i32 1, i32 0, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !92
  %122 = tail call i64 @llvm.umin.i64(i64 %121, i64 %42)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %119, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !98
  %127 = load ptr, ptr %2, align 8, !tbaa !98
  %128 = tail call i32 @memcmp(ptr noundef %127, ptr noundef %126, i64 noundef %122) #20
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i32 [ %128, %124 ], [ 0, %118 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = sub i64 %42, %121
  %134 = tail call i64 @llvm.smax.i64(i64 %133, i64 -2147483648)
  %135 = tail call i64 @llvm.smin.i64(i64 %134, i64 2147483647)
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %129, %132
  %138 = phi i32 [ %130, %129 ], [ %136, %132 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !181
  %143 = icmp eq ptr %142, null
  %144 = select i1 %143, ptr null, ptr %119
  %145 = select i1 %143, ptr %1, ptr %119
  br label %150

146:                                              ; preds = %137
  %147 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %148 = extractvalue { ptr, ptr } %147, 0
  %149 = extractvalue { ptr, ptr } %147, 1
  br label %150

150:                                              ; preds = %32, %111, %146, %114, %140, %94, %62, %88, %35
  %151 = phi ptr [ %37, %35 ], [ %96, %94 ], [ %64, %62 ], [ %92, %88 ], [ %148, %146 ], [ null, %114 ], [ %144, %140 ], [ %1, %111 ], [ null, %32 ]
  %152 = phi ptr [ %38, %35 ], [ %97, %94 ], [ %64, %62 ], [ %93, %88 ], [ %149, %146 ], [ %116, %114 ], [ %145, %140 ], [ null, %111 ], [ %12, %32 ]
  %153 = insertvalue { ptr, ptr } poison, ptr %151, 0
  %154 = insertvalue { ptr, ptr } %153, ptr %152, 1
  ret { ptr, ptr } %154
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %3, align 8, !tbaa !100
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 16
  store ptr %9, ptr %6, align 8, !tbaa !90
  %10 = load ptr, ptr %8, align 8, !tbaa !98
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %10, ptr noundef %13)
          to label %14 unwind label %16, !prof !120

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 32
  store ptr null, ptr %15, align 8, !tbaa !144
  ret void

16:                                               ; preds = %5
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = tail call ptr @__cxa_begin_catch(ptr %18) #20
  tail call void @_ZdlPv(ptr noundef %1) #19
  invoke void @__cxa_rethrow() #21
          to label %26 unwind label %20

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %23

22:                                               ; preds = %20
  resume { ptr, i32 } %21

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #22
  unreachable

26:                                               ; preds = %16
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !100
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7, !prof !151

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !92
  br label %10

10:                                               ; preds = %7, %29
  %11 = phi ptr [ %5, %7 ], [ %35, %29 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !92
  %14 = tail call i64 @llvm.umin.i64(i64 %13, i64 %9)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = tail call i32 @memcmp(ptr noundef %17, ptr noundef %19, i64 noundef %14) #20
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ %20, %16 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %9, %13
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %34 = select i1 %31, ptr %32, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !100
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %10, !prof !151, !llvm.loop !199

37:                                               ; preds = %29, %2
  %38 = phi ptr [ %4, %2 ], [ %11, %29 ]
  %39 = phi i1 [ true, %2 ], [ %31, %29 ]
  %40 = phi ptr [ %5, %2 ], [ %35, %29 ]
  br i1 %39, label %41, label %47, !prof !120

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %0, i64 24
  %43 = load ptr, ptr %42, align 8, !tbaa !106
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %73, label %45, !prof !120

45:                                               ; preds = %41
  %46 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %38) #23
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi ptr [ %46, %45 ], [ %38, %37 ]
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1, i32 0, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !92
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !92
  %53 = tail call i64 @llvm.umin.i64(i64 %52, i64 %50)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1
  %57 = load ptr, ptr %1, align 8, !tbaa !98
  %58 = load ptr, ptr %56, align 8, !tbaa !98
  %59 = tail call i32 @memcmp(ptr noundef %58, ptr noundef %57, i64 noundef %53) #20
  br label %60

60:                                               ; preds = %55, %47
  %61 = phi i32 [ %59, %55 ], [ 0, %47 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = sub i64 %50, %52
  %65 = tail call i64 @llvm.smax.i64(i64 %64, i64 -2147483648)
  %66 = tail call i64 @llvm.smin.i64(i64 %65, i64 2147483647)
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi i32 [ %61, %60 ], [ %67, %63 ]
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, ptr %40, ptr %48
  %72 = select i1 %70, ptr %38, ptr null
  br label %73

73:                                               ; preds = %68, %41
  %74 = phi ptr [ %40, %41 ], [ %71, %68 ]
  %75 = phi ptr [ %38, %41 ], [ %72, %68 ]
  %76 = insertvalue { ptr, ptr } poison, ptr %74, 0
  %77 = insertvalue { ptr, ptr } %76, ptr %75, 1
  ret { ptr, ptr } %77
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %5 = icmp ne ptr %1, null
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = icmp eq ptr %6, %2
  %8 = select i1 %5, i1 true, i1 %7, !prof !133
  br i1 %8, label %33, label %9, !prof !120

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1, i32 0, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !92
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1, i32 0, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !92
  %14 = tail call i64 @llvm.umin.i64(i64 %13, i64 %11)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %17, align 8, !tbaa !98
  %20 = load ptr, ptr %18, align 8, !tbaa !98
  %21 = tail call i32 @memcmp(ptr noundef %20, ptr noundef %19, i64 noundef %14) #20
  br label %22

22:                                               ; preds = %16, %9
  %23 = phi i32 [ %21, %16 ], [ 0, %9 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = sub i64 %11, %13
  %27 = tail call i64 @llvm.smax.i64(i64 %26, i64 -2147483648)
  %28 = tail call i64 @llvm.smin.i64(i64 %27, i64 2147483647)
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %22, %25
  %31 = phi i32 [ %23, %22 ], [ %29, %25 ]
  %32 = icmp slt i32 %31, 0
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i1 [ true, %4 ], [ %32, %30 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %34, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  %35 = getelementptr inbounds i8, ptr %0, i64 40
  %36 = load i64, ptr %35, align 8, !tbaa !108
  %37 = add i64 %36, 1
  store i64 %37, ptr %35, align 8, !tbaa !108
  ret ptr %3
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !200 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8, !prof !201

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !92
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !201

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = load ptr, ptr %1, align 8, !tbaa !98
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %17, i64 noundef %13) #20, !prof !202
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28, !prof !203

23:                                               ; preds = %20
  %24 = sub i64 %10, %12
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 -2147483648)
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 2147483647)
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %5, ptr %6, !prof !201
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi ptr [ %5, %2 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !200 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %41, label %6, !prof !204

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !92
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %36
  %11 = phi ptr [ %1, %6 ], [ %39, %36 ]
  %12 = phi ptr [ %2, %6 ], [ %37, %36 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !92
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17, !prof !201

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %9, i64 noundef %15) #20, !prof !202
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !203

24:                                               ; preds = %21
  %25 = sub i64 %14, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %34, label %32, !prof !201

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %12, %34 ], [ %11, %32 ]
  %38 = phi ptr [ %35, %34 ], [ %33, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %10, !prof !205, !llvm.loop !206

41:                                               ; preds = %36, %4
  %42 = phi ptr [ %2, %4 ], [ %37, %36 ]
  ret ptr %42
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #10

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #4 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!79}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!35 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm, i64 2}
!36 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZN13ValueIterator5parseEPKc, i64 2}
!37 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, i64 2}
!38 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm, i64 2}
!39 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_, i64 2}
!40 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, i64 2}
!41 = !{ptr @_ZN8ScenarioD2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, i64 2}
!42 = !{ptr @_ZN8ScenarioD2Ev, ptr @_ZN13ValueIteratorD1Ev, i64 2}
!43 = !{ptr @_ZN8ScenarioD2Ev, ptr @_ZdlPv, i64 2}
!44 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 4}
!45 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, i64 4}
!46 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNK13ValueIterator3getB5cxx11Ev, i64 4}
!47 = !{ptr @_ZN8Scenario10getNumRunsEv, ptr @_ZN8Scenario7restartEv, i64 2}
!48 = !{ptr @_ZN8Scenario10getNumRunsEv, ptr @_ZN8Scenario4nextEv, i64 2}
!49 = !{ptr @_ZN8Scenario7restartEv, ptr @_ZN13ValueIterator7restartEv, i64 4}
!50 = !{ptr @_ZN8Scenario7restartEv, ptr @_ZNK13ValueIterator3endEv, i64 4}
!51 = !{ptr @_ZN8Scenario4nextEv, ptr @_ZN8Scenario3incEv, i64 2}
!52 = !{ptr @_ZN8Scenario3incEv, ptr @_ZN13ValueIteratorppEi, i64 2}
!53 = !{ptr @_ZN8Scenario3incEv, ptr @_ZNK13ValueIterator3endEv, i64 2}
!54 = !{ptr @_ZN8Scenario3incEv, ptr @_ZN13ValueIterator7restartEv, i64 2}
!55 = !{ptr @_ZN8Scenario7gotoRunEi, ptr @_ZN8Scenario7restartEv, i64 2}
!56 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 2}
!57 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, i64 2}
!58 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!59 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!60 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, i64 2}
!61 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, ptr @_ZdlPv, i64 2}
!62 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm, ptr @_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv, i64 2}
!63 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm, ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_, i64 2}
!64 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm, ptr @_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_, i64 2}
!65 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_, ptr @_ZN13ValueIteratorC1EPKc, i64 2}
!66 = !{ptr @_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv, ptr @_Znwm, i64 2}
!67 = !{ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv, ptr @_Znwm, i64 2}
!68 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399683}
!69 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_Znwm, i64 2}
!70 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, i64 2}
!71 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, i64 2}
!72 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E, i64 2}
!73 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, i64 2}
!74 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 2}
!75 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 2}
!76 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, i64 6}
!77 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @memcmp, i64 6}
!78 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, ptr @memcmp, i64 6}
!79 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!80 = !{!"function_entry_count", i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C++ TBAA"}
!84 = !{!85, !87, i64 8}
!85 = !{!"_ZTS8Resolver", !86, i64 0, !87, i64 8}
!86 = !{!"_ZTSN10Expression8ResolverE"}
!87 = !{!"any pointer", !82, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"vtable pointer", !83, i64 0}
!90 = !{!91, !87, i64 0}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !87, i64 0}
!92 = !{!93, !94, i64 8}
!93 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !91, i64 0, !94, i64 8, !82, i64 16}
!94 = !{!"long", !82, i64 0}
!95 = !{!96, !87, i64 8}
!96 = !{!"_ZTSN8Scenario17VariableReferenceE", !97, i64 0, !87, i64 8, !93, i64 16}
!97 = !{!"_ZTSN10Expression7FunctorE"}
!98 = !{!93, !87, i64 0}
!99 = !{!"function_entry_count", i64 2}
!100 = !{!87, !87, i64 0}
!101 = !{!102, !104, i64 0}
!102 = !{!"_ZTSSt15_Rb_tree_header", !103, i64 0, !94, i64 32}
!103 = !{!"_ZTSSt18_Rb_tree_node_base", !104, i64 0, !87, i64 8, !87, i64 16, !87, i64 24}
!104 = !{!"_ZTSSt14_Rb_tree_color", !82, i64 0}
!105 = !{!102, !87, i64 8}
!106 = !{!102, !87, i64 16}
!107 = !{!102, !87, i64 24}
!108 = !{!102, !94, i64 32}
!109 = !{!110, !87, i64 8}
!110 = !{!"_ZTS8Scenario", !87, i64 0, !87, i64 8, !111, i64 16, !115, i64 40}
!111 = !{!"_ZTSSt6vectorI13ValueIteratorSaIS0_EE", !112, i64 0}
!112 = !{!"_ZTSSt12_Vector_baseI13ValueIteratorSaIS0_EE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseI13ValueIteratorSaIS0_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!115 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !116, i64 0}
!116 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !117, i64 0}
!117 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !118, i64 0, !102, i64 8}
!118 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !119, i64 0}
!119 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!120 = !{!"branch_weights", i32 2, i32 0}
!121 = !{!110, !87, i64 0}
!122 = !{!123, !87, i64 8}
!123 = !{!"_ZTSNSt12_Vector_baseIN25SectionBasedConfiguration17IterationVariableESaIS1_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!124 = !{!123, !87, i64 0}
!125 = !{!"branch_weights", i32 127, i32 1}
!126 = !{!114, !87, i64 0}
!127 = !{!"branch_weights", i32 1, i32 127}
!128 = distinct !{!128, !129, !130}
!129 = !{!"llvm.loop.mustprogress"}
!130 = !{!"llvm.loop.unroll.disable"}
!131 = !{!114, !87, i64 8}
!132 = distinct !{!132, !129, !130}
!133 = !{!"branch_weights", i32 0, i32 2}
!134 = !{!135, !136, i64 0}
!135 = !{!"_ZTSN10Expression5ValueE", !136, i64 0, !137, i64 4, !138, i64 8, !93, i64 16}
!136 = !{!"_ZTSN10Expression5ValueUt_E", !82, i64 0}
!137 = !{!"bool", !82, i64 0}
!138 = !{!"double", !82, i64 0}
!139 = !{!135, !137, i64 4}
!140 = !{!135, !138, i64 8}
!141 = !{!"function_entry_count", i64 4}
!142 = !{!"branch_weights", i32 4, i32 0}
!143 = !{!"branch_weights", i32 0, i32 4}
!144 = !{!145, !87, i64 32}
!145 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorE", !93, i64 0, !87, i64 32}
!146 = !{!"branch_weights", i32 0, i32 1}
!147 = distinct !{!147, !129, !130}
!148 = distinct !{!148, !129, !130}
!149 = distinct !{!149, !129, !130}
!150 = distinct !{!150, !129, !130}
!151 = !{!"branch_weights", i32 1, i32 0}
!152 = distinct !{!152, !129, !130}
!153 = distinct !{!153, !129, !130}
!154 = !{!94, !94, i64 0}
!155 = !{!"branch_weights", i32 1257662, i32 631781}
!156 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!157 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!158 = !{!159, !164, i64 32}
!159 = !{!"_ZTS13ValueIterator", !160, i64 0, !164, i64 24, !164, i64 28, !164, i64 32}
!160 = !{!"_ZTSSt6vectorIN13ValueIterator4ItemESaIS1_EE", !161, i64 0}
!161 = !{!"_ZTSSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE", !162, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implE", !163, i64 0}
!163 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!164 = !{!"int", !82, i64 0}
!165 = distinct !{!165, !129, !130}
!166 = !{!"function_entry_count", i64 1}
!167 = !{!168, !164, i64 8}
!168 = !{!"_ZTS10cException", !169, i64 0, !164, i64 8, !93, i64 16, !137, i64 48, !93, i64 56, !93, i64 88, !164, i64 120}
!169 = !{!"_ZTSSt9exception"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!172 = distinct !{!172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!175 = distinct !{!175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!176 = !{!168, !137, i64 48}
!177 = !{i8 0, i8 2}
!178 = !{}
!179 = !{!168, !164, i64 120}
!180 = !{!"branch_weights", i32 2, i32 2}
!181 = !{!103, !87, i64 24}
!182 = !{!103, !87, i64 16}
!183 = distinct !{!183, !129, !130}
!184 = !{!114, !87, i64 16}
!185 = distinct !{!185, !129, !130}
!186 = distinct !{!186, !129, !130}
!187 = !{!163, !87, i64 8}
!188 = !{!163, !87, i64 0}
!189 = !{!163, !87, i64 16}
!190 = !{!191, !137, i64 0}
!191 = !{!"_ZTSN13ValueIterator4ItemE", !137, i64 0, !93, i64 8, !138, i64 40, !138, i64 48, !138, i64 56, !164, i64 64}
!192 = distinct !{!192, !129, !130}
!193 = distinct !{!193, !129, !130}
!194 = !{!"function_entry_count", i64 1974042}
!195 = !{!"branch_weights", i32 1399683, i32 574359}
!196 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!197 = !{!"VP", i32 1, i64 1590758, i64 17, i64 829384, i64 32, i64 307024, i64 33, i64 262262, i64 8, i64 98100}
!198 = distinct !{!198, !129, !130}
!199 = distinct !{!199, !129, !130}
!200 = !{!"function_entry_count", i64 6}
!201 = !{!"branch_weights", i32 0, i32 6}
!202 = !{!"VP", i32 1, i64 6, i64 9, i64 6}
!203 = !{!"branch_weights", i32 6, i32 0}
!204 = !{!"branch_weights", i32 1, i32 191}
!205 = !{!"branch_weights", i32 191, i32 1}
!206 = distinct !{!206, !129, !130}
