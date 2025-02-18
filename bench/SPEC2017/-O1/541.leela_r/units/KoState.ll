; ModuleID = 'KoState.cpp'
source_filename = "KoState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.KoState = type { %class.FastState.base, %"class.std::vector.7", %"class.std::vector.7" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.boost::array.4" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::reverse_iterator" = type { %"class.__gnu_cxx::__normal_iterator" }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorIyE8allocateEmPKv = comdat any

$_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_ = comdat any

$_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  tail call void @_ZN9FastState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, float noundef %2)
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %12, label %11, !prof !58

11:                                               ; preds = %3
  store ptr %7, ptr %8, align 8, !tbaa !57
  br label %12

12:                                               ; preds = %3, %11
  %13 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, %14
  br i1 %17, label %19, label %18, !prof !58

18:                                               ; preds = %12
  store ptr %14, ptr %15, align 8, !tbaa !57
  br label %19

19:                                               ; preds = %12, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %20 = tail call noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0)
  store i64 %20, ptr %4, align 8, !tbaa !59
  %21 = load ptr, ptr %8, align 8, !tbaa !61
  %22 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %27, label %25, !prof !58

25:                                               ; preds = %19
  store i64 %20, ptr %21, align 8, !tbaa !59
  %26 = getelementptr inbounds i64, ptr %21, i64 1
  store ptr %26, ptr %8, align 8, !tbaa !57
  br label %28

27:                                               ; preds = %19
  call void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %21, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %28

28:                                               ; preds = %25, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %29 = call noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0)
  store i64 %29, ptr %5, align 8, !tbaa !59
  %30 = load ptr, ptr %15, align 8, !tbaa !61
  %31 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %36, label %34, !prof !58

34:                                               ; preds = %28
  store i64 %29, ptr %30, align 8, !tbaa !59
  %35 = getelementptr inbounds i64, ptr %30, i64 1
  store ptr %35, ptr %15, align 8, !tbaa !57
  br label %37

36:                                               ; preds = %28
  call void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %30, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %37

37:                                               ; preds = %34, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

declare void @_ZN9FastState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7KoState10legal_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %class.KoState, align 8
  %7 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1)
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %82

9:                                                ; preds = %2
  %10 = tail call noundef i32 @_ZN9FastBoard11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %11 = tail call noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %10)
  br i1 %11, label %82, label %12

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %6, ptr noundef nonnull align 8 dereferenceable(8024) %0, i64 8024, i1 false)
  %13 = getelementptr inbounds %class.FastBoard, ptr %6, i64 0, i32 16
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %15 = getelementptr inbounds %class.FastBoard, ptr %6, i64 0, i32 17
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %17 = load i32, ptr %16, align 8, !tbaa !64
  store i32 %17, ptr %15, align 8, !tbaa !64
  %18 = getelementptr inbounds %class.FullBoard, ptr %6, i64 0, i32 1
  %19 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false)
  %20 = getelementptr inbounds %class.FastState, ptr %6, i64 0, i32 1
  %21 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %20, ptr noundef nonnull align 8 dereferenceable(316) %21, i64 316, i1 false)
  %22 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 1
  %23 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %24 unwind label %27

24:                                               ; preds = %12
  %25 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 2
  %26 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %41 unwind label %29

27:                                               ; preds = %12
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %34

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = load ptr, ptr %22, align 8, !tbaa !52
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @_ZdlPv(ptr noundef %31) #12
  br label %34

34:                                               ; preds = %33, %29, %27
  %35 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ], [ %30, %33 ]
  %36 = load ptr, ptr %13, align 8, !tbaa !77
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef %36) #12
  br label %39

39:                                               ; preds = %34, %38, %71
  %40 = phi { ptr, i32 } [ %59, %71 ], [ %35, %38 ], [ %35, %34 ]
  resume { ptr, i32 } %40

41:                                               ; preds = %24
  %42 = getelementptr inbounds %class.FastBoard, ptr %6, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !78
  invoke void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %6, i32 noundef %43, i32 noundef %1)
          to label %44 unwind label %58

44:                                               ; preds = %41
  %45 = getelementptr inbounds %class.KoState, ptr %6, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !61, !noalias !79
  %47 = load ptr, ptr %22, align 8, !tbaa !61, !noalias !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %48 = getelementptr inbounds i64, ptr %46, i64 -1
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %47 to i64
  %51 = getelementptr inbounds %class.FullBoard, ptr %6, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3), !noalias !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4), !noalias !85
  store i64 %49, ptr %3, align 8, !tbaa !61, !noalias !88
  store i64 %50, ptr %4, align 8, !tbaa !61, !noalias !88
  invoke void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull %51)
          to label %52 unwind label %58

52:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3), !noalias !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4), !noalias !85
  %53 = load i64, ptr %5, align 8
  %54 = inttoptr i64 %53 to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %55 = icmp eq ptr %47, %54
  %56 = load ptr, ptr %25, align 8, !tbaa !52
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %72

58:                                               ; preds = %44, %41
  %59 = landingpad { ptr, i32 }
          cleanup
  %60 = load ptr, ptr %25, align 8, !tbaa !52
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %60) #12
  br label %63

