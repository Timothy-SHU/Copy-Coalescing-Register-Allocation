; ModuleID = 'blender/intern/ghost/intern/GHOST_Window.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_Window.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_Window = type { %class.GHOST_IWindow, i32, ptr, i8, i32, [2 x i32], [2 x i32], %class.GHOST_Rect, i32, i8, i8, i8, i8, i8, i16, i32, i32, float, ptr }
%class.GHOST_IWindow = type { ptr }
%class.GHOST_Rect = type { ptr, i32, i32, i32, i32 }
%class.GHOST_ContextNone = type <{ %class.GHOST_Context, i32, [4 x i8] }>
%class.GHOST_Context = type { ptr, i8, i16, ptr }

$_ZN13GHOST_IWindowC2Ev = comdat any

$_ZN10GHOST_RectC2Eiiii = comdat any

$_ZN17GHOST_ContextNoneC2Ebt = comdat any

$_ZN10GHOST_RectD2Ev = comdat any

$_ZNK13GHOST_Context17getNumOfAASamplesEv = comdat any

$_ZN10GHOST_RectaSERKS_ = comdat any

$_ZNK12GHOST_Window8getValidEv = comdat any

$_ZN12GHOST_Window21getDrawingContextTypeEv = comdat any

$_ZNK12GHOST_Window11getUserDataEv = comdat any

$_ZN12GHOST_Window11setUserDataEPv = comdat any

$_ZN12GHOST_Window14setProgressBarEf = comdat any

$_ZN12GHOST_Window14endProgressBarEv = comdat any

$_ZNK12GHOST_Window14getCursorShapeEv = comdat any

$_ZNK12GHOST_Window19getCursorVisibilityEv = comdat any

$_ZN12GHOST_Window18getNativePixelSizeEv = comdat any

$_ZNK12GHOST_Window17getCursorGrabModeEv = comdat any

$_ZNK12GHOST_Window23getCursorGrabModeIsWarpEv = comdat any

$_ZNK12GHOST_Window20getCursorGrabInitPosERiS0_ = comdat any

$_ZNK12GHOST_Window18getCursorGrabAccumERiS0_ = comdat any

$_ZN12GHOST_Window18setCursorGrabAccumEii = comdat any

$_ZN12GHOST_Window19setWindowCursorGrabE21GHOST_TGrabCursorMode = comdat any

$_ZN13GHOST_IWindowD2Ev = comdat any

$_ZN13GHOST_IWindowD0Ev = comdat any

$_ZN13GHOST_IWindow13setCursorGrabE21GHOST_TGrabCursorModeP10GHOST_RectPi = comdat any

$_ZN13GHOST_ContextC2Ebt = comdat any

$_ZN13GHOST_ContextD2Ev = comdat any

$_ZN13GHOST_ContextD0Ev = comdat any

$_ZN13GHOST_Context20updateDrawingContextEv = comdat any

$_ZN13GHOST_Context15setSwapIntervalEi = comdat any

$_ZN13GHOST_Context15getSwapIntervalERi = comdat any

$__clang_call_terminate = comdat any

$_ZTS13GHOST_IWindow = comdat any

$_ZTI13GHOST_IWindow = comdat any

$_ZTV13GHOST_IWindow = comdat any

$_ZTV13GHOST_Context = comdat any

$_ZTS13GHOST_Context = comdat any

$_ZTI13GHOST_Context = comdat any

