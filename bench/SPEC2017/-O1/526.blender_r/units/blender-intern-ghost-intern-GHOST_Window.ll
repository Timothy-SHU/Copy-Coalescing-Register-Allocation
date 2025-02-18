; ModuleID = 'blender/intern/ghost/intern/GHOST_Window.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_Window.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_Window = type { %class.GHOST_IWindow, i32, ptr, i8, i32, [2 x i32], [2 x i32], %class.GHOST_Rect, i32, i8, i8, i8, i8, i8, i16, i32, i32, float, ptr }
%class.GHOST_IWindow = type { ptr }
%class.GHOST_Rect = type { ptr, i32, i32, i32, i32 }
%class.GHOST_Context = type { ptr, i8, i16, ptr }
%class.GHOST_ContextNone = type <{ %class.GHOST_Context, i32, [4 x i8] }>

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

$_ZN13GHOST_ContextD2Ev = comdat any

$_ZN13GHOST_ContextD0Ev = comdat any

$_ZN13GHOST_Context20updateDrawingContextEv = comdat any

$_ZN13GHOST_Context15setSwapIntervalEi = comdat any

$_ZN13GHOST_Context15getSwapIntervalERi = comdat any

$__clang_call_terminate = comdat any

$_ZTS13GHOST_IWindow = comdat any

$_ZTI13GHOST_IWindow = comdat any

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
@_ZTV10GHOST_Rect = external unnamed_addr constant { [18 x ptr] }, align 8
@_ZTV17GHOST_ContextNone = external unnamed_addr constant { [11 x ptr] }, align 8
@_ZTV13GHOST_Context = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTI13GHOST_Context, ptr @_ZN13GHOST_ContextD2Ev, ptr @_ZN13GHOST_ContextD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN13GHOST_Context20updateDrawingContextEv, ptr @__cxa_pure_virtual, ptr @_ZN13GHOST_Context15setSwapIntervalEi, ptr @_ZN13GHOST_Context15getSwapIntervalERi] }, comdat, align 8
@_ZTS13GHOST_Context = linkonce_odr dso_local constant [16 x i8] c"13GHOST_Context\00", comdat, align 1
@_ZTI13GHOST_Context = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13GHOST_Context }, comdat, align 8

@_ZN12GHOST_WindowD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12GHOST_WindowD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GHOST_WindowC2Ejj18GHOST_TWindowStatebbt(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i16 noundef zeroext %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %8 = zext i1 %4 to i8
  store ptr getelementptr inbounds ({ [58 x ptr] }, ptr @_ZTV12GHOST_Window, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 3
  store i8 1, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !51
  %12 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV10GHOST_Rect, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7, i32 1
  %14 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, i8 0, i64 20, i1 false)
  store i8 %8, ptr %14, align 8, !tbaa !52
  %15 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 14
  store i16 %6, ptr %15, align 2, !tbaa !53
  %16 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %17 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV13GHOST_Context, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds %class.GHOST_Context, ptr %17, i64 0, i32 1
  store i8 0, ptr %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %class.GHOST_Context, ptr %17, i64 0, i32 2
  store i16 0, ptr %19, align 2, !tbaa !56
  %20 = getelementptr inbounds %class.GHOST_Context, ptr %17, i64 0, i32 3
  store ptr null, ptr %20, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV17GHOST_ContextNone, i64 0, inrange i32 0, i64 2), ptr %17, align 8, !tbaa !34
  %21 = getelementptr inbounds %class.GHOST_ContextNone, ptr %17, i64 0, i32 1
  store i32 1, ptr %21, align 8, !tbaa !58
  store ptr %17, ptr %16, align 8, !tbaa !60
  %22 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 11
  store i8 0, ptr %22, align 2, !tbaa !61
  %23 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 10
  store i8 0, ptr %23, align 1, !tbaa !62
  %24 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 9
  store i8 0, ptr %24, align 4, !tbaa !63
  %25 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6
  store i32 0, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6, i64 1
  store i32 0, ptr %26, align 4, !tbaa !64
  %27 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 17
  store float 1.000000e+00, ptr %27, align 4, !tbaa !65
  %28 = icmp eq i32 %3, 3
  %29 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 12
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 1, !tbaa !66
  br i1 %28, label %31, label %34

