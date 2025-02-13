; ModuleID = 'simulator/patternmatcher.cc'
source_filename = "simulator/patternmatcher.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.PatternMatcher = type { %"class.std::vector", i8, %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl" }
%"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl" = type { %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data" }
%"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.PatternMatcher::Elem" = type { i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i64, i64 }
%"class.__gnu_cxx::__normal_iterator.3" = type { ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.std::vector<PatternMatcher::Elem>::_Temporary_value" = type { ptr, %"union.std::vector<PatternMatcher::Elem>::_Temporary_value::_Storage" }
%"union.std::vector<PatternMatcher::Elem>::_Temporary_value::_Storage" = type { %"struct.PatternMatcher::Elem" }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.4 }
%union.anon.4 = type { ptr }

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN14PatternMatcher4ElemEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN14PatternMatcher4ElemEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN14PatternMatcher4ElemEEEvT_S5_ = comdat any

$_ZSt8_DestroyIN14PatternMatcher4ElemEEvPT_ = comdat any

$_ZN14PatternMatcher4ElemD2Ev = comdat any

$_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE10deallocateEPS1_m = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5clearEv = comdat any

$_ZN14PatternMatcher4ElemC2Ev = comdat any

$_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5emptyEv = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE4backEv = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5frontEv = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZN9__gnu_cxxeqIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_ = comdat any

$_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv = comdat any

$_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS4_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZN14PatternMatcher4ElemC2ERKS0_ = comdat any

$_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_ = comdat any

$_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZN14PatternMatcher4ElemC2EOS0_ = comdat any

$_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE7destroyIS1_EEvPT_ = comdat any

$_ZN9__gnu_cxxmiIPKN14PatternMatcher4ElemEPS2_St6vectorIS2_SaIS2_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNSA_IT0_SC_EE = comdat any

$_ZN9__gnu_cxxeqIPKN14PatternMatcher4ElemEPS2_St6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEplEl = comdat any

$_ZN9__gnu_cxxmiIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_ = comdat any

$_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE6cbeginEv = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_ = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value6_M_valEv = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueD2Ev = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value8_StorageC2Ev = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value6_M_ptrEv = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value8_StorageD2Ev = comdat any

$_ZSt13move_backwardIPN14PatternMatcher4ElemES2_ET0_T_S4_S3_ = comdat any

$_ZN14PatternMatcher4ElemaSEOS0_ = comdat any

$_ZSt22__copy_move_backward_aILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPN14PatternMatcher4ElemEET_S3_ = comdat any

$_ZSt12__niter_wrapIPN14PatternMatcher4ElemEET_RKS3_S3_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN14PatternMatcher4ElemES5_EET0_T_S7_S6_ = comdat any

$_Z11opp_toupperh = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_Z11opp_isdigith = comdat any

$_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unmatched '}' in expression\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"?!\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SET(%s)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"NEGSET(%s)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%ld..%ld\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.13 = private unnamed_addr constant [78 x i8] c"PatternMatcher: patternPrefixMatches() doesn't support case-insensitive match\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"..\00", align 1

@_ZN14PatternMatcherC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14PatternMatcherC2Ev
@_ZN14PatternMatcherC1EPKcbbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1, i1), ptr @_ZN14PatternMatcherC2EPKcbbb
@_ZN14PatternMatcherD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN14PatternMatcherD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN14PatternMatcherC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !131 {
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %2 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZNSaIN14PatternMatcher4ElemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN14PatternMatcher4ElemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !132 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternMatcherC2EPKcbbb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  invoke void @_ZN14PatternMatcher10setPatternEPKcbbb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #19
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternMatcher10setPatternEPKcbbb(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.PatternMatcher::Elem", align 8
  %8 = alloca %"struct.PatternMatcher::Elem", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"struct.PatternMatcher::Elem", align 8
  %12 = zext i1 %4 to i8
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %13 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  store i8 %12, ptr %13, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  store ptr %1, ptr %6, align 8, !tbaa !146
  %14 = load i8, ptr %1, align 1, !tbaa !147
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %57, label %16, !prof !148

16:                                               ; preds = %5, %53
  %17 = phi ptr [ %54, %53 ], [ %1, %5 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #17
  call void @_ZN14PatternMatcher4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %7) #16
  %18 = load i8, ptr %17, align 1, !tbaa !147
  switch i8 %18, label %51 [
    i8 63, label %19
    i8 91, label %22
    i8 123, label %35
    i8 42, label %43
  ], !prof !149

19:                                               ; preds = %16
  %20 = select i1 %2, i32 2, i32 1
  store i32 %20, ptr %7, align 8, !tbaa !150
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %21, ptr %6, align 8, !tbaa !146
  br label %52

22:                                               ; preds = %16
  %23 = call noundef zeroext i1 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %23, label %51, label %24

24:                                               ; preds = %22
  %25 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %26 = load i32, ptr %25, align 8, !tbaa !150
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 3
  %30 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 4
  %31 = call noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 93, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %30) #19
  br i1 %31, label %34, label %51

32:                                               ; preds = %51, %52, %42
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %7) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #17
  br label %85

34:                                               ; preds = %28
  store i32 5, ptr %7, align 8, !tbaa !150
  br label %52

35:                                               ; preds = %16
  %36 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 3
  %37 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 0, i32 4
  %38 = call noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 125, ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %37) #19
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  store i32 5, ptr %7, align 8, !tbaa !150
  %40 = load ptr, ptr %6, align 8, !tbaa !146
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %41, ptr %6, align 8, !tbaa !146
  br label %52

42:                                               ; preds = %35
  invoke void @_ZN14PatternMatcher8parseSetERPKcRNS_4ElemE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(88) %7) #19
          to label %52 unwind label %32

43:                                               ; preds = %16
  %44 = getelementptr inbounds i8, ptr %17, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !147
  %46 = icmp eq i8 %45, 42
  br i1 %46, label %47, label %49, !prof !153

47:                                               ; preds = %43
  store i32 6, ptr %7, align 8, !tbaa !150
  %48 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %48, ptr %6, align 8, !tbaa !146
  br label %52

49:                                               ; preds = %43
  %50 = select i1 %2, i32 7, i32 6
  store i32 %50, ptr %7, align 8, !tbaa !150
  store ptr %44, ptr %6, align 8, !tbaa !146
  br label %52

51:                                               ; preds = %22, %24, %28, %16
  invoke void @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(88) %7) #19
          to label %52 unwind label %32

52:                                               ; preds = %51, %47, %49, %39, %42, %34, %19
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %7) #19
          to label %53 unwind label %32

53:                                               ; preds = %52
  call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %7) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #17
  %54 = load ptr, ptr %6, align 8, !tbaa !146
  %55 = load i8, ptr %54, align 1, !tbaa !147
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %16, !prof !154, !llvm.loop !155

