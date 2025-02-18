; ModuleID = 'blender/intern/ghost/intern/GHOST_WindowManager.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_WindowManager.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_WindowManager = type { ptr, %"class.std::vector", ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<GHOST_IWindow *, std::allocator<GHOST_IWindow *>>::_Vector_impl" }
%"struct.std::_Vector_base<GHOST_IWindow *, std::allocator<GHOST_IWindow *>>::_Vector_impl" = type { %"struct.std::_Vector_base<GHOST_IWindow *, std::allocator<GHOST_IWindow *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<GHOST_IWindow *, std::allocator<GHOST_IWindow *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZTV19GHOST_WindowManager = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTI19GHOST_WindowManager, ptr @_ZN19GHOST_WindowManagerD2Ev, ptr @_ZN19GHOST_WindowManagerD0Ev, ptr @_ZN19GHOST_WindowManager9addWindowEP13GHOST_IWindow, ptr @_ZN19GHOST_WindowManager12removeWindowEPK13GHOST_IWindow, ptr @_ZNK19GHOST_WindowManager14getWindowFoundEPK13GHOST_IWindow, ptr @_ZNK19GHOST_WindowManager13getFullScreenEv, ptr @_ZNK19GHOST_WindowManager19getFullScreenWindowEv, ptr @_ZN19GHOST_WindowManager15beginFullScreenEP13GHOST_IWindowb, ptr @_ZN19GHOST_WindowManager13endFullScreenEv, ptr @_ZN19GHOST_WindowManager15setActiveWindowEP13GHOST_IWindow, ptr @_ZNK19GHOST_WindowManager15getActiveWindowEv, ptr @_ZN19GHOST_WindowManager17setWindowInactiveEPK13GHOST_IWindow, ptr @_ZN19GHOST_WindowManager31getWindowAssociatedWithOSWindowEPv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS19GHOST_WindowManager = dso_local constant [22 x i8] c"19GHOST_WindowManager\00", align 1
@_ZTI19GHOST_WindowManager = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS19GHOST_WindowManager }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN19GHOST_WindowManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19GHOST_WindowManagerC2Ev
@_ZN19GHOST_WindowManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19GHOST_WindowManagerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN19GHOST_WindowManagerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTV19GHOST_WindowManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19GHOST_WindowManagerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTV19GHOST_WindowManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #12
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19GHOST_WindowManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTV19GHOST_WindowManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #12
  br label %6

6:                                                ; preds = %1, %5
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN19GHOST_WindowManager9addWindowEP13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1)
  br i1 %8, label %60, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  store ptr %1, ptr %11, align 8, !tbaa !41
  %16 = load ptr, ptr %10, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  store ptr %17, ptr %10, align 8, !tbaa !43
  br label %60

18:                                               ; preds = %9
  %19 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  %20 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = load ptr, ptr %19, align 8, !tbaa !41
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = icmp eq i64 %25, 9223372036854775800
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

28:                                               ; preds = %18
  %29 = ashr exact i64 %25, 3
  %30 = tail call i64 @llvm.umax.i64(i64 %29, i64 1)
  %31 = add i64 %30, %29
  %32 = icmp ult i64 %31, %29
  %33 = tail call i64 @llvm.umin.i64(i64 %31, i64 1152921504606846975)
  %34 = select i1 %32, i64 1152921504606846975, i64 %33
  %35 = ptrtoint ptr %11 to i64
  %36 = sub i64 %35, %24
  %37 = ashr exact i64 %36, 3
  %38 = icmp eq i64 %34, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = shl nuw nsw i64 %34, 3
  %41 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %40) #14
  br label %42

42:                                               ; preds = %39, %28
  %43 = phi ptr [ %41, %39 ], [ null, %28 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %37
  store ptr %1, ptr %44, align 8, !tbaa !41
  %45 = icmp sgt i64 %36, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %22, i64 %36, i1 false)
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds i8, ptr %43, i64 %36
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = sub i64 %23, %35
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %49, ptr align 8 %11, i64 %50, i1 false)
  br label %53

53:                                               ; preds = %52, %47
  %54 = icmp eq ptr %22, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  tail call void @_ZdlPv(ptr noundef %22) #12
  br label %56

56:                                               ; preds = %53, %55
  %57 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %58 = getelementptr inbounds i8, ptr %49, i64 %50
  store ptr %43, ptr %19, align 8, !tbaa !37
  store ptr %58, ptr %20, align 8, !tbaa !43
  %59 = getelementptr inbounds ptr, ptr %43, i64 %34
  store ptr %59, ptr %57, align 8, !tbaa !42
  br label %60

60:                                               ; preds = %56, %15, %4, %2
  %61 = phi i32 [ 0, %4 ], [ 0, %2 ], [ 1, %15 ], [ 1, %56 ]
  ret i32 %61
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN19GHOST_WindowManager12removeWindowEPK13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %96, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %96