63:                                               ; preds = %62, %58
  %64 = load ptr, ptr %22, align 8, !tbaa !52
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call void @_ZdlPv(ptr noundef %64) #12
  br label %67

67:                                               ; preds = %66, %63
  %68 = load ptr, ptr %13, align 8, !tbaa !77
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void @_ZdlPv(ptr noundef %68) #12
  br label %71

71:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %6) #11
  br label %39

72:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %56) #12
  br label %73

73:                                               ; preds = %72, %52
  %74 = load ptr, ptr %22, align 8, !tbaa !52
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %74) #12
  br label %77

77:                                               ; preds = %76, %73
  %78 = load ptr, ptr %13, align 8, !tbaa !77
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %78) #12
  br label %81

81:                                               ; preds = %77, %80
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %6) #11
  br label %82

82:                                               ; preds = %9, %2, %81
  %83 = phi i1 [ %55, %81 ], [ false, %2 ], [ false, %9 ]
  ret i1 %83
}

declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !91 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !78
  tail call void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %4, i32 noundef %1)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN7KoState7superkoEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8440) %0) local_unnamed_addr #4 align 2 !prof !91 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61, !noalias !92
  %5 = load ptr, ptr %2, align 8, !tbaa !61, !noalias !95
  %6 = getelementptr inbounds i64, ptr %4, i64 -1
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %5 to i64
  %9 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %10 = sub i64 %7, %8
  %11 = ashr i64 %10, 5
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %39, !prof !98

13:                                               ; preds = %1
  %14 = load i64, ptr %9, align 8, !tbaa !59, !noalias !99
  %15 = and i64 %10, -32
  %16 = sub nuw nsw i64 -8, %15
  %17 = getelementptr i8, ptr %4, i64 %16
  br label %18

18:                                               ; preds = %36, %13
  %19 = phi ptr [ %6, %13 ], [ %33, %36 ]
  %20 = phi i64 [ %11, %13 ], [ %37, %36 ]
  %21 = getelementptr inbounds i64, ptr %19, i64 -1
  %22 = load i64, ptr %21, align 8, !tbaa !59, !noalias !99
  %23 = icmp eq i64 %22, %14
  br i1 %23, label %68, label %24, !prof !102

24:                                               ; preds = %18
  %25 = getelementptr inbounds i64, ptr %19, i64 -2
  %26 = load i64, ptr %25, align 8, !tbaa !59, !noalias !99
  %27 = icmp eq i64 %26, %14
  br i1 %27, label %62, label %28, !prof !103

28:                                               ; preds = %24
  %29 = getelementptr inbounds i64, ptr %19, i64 -3
  %30 = load i64, ptr %29, align 8, !tbaa !59, !noalias !99
  %31 = icmp eq i64 %30, %14
  br i1 %31, label %64, label %32, !prof !104

32:                                               ; preds = %28
  %33 = getelementptr inbounds i64, ptr %19, i64 -4
  %34 = load i64, ptr %33, align 8, !tbaa !59, !noalias !99
  %35 = icmp eq i64 %34, %14
  br i1 %35, label %66, label %36, !prof !105

36:                                               ; preds = %32
  %37 = add nsw i64 %20, -1
  %38 = icmp sgt i64 %20, 1
  br i1 %38, label %18, label %39, !prof !106, !llvm.loop !107

39:                                               ; preds = %36, %1
  %40 = phi ptr [ %6, %1 ], [ %17, %36 ]
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %8
  %43 = ashr exact i64 %42, 3
  switch i64 %43, label %61 [
    i64 3, label %44
    i64 2, label %49
    i64 1, label %55
  ], !prof !110

44:                                               ; preds = %39
  %45 = getelementptr inbounds i64, ptr %40, i64 -1
  %46 = load i64, ptr %45, align 8, !tbaa !59, !noalias !99
  %47 = load i64, ptr %9, align 8, !tbaa !59, !noalias !99
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %68, label %49, !prof !111

49:                                               ; preds = %44, %39
  %50 = phi ptr [ %40, %39 ], [ %45, %44 ]
  %51 = getelementptr inbounds i64, ptr %50, i64 -1
  %52 = load i64, ptr %51, align 8, !tbaa !59, !noalias !99
  %53 = load i64, ptr %9, align 8, !tbaa !59, !noalias !99
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %68, label %55, !prof !112

55:                                               ; preds = %49, %39
  %56 = phi ptr [ %40, %39 ], [ %51, %49 ]
  %57 = getelementptr inbounds i64, ptr %56, i64 -1
  %58 = load i64, ptr %57, align 8, !tbaa !59, !noalias !99
  %59 = load i64, ptr %9, align 8, !tbaa !59, !noalias !99
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %68, label %61, !prof !113

61:                                               ; preds = %55, %39
  br label %68

62:                                               ; preds = %24
  %63 = getelementptr inbounds i64, ptr %19, i64 -1
  br label %68

64:                                               ; preds = %28
  %65 = getelementptr inbounds i64, ptr %19, i64 -2
  br label %68

66:                                               ; preds = %32
  %67 = getelementptr inbounds i64, ptr %19, i64 -3
  br label %68

