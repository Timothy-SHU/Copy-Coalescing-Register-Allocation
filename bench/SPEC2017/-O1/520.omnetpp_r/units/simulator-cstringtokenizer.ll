; ModuleID = 'simulator/cstringtokenizer.cc'
source_filename = "simulator/cstringtokenizer.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.cStringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" \09\0A\0D\0C\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Converting string to a vector of ints: error at token '%s'\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"Converting string to a vector of ints: '%s' does not fit into an int\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Converting string to a vector of doubles: error at token '%s'\00", align 1
@.str.7 = private unnamed_addr constant [96 x i8] c"Converting string to a vector of doubles: overflow or underflow while converting '%s' to double\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN16cStringTokenizerC1EPKcS1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN16cStringTokenizerC2EPKcS1_
@_ZN16cStringTokenizerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16cStringTokenizerD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cStringTokenizerC2EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %4 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2, i32 2
  store ptr %5, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %6, align 8, !tbaa !56
  store i8 0, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @.str, ptr %1, !prof !60
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10, !prof !60

10:                                               ; preds = %3
  %11 = load i8, ptr %2, align 1, !tbaa !59
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !60

13:                                               ; preds = %10, %3
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %2, %10 ], [ @.str.1, %13 ]
  %16 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #19
  %17 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %15, i64 noundef %16)
          to label %18 unwind label %25, !prof !61

18:                                               ; preds = %14
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #20
  %20 = add i64 %19, 1
  %21 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %20) #21
          to label %22 unwind label %25, !prof !61

22:                                               ; preds = %18
  store ptr %21, ptr %0, align 8, !tbaa !62
  %23 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %8) #19
  %24 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 1
  store ptr %21, ptr %24, align 8, !tbaa !64
  ret void

25:                                               ; preds = %14, %18
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = load ptr, ptr %4, align 8, !tbaa !65
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, ptr %6, align 8, !tbaa !56
  %31 = icmp ult i64 %30, 16
  tail call void @llvm.assume(i1 %31)
  br label %33

32:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %27) #22
  br label %33

33:                                               ; preds = %29, %32
  resume { ptr, i32 } %26
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN16cStringTokenizerD2Ev(ptr noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !60

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %2) #22
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2, i32 2
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14, !prof !61

10:                                               ; preds = %5
  %11 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !56
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  br label %15

14:                                               ; preds = %5
  tail call void @_ZdlPv(ptr noundef %7) #22
  br label %15

15:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cStringTokenizer12setDelimiterEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !66 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !59
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %2
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi ptr [ %1, %4 ], [ @.str.2, %7 ]
  %10 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !56
  %13 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #19
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %12, ptr noundef nonnull %9, i64 noundef %13)
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN16cStringTokenizer9nextTokenEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 align 2 !prof !67 {
  %2 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = load ptr, ptr %2, align 8, !tbaa !68
  %6 = load i8, ptr %5, align 1, !tbaa !59
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8, !prof !69

8:                                                ; preds = %1
  %9 = sext i8 %6 to i32
  %10 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %16, !prof !70

12:                                               ; preds = %16
  %13 = sext i8 %19 to i32
  %14 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !70, !llvm.loop !71

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %18, %12 ], [ %5, %8 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %18, ptr %2, align 8, !tbaa !68
  %19 = load i8, ptr %18, align 1, !tbaa !59
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %46, label %12, !prof !74, !llvm.loop !71

21:                                               ; preds = %12, %8
  %22 = phi i1 [ %7, %8 ], [ %20, %12 ]
  %23 = phi ptr [ %5, %8 ], [ %18, %12 ]
  br i1 %22, label %46, label %24, !prof !74

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8, !tbaa !68
  %26 = load i8, ptr %25, align 1, !tbaa !59
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %46, label %28, !prof !69

28:                                               ; preds = %24
  %29 = sext i8 %26 to i32
  %30 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %29) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %41, !prof !75

32:                                               ; preds = %36
  %33 = sext i8 %39 to i32
  %34 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %33) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41, !prof !76, !llvm.loop !77