13:                                               ; preds = %4
  %14 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %15 to i64
  %20 = sub i64 %18, %19
  %21 = ashr i64 %20, 5
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %13
  %24 = and i64 %20, -32
  %25 = getelementptr i8, ptr %15, i64 %24
  br label %26

26:                                               ; preds = %43, %23
  %27 = phi i64 [ %21, %23 ], [ %45, %43 ]
  %28 = phi ptr [ %15, %23 ], [ %44, %43 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %74, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds ptr, ptr %28, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %68, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds ptr, ptr %28, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %70, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds ptr, ptr %28, i64 3
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %72, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %28, i64 4
  %45 = add nsw i64 %27, -1
  %46 = icmp sgt i64 %27, 1
  br i1 %46, label %26, label %47, !llvm.loop !49

47:                                               ; preds = %43, %13
  %48 = phi ptr [ %15, %13 ], [ %25, %43 ]
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 %18, %49
  %51 = ashr exact i64 %50, 3
  switch i64 %51, label %74 [
    i64 3, label %52
    i64 2, label %57
    i64 1, label %63
  ]

52:                                               ; preds = %47
  %53 = load ptr, ptr %48, align 8, !tbaa !41
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds ptr, ptr %48, i64 1
  br label %57

57:                                               ; preds = %55, %47
  %58 = phi ptr [ %48, %47 ], [ %56, %55 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %74, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  br label %63

63:                                               ; preds = %61, %47
  %64 = phi ptr [ %48, %47 ], [ %62, %61 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = icmp eq ptr %65, %1
  %67 = select i1 %66, ptr %64, ptr %17
  br label %74

68:                                               ; preds = %31
  %69 = getelementptr inbounds ptr, ptr %28, i64 1
  br label %74

70:                                               ; preds = %35
  %71 = getelementptr inbounds ptr, ptr %28, i64 2
  br label %74

72:                                               ; preds = %39
  %73 = getelementptr inbounds ptr, ptr %28, i64 3
  br label %74

74:                                               ; preds = %26, %68, %70, %72, %47, %52, %57, %63
  %75 = phi ptr [ %48, %52 ], [ %58, %57 ], [ %17, %47 ], [ %67, %63 ], [ %69, %68 ], [ %71, %70 ], [ %73, %72 ], [ %28, %26 ]
  %76 = icmp eq ptr %75, %17
  br i1 %76, label %96, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %0, align 8, !tbaa !34
  %79 = getelementptr inbounds ptr, ptr %78, i64 11
  %80 = load ptr, ptr %79, align 8
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1)
  %81 = load ptr, ptr %14, align 8, !tbaa !41
  %82 = ptrtoint ptr %75 to i64
  %83 = ptrtoint ptr %81 to i64
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  %87 = load ptr, ptr %16, align 8, !tbaa !41
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %77
  %90 = ptrtoint ptr %87 to i64
  %91 = ptrtoint ptr %86 to i64
  %92 = sub i64 %90, %91
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %85, ptr nonnull align 8 %86, i64 %92, i1 false)
  br label %93

93:                                               ; preds = %77, %89
  %94 = load ptr, ptr %16, align 8, !tbaa !43
  %95 = getelementptr inbounds ptr, ptr %94, i64 -1
  store ptr %95, ptr %16, align 8, !tbaa !43
  br label %96

96:                                               ; preds = %74, %93, %8, %2
  %97 = phi i32 [ 0, %8 ], [ 0, %2 ], [ 1, %93 ], [ 0, %74 ]
  ret i32 %97
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK19GHOST_WindowManager14getWindowFoundEPK13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef readnone %1) unnamed_addr #3 align 2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %9 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %1
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %77, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %15 to i64
  %20 = sub i64 %18, %19
  %21 = ashr i64 %20, 5
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %13
  %24 = and i64 %20, -32
  %25 = getelementptr i8, ptr %15, i64 %24
  br label %26