@_ZTV12GHOST_Window = dso_local unnamed_addr constant { [58 x ptr] } { [58 x ptr] [ptr null, ptr @_ZTI12GHOST_Window, ptr @_ZN12GHOST_WindowD2Ev, ptr @_ZN12GHOST_WindowD0Ev, ptr @_ZNK12GHOST_Window8getValidEv, ptr @_ZNK12GHOST_Window11getOSWindowEv, ptr @_ZN12GHOST_Window21getDrawingContextTypeEv, ptr @_ZN12GHOST_Window21setDrawingContextTypeE25GHOST_TDrawingContextType, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12GHOST_Window22setAcceptDragOperationEb, ptr @_ZNK12GHOST_Window22canAcceptDragOperationEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12GHOST_Window16setModifiedStateEb, ptr @_ZN12GHOST_Window16getModifiedStateEv, ptr @__cxa_pure_virtual, ptr @_ZN12GHOST_Window11swapBuffersEv, ptr @_ZN12GHOST_Window15setSwapIntervalEi, ptr @_ZN12GHOST_Window15getSwapIntervalERi, ptr @_ZN12GHOST_Window17getNumOfAASamplesEv, ptr @_ZN12GHOST_Window22activateDrawingContextEv, ptr @__cxa_pure_virtual, ptr @_ZNK12GHOST_Window11getUserDataEv, ptr @_ZN12GHOST_Window11setUserDataEPv, ptr @__cxa_pure_virtual, ptr @_ZN12GHOST_Window14setProgressBarEf, ptr @_ZN12GHOST_Window14endProgressBarEv, ptr @_ZNK12GHOST_Window14getCursorShapeEv, ptr @_ZN12GHOST_Window14setCursorShapeE21GHOST_TStandardCursor, ptr @_ZN12GHOST_Window20setCustomCursorShapeEPA2_hS1_ii, ptr @_ZN12GHOST_Window20setCustomCursorShapeEPhS0_iiiiii, ptr @_ZNK12GHOST_Window19getCursorVisibilityEv, ptr @_ZN12GHOST_Window19setCursorVisibilityEb, ptr @_ZN12GHOST_Window13setCursorGrabE21GHOST_TGrabCursorModeP10GHOST_RectPi, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12GHOST_Window18getNativePixelSizeEv, ptr @_ZNK12GHOST_Window17getCursorGrabModeEv, ptr @_ZNK12GHOST_Window23getCursorGrabModeIsWarpEv, ptr @_ZNK12GHOST_Window20getCursorGrabInitPosERiS0_, ptr @_ZNK12GHOST_Window18getCursorGrabAccumERiS0_, ptr @_ZN12GHOST_Window18setCursorGrabAccumEii, ptr @_ZN12GHOST_Window19getCursorGrabBoundsER10GHOST_Rect, ptr @_ZN12GHOST_Window20updateDrawingContextEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12GHOST_Window19setWindowCursorGrabE21GHOST_TGrabCursorMode, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12GHOST_Window = dso_local constant [15 x i8] c"12GHOST_Window\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13GHOST_IWindow = linkonce_odr dso_local constant [16 x i8] c"13GHOST_IWindow\00", comdat, align 1
@_ZTI13GHOST_IWindow = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13GHOST_IWindow }, comdat, align 8
@_ZTI12GHOST_Window = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12GHOST_Window, ptr @_ZTI13GHOST_IWindow }, align 8
@_ZTV13GHOST_IWindow = linkonce_odr dso_local unnamed_addr constant { [45 x ptr] } { [45 x ptr] [ptr null, ptr @_ZTI13GHOST_IWindow, ptr @_ZN13GHOST_IWindowD2Ev, ptr @_ZN13GHOST_IWindowD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN13GHOST_IWindow13setCursorGrabE21GHOST_TGrabCursorModeP10GHOST_RectPi, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV10GHOST_Rect = external unnamed_addr constant { [18 x ptr] }, align 8
@_ZTV17GHOST_ContextNone = external unnamed_addr constant { [11 x ptr] }, align 8
@_ZTV13GHOST_Context = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTI13GHOST_Context, ptr @_ZN13GHOST_ContextD2Ev, ptr @_ZN13GHOST_ContextD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN13GHOST_Context20updateDrawingContextEv, ptr @__cxa_pure_virtual, ptr @_ZN13GHOST_Context15setSwapIntervalEi, ptr @_ZN13GHOST_Context15getSwapIntervalERi] }, comdat, align 8
@_ZTS13GHOST_Context = linkonce_odr dso_local constant [16 x i8] c"13GHOST_Context\00", comdat, align 1
@_ZTI13GHOST_Context = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13GHOST_Context }, comdat, align 8

