; ModuleID = 'simulator/valueiterator.cc'
source_filename = "simulator/valueiterator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ValueIterator = type <{ %"class.std::vector", i32, i32, i32, [4 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" }
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.ValueIterator::Item" = type <{ i8, [7 x i8], %"class.std::__cxx11::basic_string", double, double, double, i32, [4 x i8] }>
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator.0" = type { i8 }
%struct._Guard.3 = type { ptr }

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIN13ValueIterator4ItemEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEEC2Ev = comdat any

$_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_ = comdat any

$_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_ = comdat any

$_ZN13ValueIterator4ItemD2Ev = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5clearEv = comdat any

$_ZN13ValueIterator4ItemC2Ev = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZN13ValueIterator4ItemC2ERKS0_ = comdat any

$_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt12__niter_baseIPN13ValueIterator4ItemEET_S3_ = comdat any

$_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZN13ValueIterator4ItemC2EOS0_ = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE7destroyIS1_EEvPT_ = comdat any

$_Z11opp_isspaceh = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.3 = private unnamed_addr constant [100 x i8] c"Error in numeric range syntax `%s', <number>..<number> or <number>..<number> step <number> expected\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"ValueIterator: index %d out of bounds\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"parsed form: \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"range(%g..%g step %g)\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"; enumeration: \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@str = private unnamed_addr constant [2 x i8] c".\00", align 1

@_ZN13ValueIteratorC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13ValueIteratorC2EPKc
@_ZN13ValueIteratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13ValueIteratorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ValueIteratorC2EPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %3 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !144
  %4 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !154
  %5 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !155
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7, !prof !156

7:                                                ; preds = %2
  invoke void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1) #19
          to label %10 unwind label %8

8:                                                ; preds = %7
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !143 {
  tail call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %3 = alloca %class.StringTokenizer, align 8
  %4 = alloca %"struct.ValueIterator::Item", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #20
  call void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1, ptr noundef nonnull @.str) #19
  br label %8

8:                                                ; preds = %37, %2
  %9 = invoke noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
          to label %10 unwind label %38

10:                                               ; preds = %8
  br i1 %9, label %11, label %46, !prof !157

11:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #20
  call void @_ZN13ValueIterator4ItemC2Ev(ptr noundef nonnull align 8 dereferenceable(68) %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %12 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
          to label %13 unwind label %40

13:                                               ; preds = %11
  invoke void @_Z8opp_trimB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %12) #19
          to label %14 unwind label %40

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 2
  %16 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  invoke void @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(68) %4) #19
          to label %17 unwind label %42

17:                                               ; preds = %14
  %18 = load i8, ptr %4, align 8, !tbaa !158, !range !165, !noundef !166
  %19 = icmp eq i8 %18, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  br i1 %19, label %34, label %20, !prof !167

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 4
  %22 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 3
  %23 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 5
  store i32 0, ptr %6, align 4, !tbaa !168
  %24 = load double, ptr %21, align 8, !tbaa !169
  %25 = load double, ptr %22, align 8, !tbaa !170
  %26 = fsub double %24, %25
  %27 = load double, ptr %23, align 8, !tbaa !171
  %28 = fadd double %26, %27
  %29 = fdiv double %28, %27
  %30 = call double @llvm.floor.f64(double %29)
  %31 = fptosi double %30 to i32
  store i32 %31, ptr %7, align 4, !tbaa !168
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #19
  %33 = load i32, ptr %32, align 4, !tbaa !168
  br label %34

34:                                               ; preds = %17, %20
  %35 = phi i32 [ %33, %20 ], [ 1, %17 ]
  %36 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 6
  store i32 %35, ptr %36, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  invoke void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(68) %4) #19
          to label %37 unwind label %42

37:                                               ; preds = %34
  call void @_ZN13ValueIterator4ItemD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %4) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #20
  br label %8, !llvm.loop !173

38:                                               ; preds = %8
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %47

40:                                               ; preds = %13, %11
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %44

42:                                               ; preds = %34, %14
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @_ZN13ValueIterator4ItemD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %4) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #20
  br label %47

46:                                               ; preds = %10
  call void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  ret void

