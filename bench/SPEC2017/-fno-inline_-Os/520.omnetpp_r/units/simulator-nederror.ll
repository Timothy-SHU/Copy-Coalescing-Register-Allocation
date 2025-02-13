; ModuleID = 'simulator/nederror.cc'
source_filename = "simulator/nederror.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.NEDErrorStore::Entry" = type { ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.NEDErrorStore = type <{ %"class.std::vector", i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl" }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl" = type { %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE9push_backEOS1_ = comdat any

$_ZN13NEDErrorStore5EntryC2Ev = comdat any

$_ZN13NEDErrorStore5EntryD2Ev = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4backEv = comdat any

$_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv = comdat any

$_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE3endEv = comdat any

$_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZN13NEDErrorStore5EntryC2EOS0_ = comdat any

$_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIN13NEDErrorStore5EntryEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIN13NEDErrorStore5EntryEE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPN13NEDErrorStore5EntryES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN13NEDErrorStore5EntryES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt12__niter_baseIPN13NEDErrorStore5EntryEET_S3_ = comdat any

$_ZSt19__relocate_object_aIN13NEDErrorStore5EntryES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE7destroyIS1_EEvPT_ = comdat any

$_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE10deallocateEPS1_m = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEdeEv = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"<%s>: %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"INTERNAL ERROR: %s:%d: %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"INTERNAL ERROR: %s:%d: <%s>: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"INTERNAL ERROR: %s:%d: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@reltable._ZN13NEDErrorStore12severityNameEi = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable._ZN13NEDErrorStore12severityNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._ZN13NEDErrorStore12severityNameEi to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable._ZN13NEDErrorStore12severityNameEi to i64)) to i32)], align 4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %6 = alloca %"struct.NEDErrorStore::Entry", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  call void @_ZN13NEDErrorStore5EntryC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #13
  invoke void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %6) #14
          to label %7 unwind label %17

7:                                                ; preds = %5
  call void @_ZN13NEDErrorStore5EntryD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #12
  %8 = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %9 = icmp eq ptr %2, null
  %10 = icmp ne ptr %1, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load ptr, ptr %1, align 8, !tbaa !40
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1) #14
  br label %19

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13NEDErrorStore5EntryD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %6) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %12, %7
  %20 = phi ptr [ %16, %12 ], [ %2, %7 ]
  store ptr %1, ptr %8, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str, ptr %20
  %23 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 2
  %24 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull %22) #14
  %25 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 1
  store i32 %3, ptr %25, align 8, !tbaa !51
  %26 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 3
  %27 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %4) #14
  %28 = getelementptr inbounds %class.NEDErrorStore, ptr %0, i64 0, i32 1
  %29 = load i8, ptr %28, align 8, !tbaa !52, !range !59, !noundef !60
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %19
  %32 = call noundef ptr @_ZN13NEDErrorStore12severityNameEi(i32 noundef %3) #14
  %33 = load ptr, ptr @stderr, align 8, !tbaa !61
  br i1 %21, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef nonnull %20, ptr noundef nonnull %32, ptr noundef %4) #15
  br label %45

36:                                               ; preds = %31
  br i1 %10, label %37, label %43

37:                                               ; preds = %36
  %38 = load ptr, ptr %1, align 8, !tbaa !40
  %39 = getelementptr inbounds ptr, ptr %38, i64 4
  %40 = load ptr, ptr %39, align 8
  %41 = call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(112) %1) #14
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.2, ptr noundef %41, ptr noundef nonnull %32, ptr noundef %4) #15
  br label %45

43:                                               ; preds = %36
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull %32, ptr noundef %4) #15
  br label %45