57:                                               ; preds = %53, %5
  br i1 %3, label %81, label %58, !prof !157

58:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #17
  call void @_ZN14PatternMatcher4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %8) #16
  store i32 6, ptr %8, align 8, !tbaa !150
  %59 = call noundef zeroext i1 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %59, label %64, label %60

60:                                               ; preds = %58
  %61 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %62 = load i32, ptr %61, align 8, !tbaa !150
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %67, label %64

64:                                               ; preds = %60, %58
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %8) #19
          to label %67 unwind label %65

65:                                               ; preds = %64
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %79

67:                                               ; preds = %64, %60
  %68 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %69 = load i32, ptr %68, align 8, !tbaa !150
  %70 = icmp eq i32 %69, 6
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %72 = call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %72, ptr %10, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %73 = load ptr, ptr %9, align 8
  %74 = invoke ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %73, ptr noundef nonnull align 8 dereferenceable(88) %8) #19
          to label %75 unwind label %76

75:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  br label %78

76:                                               ; preds = %71
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  br label %79

78:                                               ; preds = %75, %67
  call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %8) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #17
  br label %81

79:                                               ; preds = %76, %65
  %80 = phi { ptr, i32 } [ %77, %76 ], [ %66, %65 ]
  call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %8) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #17
  br label %85

81:                                               ; preds = %78, %57
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %11) #17
  call void @_ZN14PatternMatcher4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #16
  store i32 8, ptr %11, align 8, !tbaa !150
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %11) #19
          to label %82 unwind label %83

82:                                               ; preds = %81
  call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret void

83:                                               ; preds = %81
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %11) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %11) #17
  br label %85

85:                                               ; preds = %83, %79, %32
  %86 = phi { ptr, i32 } [ %33, %32 ], [ %84, %83 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  resume { ptr, i32 } %86
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %2 = load ptr, ptr %0, align 8, !tbaa !159
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #19
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #18
  unreachable
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat !prof !158 {
  tail call void @_ZSt8_DestroyIPN14PatternMatcher4ElemEEvT_S3_(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !161 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %2 = load ptr, ptr %0, align 8, !tbaa !159
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 88
  invoke void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #19
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN14PatternMatcher4ElemEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !158 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14PatternMatcher4ElemEEEvT_S5_(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14PatternMatcher4ElemEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !158 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !163

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN14PatternMatcher4ElemEEvPT_(ptr noundef %5) #19
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !164, !llvm.loop !165

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN14PatternMatcher4ElemEEvPT_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !166 {
  tail call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !167 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !168

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #19
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !158 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !169 {
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN14PatternMatcherD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !158 {
  %2 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !132 {
  %2 = load ptr, ptr %0, align 8, !tbaa !159
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14PatternMatcher4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %4 = tail call ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = tail call ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #16
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 !prof !170 {
  store i64 -1, ptr %4, align 8, !tbaa !171
  store i64 -1, ptr %3, align 8, !tbaa !171
  %6 = load ptr, ptr %1, align 8, !tbaa !146
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !147
  %9 = tail call noundef zeroext i1 @_Z11opp_isdigith(i8 noundef zeroext %8) #19
  br i1 %9, label %10, label %17, !prof !172

10:                                               ; preds = %5
  %11 = tail call i64 @atol(ptr nocapture noundef nonnull %7) #21
  store i64 %11, ptr %3, align 8, !tbaa !171
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %7, %10 ], [ %16, %12 ]
  %14 = load i8, ptr %13, align 1, !tbaa !147
  %15 = tail call noundef zeroext i1 @_Z11opp_isdigith(i8 noundef zeroext %14) #19
  %16 = getelementptr inbounds i8, ptr %13, i64 1
  br i1 %15, label %12, label %17, !prof !173, !llvm.loop !174

17:                                               ; preds = %12, %5
  %18 = phi ptr [ %7, %5 ], [ %13, %12 ]
  %19 = load i8, ptr %18, align 1, !tbaa !147
  %20 = icmp eq i8 %19, 46
  br i1 %20, label %21, label %41, !prof !175

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !147
  %24 = icmp eq i8 %23, 46
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %18, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !147
  %28 = tail call noundef zeroext i1 @_Z11opp_isdigith(i8 noundef zeroext %27) #19
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = tail call i64 @atol(ptr nocapture noundef nonnull %26) #21
  store i64 %30, ptr %4, align 8, !tbaa !171
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %26, %29 ], [ %35, %31 ]
  %33 = load i8, ptr %32, align 1, !tbaa !147
  %34 = tail call noundef zeroext i1 @_Z11opp_isdigith(i8 noundef zeroext %33) #19
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  br i1 %34, label %31, label %36, !llvm.loop !176

36:                                               ; preds = %31, %25
  %37 = phi ptr [ %26, %25 ], [ %32, %31 ]
  %38 = load i8, ptr %37, align 1, !tbaa !147
  %39 = icmp eq i8 %38, %2
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr %37, ptr %1, align 8, !tbaa !146
  br label %41

41:                                               ; preds = %36, %17, %21, %40
  %42 = phi i1 [ true, %40 ], [ false, %21 ], [ false, %17 ], [ false, %36 ]
  ret i1 %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 align 2 !prof !177 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store i32 0, ptr %2, align 8, !tbaa !150
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %1, align 8, !tbaa !146
  br label %8

8:                                                ; preds = %27, %3
  %9 = phi ptr [ %29, %27 ], [ %7, %3 ]
  %10 = load i8, ptr %9, align 1, !tbaa !147
  switch i8 %10, label %11 [
    i8 0, label %30
    i8 63, label %30
    i8 123, label %30
    i8 42, label %30
  ], !prof !178

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %12 = icmp eq i8 %10, 92
  br i1 %12, label %13, label %16, !prof !179

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %14, ptr %1, align 8, !tbaa !146
  %15 = load i8, ptr %14, align 1, !tbaa !147
  br label %16

16:                                               ; preds = %11, %13
  %17 = phi i8 [ %15, %13 ], [ %10, %11 ]
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext %17) #19
  %19 = load ptr, ptr %1, align 8, !tbaa !146
  %20 = load i8, ptr %19, align 1, !tbaa !147
  %21 = icmp eq i8 %20, 91
  br i1 %21, label %22, label %27, !prof !180

22:                                               ; preds = %16
  store ptr %19, ptr %5, align 8, !tbaa !146
  %23 = call noundef zeroext i1 @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext 93, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %23, label %26, label %24, !prof !175

24:                                               ; preds = %22
  %25 = load ptr, ptr %1, align 8, !tbaa !146
  br label %27

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %30

27:                                               ; preds = %24, %16
  %28 = phi ptr [ %25, %24 ], [ %19, %16 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %1, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %8

30:                                               ; preds = %8, %8, %8, %8, %26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternMatcher8parseSetERPKcRNS_4ElemE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = alloca [3 x i8], align 1
  %5 = load ptr, ptr %1, align 8, !tbaa !146
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !146
  store i32 3, ptr %2, align 8, !tbaa !150
  %7 = load i8, ptr %6, align 1, !tbaa !147
  %8 = icmp eq i8 %7, 94
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  store i32 4, ptr %2, align 8, !tbaa !150
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %10, ptr %1, align 8, !tbaa !146
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %6, %3 ]
  %13 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  %14 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %15 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %2, i64 0, i32 2
  br label %17

17:                                               ; preds = %43, %11
  %18 = phi ptr [ %45, %43 ], [ %12, %11 ]
  %19 = load i8, ptr %18, align 1, !tbaa !147
  switch i8 %19, label %22 [
    i8 0, label %46
    i8 125, label %20
  ]

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, %12
  br i1 %21, label %22, label %51

22:                                               ; preds = %17, %20
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #17
  store i8 0, ptr %13, align 1, !tbaa !147
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !147
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %18, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !147
  switch i8 %28, label %29 [
    i8 0, label %32
    i8 125, label %32
  ]

29:                                               ; preds = %26
  %30 = load i8, ptr %18, align 1, !tbaa !147
  store i8 %30, ptr %4, align 1, !tbaa !147
  store i8 %28, ptr %14, align 1, !tbaa !147
  %31 = getelementptr inbounds i8, ptr %18, i64 3
  br label %34

32:                                               ; preds = %26, %26, %22
  %33 = load i8, ptr %18, align 1, !tbaa !147
  store i8 %33, ptr %14, align 1, !tbaa !147
  store i8 %33, ptr %4, align 1, !tbaa !147
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i8 [ %33, %32 ], [ %30, %29 ]
  %36 = phi ptr [ %23, %32 ], [ %31, %29 ]
  store ptr %36, ptr %1, align 8, !tbaa !146
  %37 = load i8, ptr %15, align 8, !tbaa !133, !range !181, !noundef !182
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call noundef signext i8 @_Z11opp_toupperh(i8 noundef zeroext %35) #19
  store i8 %40, ptr %4, align 1, !tbaa !147
  %41 = load i8, ptr %14, align 1, !tbaa !147
  %42 = call noundef signext i8 @_Z11opp_toupperh(i8 noundef zeroext %41) #19
  store i8 %42, ptr %14, align 1, !tbaa !147
  br label %43

43:                                               ; preds = %39, %34
  %44 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #17
  %45 = load ptr, ptr %1, align 8, !tbaa !146
  br label %17, !llvm.loop !183

46:                                               ; preds = %17
  %47 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull @.str.1) #19
          to label %48 unwind label %49

48:                                               ; preds = %46
  call void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #22
  unreachable

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %47) #17
  resume { ptr, i32 } %50

51:                                               ; preds = %20
  %52 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %52, ptr %1, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 !prof !184 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !185

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(88) %1) #19
  %9 = load ptr, ptr %3, align 8, !tbaa !160
  %10 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !160
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(88) %1) #19
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = tail call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %3, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %10 = alloca %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %13 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %14 = tail call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %14, ptr %6, align 8
  %15 = call noundef i64 @_ZN9__gnu_cxxmiIPKN14PatternMatcher4ElemEPS2_St6vectorIS2_SaIS2_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNSA_IT0_SC_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  %16 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !162
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %37, label %21

21:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %22 = call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %22, ptr %7, align 8
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN14PatternMatcher4ElemEPS2_St6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load ptr, ptr %16, align 8, !tbaa !160
  call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  %26 = load ptr, ptr %16, align 8, !tbaa !160
  %27 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %26, i64 1
  store ptr %27, ptr %16, align 8, !tbaa !160
  br label %42

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %29 = call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %29, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %30 = call ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %30, ptr %9, align 8
  %31 = call noundef i64 @_ZN9__gnu_cxxmiIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #16
  %32 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %31) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %10) #17
  call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  %33 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(96) %10) #16
  invoke void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %32, ptr noundef nonnull align 8 dereferenceable(88) %33) #19
          to label %34 unwind label %35