47:                                               ; preds = %44, %38
  %48 = phi { ptr, i32 } [ %45, %44 ], [ %39, %38 ]
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  resume { ptr, i32 } %48
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #19
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !143 {
  tail call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !143 {
  tail call void @_ZNSaIN13ValueIterator4ItemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN13ValueIterator4ItemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !143 {
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !143 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !143 {
  tail call void @_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !177 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  invoke void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #19
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !143 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !143 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !179

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_(ptr noundef %5) #19
  %6 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !180, !llvm.loop !181

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !143 {
  tail call void @_ZN13ValueIterator4ItemD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13ValueIterator4ItemD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !157

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #19
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !143 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !143 {
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN13ValueIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 align 2 !prof !143 {
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13ValueIterator4ItemC2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void
}

; Function Attrs: optsize
declare void @_Z8opp_trimB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @setlocale(i32 noundef 1, ptr noundef nonnull @.str.2) #18
  store i8 0, ptr %1, align 8, !tbaa !158
  %5 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 5
  %6 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 4
  %7 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %9 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %10 = call double @strtod(ptr noundef %9, ptr noundef nonnull %3) #18
  %11 = load ptr, ptr %3, align 8, !tbaa !183
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %107, label %13, !prof !167

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %11, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !184
  %16 = icmp eq i8 %15, 46
  br i1 %16, label %17, label %18, !prof !156

17:                                               ; preds = %13
  store ptr %14, ptr %3, align 8, !tbaa !183
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi ptr [ %11, %13 ], [ %14, %17 ]
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi ptr [ %24, %20 ], [ %19, %18 ]
  %22 = load i8, ptr %21, align 1, !tbaa !184
  %23 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %22) #19
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %23, label %20, label %25, !prof !167, !llvm.loop !185

25:                                               ; preds = %20
  %26 = load i8, ptr %21, align 1, !tbaa !184
  %27 = icmp eq i8 %26, 46
  br i1 %27, label %28, label %107, !prof !156

28:                                               ; preds = %25
  %29 = load i8, ptr %24, align 1, !tbaa !184
  %30 = icmp eq i8 %29, 46
  br i1 %30, label %31, label %107, !prof !156

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %21, i64 2
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %32, %31 ], [ %37, %33 ]
  %35 = load i8, ptr %34, align 1, !tbaa !184
  %36 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %35) #19
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  br i1 %36, label %33, label %38, !prof !167, !llvm.loop !186

38:                                               ; preds = %33
  %39 = call double @strtod(ptr noundef nonnull %34, ptr noundef nonnull %3) #18
  %40 = load ptr, ptr %3, align 8, !tbaa !183
  %41 = icmp eq ptr %40, %34
  br i1 %41, label %42, label %48, !prof !167

42:                                               ; preds = %38
  %43 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %44 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull @.str.3, ptr noundef %44) #19
          to label %45 unwind label %46

45:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

46:                                               ; preds = %42
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %108

48:                                               ; preds = %38, %48
  %49 = phi ptr [ %52, %48 ], [ %40, %38 ]
  %50 = load i8, ptr %49, align 1, !tbaa !184
  %51 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %50) #19
  %52 = getelementptr inbounds i8, ptr %49, i64 1
  br i1 %51, label %48, label %53, !prof !167, !llvm.loop !187

53:                                               ; preds = %48
  %54 = load i8, ptr %49, align 1, !tbaa !184
  switch i8 %54, label %66 [
    i8 0, label %105
    i8 115, label %55
  ], !prof !188

55:                                               ; preds = %53
  %56 = load i8, ptr %52, align 1, !tbaa !184
  %57 = icmp eq i8 %56, 116
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %49, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !184
  %61 = icmp eq i8 %60, 101
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %49, i64 3
  %64 = load i8, ptr %63, align 1, !tbaa !184
  %65 = icmp eq i8 %64, 112
  br i1 %65, label %72, label %66

66:                                               ; preds = %53, %62, %58, %55
  %67 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %68 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %67, ptr noundef nonnull @.str.3, ptr noundef %68) #19
          to label %69 unwind label %70

