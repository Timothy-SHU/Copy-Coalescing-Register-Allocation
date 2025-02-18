; ModuleID = 'spec_gl.c'
source_filename = "spec_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [70 x i8] c"[SPEC ERROR]: gl calls should not be invoked for blender SPEC builds\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glAlphaFunc(i32 noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glBegin(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glBindTexture(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glBitmap(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nocapture noundef readnone %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @stderr, align 8, !tbaa !34
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %8) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glBlendFunc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glCallList(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glClear(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glClearColor(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glClearDepth(double noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glClipPlane(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor3fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor3ub(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor3ubv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor4f(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor4fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor4ub(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColor4ubv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColorMask(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColorMaterial(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glColorPointer(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glCopyTexSubImage2D(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %9) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glCullFace(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDeleteLists(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDeleteTextures(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDepthFunc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDepthMask(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDepthRange(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDisable(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDisableClientState(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDrawArrays(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDrawBuffer(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDrawElements(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glDrawPixels(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %6) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glEnable(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glEnableClientState(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glEnd() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glEndList() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glFinish() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glFlush() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glFrontFace(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glFrustum(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %8 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %7) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @glGenLists(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGenTextures(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetBooleanv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetDoublev(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @glGetError() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetFloatv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetIntegerv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetMaterialfv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noalias noundef nonnull ptr @glGetString(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetTexEnviv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetTexImage(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %6) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetTexLevelParameteriv(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glInitNames() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef zeroext i8 @glIsEnabled(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef zeroext i8 @glIsTexture(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLightModeli(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLightf(i32 noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLightfv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLineStipple(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLineWidth(float noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLoadIdentity() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLoadMatrixf(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLoadName(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glLogicOp(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glMaterialfv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glMateriali(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glMatrixMode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glMultMatrixd(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glMultMatrixf(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glNewList(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glNormal3fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glNormal3sv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glNormalPointer(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glOrtho(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @stderr, align 8, !tbaa !34
  %8 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %7) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPixelStorei(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPixelTransferf(i32 noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPixelTransferi(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPixelZoom(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPointSize(float noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPolygonMode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPolygonOffset(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPolygonStipple(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPopAttrib() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPopClientAttrib() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPopMatrix() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPopName() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPushAttrib(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPushClientAttrib(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPushMatrix() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !34
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %1) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glPushName(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glRasterPos2f(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glRasterPos2fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glRasterPos3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glRasterPos3fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glReadBuffer(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glReadPixels(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readnone %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @stderr, align 8, !tbaa !34
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %8) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glRectf(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glRecti(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @glRenderMode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glRotatef(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glScalef(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glScissor(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glSelectBuffer(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glShadeModel(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexCoord2d(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexCoord2f(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexCoord2fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexCoord3d(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexCoord3fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexCoordPointer(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexEnvf(i32 noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexEnvfv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexEnvi(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexGeni(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexImage1D(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readnone %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr @stderr, align 8, !tbaa !34
  %10 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %9) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexImage2D(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readnone %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr @stderr, align 8, !tbaa !34
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %10) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexParameterf(i32 noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glGetTexParameterfv(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexParameteri(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexSubImage1D(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readnone %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr @stderr, align 8, !tbaa !34
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %8) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTexSubImage2D(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readnone %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr @stderr, align 8, !tbaa !34
  %11 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %10) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glTranslatef(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex2f(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex2fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex2i(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex2iv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex2s(i16 noundef signext %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !34
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %3) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex2sv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex3dv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %4) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertex3fv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %2) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glVertexPointer(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @glViewport(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 69, i64 1, ptr %5) #3
  tail call void @exit(i32 noundef -1) #4
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold }
attributes #4 = { noreturn nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