26:                                               ; preds = %43, %23
  %27 = phi i64 [ %21, %23 ], [ %45, %43 ]
  %28 = phi ptr [ %15, %23 ], [ %44, %43 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %74, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds ptr, ptr %28, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %68, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds ptr, ptr %28, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %70, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds ptr, ptr %28, i64 3
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %72, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %28, i64 4
  %45 = add nsw i64 %27, -1
  %46 = icmp sgt i64 %27, 1
  br i1 %46, label %26, label %47, !llvm.loop !52

47:                                               ; preds = %43, %13
  %48 = phi ptr [ %15, %13 ], [ %25, %43 ]
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 %18, %49
  %51 = ashr exact i64 %50, 3
  switch i64 %51, label %74 [
    i64 3, label %52
    i64 2, label %57
    i64 1, label %63
  ]

52:                                               ; preds = %47
  %53 = load ptr, ptr %48, align 8, !tbaa !41
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %74, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds ptr, ptr %48, i64 1
  br label %57

57:                                               ; preds = %55, %47
  %58 = phi ptr [ %48, %47 ], [ %56, %55 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %74, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds ptr, ptr %58, i64 1
  br label %63

63:                                               ; preds = %61, %47
  %64 = phi ptr [ %48, %47 ], [ %62, %61 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = icmp eq ptr %65, %1
  %67 = select i1 %66, ptr %64, ptr %17
  br label %74

68:                                               ; preds = %31
  %69 = getelementptr inbounds ptr, ptr %28, i64 1
  br label %74

70:                                               ; preds = %35
  %71 = getelementptr inbounds ptr, ptr %28, i64 2
  br label %74

72:                                               ; preds = %39
  %73 = getelementptr inbounds ptr, ptr %28, i64 3
  br label %74

74:                                               ; preds = %26, %68, %70, %72, %47, %52, %57, %63
  %75 = phi ptr [ %48, %52 ], [ %58, %57 ], [ %17, %47 ], [ %67, %63 ], [ %69, %68 ], [ %71, %70 ], [ %73, %72 ], [ %28, %26 ]
  %76 = icmp ne ptr %75, %17
  br label %77

77:                                               ; preds = %4, %74, %2
  %78 = phi i1 [ %76, %74 ], [ false, %2 ], [ true, %4 ]
  ret i1 %78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK19GHOST_WindowManager13getFullScreenEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK19GHOST_WindowManager19getFullScreenWindowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN19GHOST_WindowManager15beginFullScreenEP13GHOST_IWindowb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 zeroext %2) unnamed_addr #3 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !44
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 10
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %14 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !53
  %15 = load ptr, ptr %9, align 8, !tbaa !44
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds ptr, ptr %16, i64 9
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %15)
  %20 = load ptr, ptr %9, align 8, !tbaa !44
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds ptr, ptr %21, i64 40
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ 0, %3 ], [ 1, %8 ]
  ret i32 %26
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN19GHOST_WindowManager13endFullScreenEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %11, i64 11
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %8)
  %14 = load ptr, ptr %7, align 8, !tbaa !44
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %15, i64 41
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %19 = load ptr, ptr %7, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = load ptr, ptr %19, align 8, !tbaa !34
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %19) #15
  br label %25

25:                                               ; preds = %21, %10
  store ptr null, ptr %7, align 8, !tbaa !44
  %26 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !34
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i32 %32(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %27)
  br label %34

34:                                               ; preds = %6, %29, %25, %1
  %35 = phi i32 [ 0, %1 ], [ 1, %25 ], [ 1, %29 ], [ 1, %6 ]
  ret i32 %35
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN19GHOST_WindowManager15setActiveWindowEP13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !54
  br label %12

12:                                               ; preds = %6, %11, %2
  %13 = phi i32 [ 1, %11 ], [ 1, %2 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK19GHOST_WindowManager15getActiveWindowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN19GHOST_WindowManager17setWindowInactiveEPK13GHOST_IWindow(ptr nocapture noundef nonnull align 8 dereferenceable(56) %0, ptr noundef readnone %1) unnamed_addr #5 align 2 {
  %3 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !54
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN19GHOST_WindowManager10getWindowsEv(ptr noundef nonnull readnone align 8 dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN19GHOST_WindowManager31getWindowAssociatedWithOSWindowEPv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef readnone %1) unnamed_addr #3 align 2 {
  %3 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %22, label %8

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %19, %18 ], [ %4, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 8, !tbaa !41
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds ptr, ptr %9, i64 1
  %20 = load ptr, ptr %5, align 8, !tbaa !41
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %8, !llvm.loop !55

22:                                               ; preds = %18, %2, %16
  %23 = phi ptr [ %17, %16 ], [ null, %2 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN19GHOST_WindowManager19getAnyModifiedStateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) local_unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %class.GHOST_WindowManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %22, label %7

7:                                                ; preds = %1, %7
  %8 = phi i8 [ %15, %7 ], [ 0, %1 ]
  %9 = phi ptr [ %16, %7 ], [ %3, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %11, i64 20
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %15 = select i1 %14, i8 1, i8 %8
  %16 = getelementptr inbounds ptr, ptr %9, i64 1
  %17 = load ptr, ptr %4, align 8, !tbaa !41
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %7, !llvm.loop !56

19:                                               ; preds = %7
  %20 = and i8 %15, 1
  %21 = icmp ne i8 %20, 0
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i1 [ false, %1 ], [ %21, %19 ]
  ret i1 %23
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIP13GHOST_IWindowSaIS1_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !36, i64 0}
!41 = !{!39, !39, i64 0}
!42 = !{!38, !39, i64 16}
!43 = !{!38, !39, i64 8}
!44 = !{!45, !39, i64 32}
!45 = !{!"_ZTS19GHOST_WindowManager", !46, i64 8, !39, i64 32, !39, i64 40, !39, i64 48}
!46 = !{!"_ZTSSt6vectorIP13GHOST_IWindowSaIS1_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIP13GHOST_IWindowSaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIP13GHOST_IWindowSaIS1_EE12_Vector_implE", !38, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = !{!45, !39, i64 48}
!54 = !{!45, !39, i64 40}
!55 = distinct !{!55, !50, !51}
!56 = distinct !{!56, !50, !51}