69:                                               ; preds = %66
  tail call void @__cxa_throw(ptr nonnull %67, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

70:                                               ; preds = %66
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %108

72:                                               ; preds = %62
  %73 = getelementptr inbounds i8, ptr %49, i64 4
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi ptr [ %73, %72 ], [ %78, %74 ]
  %76 = load i8, ptr %75, align 1, !tbaa !184
  %77 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %76) #19
  %78 = getelementptr inbounds i8, ptr %75, i64 1
  br i1 %77, label %74, label %79, !llvm.loop !189

79:                                               ; preds = %74
  %80 = call double @strtod(ptr noundef nonnull %75, ptr noundef nonnull %3) #18
  %81 = load ptr, ptr %3, align 8, !tbaa !183
  %82 = icmp eq ptr %81, %75
  %83 = fcmp oeq double %80, 0.000000e+00
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %87 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %86, ptr noundef nonnull @.str.3, ptr noundef %87) #19
          to label %88 unwind label %89

88:                                               ; preds = %85
  tail call void @__cxa_throw(ptr nonnull %86, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

89:                                               ; preds = %85
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %108

91:                                               ; preds = %79, %91
  %92 = phi ptr [ %95, %91 ], [ %81, %79 ]
  %93 = load i8, ptr %92, align 1, !tbaa !184
  %94 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %93) #19
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  br i1 %94, label %91, label %96, !llvm.loop !190

96:                                               ; preds = %91
  %97 = load i8, ptr %92, align 1, !tbaa !184
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %101 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %100, ptr noundef nonnull @.str.3, ptr noundef %101) #19
          to label %102 unwind label %103

102:                                              ; preds = %99
  tail call void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

103:                                              ; preds = %99
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %108

105:                                              ; preds = %96, %53
  %106 = phi double [ 1.000000e+00, %53 ], [ %80, %96 ]
  store i8 1, ptr %1, align 8, !tbaa !158
  store double %10, ptr %7, align 8, !tbaa !170
  store double %39, ptr %6, align 8, !tbaa !169
  store double %106, ptr %5, align 8, !tbaa !171
  br label %107

107:                                              ; preds = %25, %28, %2, %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void

108:                                              ; preds = %89, %103, %70, %46
  %109 = phi ptr [ %86, %89 ], [ %100, %103 ], [ %67, %70 ], [ %43, %46 ]
  %110 = phi { ptr, i32 } [ %90, %89 ], [ %104, %103 ], [ %71, %70 ], [ %47, %46 ]
  tail call void @__cxa_free_exception(ptr %109) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  resume { ptr, i32 } %110
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat !prof !182 {
  %3 = load i32, ptr %0, align 4, !tbaa !168
  %4 = load i32, ptr %1, align 4, !tbaa !168
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !157
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 !prof !143 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !156

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(68) %1) #19
  %9 = load ptr, ptr %3, align 8, !tbaa !176
  %10 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !176
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(68) %1) #19
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !191 {
  %2 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !144
  %3 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !154
  %4 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !155
  %5 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21, !prof !192

8:                                                ; preds = %1, %15
  %9 = load i32, ptr %3, align 8, !tbaa !154
  %10 = sext i32 %9 to i64
  %11 = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %10) #18
  %12 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %11, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !172
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21, !prof !193

15:                                               ; preds = %8
  %16 = load i32, ptr %3, align 8, !tbaa !154
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %3, align 8, !tbaa !154
  %18 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %8, label %21, !prof !194, !llvm.loop !195

21:                                               ; preds = %8, %15, %1
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !156

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #19
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !176
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #21
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !196 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 !prof !143 {
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.1) #19
  %7 = load ptr, ptr %0, align 8, !tbaa !175
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %10 = tail call ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %12 = call noundef ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #19
  %13 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %12, i64 %11
  invoke void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(68) %2) #19
          to label %14 unwind label %31

14:                                               ; preds = %3
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !183
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %18 = call noundef ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %16, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %17) #18
  %19 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %18, i64 1
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %21 = load ptr, ptr %20, align 8, !tbaa !183
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %23 = call noundef ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %21, ptr noundef %9, ptr noundef nonnull %19, ptr noundef nonnull align 1 dereferenceable(1) %22) #18
  %24 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !178
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %7 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 72
  call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %29) #19
  store ptr %12, ptr %0, align 8, !tbaa !175
  store ptr %23, ptr %8, align 8, !tbaa !176
  %30 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %12, i64 %6
  store ptr %30, ptr %24, align 8, !tbaa !178
  ret void