34:                                               ; preds = %28
  call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %10) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #17
  br label %42

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %10) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %10) #17
  resume { ptr, i32 } %36

37:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  %38 = call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %38, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #17
  %39 = call ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %39, ptr %12, align 8
  %40 = call noundef i64 @_ZN9__gnu_cxxmiIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %12) #16
  %41 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %40) #16
  call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %41, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  br label %42

42:                                               ; preds = %24, %34, %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #17
  %43 = load ptr, ptr %0, align 8, !tbaa !159
  %44 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %43, i64 %15
  store ptr %44, ptr %13, align 8, !tbaa !146
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #17
  %45 = load ptr, ptr %4, align 8
  ret ptr %45
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !186 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2IPS2_vEERKNS0_IT_S7_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !131 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %4, ptr %0, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !132 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !157

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #19
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !160
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !131 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !131 {
  %3 = load ptr, ptr %1, align 8, !tbaa !146
  store ptr %3, ptr %0, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !186 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !189
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !146
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !191 {
  %3 = load ptr, ptr %1, align 8, !tbaa !146
  store ptr %3, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 comdat align 2 !prof !184 {
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #19
  %7 = load ptr, ptr %0, align 8, !tbaa !159
  %8 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %10 = tail call ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %12 = call noundef ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #19
  %13 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 %11
  invoke void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
          to label %14 unwind label %31

14:                                               ; preds = %3
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = call noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %16, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %17) #16
  %19 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %18, i64 1
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %21 = load ptr, ptr %20, align 8, !tbaa !146
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = call noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %21, ptr noundef %9, ptr noundef nonnull %19, ptr noundef nonnull align 1 dereferenceable(1) %22) #16
  %24 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !162
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %7 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 88
  call void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %29) #19
  store ptr %12, ptr %0, align 8, !tbaa !159
  store ptr %23, ptr %8, align 8, !tbaa !160
  %30 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 %6
  store ptr %30, ptr %24, align 8, !tbaa !162
  ret void

31:                                               ; preds = %3
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = call ptr @__cxa_begin_catch(ptr %33) #17
  %35 = icmp eq ptr %12, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13) #16
  br label %41

37:                                               ; preds = %31
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %38) #19
          to label %41 unwind label %39

39:                                               ; preds = %42, %41, %37
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %44

41:                                               ; preds = %37, %36
  invoke void @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, i64 noundef %6) #19
          to label %42 unwind label %39

42:                                               ; preds = %41
  invoke void @__cxa_rethrow() #22
          to label %47 unwind label %39

43:                                               ; preds = %39
  resume { ptr, i32 } %40

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #18
  unreachable