45:                                               ; preds = %34, %43, %37, %19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %3 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13NEDErrorStore5EntryC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13NEDErrorStore5EntryD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = tail call ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #13
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN13NEDErrorStore12severityNameEi(i32 noundef %0) local_unnamed_addr #4 align 2 !prof !39 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable._ZN13NEDErrorStore12severityNameEi, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.7, %1 ]
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !39 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #13
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !62
  call void @llvm.va_end(ptr nonnull %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !39 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #13
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !62
  call void @llvm.va_end(ptr nonnull %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef null, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !39 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #13
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !62
  call void @llvm.va_end(ptr nonnull %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef null, i32 noundef 1, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NEDErrorStore10addWarningEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !39 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #13
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !62
  call void @llvm.va_end(ptr nonnull %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef null, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NEDErrorStore3addEP10NEDElementiPKcz(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) local_unnamed_addr #0 align 2 !prof !39 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %3, ptr noundef nonnull %6) #13
  %8 = getelementptr inbounds [1024 x i8], ptr %5, i64 0, i64 1023
  store i8 0, ptr %8, align 1, !tbaa !62
  call void @llvm.va_end(ptr nonnull %6)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13NEDErrorStore3addEPKciS1_z(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) local_unnamed_addr #0 align 2 !prof !39 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %3, ptr noundef nonnull %6) #13
  %8 = getelementptr inbounds [1024 x i8], ptr %5, i64 0, i64 1023
  store i8 0, ptr %8, align 1, !tbaa !62
  call void @llvm.va_end(ptr nonnull %6)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK13NEDErrorStore13containsErrorEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #3 align 2 !prof !63 {
  %2 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %11, label %17, !prof !64

5:                                                ; preds = %11
  %6 = add nuw nsw i64 %12, 1
  %7 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %8 = shl i64 %7, 32
  %9 = ashr exact i64 %8, 32
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %17, !prof !65, !llvm.loop !66

11:                                               ; preds = %1, %5
  %12 = phi i64 [ %6, %5 ], [ 0, %1 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %12) #13
  %14 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %5

17:                                               ; preds = %5, %11, %1
  %18 = phi i1 [ false, %1 ], [ %16, %11 ], [ %16, %5 ]
  ret i1 %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = load ptr, ptr %0, align 8, !tbaa !69
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 80
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
  %4 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore13errorSeverityEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = zext nneg i32 %1 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %9) #13
  %11 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = tail call noundef ptr @_ZN13NEDErrorStore12severityNameEi(i32 noundef %12) #14
  br label %14

14:                                               ; preds = %2, %4, %8
  %15 = phi ptr [ %13, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK13NEDErrorStore17errorSeverityCodeEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = zext nneg i32 %1 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %9) #13
  %11 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %2, %4, %8
  %14 = phi i32 [ %12, %8 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore13errorLocationEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = zext nneg i32 %1 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %9) #13
  %11 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %10, i64 0, i32 2
  %12 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  br label %13

13:                                               ; preds = %2, %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore12errorContextEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = zext nneg i32 %1 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %9) #13
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  br label %12

12:                                               ; preds = %2, %4, %8
  %13 = phi ptr [ %11, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore9errorTextEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = zext nneg i32 %1 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %9) #13
  %11 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %10, i64 0, i32 3
  %12 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  br label %13

13:                                               ; preds = %2, %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK13NEDErrorStore17findFirstErrorForEP10NEDElementi(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !39 {
  %4 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, %2
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i64 [ %8, %7 ], [ %15, %14 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %10) #13
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = add nsw i64 %10, 1
  %16 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %9, label %22, !llvm.loop !70

20:                                               ; preds = %9
  %21 = trunc i64 %10 to i32
  br label %22

22:                                               ; preds = %14, %20, %3
  %23 = phi i32 [ -1, %3 ], [ %21, %20 ], [ -1, %14 ]
  ret i32 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ...) local_unnamed_addr #0 !prof !39 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %3, ptr noundef nonnull %6) #13
  %8 = getelementptr inbounds [1024 x i8], ptr %5, i64 0, i64 1023
  store i8 0, ptr %8, align 1, !tbaa !62
  call void @llvm.va_end(ptr nonnull %6)
  %9 = icmp eq ptr %2, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !40
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %2) #14
  %15 = icmp eq ptr %14, null
  %16 = load ptr, ptr @stderr, align 8, !tbaa !61
  br i1 %15, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %5) #15
  br label %28

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(112) %2) #14
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %1, ptr noundef %23, ptr noundef nonnull %5) #15
  br label %28

25:                                               ; preds = %4
  %26 = load ptr, ptr @stderr, align 8, !tbaa !61
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.10, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #15
  br label %28