31:                                               ; preds = %3
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = call ptr @__cxa_begin_catch(ptr %33) #20
  %35 = icmp eq ptr %12, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13) #18
  br label %41

37:                                               ; preds = %31
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %38) #19
          to label %41 unwind label %39

39:                                               ; preds = %42, %41, %37
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %44

41:                                               ; preds = %37, %36
  invoke void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, i64 noundef %6) #19
          to label %42 unwind label %39

42:                                               ; preds = %41
  invoke void @__cxa_rethrow() #23
          to label %47 unwind label %39

43:                                               ; preds = %39
  resume { ptr, i32 } %40

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #21
  unreachable

47:                                               ; preds = %42
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 !prof !143 {
  tail call void @_ZN13ValueIterator4ItemC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13ValueIterator4ItemC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) unnamed_addr #0 comdat align 2 {
  %3 = load i8, ptr %1, align 8, !tbaa !158, !range !165, !noundef !166
  store i8 %3, ptr %0, align 8, !tbaa !158
  %4 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  %6 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !143 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !197
  %6 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %7 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !167

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #24
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  store i64 %13, ptr %5, align 8, !tbaa !197
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %15 = load i64, ptr %14, align 8, !tbaa !197
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !167

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !167

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !143 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !183
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 72
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !143 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !167

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #19
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 !prof !182 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !191 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !198 {
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #18
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !182 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %3 = tail call noundef i64 @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !199 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = load ptr, ptr %0, align 8, !tbaa !175
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  ret i64 %8
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !200 {
  %3 = load i64, ptr %0, align 8, !tbaa !197
  %4 = load i64, ptr %1, align 8, !tbaa !197
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !201
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 128102389400760775, ptr %2, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i64 %4, ptr %3, align 8, !tbaa !197
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %6 = load i64, ptr %5, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !182 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !182 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !202 {
  %3 = load i64, ptr %1, align 8, !tbaa !197
  %4 = load i64, ptr %0, align 8, !tbaa !197
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !203
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !182 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !177 {
  ret i64 128102389400760775
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !182 {
  %3 = load ptr, ptr %1, align 8, !tbaa !183
  store ptr %3, ptr %0, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !143 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !206

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 256204778801521550
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 72
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat !prof !182 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN13ValueIterator4ItemEET_S3_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN13ValueIterator4ItemEET_S3_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN13ValueIterator4ItemEET_S3_(ptr noundef %2) #18
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat !prof !182 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !207

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  %9 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %8, i64 1
  %10 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !208, !llvm.loop !209

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN13ValueIterator4ItemEET_S3_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !210 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat !prof !198 {
  tail call void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(68) %1) #18
  tail call void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #1 comdat align 2 !prof !198 {
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #1 comdat align 2 !prof !198 {
  tail call void @_ZN13ValueIterator4ItemC2EOS0_(ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13ValueIterator4ItemC2EOS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) unnamed_addr #1 comdat align 2 {
  %3 = load i8, ptr %1, align 8, !tbaa !158, !range !165, !noundef !166
  store i8 %3, ptr %0, align 8, !tbaa !158
  %4 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %6 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !198 {
  tail call void @_ZN13ValueIterator4ItemD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %1) #18
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %0) local_unnamed_addr #1 comdat !prof !211 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @isspace(i32 noundef %2) #26
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !212 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !213
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #19
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
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !215
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !198 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #19
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4) #19
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !218, !range !165, !noundef !166
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !219
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat !prof !143 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !220 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #19
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #19
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard.3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #19
  store i64 %6, ptr %4, align 8, !tbaa !197
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !222

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #19
  %10 = load i64, ptr %4, align 8, !tbaa !197
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #19
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #19
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #18
  store ptr null, ptr %5, align 8, !tbaa !223
  %15 = load i64, ptr %4, align 8, !tbaa !197
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #19
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !221 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !183
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #19
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !221 {
  store ptr %1, ptr %0, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !225

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
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
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !221 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !221 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK13ValueIterator6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !198 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %7, %1
  %6 = phi i32 [ 0, %1 ], [ %13, %7 ]
  ret i32 %6

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %1 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %1 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %8) #18
  %11 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !172
  %13 = add nsw i32 %12, %9
  %14 = add nuw nsw i64 %8, 1
  %15 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %7, label %5, !llvm.loop !226
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !182 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK13ValueIterator3getB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call noundef i32 @_ZNK13ValueIterator6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #19
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %19, label %59

14:                                               ; preds = %7, %3
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.7, i32 noundef %2) #19
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #20
  br label %61

19:                                               ; preds = %10, %52
  %20 = phi i64 [ %54, %52 ], [ 0, %10 ]
  %21 = phi i32 [ %53, %52 ], [ 0, %10 ]
  %22 = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %20) #18
  %23 = load i8, ptr %22, align 8, !tbaa !158, !range !165, !noundef !166
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = icmp eq i32 %21, %2
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %22, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %28) #19
  br label %59