47:                                               ; preds = %42
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 comdat align 2 !prof !184 {
  tail call void @_ZN14PatternMatcher4ElemC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN14PatternMatcher4ElemC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = load i32, ptr %1, align 8, !tbaa !150
  store i32 %3, ptr %0, align 8, !tbaa !150
  %4 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
          to label %8 unwind label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !186 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !171
  %6 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !192

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #23
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !171
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %15 = load i64, ptr %14, align 8, !tbaa !171
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %17 = call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !192

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !192

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !186 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 88
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !186 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !192

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #19
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !193 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !194 {
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #16
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !195 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = load ptr, ptr %0, align 8, !tbaa !159
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 88
  ret i64 %8
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !196 {
  %3 = load i64, ptr %0, align 8, !tbaa !171
  %4 = load i64, ptr %1, align 8, !tbaa !171
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !197
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 104811045873349725, ptr %2, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !171
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %6 = load i64, ptr %5, align 8, !tbaa !171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !191 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !198 {
  %3 = load i64, ptr %1, align 8, !tbaa !171
  %4 = load i64, ptr %0, align 8, !tbaa !171
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !199
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !200 {
  ret i64 104811045873349725
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !186 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !201

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 209622091746699450
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 88
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #24
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !191 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !191 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !202

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %9 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 1
  %10 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !203, !llvm.loop !204

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !205 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !194 {
  tail call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #16
  tail call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 !prof !194 {
  tail call void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 !prof !194 {
  tail call void @_ZN14PatternMatcher4ElemC2EOS0_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN14PatternMatcher4ElemC2EOS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 {
  %3 = load i32, ptr %1, align 8, !tbaa !150
  store i32 %3, ptr %0, align 8, !tbaa !150
  %4 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  %8 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !194 {
  tail call void @_ZN14PatternMatcher4ElemD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKN14PatternMatcher4ElemEPS2_St6vectorIS2_SaIS2_EEEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_17__normal_iteratorIT_T1_EERKNSA_IT0_SC_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !131 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 88
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN14PatternMatcher4ElemEPS2_St6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !131 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !189
  %6 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !146
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !131 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 88
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.3", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  store ptr %1, ptr %0, align 8, !tbaa !206
  %4 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !206
  %6 = tail call noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  invoke void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #16
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 comdat align 2 !prof !131 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<PatternMatcher::Elem, std::allocator<PatternMatcher::Elem>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %6, i64 -1
  tail call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(88) %7) #16
  %8 = load ptr, ptr %5, align 8, !tbaa !160
  %9 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %8, i64 1
  store ptr %9, ptr %5, align 8, !tbaa !160
  %10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  %12 = load ptr, ptr %5, align 8, !tbaa !160
  %13 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 -2
  %14 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 -1
  %15 = call noundef ptr @_ZSt13move_backwardIPN14PatternMatcher4ElemES2_ET0_T_S4_S3_(ptr noundef %11, ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  %16 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %17 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN14PatternMatcher4ElemaSEOS0_(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr noundef nonnull align 8 dereferenceable(88) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value6_M_valEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = load ptr, ptr %0, align 8, !tbaa !206
  %3 = tail call noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  tail call void @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) #16
  %4 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value8_StorageC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 !prof !131 {
  store i8 0, ptr %0, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %"struct.std::vector<PatternMatcher::Elem>::_Temporary_value", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_value8_StorageD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 !prof !131 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPN14PatternMatcher4ElemES2_ET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !131 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %0) #19
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %1) #19
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #19
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN14PatternMatcher4ElemaSEOS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load i32, ptr %1, align 8, !tbaa !150
  store i32 %3, ptr %0, align 8, !tbaa !150
  %4 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %7 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  %10 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !131 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !146
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #19
  %9 = call noundef ptr @_ZSt12__niter_wrapIPN14PatternMatcher4ElemEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPN14PatternMatcher4ElemEET_S3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !131 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPN14PatternMatcher4ElemEET_RKS3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !131 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !131 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPN14PatternMatcher4ElemES2_ET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat !prof !131 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN14PatternMatcher4ElemES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN14PatternMatcher4ElemES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 88
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %17, %10 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %10 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %10 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %13, i64 -1
  %15 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 -1
  %16 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN14PatternMatcher4ElemaSEOS0_(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull align 8 dereferenceable(88) %14) #16
  %17 = add nsw i64 %11, -1
  %18 = icmp ugt i64 %11, 1
  br i1 %18, label %10, label %19, !llvm.loop !208

19:                                               ; preds = %10, %3
  %20 = phi ptr [ %2, %3 ], [ %15, %10 ]
  ret ptr %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_Z11opp_toupperh(i8 noundef zeroext %0) local_unnamed_addr #0 comdat !prof !131 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @toupper(i32 noundef %2) #21
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !131 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !209
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isdigith(i8 noundef zeroext %0) local_unnamed_addr #0 comdat !prof !211 {
  %2 = zext i8 %0 to i32
  %3 = add nsw i32 %2, -48
  %4 = icmp ult i32 %3, 10
  ret i1 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i64 @atol(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN14PatternMatcher4dumpEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  br label %10

9:                                                ; preds = %41, %2
  ret void

10:                                               ; preds = %7, %41
  %11 = phi i64 [ %8, %7 ], [ %43, %41 ]
  %12 = call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %11) #16
  %13 = load i32, ptr %12, align 8, !tbaa !150
  switch i32 %13, label %41 [
    i32 0, label %14
    i32 1, label %19
    i32 2, label %21
    i32 3, label %23
    i32 4, label %27
    i32 5, label %31
    i32 6, label %37
    i32 7, label %39
  ]

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %15 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 0, i32 1
  %16 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #16
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %16) #19
  %17 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %17) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %41

19:                                               ; preds = %10
  %20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) #19
  br label %41

21:                                               ; preds = %10
  %22 = call i32 @putchar(i32 63)
  br label %41

23:                                               ; preds = %10
  %24 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 0, i32 2
  %25 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %24) #16
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %25) #19
  br label %41

27:                                               ; preds = %10
  %28 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 0, i32 2
  %29 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %28) #16
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %29) #19
  br label %41

31:                                               ; preds = %10
  %32 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !212
  %34 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 0, i32 4
  %35 = load i64, ptr %34, align 8, !tbaa !213
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %33, i64 noundef %35) #19
  br label %41

37:                                               ; preds = %10
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) #19
  br label %41

39:                                               ; preds = %10
  %40 = call i32 @putchar(i32 42)
  br label %41