68:                                               ; preds = %18, %62, %64, %66, %55, %49, %44, %61
  %69 = phi ptr [ %5, %61 ], [ %40, %44 ], [ %50, %49 ], [ %56, %55 ], [ %63, %62 ], [ %65, %64 ], [ %67, %66 ], [ %19, %18 ]
  %70 = icmp ne ptr %5, %69
  ret i1 %70
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7KoState7superkoEy(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8440) %0, i64 noundef %1) local_unnamed_addr #0 align 2 !prof !63 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  store i64 %1, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !61, !noalias !114
  %10 = load ptr, ptr %7, align 8, !tbaa !61, !noalias !117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3), !noalias !120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4), !noalias !120
  store i64 %11, ptr %3, align 8, !tbaa !61, !noalias !123
  store i64 %12, ptr %4, align 8, !tbaa !61, !noalias !123
  call void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3), !noalias !120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4), !noalias !120
  %13 = load i64, ptr %6, align 8
  %14 = inttoptr i64 %13 to ptr
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %15 = icmp ne ptr %10, %14
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN7KoState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  tail call void @_ZN9FastState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store ptr %5, ptr %6, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, %12
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store ptr %12, ptr %13, align 8, !tbaa !57
  br label %17

17:                                               ; preds = %10, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %18 = tail call noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0)
  store i64 %18, ptr %2, align 8, !tbaa !59
  %19 = load ptr, ptr %6, align 8, !tbaa !61
  %20 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  store i64 %18, ptr %19, align 8, !tbaa !59
  %24 = getelementptr inbounds i64, ptr %19, i64 1
  store ptr %24, ptr %6, align 8, !tbaa !57
  br label %26

25:                                               ; preds = %17
  call void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %19, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %26

26:                                               ; preds = %23, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %27 = call noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0)
  store i64 %27, ptr %3, align 8, !tbaa !59
  %28 = load ptr, ptr %13, align 8, !tbaa !61
  %29 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  store i64 %27, ptr %28, align 8, !tbaa !59
  %33 = getelementptr inbounds i64, ptr %28, i64 1
  store ptr %33, ptr %13, align 8, !tbaa !57
  br label %35

34:                                               ; preds = %26
  call void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %28, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %35

35:                                               ; preds = %32, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

declare void @_ZN9FastState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  tail call void @_ZN9FastState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  %2 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !127

8:                                                ; preds = %1
  %9 = load i64, ptr %2, align 8, !tbaa !59
  store i64 %9, ptr %4, align 8, !tbaa !59
  %10 = getelementptr inbounds i64, ptr %4, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !57
  br label %54

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = load ptr, ptr %12, align 8, !tbaa !61
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = icmp eq i64 %18, 9223372036854775800
  br i1 %19, label %20, label %21, !prof !128

20:                                               ; preds = %11
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

21:                                               ; preds = %11
  %22 = ashr exact i64 %18, 3
  %23 = tail call i64 @llvm.umax.i64(i64 %22, i64 1)
  %24 = add i64 %23, %22
  %25 = icmp ult i64 %24, %22
  %26 = tail call i64 @llvm.umin.i64(i64 %24, i64 1152921504606846975)
  %27 = select i1 %25, i64 1152921504606846975, i64 %26, !prof !128
  %28 = ptrtoint ptr %4 to i64
  %29 = sub i64 %28, %17
  %30 = ashr exact i64 %29, 3
  %31 = icmp eq i64 %27, 0
  br i1 %31, label %35, label %32, !prof !128

32:                                               ; preds = %21
  %33 = shl nuw nsw i64 %27, 3
  %34 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %33) #14
  br label %35

35:                                               ; preds = %32, %21
  %36 = phi ptr [ %34, %32 ], [ null, %21 ]
  %37 = getelementptr inbounds i64, ptr %36, i64 %30
  %38 = load i64, ptr %2, align 8, !tbaa !59
  store i64 %38, ptr %37, align 8, !tbaa !59
  %39 = icmp sgt i64 %29, 0
  br i1 %39, label %40, label %41, !prof !129

40:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %36, ptr align 8 %15, i64 %29, i1 false), !prof !130
  br label %41

41:                                               ; preds = %40, %35
  %42 = getelementptr inbounds i8, ptr %36, i64 %29
  %43 = getelementptr inbounds i64, ptr %42, i64 1
  %44 = sub i64 %16, %28
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %47, !prof !128

46:                                               ; preds = %41
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %43, ptr align 8 %4, i64 %44, i1 false)
  br label %47

47:                                               ; preds = %46, %41
  %48 = icmp eq ptr %15, null
  br i1 %48, label %50, label %49, !prof !128

49:                                               ; preds = %47
  tail call void @_ZdlPv(ptr noundef %15) #12
  br label %50

50:                                               ; preds = %47, %49
  %51 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %52 = getelementptr inbounds i8, ptr %43, i64 %44
  store ptr %36, ptr %12, align 8, !tbaa !52
  store ptr %52, ptr %13, align 8, !tbaa !57
  %53 = getelementptr inbounds i64, ptr %36, i64 %27
  store ptr %53, ptr %51, align 8, !tbaa !62
  br label %54

54:                                               ; preds = %8, %50
  %55 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %56 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !61
  %58 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !62
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %64, label %61, !prof !127