28:                                               ; preds = %19, %25, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !68
  %10 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !68
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(80) %1) #14
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 !prof !39 {
  tail call void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.11) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !69
  %8 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %10 = tail call ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %12 = call noundef ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #14
  %13 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(80) %2) #13
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %17 = call noundef ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #13
  %18 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %22 = call noundef ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #13
  %23 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 80
  call void @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #14
  store ptr %12, ptr %0, align 8, !tbaa !69
  store ptr %22, ptr %8, align 8, !tbaa !68
  %29 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 comdat align 2 !prof !39 {
  tail call void @_ZN13NEDErrorStore5EntryC2EOS0_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13NEDErrorStore5EntryC2EOS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false)
  %3 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %5 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !72
  %6 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %7 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #16
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %13 = tail call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store i64 %13, ptr %5, align 8, !tbaa !72
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %17 = call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !39 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 80
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPN13NEDErrorStore5EntryES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !73 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !74

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %3 = tail call noundef i64 @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #13
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !75 {
  %3 = load i64, ptr %0, align 8, !tbaa !72
  %4 = load i64, ptr %1, align 8, !tbaa !72
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !76
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 115292150460684697, ptr %2, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store i64 %4, ptr %3, align 8, !tbaa !72
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN13NEDErrorStore5EntryEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !77 {
  %3 = load i64, ptr %1, align 8, !tbaa !72
  %4 = load i64, ptr %0, align 8, !tbaa !72
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !78
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN13NEDErrorStore5EntryEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIN13NEDErrorStore5EntryEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN13NEDErrorStore5EntryEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  ret i64 115292150460684697
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !39 {
  %3 = load ptr, ptr %1, align 8, !tbaa !61
  store ptr %3, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN13NEDErrorStore5EntryEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !81

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 230584300921369395
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 80
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #17
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN13NEDErrorStore5EntryES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !39 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPN13NEDErrorStore5EntryEET_S3_(ptr noundef %0) #13
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPN13NEDErrorStore5EntryEET_S3_(ptr noundef %1) #13
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPN13NEDErrorStore5EntryEET_S3_(ptr noundef %2) #13
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPN13NEDErrorStore5EntryES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN13NEDErrorStore5EntryES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !39 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aIN13NEDErrorStore5EntryES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  %9 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 1
  %10 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !llvm.loop !82

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN13NEDErrorStore5EntryEET_S3_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !39 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN13NEDErrorStore5EntryES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat !prof !39 {
  tail call void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  tail call void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !39 {
  tail call void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !39 {
  tail call void @_ZN13NEDErrorStore5EntryD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !39 {
  tail call void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !79
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !61
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !39 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { cold optsize }
attributes #16 = { noreturn optsize }
attributes #17 = { builtin optsize allocsize(0) }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZNK13NEDErrorStore13containsErrorEv, ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EE4sizeEv, i64 41}
!36 = !{ptr @_ZNK13NEDErrorStore13containsErrorEv, ptr @_ZNKSt6vectorIN13NEDErrorStore5EntryESaIS1_EEixEm, i64 1}
!37 = !{ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIN13NEDErrorStore5EntryEEE10deallocateERS2_PS1_m, i64 1}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSN13NEDErrorStore5EntryE", !45, i64 0, !47, i64 8, !48, i64 16, !48, i64 48}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !42, i64 0}
!47 = !{!"int", !46, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !50, i64 8, !46, i64 16}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!50 = !{!"long", !46, i64 0}
!51 = !{!44, !47, i64 8}
!52 = !{!53, !58, i64 24}
!53 = !{!"_ZTS13NEDErrorStore", !54, i64 0, !58, i64 24}
!54 = !{!"_ZTSSt6vectorIN13NEDErrorStore5EntryESaIS1_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!58 = !{!"bool", !46, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!45, !45, i64 0}
!62 = !{!46, !46, i64 0}
!63 = !{!"function_entry_count", i64 40}
!64 = !{!"branch_weights", i32 1, i32 40}
!65 = !{!"branch_weights", i32 0, i32 1}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!57, !45, i64 8}
!69 = !{!57, !45, i64 0}
!70 = distinct !{!70, !67}
!71 = !{!57, !45, i64 16}
!72 = !{!50, !50, i64 0}
!73 = !{!"function_entry_count", i64 14}
!74 = !{!"branch_weights", i32 15, i32 1}
!75 = !{!"function_entry_count", i64 147735}
!76 = !{!"branch_weights", i32 61980, i32 85757}
!77 = !{!"function_entry_count", i64 295467}
!78 = !{!"branch_weights", i32 2, i32 295467}
!79 = !{!80, !45, i64 0}
!80 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN13NEDErrorStore5EntryESt6vectorIS2_SaIS2_EEEE", !45, i64 0}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = distinct !{!82, !67}
