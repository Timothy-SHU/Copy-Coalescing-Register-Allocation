; ModuleID = 'simulator/fnamelisttokenizer.cc'
source_filename = "simulator/fnamelisttokenizer.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.FilenamesListTokenizer = type { ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN22FilenamesListTokenizerC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN22FilenamesListTokenizerC2EPKc
@_ZN22FilenamesListTokenizerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22FilenamesListTokenizerD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN22FilenamesListTokenizerC2EPKc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef readonly %1) unnamed_addr #0 align 2 !prof !44 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str, ptr %1, !prof !45
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %6 = add i64 %5, 1
  %7 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %6) #18
  store ptr %7, ptr %0, align 8, !tbaa !46
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %4) #19
  %9 = getelementptr inbounds %class.FilenamesListTokenizer, ptr %0, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN22FilenamesListTokenizerD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !prof !44 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !45

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef %2) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN22FilenamesListTokenizer13hasMoreTokensEv(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 align 2 !prof !52 {
  %2 = getelementptr inbounds %class.FilenamesListTokenizer, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %8, %7 ], [ %3, %1 ]
  %6 = load i8, ptr %5, align 1, !tbaa !53
  switch i8 %6, label %9 [
    i8 32, label %7
    i8 9, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !51
  br label %4, !llvm.loop !54

9:                                                ; preds = %4
  %10 = icmp ne i8 %6, 0
  ret i1 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN22FilenamesListTokenizer9nextTokenEv(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 align 2 !prof !44 {
  %2 = getelementptr inbounds %class.FilenamesListTokenizer, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  br label %4

4:                                                ; preds = %9, %1
  %5 = phi ptr [ %10, %9 ], [ %3, %1 ]
  %6 = load i8, ptr %5, align 1, !tbaa !53
  switch i8 %6, label %7 [
    i8 32, label %9
    i8 9, label %9
    i8 0, label %27
    i8 34, label %11
  ], !prof !58

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !tbaa !57
  br label %18

9:                                                ; preds = %4, %4
  %10 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !57
  br label %4, !llvm.loop !59

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi ptr [ %12, %11 ], [ %17, %16 ]
  store ptr %14, ptr %2, align 8, !tbaa !57
  %15 = load i8, ptr %14, align 1, !tbaa !53
  switch i8 %15, label %16 [
    i8 0, label %27
    i8 34, label %23
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  br label %13, !llvm.loop !60

18:                                               ; preds = %7, %21
  %19 = phi ptr [ %8, %7 ], [ %22, %21 ]
  %20 = load i8, ptr %19, align 1, !tbaa !53
  switch i8 %20, label %21 [
    i8 0, label %27
    i8 9, label %23
    i8 32, label %23
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %22, ptr %2, align 8, !tbaa !57
  br label %18, !llvm.loop !61

23:                                               ; preds = %13, %18, %18
  %24 = phi ptr [ %19, %18 ], [ %19, %18 ], [ %14, %13 ]
  %25 = phi ptr [ %5, %18 ], [ %5, %18 ], [ %12, %13 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %26, ptr %2, align 8, !tbaa !57
  store i8 0, ptr %24, align 1, !tbaa !53
  br label %27

27:                                               ; preds = %4, %13, %18, %23
  %28 = phi ptr [ %25, %23 ], [ %5, %18 ], [ %12, %13 ], [ null, %4 ]
  ret ptr %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN22FilenamesListTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %4 = tail call noundef ptr @_ZN22FilenamesListTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  br label %9

9:                                                ; preds = %6, %22
  %10 = phi ptr [ %4, %6 ], [ %23, %22 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  store ptr %7, ptr %3, align 8, !tbaa !62
  %11 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #19
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %10, ptr noundef nonnull %12)
          to label %13 unwind label %25

13:                                               ; preds = %9
  %14 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %15 unwind label %27

15:                                               ; preds = %13
  %16 = load ptr, ptr %3, align 8, !tbaa !64
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %8, align 8, !tbaa !67
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #20
  br label %22

22:                                               ; preds = %18, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  %23 = call noundef ptr @_ZN22FilenamesListTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %9, !llvm.loop !68

25:                                               ; preds = %9
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %36

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %3, align 8, !tbaa !64
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !67
  %34 = icmp ult i64 %33, 16
  call void @llvm.assume(i1 %34)
  br label %36

35:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %29) #20
  br label %36

36:                                               ; preds = %35, %31, %25
  %37 = phi { ptr, i32 } [ %26, %25 ], [ %28, %31 ], [ %28, %35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %37

38:                                               ; preds = %22, %2
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6, !prof !73

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15, !prof !74

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !67
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #20
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %6, !prof !75, !llvm.loop !76

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !70
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !77

22:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #20
  br label %23

23:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !79
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !80

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !64
  %11 = load i64, ptr %4, align 8, !tbaa !79
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !64
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !81

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !53
  store i8 %16, ptr %14, align 1, !tbaa !53
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !82
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !79
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !67
  %21 = load ptr, ptr %0, align 8, !tbaa !64
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !62
  %10 = load ptr, ptr %1, align 8, !tbaa !64
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !67
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !64
  %19 = load i64, ptr %11, align 8, !tbaa !53
  store i64 %19, ptr %9, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !67
  store ptr %11, ptr %1, align 8, !tbaa !64
  store i64 0, ptr %21, align 8, !tbaa !67
  store i8 0, ptr %11, align 8, !tbaa !53
  %24 = load ptr, ptr %3, align 8, !tbaa !72
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !72
  br label %27

26:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %3, align 8, !tbaa !57
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 -1
  ret ptr %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load ptr, ptr %0, align 8, !tbaa !57
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12, !prof !85

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 5
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %18 = select i1 %16, i64 288230376151711743, i64 %17, !prof !85
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 5
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !85

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 5
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #18
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 2
  store ptr %29, ptr %28, align 8, !tbaa !62
  %30 = load ptr, ptr %2, align 8, !tbaa !64
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %38, !prof !86

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !67
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %37, i1 false), !prof !87
  br label %40

38:                                               ; preds = %26
  store ptr %30, ptr %28, align 8, !tbaa !64
  %39 = load i64, ptr %31, align 8, !tbaa !53
  store i64 %39, ptr %29, align 8, !tbaa !53
  br label %40

40:                                               ; preds = %33, %38
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !67
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 1
  store i64 %42, ptr %43, align 8, !tbaa !67
  store ptr %31, ptr %2, align 8, !tbaa !64
  store i64 0, ptr %41, align 8, !tbaa !67
  store i8 0, ptr %31, align 8, !tbaa !53
  %44 = icmp eq ptr %6, %1
  br i1 %44, label %45, label %49, !prof !88

45:                                               ; preds = %63, %40
  %46 = phi ptr [ %27, %40 ], [ %68, %63 ]
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 1
  %48 = icmp eq ptr %5, %1
  br i1 %48, label %92, label %70, !prof !89

49:                                               ; preds = %40, %63
  %50 = phi ptr [ %68, %63 ], [ %27, %40 ]
  %51 = phi ptr [ %67, %63 ], [ %6, %40 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %52, ptr %50, align 8, !tbaa !62, !alias.scope !90, !noalias !93
  %53 = load ptr, ptr %51, align 8, !tbaa !64, !alias.scope !93, !noalias !90
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61, !prof !95

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !67, !alias.scope !93, !noalias !90
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false), !prof !96, !alias.scope !97
  br label %63

61:                                               ; preds = %49
  store ptr %53, ptr %50, align 8, !tbaa !64, !alias.scope !90, !noalias !93
  %62 = load i64, ptr %54, align 8, !tbaa !53, !alias.scope !93, !noalias !90
  store i64 %62, ptr %52, align 8, !tbaa !53, !alias.scope !90, !noalias !93
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !67, !alias.scope !93, !noalias !90
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !67, !alias.scope !90, !noalias !93
  store ptr %54, ptr %51, align 8, !tbaa !64, !alias.scope !93, !noalias !90
  store i64 0, ptr %64, align 8, !tbaa !67, !alias.scope !93, !noalias !90
  store i8 0, ptr %54, align 1, !tbaa !53, !alias.scope !93, !noalias !90
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 1
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 1
  %69 = icmp eq ptr %67, %1
  br i1 %69, label %45, label %49, !prof !98, !llvm.loop !99

70:                                               ; preds = %45, %85
  %71 = phi ptr [ %90, %85 ], [ %47, %45 ]
  %72 = phi ptr [ %71, %85 ], [ %46, %45 ]
  %73 = phi ptr [ %89, %85 ], [ %1, %45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 2
  store ptr %74, ptr %71, align 8, !tbaa !62, !alias.scope !100, !noalias !103
  %75 = load ptr, ptr %73, align 8, !tbaa !64, !alias.scope !103, !noalias !100
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 2
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !67, !alias.scope !103, !noalias !100
  %81 = icmp ult i64 %80, 16
  tail call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %74, ptr noundef nonnull align 8 dereferenceable(1) %76, i64 %82, i1 false), !alias.scope !105
  br label %85

83:                                               ; preds = %70
  store ptr %75, ptr %71, align 8, !tbaa !64, !alias.scope !100, !noalias !103
  %84 = load i64, ptr %76, align 8, !tbaa !53, !alias.scope !103, !noalias !100
  store i64 %84, ptr %74, align 8, !tbaa !53, !alias.scope !100, !noalias !103
  br label %85

85:                                               ; preds = %83, %78
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !67, !alias.scope !103, !noalias !100
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !67, !alias.scope !100, !noalias !103
  store ptr %76, ptr %73, align 8, !tbaa !64, !alias.scope !103, !noalias !100
  store i64 0, ptr %86, align 8, !tbaa !67, !alias.scope !103, !noalias !100
  store i8 0, ptr %76, align 1, !tbaa !53, !alias.scope !103, !noalias !100
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 1
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 1
  %91 = icmp eq ptr %89, %5
  br i1 %91, label %92, label %70, !prof !89, !llvm.loop !99

92:                                               ; preds = %85, %45
  %93 = phi ptr [ %47, %45 ], [ %90, %85 ]
  %94 = icmp eq ptr %6, null
  br i1 %94, label %96, label %95, !prof !106

95:                                               ; preds = %92
  tail call void @_ZdlPv(ptr noundef %6) #20
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !70
  store ptr %93, ptr %4, align 8, !tbaa !72
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %18
  store ptr %98, ptr %97, align 8, !tbaa !83
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN22FilenamesListTokenizerC2EPKc, ptr @strlen, i64 1}
!36 = !{ptr @_ZN22FilenamesListTokenizerC2EPKc, ptr @_Znam, i64 1}
!37 = !{ptr @_ZN22FilenamesListTokenizerC2EPKc, ptr @strcpy, i64 1}
!38 = !{ptr @_ZN22FilenamesListTokenizerD2Ev, ptr @_ZdaPv, i64 1}
!39 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZdlPv, i64 10}
!40 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!41 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_Znwm, i64 1136}
!42 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZdlPv, i64 581}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 1}
!45 = !{!"branch_weights", i32 0, i32 1}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTS22FilenamesListTokenizer", !48, i64 0, !48, i64 8}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!47, !48, i64 8}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!49, !49, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!48, !48, i64 0}
!58 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 1, i32 0}
!59 = distinct !{!59, !55, !56}
!60 = distinct !{!60, !55, !56}
!61 = distinct !{!61, !55, !56}
!62 = !{!63, !48, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!64 = !{!65, !48, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !66, i64 8, !49, i64 16}
!66 = !{!"long", !49, i64 0}
!67 = !{!65, !66, i64 8}
!68 = distinct !{!68, !55, !56}
!69 = !{!"function_entry_count", i64 55}
!70 = !{!71, !48, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!72 = !{!71, !48, i64 8}
!73 = !{!"branch_weights", i32 50, i32 5}
!74 = !{!"branch_weights", i32 4, i32 1}
!75 = !{!"branch_weights", i32 5, i32 0}
!76 = distinct !{!76, !55, !56}
!77 = !{!"branch_weights", i32 46, i32 9}
!78 = !{!"function_entry_count", i64 1889443}
!79 = !{!66, !66, i64 0}
!80 = !{!"branch_weights", i32 1257662, i32 631781}
!81 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!82 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!83 = !{!71, !48, i64 16}
!84 = !{!"function_entry_count", i64 1136}
!85 = !{!"branch_weights", i32 0, i32 1136}
!86 = !{!"branch_weights", i32 1130, i32 6}
!87 = !{!"VP", i32 1, i64 1130, i64 9, i64 506, i64 5, i64 264, i64 4, i64 98, i64 6, i64 97}
!88 = !{!"branch_weights", i32 1, i32 1135}
!89 = !{!"branch_weights", i32 1, i32 0}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!92 = distinct !{!92, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!95 = !{!"branch_weights", i32 1581, i32 3}
!96 = !{!"VP", i32 1, i64 1581, i64 9, i64 730, i64 5, i64 677, i64 6, i64 91, i64 7, i64 78}
!97 = !{!91, !94}
!98 = !{!"branch_weights", i32 1135, i32 449}
!99 = distinct !{!99, !55, !56}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!102 = distinct !{!102, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!105 = !{!101, !104}
!106 = !{!"branch_weights", i32 555, i32 581}