61:                                               ; preds = %54
  %62 = load i64, ptr %55, align 8, !tbaa !59
  store i64 %62, ptr %57, align 8, !tbaa !59
  %63 = getelementptr inbounds i64, ptr %57, i64 1
  store ptr %63, ptr %56, align 8, !tbaa !57
  br label %107

64:                                               ; preds = %54
  %65 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %66 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = load ptr, ptr %65, align 8, !tbaa !61
  %69 = ptrtoint ptr %67 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = icmp eq i64 %71, 9223372036854775800
  br i1 %72, label %73, label %74, !prof !128

73:                                               ; preds = %64
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

74:                                               ; preds = %64
  %75 = ashr exact i64 %71, 3
  %76 = tail call i64 @llvm.umax.i64(i64 %75, i64 1)
  %77 = add i64 %76, %75
  %78 = icmp ult i64 %77, %75
  %79 = tail call i64 @llvm.umin.i64(i64 %77, i64 1152921504606846975)
  %80 = select i1 %78, i64 1152921504606846975, i64 %79, !prof !128
  %81 = ptrtoint ptr %57 to i64
  %82 = sub i64 %81, %70
  %83 = ashr exact i64 %82, 3
  %84 = icmp eq i64 %80, 0
  br i1 %84, label %88, label %85, !prof !128

85:                                               ; preds = %74
  %86 = shl nuw nsw i64 %80, 3
  %87 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %86) #14
  br label %88

88:                                               ; preds = %85, %74
  %89 = phi ptr [ %87, %85 ], [ null, %74 ]
  %90 = getelementptr inbounds i64, ptr %89, i64 %83
  %91 = load i64, ptr %55, align 8, !tbaa !59
  store i64 %91, ptr %90, align 8, !tbaa !59
  %92 = icmp sgt i64 %82, 0
  br i1 %92, label %93, label %94, !prof !129

93:                                               ; preds = %88
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %89, ptr align 8 %68, i64 %82, i1 false), !prof !130
  br label %94

94:                                               ; preds = %93, %88
  %95 = getelementptr inbounds i8, ptr %89, i64 %82
  %96 = getelementptr inbounds i64, ptr %95, i64 1
  %97 = sub i64 %69, %81
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %100, !prof !128

99:                                               ; preds = %94
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %96, ptr align 8 %57, i64 %97, i1 false)
  br label %100

100:                                              ; preds = %99, %94
  %101 = icmp eq ptr %68, null
  br i1 %101, label %103, label %102, !prof !128

102:                                              ; preds = %100
  tail call void @_ZdlPv(ptr noundef %68) #12
  br label %103

103:                                              ; preds = %100, %102
  %104 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %105 = getelementptr inbounds i8, ptr %96, i64 %97
  store ptr %89, ptr %65, align 8, !tbaa !52
  store ptr %105, ptr %66, align 8, !tbaa !57
  %106 = getelementptr inbounds i64, ptr %89, i64 %80
  store ptr %106, ptr %104, align 8, !tbaa !62
  br label %107

107:                                              ; preds = %61, %103
  ret void
}

declare void @_ZN9FastState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %4 = icmp ult i32 %2, -2
  br i1 %4, label %5, label %111, !prof !132

5:                                                ; preds = %3
  tail call void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2)
  %6 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %15, label %12, !prof !133

12:                                               ; preds = %5
  %13 = load i64, ptr %6, align 8, !tbaa !59
  store i64 %13, ptr %8, align 8, !tbaa !59
  %14 = getelementptr inbounds i64, ptr %8, i64 1
  store ptr %14, ptr %7, align 8, !tbaa !57
  br label %58

15:                                               ; preds = %5
  %16 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = load ptr, ptr %16, align 8, !tbaa !61
  %20 = ptrtoint ptr %18 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq i64 %22, 9223372036854775800
  br i1 %23, label %24, label %25, !prof !128

24:                                               ; preds = %15
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

25:                                               ; preds = %15
  %26 = ashr exact i64 %22, 3
  %27 = tail call i64 @llvm.umax.i64(i64 %26, i64 1)
  %28 = add i64 %27, %26
  %29 = icmp ult i64 %28, %26
  %30 = tail call i64 @llvm.umin.i64(i64 %28, i64 1152921504606846975)
  %31 = select i1 %29, i64 1152921504606846975, i64 %30, !prof !128
  %32 = ptrtoint ptr %8 to i64
  %33 = sub i64 %32, %21
  %34 = ashr exact i64 %33, 3
  %35 = icmp eq i64 %31, 0
  br i1 %35, label %39, label %36, !prof !128

36:                                               ; preds = %25
  %37 = shl nuw nsw i64 %31, 3
  %38 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %37) #14
  br label %39

39:                                               ; preds = %36, %25
  %40 = phi ptr [ %38, %36 ], [ null, %25 ]
  %41 = getelementptr inbounds i64, ptr %40, i64 %34
  %42 = load i64, ptr %6, align 8, !tbaa !59
  store i64 %42, ptr %41, align 8, !tbaa !59
  %43 = icmp sgt i64 %33, 0
  br i1 %43, label %44, label %45, !prof !129

44:                                               ; preds = %39
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %40, ptr align 8 %19, i64 %33, i1 false), !prof !134
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds i8, ptr %40, i64 %33
  %47 = getelementptr inbounds i64, ptr %46, i64 1
  %48 = sub i64 %20, %32
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51, !prof !128