41:                                               ; preds = %10, %39, %37, %31, %27, %23, %21, %19, %14
  %42 = call i32 @putchar(i32 32)
  %43 = add nsw i64 %11, 1
  %44 = call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %45 = shl i64 %44, 32
  %46 = ashr exact i64 %45, 32
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %10, label %9, !llvm.loop !214
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !215 {
  %3 = load ptr, ptr %0, align 8, !tbaa !159
  %4 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher7isInSetEcPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0, i8 noundef signext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 align 2 !prof !131 {
  %4 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !133, !range !181, !noundef !182
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef signext i8 @_Z11opp_toupperh(i8 noundef zeroext %1) #19
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i8 [ %1, %3 ], [ %8, %7 ]
  %11 = load i8, ptr %2, align 1, !tbaa !147
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %21
  %14 = phi i8 [ %23, %21 ], [ %11, %9 ]
  %15 = phi ptr [ %22, %21 ], [ %2, %9 ]
  %16 = icmp slt i8 %10, %14
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !147
  %20 = icmp sgt i8 %10, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds i8, ptr %15, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !147
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !216

25:                                               ; preds = %17, %21, %9
  %26 = phi i1 [ false, %9 ], [ false, %21 ], [ true, %17 ]
  ret i1 %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 !prof !217 {
  %5 = sext i32 %2 to i64
  br label %6

6:                                                ; preds = %134, %4
  %7 = phi i64 [ %136, %134 ], [ %5, %4 ]
  %8 = phi ptr [ %135, %134 ], [ %1, %4 ]
  %9 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  %10 = load i32, ptr %9, align 8, !tbaa !150
  switch i32 %10, label %134 [
    i32 0, label %15
    i32 1, label %45
    i32 2, label %50
    i32 3, label %54
    i32 4, label %63
    i32 5, label %72
    i32 6, label %94
    i32 7, label %11
    i32 8, label %131
  ], !prof !218

11:                                               ; preds = %6
  %12 = trunc i64 %7 to i32
  %13 = add nsw i32 %12, 1
  %14 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %8, i32 noundef %13, i32 noundef %3) #19
  br i1 %14, label %137, label %125, !prof !219

15:                                               ; preds = %6
  %16 = icmp sgt i32 %3, 0
  %17 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 1
  %18 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #16
  %19 = trunc i64 %18 to i32
  br i1 %16, label %20, label %28, !prof !220

20:                                               ; preds = %15
  %21 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %22, -2
  %24 = trunc i64 %7 to i32
  %25 = icmp eq i32 %23, %24
  %26 = select i1 %25, i32 %3, i32 0
  %27 = sub nsw i32 %19, %26
  br label %28

28:                                               ; preds = %20, %15
  %29 = phi i32 [ %19, %15 ], [ %27, %20 ]
  %30 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !133, !range !181, !noundef !182
  %32 = icmp eq i8 %31, 0
  %33 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %17) #16
  %34 = sext i32 %29 to i64
  br i1 %32, label %37, label %35, !prof !220

35:                                               ; preds = %28
  %36 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %33, i64 noundef %34) #21
  br label %39

37:                                               ; preds = %28
  %38 = tail call i32 @strncasecmp(ptr noundef %8, ptr noundef %33, i64 noundef %34) #21
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %137, !prof !221

42:                                               ; preds = %39
  %43 = sext i32 %29 to i64
  %44 = getelementptr inbounds i8, ptr %8, i64 %43
  br label %134

45:                                               ; preds = %6
  %46 = load i8, ptr %8, align 1, !tbaa !147
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %137, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %8, i64 1
  br label %134

50:                                               ; preds = %6
  %51 = load i8, ptr %8, align 1, !tbaa !147
  switch i8 %51, label %52 [
    i8 0, label %137
    i8 46, label %137
  ], !prof !222

52:                                               ; preds = %50
  %53 = getelementptr inbounds i8, ptr %8, i64 1
  br label %134

54:                                               ; preds = %6
  %55 = load i8, ptr %8, align 1, !tbaa !147
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %137, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 2
  %59 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %58) #16
  %60 = tail call noundef zeroext i1 @_ZN14PatternMatcher7isInSetEcPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %55, ptr noundef %59) #19
  br i1 %60, label %61, label %137

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %8, i64 1
  br label %134

63:                                               ; preds = %6
  %64 = load i8, ptr %8, align 1, !tbaa !147
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %137, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 2
  %68 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %67) #16
  %69 = tail call noundef zeroext i1 @_ZN14PatternMatcher7isInSetEcPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %64, ptr noundef %68) #19
  br i1 %69, label %137, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %8, i64 1
  br label %134

72:                                               ; preds = %6
  %73 = load i8, ptr %8, align 1, !tbaa !147
  %74 = tail call noundef zeroext i1 @_Z11opp_isdigith(i8 noundef zeroext %73) #19
  br i1 %74, label %75, label %137

75:                                               ; preds = %72
  %76 = tail call i64 @atol(ptr nocapture noundef nonnull %8) #21
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi ptr [ %8, %75 ], [ %81, %77 ]
  %79 = load i8, ptr %78, align 1, !tbaa !147
  %80 = tail call noundef zeroext i1 @_Z11opp_isdigith(i8 noundef zeroext %79) #19
  %81 = getelementptr inbounds i8, ptr %78, i64 1
  br i1 %80, label %77, label %82, !llvm.loop !223

82:                                               ; preds = %77
  %83 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !212
  %85 = icmp sgt i64 %84, -1
  %86 = icmp slt i64 %76, %84
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %137, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %9, i64 0, i32 4
  %90 = load i64, ptr %89, align 8, !tbaa !213
  %91 = icmp sgt i64 %90, -1
  %92 = icmp sgt i64 %76, %90
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %137, label %134

94:                                               ; preds = %6
  %95 = trunc i64 %7 to i32
  %96 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %97 = trunc i64 %96 to i32
  %98 = add nsw i32 %97, -2
  %99 = icmp eq i32 %98, %95
  br i1 %99, label %137, label %100, !prof !224

100:                                              ; preds = %94
  %101 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %102 = trunc i64 %101 to i32
  %103 = add nsw i32 %102, -3
  %104 = icmp eq i32 %103, %95
  %105 = add nsw i32 %95, 1
  br i1 %104, label %106, label %116, !prof !225

106:                                              ; preds = %100
  %107 = sext i32 %105 to i64
  %108 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %107) #16
  %109 = load i32, ptr %108, align 8, !tbaa !150
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116, !prof !226

111:                                              ; preds = %106
  %112 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %107) #16
  %113 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %112, i64 0, i32 1
  %114 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %113) #16
  %115 = tail call noundef zeroext i1 @_Z18opp_stringendswithPKcS0_(ptr noundef %8, ptr noundef %114) #19
  br label %137

116:                                              ; preds = %100, %106
  %117 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %8, i32 noundef %105, i32 noundef %3) #19
  br i1 %117, label %137, label %121, !prof !227

