; ModuleID = 'blender/intern/ghost/intern/GHOST_TimerManager.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_TimerManager.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_TimerManager = type { ptr, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<GHOST_TimerTask *, std::allocator<GHOST_TimerTask *>>::_Vector_impl" }
%"struct.std::_Vector_base<GHOST_TimerTask *, std::allocator<GHOST_TimerTask *>>::_Vector_impl" = type { %"struct.std::_Vector_base<GHOST_TimerTask *, std::allocator<GHOST_TimerTask *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<GHOST_TimerTask *, std::allocator<GHOST_TimerTask *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZTV18GHOST_TimerManager = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTI18GHOST_TimerManager, ptr @_ZN18GHOST_TimerManagerD2Ev, ptr @_ZN18GHOST_TimerManagerD0Ev, ptr @_ZN18GHOST_TimerManager12getNumTimersEv, ptr @_ZN18GHOST_TimerManager13getTimerFoundEP15GHOST_TimerTask, ptr @_ZN18GHOST_TimerManager8addTimerEP15GHOST_TimerTask, ptr @_ZN18GHOST_TimerManager11removeTimerEP15GHOST_TimerTask, ptr @_ZN18GHOST_TimerManager12nextFireTimeEv, ptr @_ZN18GHOST_TimerManager10fireTimersEy, ptr @_ZN18GHOST_TimerManager9fireTimerEyP15GHOST_TimerTask] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS18GHOST_TimerManager = dso_local constant [21 x i8] c"18GHOST_TimerManager\00", align 1
@_ZTI18GHOST_TimerManager = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS18GHOST_TimerManager }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN18GHOST_TimerManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_TimerManagerC2Ev
@_ZN18GHOST_TimerManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_TimerManagerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18GHOST_TimerManagerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV18GHOST_TimerManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN18GHOST_TimerManagerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV18GHOST_TimerManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  %5 = load ptr, ptr %3, align 8, !tbaa !37
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %29, label %7

7:                                                ; preds = %1, %24
  %8 = phi ptr [ %27, %24 ], [ %4, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(52) %9) #11
  br label %15

15:                                               ; preds = %11, %7
  %16 = load ptr, ptr %2, align 8, !tbaa !37
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %3, align 8, !tbaa !37
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %17 to i64
  %23 = sub i64 %21, %22
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %16, ptr nonnull align 8 %17, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load ptr, ptr %3, align 8, !tbaa !40
  %26 = getelementptr inbounds ptr, ptr %25, i64 -1
  store ptr %26, ptr %3, align 8, !tbaa !40
  %27 = load ptr, ptr %2, align 8, !tbaa !37
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %29, label %7, !llvm.loop !42