50:                                               ; preds = %45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %47, ptr align 8 %8, i64 %48, i1 false)
  br label %51

51:                                               ; preds = %50, %45
  %52 = icmp eq ptr %19, null
  br i1 %52, label %54, label %53, !prof !128

53:                                               ; preds = %51
  tail call void @_ZdlPv(ptr noundef %19) #12
  br label %54

54:                                               ; preds = %51, %53
  %55 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %56 = getelementptr inbounds i8, ptr %47, i64 %48
  store ptr %40, ptr %16, align 8, !tbaa !52
  store ptr %56, ptr %17, align 8, !tbaa !57
  %57 = getelementptr inbounds i64, ptr %40, i64 %31
  store ptr %57, ptr %55, align 8, !tbaa !62
  br label %58

58:                                               ; preds = %12, %54
  %59 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %60 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  %64 = icmp eq ptr %61, %63
  br i1 %64, label %68, label %65, !prof !133

65:                                               ; preds = %58
  %66 = load i64, ptr %59, align 8, !tbaa !59
  store i64 %66, ptr %61, align 8, !tbaa !59
  %67 = getelementptr inbounds i64, ptr %61, i64 1
  store ptr %67, ptr %60, align 8, !tbaa !57
  br label %112

68:                                               ; preds = %58
  %69 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %70 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  %72 = load ptr, ptr %69, align 8, !tbaa !61
  %73 = ptrtoint ptr %71 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = icmp eq i64 %75, 9223372036854775800
  br i1 %76, label %77, label %78, !prof !128

77:                                               ; preds = %68
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

78:                                               ; preds = %68
  %79 = ashr exact i64 %75, 3
  %80 = tail call i64 @llvm.umax.i64(i64 %79, i64 1)
  %81 = add i64 %80, %79
  %82 = icmp ult i64 %81, %79
  %83 = tail call i64 @llvm.umin.i64(i64 %81, i64 1152921504606846975)
  %84 = select i1 %82, i64 1152921504606846975, i64 %83, !prof !128
  %85 = ptrtoint ptr %61 to i64
  %86 = sub i64 %85, %74
  %87 = ashr exact i64 %86, 3
  %88 = icmp eq i64 %84, 0
  br i1 %88, label %92, label %89, !prof !128

89:                                               ; preds = %78
  %90 = shl nuw nsw i64 %84, 3
  %91 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %90) #14
  br label %92

92:                                               ; preds = %89, %78
  %93 = phi ptr [ %91, %89 ], [ null, %78 ]
  %94 = getelementptr inbounds i64, ptr %93, i64 %87
  %95 = load i64, ptr %59, align 8, !tbaa !59
  store i64 %95, ptr %94, align 8, !tbaa !59
  %96 = icmp sgt i64 %86, 0
  br i1 %96, label %97, label %98, !prof !129

97:                                               ; preds = %92
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %93, ptr align 8 %72, i64 %86, i1 false), !prof !134
  br label %98

98:                                               ; preds = %97, %92
  %99 = getelementptr inbounds i8, ptr %93, i64 %86
  %100 = getelementptr inbounds i64, ptr %99, i64 1
  %101 = sub i64 %73, %85
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %104, !prof !128

103:                                              ; preds = %98
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %100, ptr align 8 %61, i64 %101, i1 false)
  br label %104

104:                                              ; preds = %103, %98
  %105 = icmp eq ptr %72, null
  br i1 %105, label %107, label %106, !prof !128

106:                                              ; preds = %104
  tail call void @_ZdlPv(ptr noundef %72) #12
  br label %107

107:                                              ; preds = %104, %106
  %108 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %109 = getelementptr inbounds i8, ptr %100, i64 %101
  store ptr %93, ptr %69, align 8, !tbaa !52
  store ptr %109, ptr %70, align 8, !tbaa !57
  %110 = getelementptr inbounds i64, ptr %93, i64 %84
  store ptr %110, ptr %108, align 8, !tbaa !62
  br label %112

111:                                              ; preds = %3
  tail call void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %0)
  br label %112

112:                                              ; preds = %107, %65, %111
  ret void
}

declare void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !135 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = load ptr, ptr %1, align 8, !tbaa !52
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %21, label %13, !prof !136

13:                                               ; preds = %2
  %14 = icmp ugt i64 %9, 1152921504606846975
  br i1 %14, label %15, label %19, !prof !137

15:                                               ; preds = %13
  %16 = icmp ugt i64 %9, 2305843009213693951
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

18:                                               ; preds = %15
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

19:                                               ; preds = %13
  %20 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #14
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ null, %2 ], [ %20, %19 ]
  store ptr %22, ptr %0, align 8, !tbaa !52
  store ptr %22, ptr %10, align 8, !tbaa !57
  %23 = getelementptr inbounds i64, ptr %22, i64 %9
  store ptr %23, ptr %11, align 8, !tbaa !62
  %24 = load ptr, ptr %1, align 8, !tbaa !61
  %25 = load ptr, ptr %3, align 8, !tbaa !61
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %24 to i64
  %28 = sub i64 %26, %27
  %29 = icmp eq ptr %25, %24
  br i1 %29, label %31, label %30, !prof !136