@_ZN12GHOST_WindowD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12GHOST_WindowD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12GHOST_WindowC2Ejj18GHOST_TWindowStatebbt(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i16 noundef zeroext %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %8 = zext i1 %4 to i8
  tail call void @_ZN13GHOST_IWindowC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [58 x ptr] }, ptr @_ZTV12GHOST_Window, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 3
  store i8 1, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !51
  %12 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7
  tail call void @_ZN10GHOST_RectC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %13 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 8
  store i32 0, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 13
  store i8 %8, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 14
  store i16 %6, ptr %15, align 2, !tbaa !54
  %16 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %17 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14
          to label %18 unwind label %32

18:                                               ; preds = %7
  invoke void @_ZN17GHOST_ContextNoneC2Ebt(ptr noundef nonnull align 8 dereferenceable(28) %17, i1 noundef zeroext false, i16 noundef zeroext 0) #13
          to label %19 unwind label %34

19:                                               ; preds = %18
  store ptr %17, ptr %16, align 8, !tbaa !55
  %20 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 11
  store i8 0, ptr %20, align 2, !tbaa !56
  %21 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 10
  store i8 0, ptr %21, align 1, !tbaa !57
  %22 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 9
  store i8 0, ptr %22, align 4, !tbaa !58
  %23 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6
  store i32 0, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6, i64 1
  store i32 0, ptr %24, align 4, !tbaa !59
  %25 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 17
  store float 1.000000e+00, ptr %25, align 4, !tbaa !60
  %26 = icmp eq i32 %3, 3
  %27 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 12
  %28 = zext i1 %26 to i8
  store i8 %28, ptr %27, align 1, !tbaa !61
  br i1 %26, label %29, label %36

29:                                               ; preds = %19
  %30 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 15
  store i32 %1, ptr %30, align 4, !tbaa !62
  %31 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 16
  store i32 %2, ptr %31, align 8, !tbaa !63
  br label %36

32:                                               ; preds = %7
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %37

34:                                               ; preds = %18
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %17) #15
  br label %37

36:                                               ; preds = %29, %19
  ret void

37:                                               ; preds = %34, %32
  %38 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  tail call void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #12
  tail call void @_ZN13GHOST_IWindowD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_IWindowC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [45 x ptr] }, ptr @_ZTV13GHOST_IWindow, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10GHOST_RectC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV10GHOST_Rect, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  store i32 %2, ptr %7, align 4, !tbaa !65
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  store i32 %3, ptr %8, align 8, !tbaa !66
  %9 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  store i32 %4, ptr %9, align 4, !tbaa !67
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN17GHOST_ContextNoneC2Ebt(ptr noundef nonnull align 8 dereferenceable(28) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN13GHOST_ContextC2Ebt(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) #13
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV17GHOST_ContextNone, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.GHOST_ContextNone, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 8, !tbaa !68
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN12GHOST_WindowD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 {
  store ptr getelementptr inbounds ({ [58 x ptr] }, ptr @_ZTV12GHOST_Window, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7
  tail call void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #12
  tail call void @_ZN13GHOST_IWindowD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN12GHOST_WindowD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12GHOST_Window11getOSWindowEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window21setDrawingContextTypeE25GHOST_TDrawingContextType(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !37
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %8) #12
  br label %14

14:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 8, !tbaa !55
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 50
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) #13
  store ptr %20, ptr %7, align 8, !tbaa !55
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %14, %16
  %23 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14
  %24 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 13
  %25 = load i8, ptr %24, align 8, !tbaa !53, !range !71, !noundef !72
  %26 = icmp ne i8 %25, 0
  %27 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 14
  %28 = load i16, ptr %27, align 2, !tbaa !54
  invoke void @_ZN17GHOST_ContextNoneC2Ebt(ptr noundef nonnull align 8 dereferenceable(28) %23, i1 noundef zeroext %26, i16 noundef zeroext %28) #13
          to label %29 unwind label %30

29:                                               ; preds = %22
  store ptr %23, ptr %7, align 8, !tbaa !55
  br label %32

30:                                               ; preds = %22
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %23) #15
  resume { ptr, i32 } %31

32:                                               ; preds = %16, %29
  %33 = phi i32 [ 0, %29 ], [ %1, %16 ]
  store i32 %33, ptr %3, align 8, !tbaa !37
  %34 = icmp eq i32 %33, %1
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %2, %32
  %37 = phi i32 [ %35, %32 ], [ 1, %2 ]
  ret i32 %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window11swapBuffersEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window15setSwapIntervalEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %1) #13
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window15getSwapIntervalERi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i16 @_ZN12GHOST_Window17getNumOfAASamplesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call noundef zeroext i16 @_ZNK13GHOST_Context17getNumOfAASamplesEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  ret i16 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK13GHOST_Context17getNumOfAASamplesEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !73
  ret i16 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window22activateDrawingContextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20updateDrawingContextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20releaseNativeHandlesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window19setCursorVisibilityEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 51
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = zext i1 %1 to i8
  %10 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 3
  store i8 %9, ptr %10, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window13setCursorGrabE21GHOST_TGrabCursorModeP10GHOST_RectPi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #0 align 2 {
  %5 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !51
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 4, !tbaa !59
  %12 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5
  store i32 %11, ptr %12, align 8, !tbaa !59
  %13 = getelementptr inbounds i32, ptr %3, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5, i64 1
  store i32 %14, ptr %15, align 4, !tbaa !59
  br label %16