29:                                               ; preds = %24, %1
  %30 = phi ptr [ %4, %1 ], [ %27, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #12
  br label %33

33:                                               ; preds = %29, %32
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18GHOST_TimerManager13disposeTimersEv(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  %5 = load ptr, ptr %3, align 8, !tbaa !37
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %29, label %7

7:                                                ; preds = %1, %24
  %8 = phi ptr [ %27, %24 ], [ %4, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(52) %9) #11
  br label %15

15:                                               ; preds = %11, %7
  %16 = load ptr, ptr %2, align 8, !tbaa !37
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %3, align 8, !tbaa !37
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %17 to i64
  %23 = sub i64 %21, %22
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %16, ptr nonnull align 8 %17, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %15, %20
  %25 = load ptr, ptr %3, align 8, !tbaa !40
  %26 = getelementptr inbounds ptr, ptr %25, i64 -1
  store ptr %26, ptr %3, align 8, !tbaa !40
  %27 = load ptr, ptr %2, align 8, !tbaa !37
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %29, label %7, !llvm.loop !42

29:                                               ; preds = %24, %1
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN18GHOST_TimerManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV18GHOST_TimerManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  %5 = load ptr, ptr %3, align 8, !tbaa !37
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %29, label %7

7:                                                ; preds = %1, %24
  %8 = phi ptr [ %27, %24 ], [ %4, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(52) %9) #11
  br label %15

15:                                               ; preds = %11, %7
  %16 = load ptr, ptr %2, align 8, !tbaa !37
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %3, align 8, !tbaa !37
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %17 to i64
  %23 = sub i64 %21, %22
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %16, ptr nonnull align 8 %17, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load ptr, ptr %3, align 8, !tbaa !40
  %26 = getelementptr inbounds ptr, ptr %25, i64 -1
  store ptr %26, ptr %3, align 8, !tbaa !40
  %27 = load ptr, ptr %2, align 8, !tbaa !37
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %29, label %7, !llvm.loop !42

29:                                               ; preds = %24, %1
  %30 = phi ptr [ %4, %1 ], [ %27, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZdlPv(ptr noundef %30) #12
  br label %33

33:                                               ; preds = %29, %32
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN18GHOST_TimerManager12getNumTimersEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 3
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_TimerManager13getTimerFoundEP15GHOST_TimerTask(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef readnone %1) unnamed_addr #5 align 2 {
  %3 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = ashr i64 %9, 5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = and i64 %9, -32
  %14 = getelementptr i8, ptr %4, i64 %13
  br label %15

15:                                               ; preds = %32, %12
  %16 = phi i64 [ %10, %12 ], [ %34, %32 ]
  %17 = phi ptr [ %4, %12 ], [ %33, %32 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds ptr, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %57, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds ptr, ptr %17, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %17, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %61, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds ptr, ptr %17, i64 4
  %34 = add nsw i64 %16, -1
  %35 = icmp sgt i64 %16, 1
  br i1 %35, label %15, label %36, !llvm.loop !46

36:                                               ; preds = %32, %2
  %37 = phi ptr [ %4, %2 ], [ %14, %32 ]
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  switch i64 %40, label %63 [
    i64 3, label %41
    i64 2, label %46
    i64 1, label %52
  ]

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !37
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds ptr, ptr %37, i64 1
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %37, %36 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !37
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds ptr, ptr %47, i64 1
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi ptr [ %37, %36 ], [ %51, %50 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !37
  %55 = icmp eq ptr %54, %1
  %56 = select i1 %55, ptr %53, ptr %6
  br label %63

57:                                               ; preds = %20
  %58 = getelementptr inbounds ptr, ptr %17, i64 1
  br label %63

59:                                               ; preds = %24
  %60 = getelementptr inbounds ptr, ptr %17, i64 2
  br label %63

61:                                               ; preds = %28
  %62 = getelementptr inbounds ptr, ptr %17, i64 3
  br label %63

63:                                               ; preds = %15, %57, %59, %61, %36, %41, %46, %52
  %64 = phi ptr [ %37, %41 ], [ %47, %46 ], [ %6, %36 ], [ %56, %52 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %17, %15 ]
  %65 = icmp ne ptr %64, %6
  ret i1 %65
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18GHOST_TimerManager8addTimerEP15GHOST_TimerTask(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  br i1 %6, label %58, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  store ptr %1, ptr %9, align 8, !tbaa !37
  %14 = load ptr, ptr %8, align 8, !tbaa !40
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %15, ptr %8, align 8, !tbaa !40
  br label %58

16:                                               ; preds = %7
  %17 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = load ptr, ptr %17, align 8, !tbaa !37
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = icmp eq i64 %23, 9223372036854775800
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

26:                                               ; preds = %16
  %27 = ashr exact i64 %23, 3
  %28 = tail call i64 @llvm.umax.i64(i64 %27, i64 1)
  %29 = add i64 %28, %27
  %30 = icmp ult i64 %29, %27
  %31 = tail call i64 @llvm.umin.i64(i64 %29, i64 1152921504606846975)
  %32 = select i1 %30, i64 1152921504606846975, i64 %31
  %33 = ptrtoint ptr %9 to i64
  %34 = sub i64 %33, %22
  %35 = ashr exact i64 %34, 3
  %36 = icmp eq i64 %32, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = shl nuw nsw i64 %32, 3
  %39 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %38) #14
  br label %40

40:                                               ; preds = %37, %26
  %41 = phi ptr [ %39, %37 ], [ null, %26 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %35
  store ptr %1, ptr %42, align 8, !tbaa !37
  %43 = icmp sgt i64 %34, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %41, ptr align 8 %20, i64 %34, i1 false)
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds i8, ptr %41, i64 %34
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = sub i64 %21, %33
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %47, ptr align 8 %9, i64 %48, i1 false)
  br label %51

51:                                               ; preds = %50, %45
  %52 = icmp eq ptr %20, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  tail call void @_ZdlPv(ptr noundef %20) #12
  br label %54

54:                                               ; preds = %51, %53
  %55 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %56 = getelementptr inbounds i8, ptr %47, i64 %48
  store ptr %41, ptr %17, align 8, !tbaa !45
  store ptr %56, ptr %18, align 8, !tbaa !40
  %57 = getelementptr inbounds ptr, ptr %41, i64 %32
  store ptr %57, ptr %55, align 8, !tbaa !47
  br label %58

58:                                               ; preds = %54, %13, %2
  %59 = phi i32 [ 0, %2 ], [ 1, %13 ], [ 1, %54 ]
  ret i32 %59
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18GHOST_TimerManager11removeTimerEP15GHOST_TimerTask(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #2 align 2 {
  %3 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = ashr i64 %9, 5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = and i64 %9, -32
  %14 = getelementptr i8, ptr %4, i64 %13
  br label %15

15:                                               ; preds = %32, %12
  %16 = phi i64 [ %10, %12 ], [ %34, %32 ]
  %17 = phi ptr [ %4, %12 ], [ %33, %32 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds ptr, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %57, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds ptr, ptr %17, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %17, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !37
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %61, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds ptr, ptr %17, i64 4
  %34 = add nsw i64 %16, -1
  %35 = icmp sgt i64 %16, 1
  br i1 %35, label %15, label %36, !llvm.loop !46

36:                                               ; preds = %32, %2
  %37 = phi ptr [ %4, %2 ], [ %14, %32 ]
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  switch i64 %40, label %63 [
    i64 3, label %41
    i64 2, label %46
    i64 1, label %52
  ]

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !37
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds ptr, ptr %37, i64 1
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %37, %36 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !37
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds ptr, ptr %47, i64 1
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi ptr [ %37, %36 ], [ %51, %50 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !37
  %55 = icmp eq ptr %54, %1
  %56 = select i1 %55, ptr %53, ptr %6
  br label %63

57:                                               ; preds = %20
  %58 = getelementptr inbounds ptr, ptr %17, i64 1
  br label %63

59:                                               ; preds = %24
  %60 = getelementptr inbounds ptr, ptr %17, i64 2
  br label %63

61:                                               ; preds = %28
  %62 = getelementptr inbounds ptr, ptr %17, i64 3
  br label %63

63:                                               ; preds = %15, %57, %59, %61, %36, %41, %46, %52
  %64 = phi ptr [ %37, %41 ], [ %47, %46 ], [ %6, %36 ], [ %56, %52 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %17, %15 ]
  %65 = icmp eq ptr %64, %6
  br i1 %65, label %83, label %66

66:                                               ; preds = %63
  %67 = ptrtoint ptr %64 to i64
  %68 = sub i64 %67, %8
  %69 = getelementptr inbounds i8, ptr %4, i64 %68
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = icmp eq ptr %70, %6
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = ptrtoint ptr %70 to i64
  %74 = sub i64 %7, %73
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %69, ptr nonnull align 8 %70, i64 %74, i1 false)
  br label %75

75:                                               ; preds = %66, %72
  %76 = load ptr, ptr %5, align 8, !tbaa !40
  %77 = getelementptr inbounds ptr, ptr %76, i64 -1
  store ptr %77, ptr %5, align 8, !tbaa !40
  %78 = icmp eq ptr %1, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %1, align 8, !tbaa !34
  %81 = getelementptr inbounds ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8
  tail call void %82(ptr noundef nonnull align 8 dereferenceable(52) %1) #11
  br label %83

83:                                               ; preds = %75, %79, %63
  %84 = phi i32 [ 0, %63 ], [ 1, %79 ], [ 1, %75 ]
  ret i32 %84
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN18GHOST_TimerManager12nextFireTimeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 {
  %2 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %15, %7 ], [ -1, %1 ]
  %9 = phi ptr [ %16, %7 ], [ %3, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i64 %13(ptr noundef nonnull align 8 dereferenceable(52) %10)
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 %8)
  %16 = getelementptr inbounds ptr, ptr %9, i64 1
  %17 = load ptr, ptr %4, align 8, !tbaa !37
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %7, !llvm.loop !48

19:                                               ; preds = %7, %1
  %20 = phi i64 [ -1, %1 ], [ %15, %7 ]
  ret i64 %20
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_TimerManager10fireTimersEy(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 align 2 {
  %3 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %class.GHOST_TimerManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %2, %8
  %9 = phi i8 [ %16, %8 ], [ 0, %2 ]
  %10 = phi ptr [ %17, %8 ], [ %4, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %11)
  %16 = select i1 %15, i8 1, i8 %9
  %17 = getelementptr inbounds ptr, ptr %10, i64 1
  %18 = load ptr, ptr %5, align 8, !tbaa !37
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %8, !llvm.loop !49

20:                                               ; preds = %8
  %21 = and i8 %16, 1
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %20, %2
  %24 = phi i1 [ false, %2 ], [ %22, %20 ]
  ret i1 %24
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_TimerManager9fireTimerEyP15GHOST_TimerTask(ptr nocapture nonnull readnone align 8 %0, i64 noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %14 = load ptr, ptr %2, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i64 %16(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %18 = sub i64 %1, %17
  tail call void %13(ptr noundef nonnull %2, i64 noundef %18)
  %19 = load ptr, ptr %2, align 8, !tbaa !34
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i64 %21(ptr noundef nonnull align 8 dereferenceable(52) %2)
  %23 = sub i64 %7, %17
  %24 = udiv i64 %23, %22
  %25 = add i64 %24, 1
  %26 = mul i64 %25, %22
  %27 = add i64 %26, %17
  %28 = load ptr, ptr %2, align 8, !tbaa !34
  %29 = getelementptr inbounds ptr, ptr %28, i64 11
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(52) %2, i64 noundef %27)
  br label %31

31:                                               ; preds = %3, %9
  ret i1 %8
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }

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
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !36, i64 0}
!40 = !{!41, !38, i64 8}
!41 = !{!"_ZTSNSt12_Vector_baseIP15GHOST_TimerTaskSaIS1_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!41, !38, i64 0}
!46 = distinct !{!46, !43, !44}
!47 = !{!41, !38, i64 16}
!48 = distinct !{!48, !43, !44}
!49 = distinct !{!49, !43, !44}