30:                                               ; preds = %21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %22, ptr align 8 %24, i64 %28, i1 false), !prof !138
  br label %31

31:                                               ; preds = %21, %30
  %32 = getelementptr inbounds i8, ptr %22, i64 %28
  store ptr %32, ptr %10, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !140
  %5 = load ptr, ptr %1, align 8, !tbaa !77
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !141

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !77
  store ptr %16, ptr %10, align 8, !tbaa !140
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !142
  %18 = load ptr, ptr %1, align 8, !tbaa !61
  %19 = load ptr, ptr %3, align 8, !tbaa !61
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24, !prof !141

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !143 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !144

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #14
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !145 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !137

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #14
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12, !prof !147

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 3
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 1152921504606846975)
  %18 = select i1 %16, i64 1152921504606846975, i64 %17, !prof !147
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23, !prof !147

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds i64, ptr %26, i64 %21
  %28 = load i64, ptr %2, align 8, !tbaa !59
  store i64 %28, ptr %27, align 8, !tbaa !59
  %29 = icmp sgt i64 %20, 0
  br i1 %29, label %30, label %31, !prof !147

30:                                               ; preds = %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %6, i64 %20, i1 false)
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %20
  %33 = getelementptr inbounds i64, ptr %32, i64 1
  %34 = sub i64 %7, %19
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37, !prof !147

36:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %33, ptr align 8 %1, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %31, %36
  %38 = icmp eq ptr %6, null
  br i1 %38, label %40, label %39, !prof !148

39:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %6) #12
  br label %40

40:                                               ; preds = %37, %39
  %41 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %42 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %26, ptr %0, align 8, !tbaa !52
  store ptr %42, ptr %4, align 8, !tbaa !57
  %43 = getelementptr inbounds i64, ptr %26, i64 %18
  store ptr %43, ptr %41, align 8, !tbaa !62
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #3 comdat !prof !63 {
  %5 = load ptr, ptr %1, align 8, !tbaa.struct !149
  %6 = load ptr, ptr %2, align 8, !tbaa.struct !149
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr i64 %9, 5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %50, !prof !98

12:                                               ; preds = %4
  %13 = load i64, ptr %3, align 8, !tbaa !59
  br label %14

14:                                               ; preds = %12, %46
  %15 = phi i64 [ %10, %12 ], [ %48, %46 ]
  %16 = load i64, ptr %1, align 8, !tbaa !61
  %17 = inttoptr i64 %16 to ptr
  %18 = getelementptr inbounds i64, ptr %17, i64 -1
  %19 = load i64, ptr %18, align 8, !tbaa !59
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %89, label %21, !prof !102

21:                                               ; preds = %14
  %22 = load ptr, ptr %1, align 8, !tbaa !150
  %23 = getelementptr inbounds i64, ptr %22, i64 -1
  store ptr %23, ptr %1, align 8, !tbaa !150
  %24 = getelementptr inbounds i64, ptr %22, i64 -2
  %25 = load i64, ptr %24, align 8, !tbaa !59
  %26 = icmp eq i64 %25, %13
  br i1 %26, label %27, label %30, !prof !103

27:                                               ; preds = %21
  %28 = getelementptr inbounds i64, ptr %22, i64 -1
  %29 = ptrtoint ptr %28 to i64
  br label %89

30:                                               ; preds = %21
  %31 = getelementptr inbounds i64, ptr %22, i64 -2
  store ptr %31, ptr %1, align 8, !tbaa !150
  %32 = getelementptr inbounds i64, ptr %22, i64 -3
  %33 = load i64, ptr %32, align 8, !tbaa !59
  %34 = icmp eq i64 %33, %13
  br i1 %34, label %35, label %38, !prof !104

35:                                               ; preds = %30
  %36 = getelementptr inbounds i64, ptr %22, i64 -2
  %37 = ptrtoint ptr %36 to i64
  br label %89

38:                                               ; preds = %30
  %39 = getelementptr inbounds i64, ptr %22, i64 -3
  store ptr %39, ptr %1, align 8, !tbaa !150
  %40 = getelementptr inbounds i64, ptr %22, i64 -4
  %41 = load i64, ptr %40, align 8, !tbaa !59
  %42 = icmp eq i64 %41, %13
  br i1 %42, label %43, label %46, !prof !105

43:                                               ; preds = %38
  %44 = getelementptr inbounds i64, ptr %22, i64 -3
  %45 = ptrtoint ptr %44 to i64
  br label %89

46:                                               ; preds = %38
  %47 = getelementptr inbounds i64, ptr %22, i64 -4
  store ptr %47, ptr %1, align 8, !tbaa !150
  %48 = add nsw i64 %15, -1
  %49 = icmp sgt i64 %15, 1
  br i1 %49, label %14, label %50, !prof !106, !llvm.loop !107

50:                                               ; preds = %46, %4
  %51 = load ptr, ptr %1, align 8, !tbaa.struct !149
  %52 = load ptr, ptr %2, align 8, !tbaa.struct !149
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = ashr exact i64 %55, 3
  switch i64 %56, label %87 [
    i64 3, label %57
    i64 2, label %67
    i64 1, label %77
  ], !prof !110