29:                                               ; preds = %25
  %30 = add nsw i32 %21, 1
  br label %52

31:                                               ; preds = %19
  %32 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %22, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !172
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = icmp sle i32 %21, %2
  %37 = add nsw i32 %33, %21
  %38 = icmp sgt i32 %37, %2
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %41 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %22, i64 0, i32 3
  %42 = load double, ptr %41, align 8, !tbaa !170
  %43 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %22, i64 0, i32 5
  %44 = load double, ptr %43, align 8, !tbaa !171
  %45 = sub nsw i32 %2, %21
  %46 = sitofp i32 %45 to double
  %47 = tail call double @llvm.fmuladd.f64(double %44, double %46, double %42)
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %47) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #19
          to label %49 unwind label %50

49:                                               ; preds = %40
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %59

50:                                               ; preds = %40
  %51 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %61

52:                                               ; preds = %31, %29, %35
  %53 = phi i32 [ %37, %35 ], [ %30, %29 ], [ %21, %31 ]
  %54 = add nuw nsw i64 %20, 1
  %55 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %56 = shl i64 %55, 32
  %57 = ashr exact i64 %56, 32
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %19, label %59, !llvm.loop !227

59:                                               ; preds = %52, %10, %27, %49
  %60 = phi i1 [ true, %27 ], [ true, %49 ], [ false, %10 ], [ false, %52 ]
  call void @llvm.assume(i1 %60)
  ret void

61:                                               ; preds = %50, %17
  %62 = phi { ptr, i32 } [ %18, %17 ], [ %51, %50 ]
  resume { ptr, i32 } %62
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !228 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN13ValueIteratorppEi(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !143 {
  %3 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !154
  %5 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %6 = trunc i64 %5 to i32
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %37, !prof !156

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !155
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !155
  %12 = load i32, ptr %3, align 8, !tbaa !154
  %13 = sext i32 %12 to i64
  %14 = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %13) #18
  %15 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !144
  %17 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %14, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !172
  %19 = add nsw i32 %18, -1
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %23, !prof !167

21:                                               ; preds = %8
  %22 = add nsw i32 %16, 1
  store i32 %22, ptr %15, align 4, !tbaa !144
  br label %37

23:                                               ; preds = %8
  store i32 0, ptr %15, align 4, !tbaa !144
  br label %24

24:                                               ; preds = %30, %23
  %25 = load i32, ptr %3, align 8, !tbaa !154
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %3, align 8, !tbaa !154
  %27 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %28 = trunc i64 %27 to i32
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %37, !prof !167

30:                                               ; preds = %24
  %31 = load i32, ptr %3, align 8, !tbaa !154
  %32 = sext i32 %31 to i64
  %33 = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %32) #18
  %34 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !172
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %24, label %37, !prof !167, !llvm.loop !229

37:                                               ; preds = %24, %30, %21, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca [32 x i8], align 16
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %class.ValueIterator, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !154
  %8 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %15, label %11, !prof !230

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
          to label %12 unwind label %13

12:                                               ; preds = %11
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %36

13:                                               ; preds = %11
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %37

15:                                               ; preds = %2
  %16 = load i32, ptr %6, align 8, !tbaa !154
  %17 = sext i32 %16 to i64
  %18 = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %17) #18
  %19 = load i8, ptr %18, align 8, !tbaa !158, !range !165, !noundef !166
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23, !prof !231

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %18, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %22) #19
  br label %36

23:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %24 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %18, i64 0, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !170
  %26 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %18, i64 0, i32 5
  %27 = load double, ptr %26, align 8, !tbaa !171
  %28 = getelementptr inbounds %class.ValueIterator, ptr %1, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !144
  %30 = sitofp i32 %29 to double
  %31 = tail call double @llvm.fmuladd.f64(double %27, double %30, double %25)
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %31) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #19
          to label %33 unwind label %34

33:                                               ; preds = %23
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %36

34:                                               ; preds = %23
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %37

36:                                               ; preds = %21, %33, %12
  ret void

37:                                               ; preds = %34, %13
  %38 = phi { ptr, i32 } [ %14, %13 ], [ %35, %34 ]
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !177 {
  %2 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !154
  %4 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %5 = trunc i64 %4 to i32
  %6 = icmp sge i32 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK13ValueIterator4dumpEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) #19
  %4 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %32, %1
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #19
  %9 = tail call noundef i32 @_ZNK13ValueIterator6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %40, label %38

11:                                               ; preds = %1, %32
  %12 = phi i64 [ %33, %32 ], [ 0, %1 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(68) ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %12) #18
  %14 = icmp eq i64 %12, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) #19
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i8, ptr %13, align 8, !tbaa !158, !range !165, !noundef !166
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %13, i64 0, i32 2
  %22 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %22) #19
  br label %32

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %13, i64 0, i32 3
  %26 = load double, ptr %25, align 8, !tbaa !170
  %27 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %13, i64 0, i32 4
  %28 = load double, ptr %27, align 8, !tbaa !169
  %29 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %13, i64 0, i32 5
  %30 = load double, ptr %29, align 8, !tbaa !171
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %26, double noundef %28, double noundef %30) #19
  br label %32

32:                                               ; preds = %24, %20
  %33 = add nuw nsw i64 %12, 1
  %34 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %35 = shl i64 %34, 32
  %36 = ashr exact i64 %35, 32
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %11, label %7, !llvm.loop !232

38:                                               ; preds = %45, %7
  %39 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void

40:                                               ; preds = %7, %45
  %41 = phi i32 [ %48, %45 ], [ 0, %7 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) #19
  br label %45