31:                                               ; preds = %7
  %32 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 15
  store i32 %1, ptr %32, align 4, !tbaa !67
  %33 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 16
  store i32 %2, ptr %33, align 8, !tbaa !68
  br label %34

34:                                               ; preds = %31, %7
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12GHOST_WindowD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 align 2 {
  store ptr getelementptr inbounds ({ [58 x ptr] }, ptr @_ZTV12GHOST_Window, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN12GHOST_WindowD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK12GHOST_Window11getOSWindowEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 {
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window21setDrawingContextTypeE25GHOST_TDrawingContextType(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !37
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  br label %14

14:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 8, !tbaa !60
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 50
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1)
  store ptr %20, ptr %7, align 8, !tbaa !60
  br label %21

21:                                               ; preds = %16, %14
  %22 = load ptr, ptr %7, align 8, !tbaa !60
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
  %26 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 13
  %27 = load i8, ptr %26, align 8, !tbaa !52, !range !69, !noundef !70
  %28 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 14
  %29 = load i16, ptr %28, align 2, !tbaa !53
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV13GHOST_Context, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !34
  %30 = getelementptr inbounds %class.GHOST_Context, ptr %25, i64 0, i32 1
  store i8 %27, ptr %30, align 8, !tbaa !54
  %31 = getelementptr inbounds %class.GHOST_Context, ptr %25, i64 0, i32 2
  store i16 %29, ptr %31, align 2, !tbaa !56
  %32 = getelementptr inbounds %class.GHOST_Context, ptr %25, i64 0, i32 3
  store ptr null, ptr %32, align 8, !tbaa !57
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV17GHOST_ContextNone, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !34
  %33 = getelementptr inbounds %class.GHOST_ContextNone, ptr %25, i64 0, i32 1
  store i32 1, ptr %33, align 8, !tbaa !58
  store ptr %25, ptr %7, align 8, !tbaa !60
  br label %34

34:                                               ; preds = %21, %24
  %35 = phi i32 [ 0, %24 ], [ %1, %21 ]
  store i32 %35, ptr %3, align 8, !tbaa !37
  %36 = icmp eq i32 %35, %1
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %2, %34
  %39 = phi i32 [ %37, %34 ], [ 1, %2 ]
  ret i32 %39
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window11swapBuffersEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window15setSwapIntervalEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %1)
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window15getSwapIntervalERi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i16 @_ZN12GHOST_Window17getNumOfAASamplesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %class.GHOST_Context, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !56
  ret i16 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window22activateDrawingContextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20updateDrawingContextEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20releaseNativeHandlesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window19setCursorVisibilityEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 51
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1)
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

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window13setCursorGrabE21GHOST_TGrabCursorModeP10GHOST_RectPi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) unnamed_addr #0 align 2 {
  %5 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !51
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %3, align 4, !tbaa !64
  %12 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5
  store i32 %11, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds i32, ptr %3, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !64
  %15 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5, i64 1
  store i32 %14, ptr %15, align 4, !tbaa !64
  br label %16

16:                                               ; preds = %10, %8
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 52
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7, i32 3
  store i32 -1, ptr %25, align 8, !tbaa !71
  %26 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7, i32 1
  store i32 -1, ptr %26, align 8, !tbaa !72
  br label %37

27:                                               ; preds = %22
  %28 = icmp eq ptr %2, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7, i32 1
  %31 = getelementptr inbounds %class.GHOST_Rect, ptr %2, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false)
  br label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 9
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %33)
  br label %37

37:                                               ; preds = %29, %32, %24
  store i32 %1, ptr %5, align 4, !tbaa !51
  br label %38