57:                                               ; preds = %50
  %58 = load i64, ptr %1, align 8, !tbaa !61
  %59 = inttoptr i64 %58 to ptr
  %60 = getelementptr inbounds i64, ptr %59, i64 -1
  %61 = load i64, ptr %60, align 8, !tbaa !59
  %62 = load i64, ptr %3, align 8, !tbaa !59
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %89, label %64, !prof !111

64:                                               ; preds = %57
  %65 = load ptr, ptr %1, align 8, !tbaa !150
  %66 = getelementptr inbounds i64, ptr %65, i64 -1
  store ptr %66, ptr %1, align 8, !tbaa !150
  br label %67

67:                                               ; preds = %50, %64
  %68 = load i64, ptr %1, align 8, !tbaa !61
  %69 = inttoptr i64 %68 to ptr
  %70 = getelementptr inbounds i64, ptr %69, i64 -1
  %71 = load i64, ptr %70, align 8, !tbaa !59
  %72 = load i64, ptr %3, align 8, !tbaa !59
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %89, label %74, !prof !112

74:                                               ; preds = %67
  %75 = load ptr, ptr %1, align 8, !tbaa !150
  %76 = getelementptr inbounds i64, ptr %75, i64 -1
  store ptr %76, ptr %1, align 8, !tbaa !150
  br label %77

77:                                               ; preds = %50, %74
  %78 = load i64, ptr %1, align 8, !tbaa !61
  %79 = inttoptr i64 %78 to ptr
  %80 = getelementptr inbounds i64, ptr %79, i64 -1
  %81 = load i64, ptr %80, align 8, !tbaa !59
  %82 = load i64, ptr %3, align 8, !tbaa !59
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %89, label %84, !prof !113

84:                                               ; preds = %77
  %85 = load ptr, ptr %1, align 8, !tbaa !150
  %86 = getelementptr inbounds i64, ptr %85, i64 -1
  store ptr %86, ptr %1, align 8, !tbaa !150
  br label %87

87:                                               ; preds = %84, %50
  %88 = load i64, ptr %2, align 8, !tbaa !61
  br label %89

89:                                               ; preds = %14, %77, %67, %57, %87, %43, %35, %27
  %90 = phi i64 [ %88, %87 ], [ %45, %43 ], [ %37, %35 ], [ %29, %27 ], [ %58, %57 ], [ %68, %67 ], [ %78, %77 ], [ %16, %14 ]
  store i64 %90, ptr %0, align 8, !tbaa !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 256142274181}