36:                                               ; preds = %28, %32
  %37 = phi ptr [ %38, %32 ], [ %25, %28 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %38, ptr %2, align 8, !tbaa !68
  %39 = load i8, ptr %38, align 1, !tbaa !59
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %32, !prof !78, !llvm.loop !77

41:                                               ; preds = %32, %28
  %42 = phi i1 [ %27, %28 ], [ %40, %32 ]
  %43 = phi ptr [ %25, %28 ], [ %38, %32 ]
  br i1 %42, label %46, label %44, !prof !74

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %45, ptr %2, align 8, !tbaa !64
  store i8 0, ptr %43, align 1, !tbaa !59
  br label %46

46:                                               ; preds = %16, %36, %1, %24, %41, %44, %21
  %47 = phi ptr [ null, %21 ], [ %23, %44 ], [ %23, %41 ], [ %23, %24 ], [ null, %1 ], [ %23, %36 ], [ null, %16 ]
  ret ptr %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN16cStringTokenizer13hasMoreTokensEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #8 align 2 !prof !79 {
  %2 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.cStringTokenizer, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = load ptr, ptr %2, align 8, !tbaa !68
  %6 = load i8, ptr %5, align 1, !tbaa !59
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8, !prof !80

8:                                                ; preds = %1, %14
  %9 = phi i8 [ %16, %14 ], [ %6, %1 ]
  %10 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %11 = sext i8 %9 to i32
  %12 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %11) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !81

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %15, ptr %2, align 8, !tbaa !68
  %16 = load i8, ptr %15, align 1, !tbaa !59
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !prof !82, !llvm.loop !71

18:                                               ; preds = %8, %14, %1
  %19 = phi i1 [ false, %1 ], [ %13, %14 ], [ %13, %8 ]
  ret i1 %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cStringTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %4 = tail call noundef ptr @_ZN16cStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %6, %22
  %10 = phi ptr [ %4, %6 ], [ %23, %22 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  store ptr %7, ptr %3, align 8, !tbaa !51
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #19
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %10, ptr noundef nonnull %12)
          to label %13 unwind label %25

13:                                               ; preds = %9
  %14 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %15 unwind label %27

15:                                               ; preds = %13
  %16 = load ptr, ptr %3, align 8, !tbaa !65
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %8, align 8, !tbaa !56
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #22
  br label %22

22:                                               ; preds = %18, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  %23 = call noundef ptr @_ZN16cStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %9, !llvm.loop !83

25:                                               ; preds = %9
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %36

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %3, align 8, !tbaa !65
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !56
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  br label %36

35:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %29) #22
  br label %36

36:                                               ; preds = %35, %31, %25
  %37 = phi { ptr, i32 } [ %26, %25 ], [ %28, %31 ], [ %28, %35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %37

38:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !51
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #23
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store i64 %9, ptr %4, align 8, !tbaa !84
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !85

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !65
  %13 = load i64, ptr %4, align 8, !tbaa !84
  store i64 %13, ptr %5, align 8, !tbaa !59
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !65
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !86

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !59
  store i8 %17, ptr %15, align 1, !tbaa !59
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !87
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !84
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !56
  %22 = load ptr, ptr %0, align 8, !tbaa !65
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6, !prof !92

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15, !prof !93

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !56
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #22
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %6, !prof !94, !llvm.loop !95

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !96

22:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #22
  br label %23

23:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cStringTokenizer11asIntVectorEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.3") align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = tail call noundef ptr @_ZN16cStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %2, %39
  %10 = phi ptr [ %40, %39 ], [ %7, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %11 = call i64 @strtol(ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 10) #19
  %12 = load ptr, ptr %3, align 8, !tbaa !68
  %13 = load i8, ptr %12, align 1, !tbaa !59
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %16, ptr noundef nonnull @.str.3, ptr noundef nonnull %10)
          to label %34 unwind label %17

17:                                               ; preds = %15
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %16) #19
  br label %44

19:                                               ; preds = %34
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %44

21:                                               ; preds = %9
  %22 = trunc i64 %11 to i32
  %23 = add i64 %11, 2147483648
  %24 = icmp ult i64 %23, 4294967296
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 %22, ptr %4, align 4, !tbaa !97
  %26 = load ptr, ptr %5, align 8, !tbaa !68
  %27 = load ptr, ptr %6, align 8, !tbaa !99
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  store i32 %22, ptr %26, align 4, !tbaa !97
  %30 = getelementptr inbounds i32, ptr %26, i64 1
  store ptr %30, ptr %5, align 8, !tbaa !101
  br label %39

31:                                               ; preds = %25
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %26, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %39 unwind label %42

32:                                               ; preds = %21
  %33 = call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %33, ptr noundef nonnull @.str.4, ptr noundef nonnull %10)
          to label %34 unwind label %37