45:                                               ; preds = %43, %40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @_ZNK13ValueIterator3getB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %41) #19
  %46 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %46) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp eq i32 %48, %9
  br i1 %49, label %38, label %40, !llvm.loop !233
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind optsize }
attributes #23 = { noreturn }
attributes #24 = { noreturn optsize }
attributes #25 = { builtin optsize allocsize(0) }
attributes #26 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!142}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!36 = !{ptr @_ZN13ValueIteratorC2EPKc, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2Ev, i64 2}
!37 = !{ptr @_ZN13ValueIteratorC2EPKc, ptr @_ZN13ValueIterator5parseEPKc, i64 1}
!38 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2Ev, i64 2}
!39 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5clearEv, i64 2}
!40 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizerC1EPKcS1_, i64 2}
!41 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizer13hasMoreTokensEv, i64 4}
!42 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN13ValueIterator4ItemC2Ev, i64 2}
!43 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizer9nextTokenEv, i64 2}
!44 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_Z8opp_trimB5cxx11PKc, i64 2}
!45 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_, i64 2}
!46 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 2}
!47 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, i64 2}
!48 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZSt3maxIiERKT_S2_S2_, i64 1}
!49 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_, i64 2}
!50 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN13ValueIterator4ItemD2Ev, i64 2}
!51 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN13ValueIterator7restartEv, i64 2}
!52 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizerD1Ev, i64 2}
!53 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv, i64 2}
!54 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E, i64 2}
!55 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev, i64 2}
!56 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2Ev, i64 2}
!57 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2Ev, ptr @_ZNSaIN13ValueIterator4ItemEEC2Ev, i64 2}
!58 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataC2Ev, i64 2}
!59 = !{ptr @_ZNSaIN13ValueIterator4ItemEEC2Ev, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEEC2Ev, i64 2}
!60 = !{ptr @_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_, i64 2}
!61 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m, i64 2}
!62 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev, i64 2}
!63 = !{ptr @_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_, i64 2}
!64 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_, ptr @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_, i64 2}
!65 = !{ptr @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_, ptr @_ZN13ValueIterator4ItemD2Ev, i64 2}
!66 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m, i64 2}
!67 = !{ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m, i64 2}
!68 = !{ptr @_ZN13ValueIteratorD2Ev, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev, i64 2}
!69 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5clearEv, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE15_M_erase_at_endEPS1_, i64 2}
!70 = !{ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, ptr @setlocale, i64 2}
!71 = !{ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 2}
!72 = !{ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, ptr @strtod, i64 3}
!73 = !{ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, ptr @_Z11opp_isspaceh, i64 10}
!74 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_, ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, i64 1}
!75 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv, i64 2}
!76 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, i64 2}
!77 = !{ptr @_ZN13ValueIterator7restartEv, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv, i64 9}
!78 = !{ptr @_ZN13ValueIterator7restartEv, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm, i64 9}
!79 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv, i64 1}
!80 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZSt8_DestroyIPN13ValueIterator4ItemES1_EvT_S3_RSaIT0_E, i64 1}
!81 = !{ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JRKS1_EEEvPT_DpOT0_, i64 2}
!82 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc, i64 2}
!83 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv, i64 2}
!84 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, i64 2}
!85 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm, i64 2}
!86 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_, i64 2}
!87 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv, i64 4}
!88 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv, i64 4}
!89 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, i64 4}
!90 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m, i64 2}
!91 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 2}
!92 = !{ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE9constructIS1_JRKS1_EEEvPT_DpOT0_, ptr @_ZN13ValueIterator4ItemC2ERKS0_, i64 2}
!93 = !{ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv, i64 4}
!94 = !{ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv, i64 8}
!95 = !{ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!96 = !{ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 2}
!97 = !{ptr @_ZN9__gnu_cxxmiIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv, i64 4}
!98 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 2}
!99 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m, i64 2}
!100 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, ptr @_ZSt12__relocate_aIPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_, i64 4}
!101 = !{ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv, i64 4}
!102 = !{ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE8max_sizeEv, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_max_sizeERKS2_, i64 4}
!103 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_max_sizeERKS2_, ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8max_sizeERKS2_, i64 4}
!104 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE11_S_max_sizeERKS2_, ptr @_ZSt3minImERKT_S2_S2_, i64 4}
!105 = !{ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8max_sizeERKS2_, ptr @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE8max_sizeEv, i64 4}
!106 = !{ptr @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv, i64 4}
!107 = !{ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv, i64 2}
!108 = !{ptr @_ZSt12__relocate_aIPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt12__niter_baseIPN13ValueIterator4ItemEET_S3_, i64 12}
!109 = !{ptr @_ZSt12__relocate_aIPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt14__relocate_a_1IPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_, i64 4}
!110 = !{ptr @_ZSt14__relocate_a_1IPN13ValueIterator4ItemES2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_, i64 1}
!111 = !{ptr @_Z11opp_isspaceh, ptr @isspace, i64 10640642}
!112 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!113 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!114 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!115 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!116 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!117 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!118 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!119 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!120 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!121 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!122 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!123 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!124 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!125 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!126 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!127 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!128 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!129 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!130 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!131 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!132 = !{ptr @_ZN13ValueIteratorppEi, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv, i64 3}
!133 = !{ptr @_ZN13ValueIteratorppEi, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm, i64 2}
!134 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv, i64 4}
!135 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @_ZNSaIcEC2Ev, i64 4}
!136 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 4}
!137 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 4}
!138 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EEixEm, i64 3}
!139 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 1}
!140 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @sprintf, i64 3}
!141 = !{ptr @_ZNK13ValueIterator3endEv, ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv, i64 6}
!142 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!143 = !{!"function_entry_count", i64 2}
!144 = !{!145, !153, i64 28}
!145 = !{!"_ZTS13ValueIterator", !146, i64 0, !153, i64 24, !153, i64 28, !153, i64 32}
!146 = !{!"_ZTSSt6vectorIN13ValueIterator4ItemESaIS1_EE", !147, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE", !148, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implE", !149, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!150 = !{!"any pointer", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C++ TBAA"}
!153 = !{!"int", !151, i64 0}
!154 = !{!145, !153, i64 24}
!155 = !{!145, !153, i64 32}
!156 = !{!"branch_weights", i32 3, i32 1}
!157 = !{!"branch_weights", i32 3, i32 3}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTSN13ValueIterator4ItemE", !160, i64 0, !161, i64 8, !164, i64 40, !164, i64 48, !164, i64 56, !153, i64 64}
!160 = !{!"bool", !151, i64 0}
!161 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !162, i64 0, !163, i64 8, !151, i64 16}
!162 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !150, i64 0}
!163 = !{!"long", !151, i64 0}
!164 = !{!"double", !151, i64 0}
!165 = !{i8 0, i8 2}
!166 = !{}
!167 = !{!"branch_weights", i32 1, i32 3}
!168 = !{!153, !153, i64 0}
!169 = !{!159, !164, i64 48}
!170 = !{!159, !164, i64 40}
!171 = !{!159, !164, i64 56}
!172 = !{!159, !153, i64 64}
!173 = distinct !{!173, !174}
!174 = !{!"llvm.loop.mustprogress"}
!175 = !{!149, !150, i64 0}
!176 = !{!149, !150, i64 8}
!177 = !{!"function_entry_count", i64 6}
!178 = !{!149, !150, i64 16}
!179 = !{!"branch_weights", i32 1, i32 191}
!180 = !{!"branch_weights", i32 191, i32 1}
!181 = distinct !{!181, !174}
!182 = !{!"function_entry_count", i64 4}
!183 = !{!150, !150, i64 0}
!184 = !{!151, !151, i64 0}
!185 = distinct !{!185, !174}
!186 = distinct !{!186, !174}
!187 = distinct !{!187, !174}
!188 = !{!"branch_weights", i32 1, i32 6, i32 1}
!189 = distinct !{!189, !174}
!190 = distinct !{!190, !174}
!191 = !{!"function_entry_count", i64 8}
!192 = !{!"branch_weights", i32 127, i32 1}
!193 = !{!"branch_weights", i32 1, i32 9}
!194 = !{!"branch_weights", i32 1025, i32 127}
!195 = distinct !{!195, !174}
!196 = !{!"function_entry_count", i64 1891507}
!197 = !{!163, !163, i64 0}
!198 = !{!"function_entry_count", i64 0}
!199 = !{!"function_entry_count", i64 30}
!200 = !{!"function_entry_count", i64 147735}
!201 = !{!"branch_weights", i32 61980, i32 85757}
!202 = !{!"function_entry_count", i64 295467}
!203 = !{!"branch_weights", i32 2, i32 295467}
!204 = !{!205, !150, i64 0}
!205 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEE", !150, i64 0}
!206 = !{!"branch_weights", i32 1, i32 2000}
!207 = !{!"branch_weights", i32 4, i32 1}
!208 = !{!"branch_weights", i32 1, i32 0}
!209 = distinct !{!209, !174}
!210 = !{!"function_entry_count", i64 12}
!211 = !{!"function_entry_count", i64 10640642}
!212 = !{!"function_entry_count", i64 1}
!213 = !{!214, !214, i64 0}
!214 = !{!"vtable pointer", !152, i64 0}
!215 = !{!216, !153, i64 8}
!216 = !{!"_ZTS10cException", !217, i64 0, !153, i64 8, !161, i64 16, !160, i64 48, !161, i64 56, !161, i64 88, !153, i64 120}
!217 = !{!"_ZTSSt9exception"}
!218 = !{!216, !160, i64 48}
!219 = !{!216, !153, i64 120}
!220 = !{!"function_entry_count", i64 2107073}
!221 = !{!"function_entry_count", i64 1889443}
!222 = !{!"branch_weights", i32 1257663, i32 631782}
!223 = !{!224, !150, i64 0}
!224 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !150, i64 0}
!225 = !{!"branch_weights", i32 1889444, i32 1}
!226 = distinct !{!226, !174}
!227 = distinct !{!227, !174}
!228 = !{!"function_entry_count", i64 10}
!229 = distinct !{!229, !174}
!230 = !{!"branch_weights", i32 5, i32 1}
!231 = !{!"branch_weights", i32 1, i32 5}
!232 = distinct !{!232, !174}
!233 = distinct !{!233, !174}