!8 = !{!"MaxCount", i64 7844141798}
!9 = !{!"MaxInternalCount", i64 7547852578}
!10 = !{!"MaxFunctionCount", i64 7844141798}
!11 = !{!"NumCounts", i64 2880}
!12 = !{!"NumFunctions", i64 415}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7844141798, i32 1}
!18 = !{i32 100000, i64 6538040572, i32 4}
!19 = !{i32 200000, i64 5601060928, i32 8}
!20 = !{i32 300000, i64 4731748263, i32 13}
!21 = !{i32 400000, i64 3429140892, i32 19}
!22 = !{i32 500000, i64 2689357797, i32 28}
!23 = !{i32 600000, i64 2030175252, i32 39}
!24 = !{i32 700000, i64 1513066108, i32 53}
!25 = !{i32 800000, i64 981329770, i32 73}
!26 = !{i32 900000, i64 723674647, i32 104}
!27 = !{i32 950000, i64 415336410, i32 129}
!28 = !{i32 990000, i64 64860573, i32 187}
!29 = !{i32 999000, i64 6034043, i32 304}
!30 = !{i32 999900, i64 678637, i32 400}
!31 = !{i32 999990, i64 50119, i32 498}
!32 = !{i32 999999, i64 5214, i32 613}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZN9FastState9init_gameEif, i64 29}
!36 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZN9FullBoard12calc_ko_hashEv, i64 29}
!37 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, i64 20}
!38 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZN9FullBoard9calc_hashEv, i64 29}
!39 = !{ptr @_ZN7KoState9play_moveEi, ptr @_ZN7KoState9play_moveEii, i64 30932281}
!40 = !{ptr @_ZN7KoState9play_passEv, ptr @_ZN9FastState9play_passEv, i64 1609901}
!41 = !{ptr @_ZN7KoState9play_passEv, ptr @_Znwm, i64 147108}
!42 = !{ptr @_ZN7KoState9play_passEv, ptr @_ZdlPv, i64 147108}
!43 = !{ptr @_ZN7KoState9play_moveEii, ptr @_ZN9FastState9play_moveEii, i64 30971614}
!44 = !{ptr @_ZN7KoState9play_moveEii, ptr @_Znwm, i64 12277392}
!45 = !{ptr @_ZN7KoState9play_moveEii, ptr @_ZdlPv, i64 12277392}
!46 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_Znwm, i64 15448222}
!47 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10252442}
!48 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 914}
!49 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 20}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 29}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!53, !54, i64 8}
!58 = !{!"branch_weights", i32 10, i32 19}
!59 = !{!60, !60, i64 0}
!60 = !{!"long long", !55, i64 0}
!61 = !{!54, !54, i64 0}
!62 = !{!53, !54, i64 16}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!65, !67, i64 8048}
!65 = !{!"_ZTS9FastBoard", !66, i64 0, !66, i64 882, !67, i64 1764, !67, i64 1768, !67, i64 1772, !68, i64 1776, !69, i64 3540, !69, i64 4424, !69, i64 5308, !69, i64 6192, !66, i64 7076, !70, i64 7960, !71, i64 7976, !72, i64 8008, !72, i64 8016, !73, i64 8024, !67, i64 8048}
!66 = !{!"_ZTSN5boost5arrayItLm441EEE", !55, i64 0}
!67 = !{!"int", !55, i64 0}
!68 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !55, i64 0}
!69 = !{!"_ZTSN5boost5arrayItLm442EEE", !55, i64 0}
!70 = !{!"_ZTSN5boost5arrayIiLm4EEE", !55, i64 0}
!71 = !{!"_ZTSN5boost5arrayIiLm8EEE", !55, i64 0}
!72 = !{!"_ZTSN5boost5arrayIiLm2EEE", !55, i64 0}
!73 = !{!"_ZTSSt6vectorIiSaIiEE", !74, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!77 = !{!76, !54, i64 0}
!78 = !{!65, !67, i64 1768}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNSt6vectorIySaIyEE6rbeginEv: argument 0"}
!81 = distinct !{!81, !"_ZNSt6vectorIySaIyEE6rbeginEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNSt6vectorIySaIyEE4rendEv: argument 0"}
!84 = distinct !{!84, !"_ZNSt6vectorIySaIyEE4rendEv"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_: argument 0"}
!87 = distinct !{!87, !"_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_"}
!88 = !{!89, !86}
!89 = distinct !{!89, !90, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_: argument 0"}
!90 = distinct !{!90, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_"}
!91 = !{!"function_entry_count", i64 30932281}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNSt6vectorIySaIyEE6rbeginEv: argument 0"}
!94 = distinct !{!94, !"_ZNSt6vectorIySaIyEE6rbeginEv"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNSt6vectorIySaIyEE4rendEv: argument 0"}
!97 = distinct !{!97, !"_ZNSt6vectorIySaIyEE4rendEv"}
!98 = !{!"branch_weights", i32 30931878, i32 1}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag: argument 0"}
!101 = distinct !{!101, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag"}
!102 = !{!"branch_weights", i32 14, i32 580826940}
!103 = !{!"branch_weights", i32 1, i32 580826939}
!104 = !{!"branch_weights", i32 382, i32 580826557}
!105 = !{!"branch_weights", i32 5, i32 580826552}
!106 = !{!"branch_weights", i32 549895076, i32 30931878}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!"branch_weights", i32 7662727, i32 7796995, i32 7643868, i32 7828289}
!111 = !{!"branch_weights", i32 0, i32 7796995}
!112 = !{!"branch_weights", i32 0, i32 15440863}
!113 = !{!"branch_weights", i32 0, i32 23269152}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNSt6vectorIySaIyEE6rbeginEv: argument 0"}
!116 = distinct !{!116, !"_ZNSt6vectorIySaIyEE6rbeginEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNSt6vectorIySaIyEE4rendEv: argument 0"}
!119 = distinct !{!119, !"_ZNSt6vectorIySaIyEE4rendEv"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_: argument 0"}
!122 = distinct !{!122, !"_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_"}
!123 = !{!124, !121}
!124 = distinct !{!124, !125, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_: argument 0"}
!125 = distinct !{!125, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_"}
!126 = !{!"function_entry_count", i64 1609901}
!127 = !{!"branch_weights", i32 73554, i32 1536347}
!128 = !{!"branch_weights", i32 0, i32 12424500}
!129 = !{!"branch_weights", i32 12424500, i32 0}
!130 = !{!"VP", i32 1, i64 73554, i64 513, i64 37213, i64 257, i64 19807, i64 129, i64 10751, i64 65, i64 3821}
!131 = !{!"function_entry_count", i64 30971614}
!132 = !{!"branch_weights", i32 30971614, i32 0}
!133 = !{!"branch_weights", i32 6138696, i32 24832918}
!134 = !{!"VP", i32 1, i64 6138696, i64 513, i64 3105737, i64 257, i64 1653129, i64 129, i64 897334, i64 65, i64 318910}
!135 = !{!"function_entry_count", i64 15449970}
!136 = !{!"branch_weights", i32 1748, i32 15448222}
!137 = !{!"branch_weights", i32 0, i32 27873636}
!138 = !{!"VP", i32 1, i64 15448222, i64 513, i64 7965526, i64 257, i64 3934196, i64 129, i64 2151218, i64 65, i64 812660}
!139 = !{!"function_entry_count", i64 7788864}
!140 = !{!76, !54, i64 8}
!141 = !{!"branch_weights", i32 7788864, i32 0}
!142 = !{!76, !54, i64 16}
!143 = !{!"function_entry_count", i64 10252442}
!144 = !{!"branch_weights", i32 0, i32 10252442}
!145 = !{!"function_entry_count", i64 914}
!146 = !{!"function_entry_count", i64 20}
!147 = !{!"branch_weights", i32 0, i32 20}
!148 = !{!"branch_weights", i32 20, i32 0}
!149 = !{i64 0, i64 8, !61}
!150 = !{!151, !54, i64 0}
!151 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE", !54, i64 0}