38:                                               ; preds = %16, %4, %37
  %39 = phi i32 [ 1, %37 ], [ 1, %4 ], [ 0, %16 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN12GHOST_Window19getCursorGrabBoundsER10GHOST_Rect(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0, ptr nocapture noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 7, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %5 = load i32, ptr %3, align 8, !tbaa !73
  %6 = icmp ne i32 %5, -1
  %7 = getelementptr inbounds %class.GHOST_Rect, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ne i32 %8, -1
  %10 = select i1 %6, i1 true, i1 %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window14setCursorShapeE21GHOST_TStandardCursor(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 53
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 8
  store i32 %1, ptr %9, align 8, !tbaa !74
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20setCustomCursorShapeEPA2_hS1_ii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 36
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef 16, i32 noundef 16, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 1)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN12GHOST_Window20setCustomCursorShapeEPhS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 {
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 55
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 8
  store i32 22, ptr %16, align 8, !tbaa !74
  br label %17

17:                                               ; preds = %9, %15
  %18 = phi i32 [ 1, %15 ], [ 0, %9 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12GHOST_Window22setAcceptDragOperationEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 1, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK12GHOST_Window22canAcceptDragOperationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 1, !tbaa !62, !range !69, !noundef !70
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN12GHOST_Window16setModifiedStateEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 11
  store i8 %3, ptr %4, align 2, !tbaa !61
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12GHOST_Window16getModifiedStateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 2, !tbaa !61, !range !69, !noundef !70
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12GHOST_Window8getValidEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window21getDrawingContextTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !37
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12GHOST_Window11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12GHOST_Window11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  %3 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window14setProgressBarEf(ptr noundef nonnull align 8 dereferenceable(104) %0, float noundef %1) unnamed_addr #2 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window14endProgressBarEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12GHOST_Window14getCursorShapeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !74
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12GHOST_Window19getCursorVisibilityEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !50, !range !69, !noundef !70
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZN12GHOST_Window18getNativePixelSizeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 17
  %3 = load float, ptr %2, align 4, !tbaa !65
  %4 = fcmp ogt float %3, 0.000000e+00
  %5 = select i1 %4, float %3, float 1.000000e+00
  ret float %5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12GHOST_Window17getCursorGrabModeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !51
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12GHOST_Window23getCursorGrabModeIsWarpEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #10 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  ret i1 %5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK12GHOST_Window20getCursorGrabInitPosERiS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #10 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !64
  store i32 %5, ptr %1, align 4, !tbaa !64
  %6 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 5, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !64
  store i32 %7, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK12GHOST_Window18getCursorGrabAccumERiS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #10 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !64
  store i32 %5, ptr %1, align 4, !tbaa !64
  %6 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !64
  store i32 %7, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12GHOST_Window18setCursorGrabAccumEii(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 comdat align 2 {
  %4 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6
  store i32 %1, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %class.GHOST_Window, ptr %0, i64 0, i32 6, i64 1
  store i32 %2, ptr %5, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN12GHOST_Window19setWindowCursorGrabE21GHOST_TGrabCursorMode(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13GHOST_ContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTV13GHOST_Context, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_Context, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  invoke void @mxDestroyContext(ptr noundef %3)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13GHOST_ContextD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context20updateDrawingContextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context15setSwapIntervalEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN13GHOST_Context15getSwapIntervalERi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 {
  ret i32 0
}

declare void @mxDestroyContext(ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

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
!52 = !{!38, !43, i64 80}
!53 = !{!38, !48, i64 82}
!54 = !{!55, !43, i64 8}
!55 = !{!"_ZTS13GHOST_Context", !43, i64 8, !48, i64 10, !42, i64 16}
!56 = !{!55, !48, i64 10}
!57 = !{!55, !42, i64 16}
!58 = !{!59, !46, i64 24}
!59 = !{!"_ZTS17GHOST_ContextNone", !55, i64 0, !46, i64 24}
!60 = !{!38, !42, i64 96}
!61 = !{!38, !43, i64 78}
!62 = !{!38, !43, i64 77}
!63 = !{!38, !43, i64 76}
!64 = !{!46, !46, i64 0}
!65 = !{!38, !49, i64 92}
!66 = !{!38, !43, i64 79}
!67 = !{!38, !46, i64 84}
!68 = !{!38, !46, i64 88}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!38, !46, i64 64}
!72 = !{!38, !46, i64 56}
!73 = !{!45, !46, i64 8}
!74 = !{!38, !47, i64 72}
!75 = !{!38, !42, i64 16}