118:                                              ; preds = %121
  %119 = getelementptr inbounds i8, ptr %122, i64 1
  %120 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %119, i32 noundef %105, i32 noundef %3) #19
  br i1 %120, label %137, label %121, !prof !228, !llvm.loop !229

121:                                              ; preds = %116, %118
  %122 = phi ptr [ %119, %118 ], [ %8, %116 ]
  %123 = load i8, ptr %122, align 1, !tbaa !147
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %118, label %137, !prof !230

125:                                              ; preds = %11, %128
  %126 = phi ptr [ %129, %128 ], [ %8, %11 ]
  %127 = load i8, ptr %126, align 1, !tbaa !147
  switch i8 %127, label %128 [
    i8 0, label %137
    i8 46, label %137
  ], !prof !231

128:                                              ; preds = %125
  %129 = getelementptr inbounds i8, ptr %126, i64 1
  %130 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %129, i32 noundef %13, i32 noundef %3) #19
  br i1 %130, label %137, label %125, !prof !232, !llvm.loop !233

131:                                              ; preds = %6
  %132 = load i8, ptr %8, align 1, !tbaa !147
  %133 = icmp eq i8 %132, 0
  br label %137

134:                                              ; preds = %42, %48, %52, %61, %70, %88, %6
  %135 = phi ptr [ %8, %6 ], [ %78, %88 ], [ %71, %70 ], [ %62, %61 ], [ %53, %52 ], [ %49, %48 ], [ %44, %42 ]
  %136 = add i64 %7, 1
  br label %6

137:                                              ; preds = %39, %45, %50, %50, %54, %57, %63, %66, %72, %88, %82, %125, %125, %128, %121, %118, %11, %116, %131, %111, %94
  %138 = phi i1 [ true, %94 ], [ %115, %111 ], [ %133, %131 ], [ true, %116 ], [ true, %11 ], [ %124, %118 ], [ %124, %121 ], [ false, %125 ], [ false, %125 ], [ true, %128 ], [ false, %82 ], [ false, %88 ], [ false, %72 ], [ false, %66 ], [ false, %63 ], [ false, %57 ], [ false, %54 ], [ false, %50 ], [ false, %50 ], [ false, %45 ], [ false, %39 ]
  ret i1 %138
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef zeroext i1 @_Z18opp_stringendswithPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher7matchesEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !234 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, 2
  %5 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !range !181
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %44, label %9, !prof !235

9:                                                ; preds = %2
  %10 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = add i64 %10, -2
  %12 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %11) #16
  %13 = load i32, ptr %12, align 8, !tbaa !150
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44, !prof !236

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %12, i64 0, i32 1
  %17 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #16
  %18 = trunc i64 %17 to i32
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %18, 1
  %22 = icmp sgt i32 %20, 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %44, !prof !237

24:                                               ; preds = %15
  %25 = add i64 %19, 4294967295
  %26 = and i64 %25, 4294967295
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !147
  %29 = add i64 %17, 4294967295
  %30 = and i64 %29, 4294967295
  %31 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %30) #19
  %32 = load i8, ptr %31, align 1, !tbaa !147
  %33 = icmp eq i8 %28, %32
  br i1 %33, label %34, label %46, !prof !238

34:                                               ; preds = %24
  %35 = add i64 %19, 4294967294
  %36 = and i64 %35, 4294967295
  %37 = getelementptr inbounds i8, ptr %1, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !147
  %39 = add i64 %17, 4294967294
  %40 = and i64 %39, 4294967295
  %41 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %40) #19
  %42 = load i8, ptr %41, align 1, !tbaa !147
  %43 = icmp eq i8 %38, %42
  br i1 %43, label %44, label %46, !prof !239

44:                                               ; preds = %15, %34, %9, %2
  %45 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #19
  br label %46

46:                                               ; preds = %24, %34, %44
  %47 = phi i1 [ %45, %44 ], [ false, %34 ], [ false, %24 ]
  ret i1 %47
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN14PatternMatcher20patternPrefixMatchesEPKci(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !133, !range !181, !noundef !182
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.13) #19
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #22
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #17
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  %13 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %14 = icmp ult i64 %13, 2
  br i1 %14, label %42, label %15

15:                                               ; preds = %12
  %16 = tail call noundef i64 @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = add i64 %16, -2
  %18 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %17) #16
  %19 = load i32, ptr %18, align 8, !tbaa !150
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"struct.PatternMatcher::Elem", ptr %18, i64 0, i32 1
  %23 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %22) #16
  %24 = sext i32 %2 to i64
  %25 = getelementptr inbounds i8, ptr %1, i64 %24
  %26 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %25) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #21
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  %31 = getelementptr inbounds %class.PatternMatcher, ptr %0, i64 0, i32 2
  %32 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull %30) #19
  %33 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %22) #16
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %23 to i64
  %36 = sub i64 %35, %34
  %37 = add i64 %36, %33
  %38 = trunc i64 %37 to i32
  %39 = tail call noundef zeroext i1 @_ZN14PatternMatcher7doMatchEPKcii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef 0, i32 noundef %38) #19
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %31) #16
  br label %42

42:                                               ; preds = %15, %40, %28, %21, %12
  %43 = phi ptr [ null, %12 ], [ null, %15 ], [ null, %21 ], [ %41, %40 ], [ null, %28 ]
  ret ptr %43
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN14PatternMatcher17containsWildcardsEPKc(ptr noundef readonly %0) local_unnamed_addr #13 align 2 !prof !240 {
  %2 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 63) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %16, !prof !241

4:                                                ; preds = %1
  %5 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 42) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16, !prof !242

7:                                                ; preds = %4
  %8 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 92) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !242

10:                                               ; preds = %7
  %11 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 123) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !242