34:                                               ; preds = %15, %32
  %35 = phi ptr [ %33, %32 ], [ %16, %15 ]
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
          to label %36 unwind label %19

36:                                               ; preds = %34
  unreachable

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %33) #19
  br label %44

39:                                               ; preds = %29, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %40 = call noundef ptr @_ZN16cStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %9, !llvm.loop !102

42:                                               ; preds = %31
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %44

44:                                               ; preds = %42, %37, %19, %17
  %45 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ], [ %38, %37 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %46 = load ptr, ptr %0, align 8, !tbaa !103
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %49

48:                                               ; preds = %39, %2
  ret void

49:                                               ; preds = %44
  call void @_ZdlPv(ptr noundef %46) #22
  br label %50

50:                                               ; preds = %44, %49
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN16cStringTokenizer14asDoubleVectorEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.8") align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = tail call ptr @setlocale(i32 noundef 1, ptr noundef nonnull @.str.5) #19
  %8 = tail call noundef ptr @_ZN16cStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %2, %40
  %11 = phi ptr [ %41, %40 ], [ %8, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %12 = call double @strtod(ptr noundef nonnull %11, ptr noundef nonnull %3) #19
  store double %12, ptr %4, align 8, !tbaa !104
  %13 = load ptr, ptr %3, align 8, !tbaa !68
  %14 = load i8, ptr %13, align 1, !tbaa !59
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.6, ptr noundef nonnull %11)
          to label %18 unwind label %21

18:                                               ; preds = %16, %29
  %19 = phi ptr [ %30, %29 ], [ %17, %16 ]
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #23
          to label %20 unwind label %25

20:                                               ; preds = %18
  unreachable

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #19
  br label %43

23:                                               ; preds = %39
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %43

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %43

27:                                               ; preds = %10
  %28 = fcmp oeq double %12, 0x7FF0000000000000
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = call ptr @__cxa_allocate_exception(i64 128) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.7, ptr noundef nonnull %11)
          to label %18 unwind label %31

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %30) #19
  br label %43

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 8, !tbaa !68
  %35 = load ptr, ptr %6, align 8, !tbaa !106
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  store double %12, ptr %34, align 8, !tbaa !104
  %38 = getelementptr inbounds double, ptr %34, i64 1
  store ptr %38, ptr %5, align 8, !tbaa !108
  br label %40

39:                                               ; preds = %33
  invoke void @_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %34, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %40 unwind label %23

40:                                               ; preds = %37, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %41 = call noundef ptr @_ZN16cStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %10, !llvm.loop !109

43:                                               ; preds = %23, %25, %31, %21
  %44 = phi { ptr, i32 } [ %22, %21 ], [ %32, %31 ], [ %24, %23 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %45 = load ptr, ptr %0, align 8, !tbaa !110
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %48

47:                                               ; preds = %40, %2
  ret void

48:                                               ; preds = %43
  call void @_ZdlPv(ptr noundef %45) #22
  br label %49

49:                                               ; preds = %43, %48
  resume { ptr, i32 } %44
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !112
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !70

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !56
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #22
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !70

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !56
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #22
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !69

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !56
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #22
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !66 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #22
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #22
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !114
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !66 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !56
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !51, !alias.scope !118
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !56
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !65, !alias.scope !118
  %19 = load i64, ptr %11, align 8, !tbaa !59
  store i64 %19, ptr %9, align 8, !tbaa !59, !alias.scope !118
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !56, !alias.scope !118
  store ptr %11, ptr %7, align 8, !tbaa !65
  store i64 0, ptr %21, align 8, !tbaa !56
  store i8 0, ptr %11, align 8, !tbaa !59
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !56, !noalias !121
  %27 = load i64, ptr %23, align 8, !tbaa !56, !noalias !121
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !65, !noalias !121
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !51, !alias.scope !121
  %37 = load ptr, ptr %34, align 8, !tbaa !65
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !56
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !65, !alias.scope !121
  %46 = load i64, ptr %38, align 8, !tbaa !59
  store i64 %46, ptr %36, align 8, !tbaa !59, !alias.scope !121
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !56, !alias.scope !121
  store ptr %38, ptr %34, align 8, !tbaa !65
  store i64 0, ptr %48, align 8, !tbaa !56
  store i8 0, ptr %38, align 8, !tbaa !59
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  %52 = load ptr, ptr %3, align 8, !tbaa !65
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !56
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #22
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !65
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !56
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #22
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !65
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !56
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #22
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !65
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !56
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #22
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !65
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !56
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #22
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !124, !range !125, !noundef !126
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !127
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #11

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #9 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !84
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !85

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !65
  %11 = load i64, ptr %4, align 8, !tbaa !84
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !65
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !86

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !59
  store i8 %16, ptr %14, align 1, !tbaa !59
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !129
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !84
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !56
  %21 = load ptr, ptr %0, align 8, !tbaa !65
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !51
  %10 = load ptr, ptr %1, align 8, !tbaa !65
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !56
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !65
  %19 = load i64, ptr %11, align 8, !tbaa !59
  store i64 %19, ptr %9, align 8, !tbaa !59
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !56
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !56
  store ptr %11, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %21, align 8, !tbaa !56
  store i8 0, ptr %11, align 8, !tbaa !59
  %24 = load ptr, ptr %3, align 8, !tbaa !91
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !91
  br label %27

26:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %3, align 8, !tbaa !68
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 -1
  ret ptr %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12, !prof !132

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 5
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %18 = select i1 %16, i64 288230376151711743, i64 %17, !prof !132
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 5
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !132

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 5
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #21
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 2
  store ptr %29, ptr %28, align 8, !tbaa !51
  %30 = load ptr, ptr %2, align 8, !tbaa !65
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %38, !prof !133

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !56
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %37, i1 false), !prof !134
  br label %40

