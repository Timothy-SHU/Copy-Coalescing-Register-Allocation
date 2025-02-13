; ModuleID = 'blender/intern/ghost/intern/GHOST_C-api.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_C-api.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.STR_String = type { ptr, i32, i32 }
%class.GHOST_Rect = type { ptr, i32, i32, i32, i32 }

$_ZN10STR_StringD2Ev = comdat any

$_ZN10GHOST_RectC2Eiiii = comdat any

$_ZNK10GHOST_Rect9getHeightEv = comdat any

$_ZN10GHOST_RectD2Ev = comdat any

$_ZNK10STR_String6LengthEv = comdat any

$_ZN10STR_String3PtrEv = comdat any

@_ZTV10GHOST_Rect = external unnamed_addr constant { [18 x ptr] }, align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_CreateSystem() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_ZN13GHOST_ISystem12createSystemEv() #9
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv() #9
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN13GHOST_ISystem12createSystemEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare noundef ptr @_ZN13GHOST_ISystem9getSystemEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_DisposeSystem(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN13GHOST_ISystem13disposeSystemEv() #9
  ret i32 %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN13GHOST_ISystem13disposeSystemEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @GHOST_CreateEventConsumer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
  invoke void @_ZN27GHOST_CallbackEventConsumerC1EPFiP19GHOST_EventHandle__PvES2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %0, ptr noundef %1) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %3) #11
  resume { ptr, i32 } %6
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN27GHOST_CallbackEventConsumerC1EPFiP19GHOST_EventHandle__PvES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @GHOST_DisposeEventConsumer(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  br label %7

7:                                                ; preds = %3, %1
  ret i32 1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @GHOST_GetMilliSeconds(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i64 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_InstallTimer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #9
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_RemoveTimer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i8 @GHOST_GetNumDisplays(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i8 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i8 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_GetMainDisplayDimensions(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_GetAllDisplayDimensions(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_CreateWindow(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i16 noundef zeroext %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %11 = alloca %class.STR_String, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @_ZN10STR_StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %1) #9
  %12 = icmp ne i32 %8, 0
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %12, i1 noundef zeroext false, i16 noundef zeroext %9, i32 noundef 0) #9
          to label %17 unwind label %18

17:                                               ; preds = %10
  call void @_ZN10STR_StringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  ret ptr %16

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10STR_StringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare void @_ZN10STR_StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10STR_StringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetWindowUserData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 28
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_SetWindowUserData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 29
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_DisposeWindow(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_ValidWindow(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 10
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local ptr @GHOST_BeginFullScreen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !42
  %5 = icmp ne i32 %2, 0
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 11
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %4, i1 noundef zeroext %5, i16 noundef zeroext 0) #9
  %10 = load ptr, ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_EndFullScreen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 13
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetFullScreen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 14
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_ProcessEvents(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3) #9
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_DispatchEvents(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 17
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_AddEventConsumer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_RemoveEventConsumer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetProgressBar(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 31
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_EndProgressBar(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetCursorShape(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 33
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetCursorShape(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 34
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetCustomCursorShape(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 35
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #9
  ret i32 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetCustomCursorShapeEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 36
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #9
  ret i32 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetCursorVisibility(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetCursorVisibility(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 38
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3) #9
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetCursorPosition(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 20
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #9
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetCursorPosition(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #9
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetCursorGrab(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %5 = alloca %class.GHOST_Rect, align 8
  %6 = alloca %class.GHOST_Rect, align 8
  %7 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @_ZN10GHOST_RectC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @_ZN10GHOST_RectC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %8 = icmp eq ptr %2, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %6) #9
          to label %13 unwind label %36

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4, !tbaa !43
  %15 = call noundef i32 @_ZNK10GHOST_Rect9getHeightEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  %16 = getelementptr inbounds i32, ptr %2, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = sub nsw i32 %15, %17
  %19 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr inbounds ptr, ptr %21, i64 14
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %14, i32 noundef %18, ptr noundef nonnull align 4 dereferenceable(4) %19, ptr noundef nonnull align 4 dereferenceable(4) %20) #9
          to label %24 unwind label %36

24:                                               ; preds = %13
  %25 = getelementptr inbounds i32, ptr %2, i64 2
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = call noundef i32 @_ZNK10GHOST_Rect9getHeightEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  %28 = getelementptr inbounds i32, ptr %2, i64 3
  %29 = load i32, ptr %28, align 4, !tbaa !43
  %30 = sub nsw i32 %27, %29
  %31 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 3
  %32 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 4
  %33 = load ptr, ptr %0, align 8, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %33, i64 14
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %26, i32 noundef %30, ptr noundef nonnull align 4 dereferenceable(4) %31, ptr noundef nonnull align 4 dereferenceable(4) %32) #9
          to label %40 unwind label %36

36:                                               ; preds = %56, %46, %42, %24, %13, %9
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  resume { ptr, i32 } %37

38:                                               ; preds = %4
  %39 = icmp eq ptr %3, null
  br i1 %39, label %56, label %42

40:                                               ; preds = %24
  %41 = icmp eq ptr %3, null
  br i1 %41, label %56, label %46

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 8, !tbaa !34
  %44 = getelementptr inbounds ptr, ptr %43, i64 9
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %6) #9
          to label %46 unwind label %36

46:                                               ; preds = %40, %42
  %47 = load i32, ptr %3, align 4, !tbaa !43
  %48 = call noundef i32 @_ZNK10GHOST_Rect9getHeightEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #9
  %49 = getelementptr inbounds i32, ptr %3, i64 1
  %50 = load i32, ptr %49, align 4, !tbaa !43
  %51 = sub nsw i32 %48, %50
  %52 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = getelementptr inbounds ptr, ptr %53, i64 14
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %47, i32 noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %52) #9
          to label %56 unwind label %36

56:                                               ; preds = %40, %46, %38
  %57 = phi ptr [ %7, %46 ], [ null, %38 ], [ null, %40 ]
  %58 = select i1 %8, ptr null, ptr %5
  %59 = load ptr, ptr %0, align 8, !tbaa !34
  %60 = getelementptr inbounds ptr, ptr %59, i64 39
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef i32 %61(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %58, ptr noundef %57) #9
          to label %63 unwind label %36

63:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret i32 %62
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10GHOST_RectC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 comdat align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV10GHOST_Rect, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  store i32 %2, ptr %7, align 4, !tbaa !46
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  store i32 %3, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  store i32 %4, ptr %9, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10GHOST_Rect9getHeightEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !48
  %4 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10GHOST_RectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetModifierKeyState(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !tbaa !49
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 22
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #9
  %9 = load i8, ptr %4, align 1, !tbaa !49, !range !51, !noundef !52
  %10 = zext nneg i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetButtonState(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !tbaa !49
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #9
  %9 = load i8, ptr %4, align 1, !tbaa !49, !range !51, !noundef !52
  %10 = zext nneg i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_setAcceptDragOperation(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp ne i8 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 15
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetEventType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @GHOST_GetEventTime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i64 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetEventWindow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetEventData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetTimerProc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_SetTimerProc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetTimerTaskUserData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_SetTimerTaskUserData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetValid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetDrawingContextType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetDrawingContextType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_SetTitle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %class.STR_String, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @_ZN10STR_StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %1) #9
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #9
          to label %7 unwind label %8

7:                                                ; preds = %2
  call void @_ZN10STR_StringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10STR_StringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetTitle(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %class.STR_String, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  call void @_ZN10STR_StringC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #9
          to label %6 unwind label %12

6:                                                ; preds = %1
  %7 = call noundef i32 @_ZNK10STR_String6LengthEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = call noalias ptr @malloc(i64 noundef %9) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %14

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10STR_StringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %6
  %15 = call noundef ptr @_ZN10STR_String3PtrEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %15) #12
  br label %17

17:                                               ; preds = %6, %14
  call void @_ZN10STR_StringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret ptr %10
}

; Function Attrs: optsize
declare void @_ZN10STR_StringC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10STR_String6LengthEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !53
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10STR_String3PtrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetWindowBounds(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
  tail call void @_ZN10GHOST_RectC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetClientBounds(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
  tail call void @_ZN10GHOST_RectC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @GHOST_DisposeRectangle(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetClientWidth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 10
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetClientHeight(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetClientSize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) #9
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_ScreenToClient(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 13
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_ClientToScreen(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 14
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetWindowState(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 17
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetWindowState(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetWindowModifiedState(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ne i8 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 19
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3) #9
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetWindowOrder(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 21
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SwapWindowBuffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 22
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_SetSwapInterval(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetSwapInterval(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @GHOST_GetNumOfAASamples(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i16 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i16 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 26
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_InvalidateWindow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 27
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_GetTabletData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetWidthRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetHeightRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @GHOST_GetRectangle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #8 {
  %6 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !44
  store i32 %7, ptr %1, align 4, !tbaa !43
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !46
  store i32 %9, ptr %2, align 4, !tbaa !43
  %10 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !47
  store i32 %11, ptr %3, align 4, !tbaa !43
  %12 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !48
  store i32 %13, ptr %4, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_SetRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_IsEmptyRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_IsValidRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_InsetRectangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_UnionRectangle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_UnionPointRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 9
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_IsInsideRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) #9
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_GetRectangleVisibility(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_SetCenterRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_SetRectangleCenter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 14
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_ClipRectangle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 15
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @GHOST_getClipboard(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv() #9
  %3 = icmp ne i32 %0, 0
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) #9
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @GHOST_putClipboard(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv() #9
  %4 = icmp ne i32 %1, 0
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, i1 noundef zeroext %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_toggleConsole(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv() #9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %0) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_confirmQuit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv() #9
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 27
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #9
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @GHOST_UseNativePixels() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv() #9
  %2 = load ptr, ptr %1, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 15
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @GHOST_GetNativePixelSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 42
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef float %6(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi float [ %7, %3 ], [ 1.000000e+00, %1 ]
  ret float %9
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { builtin optsize allocsize(0) }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize allocsize(0) }

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
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTS10STR_String", !39, i64 0, !41, i64 8, !41, i64 12}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !36, i64 0}
!41 = !{!"int", !40, i64 0}
!42 = !{!39, !39, i64 0}
!43 = !{!41, !41, i64 0}
!44 = !{!45, !41, i64 8}
!45 = !{!"_ZTS10GHOST_Rect", !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!46 = !{!45, !41, i64 12}
!47 = !{!45, !41, i64 16}
!48 = !{!45, !41, i64 20}
!49 = !{!50, !50, i64 0}
!50 = !{!"bool", !40, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!38, !41, i64 8}