16:                                               ; preds = %10, %8
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 52
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7, i32 3
  store i32 -1, ptr %25, align 8, !tbaa !74
  %26 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7, i32 1
  store i32 -1, ptr %26, align 8, !tbaa !75
  br label %36

27:                                               ; preds = %22
  %28 = icmp eq ptr %2, null
  %29 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7
  br i1 %28, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN10GHOST_RectaSERKS_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %2) #12
  br label %36

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %33, i64 9
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %29) #13
  br label %36

36:                                               ; preds = %30, %32, %24
  store i32 %1, ptr %5, align 4, !tbaa !51
  br label %37

37:                                               ; preds = %16, %4, %36
  %38 = phi i32 [ 1, %36 ], [ 1, %4 ], [ 0, %16 ]
  ret i32 %38
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN10GHOST_RectaSERKS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window19getCursorGrabBoundsER10GHOST_Rect(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7
  %4 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN10GHOST_RectaSERKS_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  %5 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = icmp ne i32 %6, -1
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %9, -1
  %11 = select i1 %7, i1 true, i1 %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window14setCursorShapeE21GHOST_TStandardCursor(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 53
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 8
  store i32 %1, ptr %9, align 8, !tbaa !52
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20setCustomCursorShapeEPA2_hS1_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 36
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef 16, i32 noundef 16, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1) #13
  ret i32 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20setCustomCursorShapeEPhS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 {
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 55
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 8
  store i32 22, ptr %16, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %9, %15
  %18 = phi i32 [ 1, %15 ], [ 0, %9 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12GHOST_Window22setAcceptDragOperationEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #7 align 2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 1, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK12GHOST_Window22canAcceptDragOperationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 1, !tbaa !57, !range !71, !noundef !72
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN12GHOST_Window16setModifiedStateEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #7 align 2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 11
  store i8 %3, ptr %4, align 2, !tbaa !56
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12GHOST_Window16getModifiedStateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 2, !tbaa !56, !range !71, !noundef !72
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12GHOST_Window8getValidEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window21getDrawingContextTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !37
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12GHOST_Window11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12GHOST_Window11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window14setProgressBarEf(ptr noundef nonnull align 8 dereferenceable(104) %0, float noundef %1) unnamed_addr #1 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window14endProgressBarEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12GHOST_Window14getCursorShapeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !52
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12GHOST_Window19getCursorVisibilityEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !50, !range !71, !noundef !72
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZN12GHOST_Window18getNativePixelSizeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 17
  %3 = load float, ptr %2, align 4, !tbaa !60
  %4 = fcmp ogt float %3, 0.000000e+00
  %5 = select i1 %4, float %3, float 1.000000e+00
  ret float %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12GHOST_Window17getCursorGrabModeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !51
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12GHOST_Window23getCursorGrabModeIsWarpEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK12GHOST_Window20getCursorGrabInitPosERiS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !59
  store i32 %5, ptr %1, align 4, !tbaa !59
  %6 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  store i32 %7, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK12GHOST_Window18getCursorGrabAccumERiS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !59
  store i32 %5, ptr %1, align 4, !tbaa !59
  %6 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  store i32 %7, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12GHOST_Window18setCursorGrabAccumEii(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6
  store i32 %1, ptr %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6, i64 1
  store i32 %2, ptr %5, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window19setWindowCursorGrabE21GHOST_TGrabCursorMode(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  ret i32 1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_IWindowD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_IWindowD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_IWindow13setCursorGrabE21GHOST_TGrabCursorModeP10GHOST_RectPi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  ret i32 1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_ContextC2Ebt(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #1 comdat align 2 {
  %4 = zext i1 %1 to i8
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV13GHOST_Context, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 1
  store i8 %4, ptr %5, align 8, !tbaa !77
  %6 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 2
  store i16 %2, ptr %6, align 2, !tbaa !73
  %7 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV13GHOST_Context, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  invoke void @mxDestroyContext(ptr noundef %3) #13
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13GHOST_ContextD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context20updateDrawingContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context15setSwapIntervalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context15getSwapIntervalERi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 {
  ret i32 0
}

; Function Attrs: optsize
declare void @mxDestroyContext(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { builtin optsize allocsize(0) }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!38, !40, i64 8}
!38 = !{!"_ZTS12GHOST_Window", !39, i64 0, !40, i64 8, !42, i64 16, !43, i64 24, !44, i64 28, !41, i64 32, !41, i64 40, !45, i64 48, !47, i64 72, !43, i64 76, !43, i64 77, !43, i64 78, !43, i64 79, !43, i64 80, !48, i64 82, !46, i64 84, !46, i64 88, !49, i64 92, !42, i64 96}
!39 = !{!"_ZTS13GHOST_IWindow"}
!40 = !{!"_ZTS25GHOST_TDrawingContextType", !41, i64 0}
!41 = !{!"omnipotent char", !36, i64 0}
!42 = !{!"any pointer", !41, i64 0}
!43 = !{!"bool", !41, i64 0}
!44 = !{!"_ZTS21GHOST_TGrabCursorMode", !41, i64 0}
!45 = !{!"_ZTS10GHOST_Rect", !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20}
!46 = !{!"int", !41, i64 0}
!47 = !{!"_ZTS21GHOST_TStandardCursor", !41, i64 0}
!48 = !{!"short", !41, i64 0}
!49 = !{!"float", !41, i64 0}
!50 = !{!38, !43, i64 24}
!51 = !{!38, !44, i64 28}
!52 = !{!38, !47, i64 72}
!53 = !{!38, !43, i64 80}
!54 = !{!38, !48, i64 82}
!55 = !{!38, !42, i64 96}
!56 = !{!38, !43, i64 78}
!57 = !{!38, !43, i64 77}
!58 = !{!38, !43, i64 76}
!59 = !{!46, !46, i64 0}
!60 = !{!38, !49, i64 92}
!61 = !{!38, !43, i64 79}
!62 = !{!38, !46, i64 84}
!63 = !{!38, !46, i64 88}
!64 = !{!45, !46, i64 8}
!65 = !{!45, !46, i64 12}
!66 = !{!45, !46, i64 16}
!67 = !{!45, !46, i64 20}
!68 = !{!69, !46, i64 24}
!69 = !{!"_ZTS17GHOST_ContextNone", !70, i64 0, !46, i64 24}
!70 = !{!"_ZTS13GHOST_Context", !43, i64 8, !48, i64 10, !42, i64 16}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!70, !48, i64 10}
!74 = !{!38, !46, i64 64}
!75 = !{!38, !46, i64 56}
!76 = !{!38, !42, i64 16}
!77 = !{!70, !43, i64 8}
!78 = !{!70, !42, i64 16}