38:                                               ; preds = %26
  store ptr %30, ptr %28, align 8, !tbaa !65
  %39 = load i64, ptr %31, align 8, !tbaa !59
  store i64 %39, ptr %29, align 8, !tbaa !59
  br label %40

40:                                               ; preds = %33, %38
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 1
  store i64 %42, ptr %43, align 8, !tbaa !56
  store ptr %31, ptr %2, align 8, !tbaa !65
  store i64 0, ptr %41, align 8, !tbaa !56
  store i8 0, ptr %31, align 8, !tbaa !59
  %44 = icmp eq ptr %6, %1
  br i1 %44, label %45, label %49, !prof !135

45:                                               ; preds = %63, %40
  %46 = phi ptr [ %27, %40 ], [ %68, %63 ]
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 1
  %48 = icmp eq ptr %5, %1
  br i1 %48, label %92, label %70, !prof !70

49:                                               ; preds = %40, %63
  %50 = phi ptr [ %68, %63 ], [ %27, %40 ]
  %51 = phi ptr [ %67, %63 ], [ %6, %40 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %52, ptr %50, align 8, !tbaa !51, !alias.scope !136, !noalias !139
  %53 = load ptr, ptr %51, align 8, !tbaa !65, !alias.scope !139, !noalias !136
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61, !prof !141

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !56, !alias.scope !139, !noalias !136
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false), !prof !142, !alias.scope !143
  br label %63

61:                                               ; preds = %49
  store ptr %53, ptr %50, align 8, !tbaa !65, !alias.scope !136, !noalias !139
  %62 = load i64, ptr %54, align 8, !tbaa !59, !alias.scope !139, !noalias !136
  store i64 %62, ptr %52, align 8, !tbaa !59, !alias.scope !136, !noalias !139
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !56, !alias.scope !139, !noalias !136
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !56, !alias.scope !136, !noalias !139
  store ptr %54, ptr %51, align 8, !tbaa !65, !alias.scope !139, !noalias !136
  store i64 0, ptr %64, align 8, !tbaa !56, !alias.scope !139, !noalias !136
  store i8 0, ptr %54, align 1, !tbaa !59, !alias.scope !139, !noalias !136
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 1
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 1
  %69 = icmp eq ptr %67, %1
  br i1 %69, label %45, label %49, !prof !144, !llvm.loop !145

70:                                               ; preds = %45, %85
  %71 = phi ptr [ %90, %85 ], [ %47, %45 ]
  %72 = phi ptr [ %71, %85 ], [ %46, %45 ]
  %73 = phi ptr [ %89, %85 ], [ %1, %45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 2
  store ptr %74, ptr %71, align 8, !tbaa !51, !alias.scope !146, !noalias !149
  %75 = load ptr, ptr %73, align 8, !tbaa !65, !alias.scope !149, !noalias !146
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 2
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !56, !alias.scope !149, !noalias !146
  %81 = icmp ult i64 %80, 16
  tail call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %74, ptr noundef nonnull align 8 dereferenceable(1) %76, i64 %82, i1 false), !alias.scope !151
  br label %85