13:                                               ; preds = %10
  %14 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.14) #21
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %13, %10, %7, %4, %1
  %17 = phi i1 [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %15, %13 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { optsize }
attributes #20 = { builtin nounwind optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }
attributes #22 = { noreturn }
attributes #23 = { noreturn optsize }
attributes #24 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!130}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!36 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EEC2Ev, i64 39269}
!37 = !{ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implC2Ev, i64 39269}
!38 = !{ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implC2Ev, ptr @_ZNSaIN14PatternMatcher4ElemEEC2Ev, i64 39269}
!39 = !{ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE17_Vector_impl_dataC2Ev, i64 39269}
!40 = !{ptr @_ZNSaIN14PatternMatcher4ElemEEC2Ev, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEEC2Ev, i64 39269}
!41 = !{ptr @_ZN14PatternMatcherC2EPKcbbb, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEC2Ev, i64 39269}
!42 = !{ptr @_ZN14PatternMatcherC2EPKcbbb, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 39269}
!43 = !{ptr @_ZN14PatternMatcherC2EPKcbbb, ptr @_ZN14PatternMatcher10setPatternEPKcbbb, i64 39269}
!44 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5clearEv, i64 39269}
!45 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZN14PatternMatcher4ElemC2Ev, i64 117901}
!46 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE5emptyEv, i64 2}
!47 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_, i64 1}
!48 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE, i64 39322}
!49 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_, i64 117901}
!50 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZN14PatternMatcher4ElemD2Ev, i64 117901}
!51 = !{ptr @_ZN14PatternMatcher10setPatternEPKcbbb, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5frontEv, i64 1}
!52 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv, i64 39185}
!53 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E, i64 39185}
!54 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EED2Ev, i64 39185}
!55 = !{ptr @_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPN14PatternMatcher4ElemEEvT_S3_, i64 39185}
!56 = !{ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m, i64 39185}
!57 = !{ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEED2Ev, i64 39185}
!58 = !{ptr @_ZSt8_DestroyIPN14PatternMatcher4ElemEEvT_S3_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14PatternMatcher4ElemEEEvT_S5_, i64 39185}
!59 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN14PatternMatcher4ElemEEEvT_S5_, ptr @_ZSt8_DestroyIN14PatternMatcher4ElemEEvPT_, i64 117553}
!60 = !{ptr @_ZSt8_DestroyIN14PatternMatcher4ElemEEvPT_, ptr @_ZN14PatternMatcher4ElemD2Ev, i64 117555}
!61 = !{ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE10deallocateERS2_PS1_m, i64 117739}
!62 = !{ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE10deallocateEPS1_m, i64 117739}
!63 = !{ptr @_ZN14PatternMatcherD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 39185}
!64 = !{ptr @_ZN14PatternMatcherD2Ev, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EED2Ev, i64 39185}
!65 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5clearEv, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE15_M_erase_at_endEPS1_, i64 39269}
!66 = !{ptr @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_, ptr @_Z11opp_isdigith, i64 43}
!67 = !{ptr @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_, ptr @atol, i64 10}
!68 = !{ptr @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc, i64 157423}
!69 = !{ptr @_ZN14PatternMatcher18parseLiteralStringERPKcRNS_4ElemE, ptr @_ZN14PatternMatcher13parseNumRangeERPKccRlS3_, i64 17}
!70 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_, ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, i64 79}
!71 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv, i64 117822}
!72 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE9push_backERKS1_, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, i64 117822}
!73 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 117823}
!74 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv, i64 1}
!75 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZSt8_DestroyIPN14PatternMatcher4ElemES1_EvT_S3_RSaIT0_E, i64 1}
!76 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 117823}
!77 = !{ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_, i64 117901}
!78 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc, i64 117823}
!79 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE5beginEv, i64 117823}
!80 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, i64 117823}
!81 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE11_M_allocateEm, i64 117823}
!82 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, i64 117823}
!83 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv, i64 235646}
!84 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv, i64 235646}
!85 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, i64 235646}
!86 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE13_M_deallocateEPS1_m, i64 117823}
!87 = !{ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JRKS1_EEEvPT_DpOT0_, ptr @_ZN14PatternMatcher4ElemC2ERKS0_, i64 117901}
!88 = !{ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv, i64 235646}
!89 = !{ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv, i64 471289}
!90 = !{ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!91 = !{ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 117822}
!92 = !{ptr @_ZN9__gnu_cxxmiIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEE4baseEv, i64 235646}
!93 = !{ptr @_ZNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8allocateERS2_m, i64 117822}
!94 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, ptr @_ZSt12__relocate_aIPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_, i64 235646}
!95 = !{ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE7destroyIS1_EEvRS2_PT_, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE7destroyIS1_EEvPT_, i64 117907}
!96 = !{ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE19_M_get_Tp_allocatorEv, i64 235646}
!97 = !{ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE8max_sizeEv, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_max_sizeERKS2_, i64 235646}
!98 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_max_sizeERKS2_, ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8max_sizeERKS2_, i64 235646}
!99 = !{ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EE11_S_max_sizeERKS2_, ptr @_ZSt3minImERKT_S2_S2_, i64 235646}
!100 = !{ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8max_sizeERKS2_, ptr @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE8max_sizeEv, i64 235646}
!101 = !{ptr @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN14PatternMatcher4ElemEE11_M_max_sizeEv, i64 235646}
!102 = !{ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE8allocateERS2_m, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE8allocateEmPKv, i64 117823}
!103 = !{ptr @_ZSt12__relocate_aIPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt12__niter_baseIPN14PatternMatcher4ElemEET_S3_, i64 706938}
!104 = !{ptr @_ZSt12__relocate_aIPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt14__relocate_a_1IPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_, i64 235646}
!105 = !{ptr @_ZSt14__relocate_a_1IPN14PatternMatcher4ElemES2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_, i64 117907}
!106 = !{ptr @_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, i64 117907}
!107 = !{ptr @_ZSt19__relocate_object_aIN14PatternMatcher4ElemES1_SaIS1_EEvPT_PT0_RT1_, ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE7destroyIS1_EEvRS2_PT_, i64 117907}
!108 = !{ptr @_ZNSt16allocator_traitsISaIN14PatternMatcher4ElemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_, i64 117907}
!109 = !{ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE9constructIS1_JS1_EEEvPT_DpOT0_, ptr @_ZN14PatternMatcher4ElemC2EOS0_, i64 117907}
!110 = !{ptr @_ZNSt15__new_allocatorIN14PatternMatcher4ElemEE7destroyIS1_EEvPT_, ptr @_ZN14PatternMatcher4ElemD2Ev, i64 117907}
!111 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm, i64 1740167}
!112 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_ZN14PatternMatcher7doMatchEPKcii, i64 583499}
!113 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv, i64 1233665}
!114 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv, i64 433814}
!115 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1243510}
!116 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @strncmp, i64 1233664}
!117 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @strncasecmp, i64 1}
!118 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_ZN14PatternMatcher7isInSetEcPKc, i64 2}
!119 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_Z11opp_isdigith, i64 32}
!120 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @atol, i64 1}
!121 = !{ptr @_ZN14PatternMatcher7doMatchEPKcii, ptr @_Z18opp_stringendswithPKcS0_, i64 9843}
!122 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @_ZNKSt6vectorIN14PatternMatcher4ElemESaIS1_EE4sizeEv, i64 2620082}
!123 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @_ZNSt6vectorIN14PatternMatcher4ElemESaIS1_EEixEm, i64 1310040}
!124 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, i64 282842}
!125 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @strlen, i64 282842}
!126 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm, i64 315448}
!127 = !{ptr @_ZN14PatternMatcher7matchesEPKc, ptr @_ZN14PatternMatcher7doMatchEPKcii, i64 1070125}
!128 = !{ptr @_ZN14PatternMatcher17containsWildcardsEPKc, ptr @strchr, i64 396}
!129 = !{ptr @_ZN14PatternMatcher17containsWildcardsEPKc, ptr @strstr, i64 95}
!130 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!131 = !{!"function_entry_count", i64 0}
!132 = !{!"function_entry_count", i64 39269}
!133 = !{!134, !142, i64 24}
!134 = !{!"_ZTS14PatternMatcher", !135, i64 0, !142, i64 24, !143, i64 32}
!135 = !{!"_ZTSSt6vectorIN14PatternMatcher4ElemESaIS1_EE", !136, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE", !137, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE12_Vector_implE", !138, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIN14PatternMatcher4ElemESaIS1_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!139 = !{!"any pointer", !140, i64 0}
!140 = !{!"omnipotent char", !141, i64 0}
!141 = !{!"Simple C++ TBAA"}
!142 = !{!"bool", !140, i64 0}
!143 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !144, i64 0, !145, i64 8, !140, i64 16}
!144 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !139, i64 0}
!145 = !{!"long", !140, i64 0}
!146 = !{!139, !139, i64 0}
!147 = !{!140, !140, i64 0}
!148 = !{!"branch_weights", i32 1, i32 39269}
!149 = !{!"branch_weights", i32 39324, i32 7, i32 1, i32 1, i32 39304}
!150 = !{!151, !152, i64 0}
!151 = !{!"_ZTSN14PatternMatcher4ElemE", !152, i64 0, !143, i64 8, !143, i64 40, !145, i64 72, !145, i64 80}
!152 = !{!"_ZTSN14PatternMatcher8ElemTypeE", !140, i64 0}
!153 = !{!"branch_weights", i32 37, i32 39268}
!154 = !{!"branch_weights", i32 39269, i32 39364}
!155 = distinct !{!155, !156}
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"branch_weights", i32 39270, i32 1}
!158 = !{!"function_entry_count", i64 39185}
!159 = !{!138, !139, i64 0}
!160 = !{!138, !139, i64 8}
!161 = !{!"function_entry_count", i64 274831}
!162 = !{!138, !139, i64 16}
!163 = !{!"branch_weights", i32 1, i32 39185}
!164 = !{!"branch_weights", i32 39185, i32 78371}
!165 = distinct !{!165, !156}
!166 = !{!"function_entry_count", i64 117555}
!167 = !{!"function_entry_count", i64 157008}
!168 = !{!"branch_weights", i32 39270, i32 117740}
!169 = !{!"function_entry_count", i64 117739}
!170 = !{!"function_entry_count", i64 16}
!171 = !{!145, !145, i64 0}
!172 = !{!"branch_weights", i32 11, i32 7}
!173 = !{!"branch_weights", i32 11, i32 11}
!174 = distinct !{!174, !156}
!175 = !{!"branch_weights", i32 1, i32 17}
!176 = distinct !{!176, !156}
!177 = !{!"function_entry_count", i64 39323}
!178 = !{!"branch_weights", i32 -2105452543, i32 708531, i32 13892, i32 13892, i32 546173811}
!179 = !{!"branch_weights", i32 1, i32 157643}
!180 = !{!"branch_weights", i32 17, i32 157627}
!181 = !{i8 0, i8 2}
!182 = !{}
!183 = distinct !{!183, !156}
!184 = !{!"function_entry_count", i64 117901}
!185 = !{!"branch_weights", i32 117824, i32 79}
!186 = !{!"function_entry_count", i64 117823}
!187 = !{!188, !139, i64 0}
!188 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEE", !139, i64 0}
!189 = !{!190, !139, i64 0}
!190 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN14PatternMatcher4ElemESt6vectorIS2_SaIS2_EEEE", !139, i64 0}
!191 = !{!"function_entry_count", i64 235646}
!192 = !{!"branch_weights", i32 1, i32 117824}
!193 = !{!"function_entry_count", i64 471292}
!194 = !{!"function_entry_count", i64 117907}
!195 = !{!"function_entry_count", i64 3525188}
!196 = !{!"function_entry_count", i64 147735}
!197 = !{!"branch_weights", i32 61980, i32 85757}
!198 = !{!"function_entry_count", i64 295467}
!199 = !{!"branch_weights", i32 2, i32 295467}
!200 = !{!"function_entry_count", i64 353469}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{!"branch_weights", i32 117739, i32 117908}
!203 = !{!"branch_weights", i32 117908, i32 0}
!204 = distinct !{!204, !156}
!205 = !{!"function_entry_count", i64 706938}
!206 = !{!207, !139, i64 0}
!207 = !{!"_ZTSNSt6vectorIN14PatternMatcher4ElemESaIS1_EE16_Temporary_valueE", !139, i64 0, !140, i64 8}
!208 = distinct !{!208, !156}
!209 = !{!210, !210, i64 0}
!210 = !{!"vtable pointer", !141, i64 0}
!211 = !{!"function_entry_count", i64 37}
!212 = !{!151, !145, i64 72}
!213 = !{!151, !145, i64 80}
!214 = distinct !{!214, !156}
!215 = !{!"function_entry_count", i64 3050206}
!216 = distinct !{!216, !156}
!217 = !{!"function_entry_count", i64 1642180}
!218 = !{!"branch_weights", i32 1, i32 1233669, i32 1, i32 121, i32 1, i32 1, i32 1, i32 416717, i32 50697, i32 19277}
!219 = !{!"branch_weights", i32 1, i32 20028}
!220 = !{!"branch_weights", i32 1, i32 1233669}
!221 = !{!"branch_weights", i32 78177, i32 1155493}
!222 = !{!"branch_weights", i32 14641, i32 122, i32 121}
!223 = distinct !{!223, !156}
!224 = !{!"branch_weights", i32 399621, i32 17097}
!225 = !{!"branch_weights", i32 9845, i32 7253}
!226 = !{!"branch_weights", i32 9845, i32 1}
!227 = !{!"branch_weights", i32 1, i32 7252}
!228 = !{!"branch_weights", i32 7252, i32 174405}
!229 = distinct !{!229, !156}
!230 = !{!"branch_weights", i32 181657, i32 1}
!231 = !{!"branch_weights", i32 -522695830, i32 283670, i32 347722111}
!232 = !{!"branch_weights", i32 20028, i32 343093}
!233 = distinct !{!233, !156}
!234 = !{!"function_entry_count", i64 1310042}
!235 = !{!"branch_weights", i32 5117, i32 -942989441}
!236 = !{!"branch_weights", i32 282843, i32 1027201}
!237 = !{!"branch_weights", i32 -1923583801, i32 63479078}
!238 = !{!"branch_weights", i32 39981, i32 235491}
!239 = !{!"branch_weights", i32 35553, i32 4429}
!240 = !{!"function_entry_count", i64 105}
!241 = !{!"branch_weights", i32 100, i32 7}
!242 = !{!"branch_weights", i32 100, i32 1}
