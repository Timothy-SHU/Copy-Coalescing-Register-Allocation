; ModuleID = 'blender/intern/ghost/intern/GHOST_C-api.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_C-api.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.STR_String = type { ptr, i32, i32 }
%class.GHOST_Rect = type { ptr, i32, i32, i32, i32 }

@_ZTV10GHOST_Rect = external unnamed_addr constant { [18 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_CreateSystem() local_unnamed_addr #0 {
  %1 = tail call noundef i32 @_ZN13GHOST_ISystem12createSystemEv()
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv()
  ret ptr %2
}

declare noundef i32 @_ZN13GHOST_ISystem12createSystemEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN13GHOST_ISystem9getSystemEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_DisposeSystem(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call noundef i32 @_ZN13GHOST_ISystem13disposeSystemEv()
  ret i32 %2
}

declare noundef i32 @_ZN13GHOST_ISystem13disposeSystemEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @GHOST_CreateEventConsumer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
  invoke void @_ZN27GHOST_CallbackEventConsumerC1EPFiP19GHOST_EventHandle__PvES2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %0, ptr noundef %1)
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %3) #11
  resume { ptr, i32 } %6
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN27GHOST_CallbackEventConsumerC1EPFiP19GHOST_EventHandle__PvES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @GHOST_GetMilliSeconds(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i64 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_InstallTimer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_RemoveTimer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i8 @GHOST_GetNumDisplays(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i8 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %5
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_GetMainDisplayDimensions(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_GetAllDisplayDimensions(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_CreateWindow(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i16 noundef zeroext %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %11 = alloca %class.STR_String, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #12
  call void @_ZN10STR_StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %1)
  %12 = icmp ne i32 %8, 0
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %12, i1 noundef zeroext false, i16 noundef zeroext %9, i32 noundef 0)
          to label %17 unwind label %22

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @_ZdaPv(ptr noundef %18) #11
  br label %21

21:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #12
  ret ptr %16

22:                                               ; preds = %10
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %11, align 8, !tbaa !37
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void @_ZdaPv(ptr noundef %24) #11
  br label %27

27:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #12
  resume { ptr, i32 } %23
}

declare void @_ZN10STR_StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetWindowUserData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 28
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_SetWindowUserData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 29
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_DisposeWindow(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_ValidWindow(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 10
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @GHOST_BeginFullScreen(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !42
  %5 = icmp ne i32 %2, 0
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 11
  %8 = load ptr, ptr %7, align 8
  %9 = call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %4, i1 noundef zeroext %5, i16 noundef zeroext 0)
  %10 = load ptr, ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_EndFullScreen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 13
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetFullScreen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 14
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_ProcessEvents(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3)
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_DispatchEvents(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 17
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_AddEventConsumer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_RemoveEventConsumer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 19
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetProgressBar(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 31
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_EndProgressBar(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 32
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetCursorShape(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 33
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetCursorShape(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 34
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetCustomCursorShape(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 35
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetCustomCursorShapeEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %10, i64 36
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret i32 %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetCursorVisibility(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetCursorVisibility(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 38
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetCursorPosition(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 20
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetCursorPosition(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetCursorGrab(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %5 = alloca %class.GHOST_Rect, align 8
  %6 = alloca %class.GHOST_Rect, align 8
  %7 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV10GHOST_Rect, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !34
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV10GHOST_Rect, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !34
  %9 = getelementptr inbounds %class.GHOST_Rect, ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %class.GHOST_Rect, ptr %6, i64 0, i32 2
  %11 = getelementptr inbounds %class.GHOST_Rect, ptr %6, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %12 = icmp eq ptr %2, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 4
  %15 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 3
  %16 = getelementptr inbounds %class.GHOST_Rect, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = getelementptr inbounds ptr, ptr %17, i64 9
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %20 = load i32, ptr %2, align 4, !tbaa !43
  %21 = load i32, ptr %11, align 4, !tbaa !44
  %22 = load i32, ptr %10, align 4, !tbaa !46
  %23 = getelementptr inbounds i32, ptr %2, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !43
  %25 = add i32 %22, %24
  %26 = sub i32 %21, %25
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = getelementptr inbounds ptr, ptr %27, i64 14
  %29 = load ptr, ptr %28, align 8
  call void %29(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %20, i32 noundef %26, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %16)
  %30 = getelementptr inbounds i32, ptr %2, i64 2
  %31 = load i32, ptr %30, align 4, !tbaa !43
  %32 = load i32, ptr %11, align 4, !tbaa !44
  %33 = load i32, ptr %10, align 4, !tbaa !46
  %34 = getelementptr inbounds i32, ptr %2, i64 3
  %35 = load i32, ptr %34, align 4, !tbaa !43
  %36 = add i32 %33, %35
  %37 = sub i32 %32, %36
  %38 = load ptr, ptr %0, align 8, !tbaa !34
  %39 = getelementptr inbounds ptr, ptr %38, i64 14
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %31, i32 noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %14)
  br label %41

41:                                               ; preds = %13, %4
  %42 = icmp eq ptr %3, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %41
  br i1 %12, label %44, label %48

44:                                               ; preds = %43
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr inbounds ptr, ptr %45, i64 9
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i32, ptr %3, align 4, !tbaa !43
  %50 = load i32, ptr %11, align 4, !tbaa !44
  %51 = load i32, ptr %10, align 4, !tbaa !46
  %52 = getelementptr inbounds i32, ptr %3, i64 1
  %53 = load i32, ptr %52, align 4, !tbaa !43
  %54 = add i32 %51, %53
  %55 = sub i32 %50, %54
  %56 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %57 = load ptr, ptr %0, align 8, !tbaa !34
  %58 = getelementptr inbounds ptr, ptr %57, i64 14
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %49, i32 noundef %55, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %56)
  br label %60

60:                                               ; preds = %48, %41
  %61 = phi ptr [ %7, %48 ], [ null, %41 ]
  %62 = select i1 %12, ptr null, ptr %5
  %63 = load ptr, ptr %0, align 8, !tbaa !34
  %64 = getelementptr inbounds ptr, ptr %63, i64 39
  %65 = load ptr, ptr %64, align 8
  %66 = call noundef i32 %65(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %62, ptr noundef %61)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret i32 %66
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetModifierKeyState(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !tbaa !47
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 22
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %9 = load i8, ptr %4, align 1, !tbaa !47, !range !49, !noundef !50
  %10 = zext nneg i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetButtonState(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !tbaa !47
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %9 = load i8, ptr %4, align 1, !tbaa !47, !range !49, !noundef !50
  %10 = zext nneg i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_setAcceptDragOperation(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp ne i8 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 15
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetEventType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @GHOST_GetEventTime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i64 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i64 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetEventWindow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetEventData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetTimerProc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_SetTimerProc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetTimerTaskUserData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_SetTimerTaskUserData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetValid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetDrawingContextType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetDrawingContextType(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_SetTitle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca %class.STR_String, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN10STR_StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %1)
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  invoke void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %7 unwind label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @_ZdaPv(ptr noundef %8) #11
  br label %11

11:                                               ; preds = %7, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = load ptr, ptr %3, align 8, !tbaa !37
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  call void @_ZdaPv(ptr noundef %14) #11
  br label %17

17:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetTitle(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca %class.STR_String, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @_ZN10STR_StringC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %6 unwind label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.STR_String, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = call noalias ptr @malloc(i64 noundef %10) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %19

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = load ptr, ptr %2, align 8, !tbaa !37
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @_ZdaPv(ptr noundef %15) #11
  br label %18

18:                                               ; preds = %13, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %14

19:                                               ; preds = %6
  %20 = load ptr, ptr %2, align 8, !tbaa !37
  %21 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %20) #12
  br label %22

22:                                               ; preds = %6, %19
  %23 = phi ptr [ %11, %19 ], [ null, %6 ]
  %24 = load ptr, ptr %2, align 8, !tbaa !37
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void @_ZdaPv(ptr noundef %24) #11
  br label %27

27:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret ptr %23
}

declare void @_ZN10STR_StringC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetWindowBounds(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV10GHOST_Rect, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %class.GHOST_Rect, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetClientBounds(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV10GHOST_Rect, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %class.GHOST_Rect, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 9
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
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

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetClientWidth(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 10
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetClientHeight(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetClientSize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_ScreenToClient(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 13
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_ClientToScreen(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 14
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetWindowState(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 17
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetWindowState(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetWindowModifiedState(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp ne i8 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 19
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %3)
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetWindowOrder(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 21
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SwapWindowBuffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 22
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_SetSwapInterval(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetSwapInterval(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i16 @GHOST_GetNumOfAASamples(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i16 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i16 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_ActivateWindowDrawingContext(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 26
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_InvalidateWindow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 27
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_GetTabletData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 30
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetWidthRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetHeightRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GHOST_GetRectangle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #8 {
  %6 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !52
  store i32 %7, ptr %1, align 4, !tbaa !43
  %8 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !46
  store i32 %9, ptr %2, align 4, !tbaa !43
  %10 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !53
  store i32 %11, ptr %3, align 4, !tbaa !43
  %12 = getelementptr inbounds %class.GHOST_Rect, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !44
  store i32 %13, ptr %4, align 4, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_SetRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_IsEmptyRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 5
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_IsValidRectangle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_InsetRectangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_UnionRectangle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_UnionPointRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 9
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_IsInsideRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2)
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_GetRectangleVisibility(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_SetCenterRectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_SetRectangleCenter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %6, i64 14
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_ClipRectangle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 15
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @GHOST_getClipboard(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv()
  %3 = icmp ne i32 %0, 0
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3)
  ret ptr %7
}

; Function Attrs: mustprogress uwtable
define dso_local void @GHOST_putClipboard(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv()
  %4 = icmp ne i32 %1, 0
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_toggleConsole(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv()
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %0)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_confirmQuit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv()
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %3, i64 27
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0)
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @GHOST_UseNativePixels() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN13GHOST_ISystem9getSystemEv()
  %2 = load ptr, ptr %1, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 15
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @GHOST_GetNativePixelSize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %4, i64 42
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef float %6(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi float [ %7, %3 ], [ 1.000000e+00, %1 ]
  ret float %9
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!38 = !{!"_ZTS10STR_String", !39, i64 0, !41, i64 8, !41, i64 12}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !36, i64 0}
!41 = !{!"int", !40, i64 0}
!42 = !{!39, !39, i64 0}
!43 = !{!41, !41, i64 0}
!44 = !{!45, !41, i64 20}
!45 = !{!"_ZTS10GHOST_Rect", !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!46 = !{!45, !41, i64 12}
!47 = !{!48, !48, i64 0}
!48 = !{!"bool", !40, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!38, !41, i64 8}
!52 = !{!45, !41, i64 8}
!53 = !{!45, !41, i64 16}