83:                                               ; preds = %70
  store ptr %75, ptr %71, align 8, !tbaa !65, !alias.scope !146, !noalias !149
  %84 = load i64, ptr %76, align 8, !tbaa !59, !alias.scope !149, !noalias !146
  store i64 %84, ptr %74, align 8, !tbaa !59, !alias.scope !146, !noalias !149
  br label %85

85:                                               ; preds = %83, %78
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !56, !alias.scope !149, !noalias !146
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !56, !alias.scope !146, !noalias !149
  store ptr %76, ptr %73, align 8, !tbaa !65, !alias.scope !149, !noalias !146
  store i64 0, ptr %86, align 8, !tbaa !56, !alias.scope !149, !noalias !146
  store i8 0, ptr %76, align 1, !tbaa !59, !alias.scope !149, !noalias !146
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 1
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 1
  %91 = icmp eq ptr %89, %5
  br i1 %91, label %92, label %70, !prof !70, !llvm.loop !145

92:                                               ; preds = %85, %45
  %93 = phi ptr [ %47, %45 ], [ %90, %85 ]
  %94 = icmp eq ptr %6, null
  br i1 %94, label %96, label %95, !prof !152

95:                                               ; preds = %92
  tail call void @_ZdlPv(ptr noundef %6) #22
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !89
  store ptr %93, ptr %4, align 8, !tbaa !91
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %18
  store ptr %98, ptr %97, align 8, !tbaa !130
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !66 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775804
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 2
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 2305843009213693951)
  %18 = select i1 %16, i64 2305843009213693951, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 2
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds i32, ptr %26, i64 %21
  %28 = load i32, ptr %2, align 4, !tbaa !97
  store i32 %28, ptr %27, align 4, !tbaa !97
  %29 = icmp sgt i64 %20, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %26, ptr align 4 %6, i64 %20, i1 false)
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %20
  %33 = getelementptr inbounds i32, ptr %32, i64 1
  %34 = sub i64 %7, %19
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %33, ptr align 4 %1, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %31, %36
  %38 = icmp eq ptr %6, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %6) #22
  br label %40

40:                                               ; preds = %37, %39
  %41 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %42 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %26, ptr %0, align 8, !tbaa !103
  store ptr %42, ptr %4, align 8, !tbaa !101
  %43 = getelementptr inbounds i32, ptr %26, i64 %18
  store ptr %43, ptr %41, align 8, !tbaa !99
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !153 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !154

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !66 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 3
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 1152921504606846975)
  %18 = select i1 %16, i64 1152921504606846975, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds double, ptr %26, i64 %21
  %28 = load double, ptr %2, align 8, !tbaa !104
  store double %28, ptr %27, align 8, !tbaa !104
  %29 = icmp sgt i64 %20, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %6, i64 %20, i1 false)
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %20
  %33 = getelementptr inbounds double, ptr %32, i64 1
  %34 = sub i64 %7, %19
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %33, ptr align 8 %1, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %31, %36
  %38 = icmp eq ptr %6, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %6) #22
  br label %40

40:                                               ; preds = %37, %39
  %41 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %42 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %26, ptr %0, align 8, !tbaa !110
  store ptr %42, ptr %4, align 8, !tbaa !108
  %43 = getelementptr inbounds double, ptr %26, i64 %18
  store ptr %43, ptr %41, align 8, !tbaa !106
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !66 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !155

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #21
  ret ptr %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @_ZN16cStringTokenizerC2EPKcS1_, ptr @strlen, i64 8}
!36 = !{ptr @_ZN16cStringTokenizerC2EPKcS1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 4}
!37 = !{ptr @_ZN16cStringTokenizerC2EPKcS1_, ptr @_Znam, i64 4}
!38 = !{ptr @_ZN16cStringTokenizerC2EPKcS1_, ptr @strcpy, i64 4}
!39 = !{ptr @_ZN16cStringTokenizerD2Ev, ptr @_ZdaPv, i64 4}
!40 = !{ptr @_ZN16cStringTokenizer9nextTokenEv, ptr @strchr, i64 273}
!41 = !{ptr @_ZN16cStringTokenizer13hasMoreTokensEv, ptr @strchr, i64 33}
!42 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZdlPv, i64 10}
!43 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!44 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!45 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!46 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_Znwm, i64 1136}
!47 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZdlPv, i64 581}
!48 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 2}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 4}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!57, !58, i64 8}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !58, i64 8, !54, i64 16}
!58 = !{!"long", !54, i64 0}
!59 = !{!54, !54, i64 0}
!60 = !{!"branch_weights", i32 0, i32 4}
!61 = !{!"branch_weights", i32 4, i32 0}
!62 = !{!63, !53, i64 0}
!63 = !{!"_ZTS16cStringTokenizer", !53, i64 0, !53, i64 8, !57, i64 16}
!64 = !{!63, !53, i64 8}
!65 = !{!57, !53, i64 0}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!"function_entry_count", i64 15}
!68 = !{!53, !53, i64 0}
!69 = !{!"branch_weights", i32 0, i32 1}
!70 = !{!"branch_weights", i32 1, i32 0}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!"branch_weights", i32 0, i32 15}
!75 = !{!"branch_weights", i32 239, i32 1}
!76 = !{!"branch_weights", i32 3649, i32 239}
!77 = distinct !{!77, !72, !73}
!78 = !{!"branch_weights", i32 0, i32 258}
!79 = !{!"function_entry_count", i64 19}
!80 = !{!"branch_weights", i32 1, i32 127}
!81 = !{!"branch_weights", i32 15, i32 15}
!82 = !{!"branch_weights", i32 127, i32 833}
!83 = distinct !{!83, !72, !73}
!84 = !{!58, !58, i64 0}
!85 = !{!"branch_weights", i32 1257662, i32 631781}
!86 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!87 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!88 = !{!"function_entry_count", i64 55}
!89 = !{!90, !53, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!91 = !{!90, !53, i64 8}
!92 = !{!"branch_weights", i32 50, i32 5}
!93 = !{!"branch_weights", i32 4, i32 1}
!94 = !{!"branch_weights", i32 5, i32 0}
!95 = distinct !{!95, !72, !73}
!96 = !{!"branch_weights", i32 46, i32 9}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !54, i64 0}
!99 = !{!100, !53, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!101 = !{!100, !53, i64 8}
!102 = distinct !{!102, !72, !73}
!103 = !{!100, !53, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"double", !54, i64 0}
!106 = !{!107, !53, i64 16}
!107 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!108 = !{!107, !53, i64 8}
!109 = distinct !{!109, !72, !73}
!110 = !{!107, !53, i64 0}
!111 = !{!"function_entry_count", i64 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"vtable pointer", !55, i64 0}
!114 = !{!115, !98, i64 8}
!115 = !{!"_ZTS10cException", !116, i64 0, !98, i64 8, !57, i64 16, !117, i64 48, !57, i64 56, !57, i64 88, !98, i64 120}
!116 = !{!"_ZTSSt9exception"}
!117 = !{!"bool", !54, i64 0}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!120 = distinct !{!120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!123 = distinct !{!123, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!124 = !{!115, !117, i64 48}
!125 = !{i8 0, i8 2}
!126 = !{}
!127 = !{!115, !98, i64 120}
!128 = !{!"function_entry_count", i64 1889443}
!129 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!130 = !{!90, !53, i64 16}
!131 = !{!"function_entry_count", i64 1136}
!132 = !{!"branch_weights", i32 0, i32 1136}
!133 = !{!"branch_weights", i32 1130, i32 6}
!134 = !{!"VP", i32 1, i64 1130, i64 9, i64 506, i64 5, i64 264, i64 4, i64 98, i64 6, i64 97}
!135 = !{!"branch_weights", i32 1, i32 1135}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!141 = !{!"branch_weights", i32 1581, i32 3}
!142 = !{!"VP", i32 1, i64 1581, i64 9, i64 730, i64 5, i64 677, i64 6, i64 91, i64 7, i64 78}
!143 = !{!137, !140}
!144 = !{!"branch_weights", i32 1135, i32 449}
!145 = distinct !{!145, !72, !73}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!148 = distinct !{!148, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!149 = !{!150}
!150 = distinct !{!150, !148, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!151 = !{!147, !150}
!152 = !{!"branch_weights", i32 555, i32 581}
!153 = !{!"function_entry_count", i64 2}
!154 = !{!"branch_weights", i32 0, i32 2}
!155 = !{!"branch_weights", i32 1, i32 2000}
