; ModuleID = 'blender/source/blender/editors/screen/glutil.c'
source_filename = "blender/source/blender/editors/screen/glutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@stipple_halftone = dso_local local_unnamed_addr constant [128 x i8] c"\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU\AA\AA\AA\AAUUUU", align 16
@stipple_quarttone = dso_local local_unnamed_addr constant [128 x i8] c"\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00\88\88\88\88\00\00\00\00\22\22\22\22\00\00\00\00", align 16
@stipple_diag_stripes_pos = dso_local local_unnamed_addr constant [128 x i8] c"\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F", align 16
@stipple_diag_stripes_neg = dso_local local_unnamed_addr constant [128 x i8] c"\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80\FF\00\FF\00\FE\01\FE\01\FC\03\FC\03\F8\07\F8\07\F0\0F\F0\0F\E0\1F\E0\1F\C0?\C0?\80\7F\80\7F\00\FF\00\FF\01\FE\01\FE\03\FC\03\FC\07\F8\07\F8\0F\F0\0F\F0\1F\E0\1F\E0?\C0?\C0\7F\80\7F\80", align 16
@stipple_checker_8px = dso_local constant [128 x i8] c"\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF\00\FF", align 16
@U = external local_unnamed_addr global %struct.UserDef, align 8
@curmode = internal unnamed_addr global i32 0, align 4
@pointhack = internal unnamed_addr global i32 0, align 4
@Squaredot = internal global [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@bglPolygonOffset.winmat = internal global [16 x float] zeroinitializer, align 16
@bglPolygonOffset.offset = internal unnamed_addr global float 0.000000e+00, align 4
@get_cached_work_texture.texid = internal global i32 -1, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"tbuf\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@switch.table.glaDrawPixelsTexScaled = private unnamed_addr constant [4 x i32] [i32 1, i32 3, i32 4, i32 1], align 4

; Function Attrs: nounwind uwtable
define dso_local void @fdrawline(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  tail call void @glBegin(i32 noundef 3) #6
  store float %0, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  store float %2, ptr %5, align 4, !tbaa !34
  store float %3, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  call void @glEnd() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @fdrawbox(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  tail call void @glBegin(i32 noundef 3) #6
  store float %0, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  store float %0, ptr %5, align 4, !tbaa !34
  store float %3, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  store float %2, ptr %5, align 4, !tbaa !34
  store float %3, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  store float %2, ptr %5, align 4, !tbaa !34
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  store float %0, ptr %5, align 4, !tbaa !34
  store float %1, ptr %6, align 4, !tbaa !34
  call void @glVertex2fv(ptr noundef nonnull %5) #6
  call void @glEnd() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fdrawcheckerboard(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 2631720, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 3289650, ptr %6, align 4
  call void @glColor3ubv(ptr noundef nonnull %5) #6
  call void @glRectf(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #6
  call void @glColor3ubv(ptr noundef nonnull %6) #6
  call void @glEnable(i32 noundef 2882) #6
  call void @glPolygonStipple(ptr noundef nonnull @stipple_checker_8px) #6
  call void @glRectf(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #6
  call void @glDisable(i32 noundef 2882) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret void
}

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glPolygonStipple(ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sdrawline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  tail call void @glBegin(i32 noundef 3) #6
  store i32 %0, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #6
  store i32 %2, ptr %5, align 4, !tbaa !38
  store i32 %3, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #6
  call void @glEnd() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @sdrawbox(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  tail call void @glBegin(i32 noundef 3) #6
  store i32 %0, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #6
  store i32 %0, ptr %5, align 4, !tbaa !38
  store i32 %3, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #6
  store i32 %2, ptr %5, align 4, !tbaa !38
  store i32 %3, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #6
  store i32 %2, ptr %5, align 4, !tbaa !38
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #6
  store i32 %0, ptr %5, align 4, !tbaa !38
  store i32 %1, ptr %6, align 4, !tbaa !38
  call void @glVertex2iv(ptr noundef nonnull %5) #6
  call void @glEnd() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @setlinestyle(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @glDisable(i32 noundef 2852) #6
  br label %9

4:                                                ; preds = %1
  tail call void @glEnable(i32 noundef 2852) #6
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !40
  %6 = fcmp ogt float %5, 1.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @glLineStipple(i32 noundef %0, i16 noundef zeroext -13108) #6
  br label %9

8:                                                ; preds = %4
  tail call void @glLineStipple(i32 noundef %0, i16 noundef zeroext -21846) #6
  br label %9

9:                                                ; preds = %7, %8, %3
  ret void
}

declare void @glLineStipple(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_inverted_drawing(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, i32 5379, i32 5386
  tail call void @glLogicOp(i32 noundef %3) #6
  %4 = select i1 %2, ptr @glDisable, ptr @glEnable
  tail call void %4(i32 noundef 3058) #6, !callees !47
  %5 = select i1 %2, ptr @glEnable, ptr @glDisable
  tail call void %5(i32 noundef 3024) #6, !callees !47
  ret void
}

declare void @glLogicOp(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fdrawXORcirc(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  tail call void @glLogicOp(i32 noundef 5386) #6
  tail call void @glEnable(i32 noundef 3058) #6, !callees !47
  tail call void @glDisable(i32 noundef 3024) #6, !callees !47
  tail call void @glPushMatrix() #6
  tail call void @glTranslatef(float noundef %0, float noundef %1, float noundef 0.000000e+00) #6
  tail call void @glBegin(i32 noundef 3) #6
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi i32 [ 0, %3 ], [ %13, %4 ]
  %6 = sitofp i32 %5 to float
  %7 = fdiv float %6, 1.900000e+01
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 0x401921FB60000000, float 0.000000e+00)
  %9 = tail call float @cosf(float noundef %8) #6
  %10 = fmul float %9, %2
  %11 = tail call float @sinf(float noundef %8) #6
  %12 = fmul float %11, %2
  tail call void @glVertex2f(float noundef %10, float noundef %12) #6
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, 20
  br i1 %14, label %15, label %4, !llvm.loop !48

15:                                               ; preds = %4
  tail call void @glEnd() #6
  tail call void @glPopMatrix() #6
  tail call void @glLogicOp(i32 noundef 5379) #6
  tail call void @glDisable(i32 noundef 3058) #6, !callees !47
  tail call void @glEnable(i32 noundef 3024) #6, !callees !47
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glutil_draw_lined_arc(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 3) #6
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sitofp i32 %7 to float
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ 0, %6 ], [ %18, %9 ]
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, %8
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %1, float %0)
  %14 = tail call float @cosf(float noundef %13) #6
  %15 = fmul float %14, %2
  %16 = tail call float @sinf(float noundef %13) #6
  %17 = fmul float %16, %2
  tail call void @glVertex2f(float noundef %15, float noundef %17) #6
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %9, !llvm.loop !48

20:                                               ; preds = %9, %4
  tail call void @glEnd() #6
  ret void
}

declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glutil_draw_filled_arc(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 6) #6
  tail call void @glVertex2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #6
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %4
  %7 = add nsw i32 %3, -1
  %8 = sitofp i32 %7 to float
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ 0, %6 ], [ %18, %9 ]
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, %8
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %1, float %0)
  %14 = tail call float @cosf(float noundef %13) #6
  %15 = fmul float %14, %2
  %16 = tail call float @sinf(float noundef %13) #6
  %17 = fmul float %16, %2
  tail call void @glVertex2f(float noundef %15, float noundef %17) #6
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %9, !llvm.loop !51

20:                                               ; preds = %9, %4
  tail call void @glEnd() #6
  ret void
}

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @glaGetOneInteger(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @glGetIntegerv(i32 noundef %0, ptr noundef nonnull %2) #6
  %3 = load i32, ptr %2, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %3
}

declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @glaGetOneFloat(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  call void @glGetFloatv(i32 noundef %0, ptr noundef nonnull %2) #6
  %3 = load float, ptr %2, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret float %3
}

declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaRasterPosSafe2f(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !tbaa !52
  tail call void @glRasterPos2f(float noundef %2, float noundef %3) #6
  %6 = fsub float %0, %2
  %7 = fsub float %1, %3
  call void @glBitmap(i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %6, float noundef %7, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  ret void
}

declare void @glRasterPos2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glBitmap(i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaDrawPixelsTexScaled(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  call void @glGetFloatv(i32 noundef 3350, ptr noundef nonnull %15) #6
  %16 = load float, ptr %15, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  call void @glGetFloatv(i32 noundef 3351, ptr noundef nonnull %14) #6
  %17 = load float, ptr %14, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  call void @glGetIntegerv(i32 noundef 3553, ptr noundef nonnull %13) #6
  %18 = load i32, ptr %13, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  call void @glGetIntegerv(i32 noundef 3314, ptr noundef nonnull %12) #6
  %19 = load i32, ptr %12, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  %20 = load i32, ptr @get_cached_work_texture.texid, align 4, !tbaa !38
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  call void @glGetIntegerv(i32 noundef 3553, ptr noundef nonnull %11) #6
  %23 = load i32, ptr %11, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  call void @glGenTextures(i32 noundef 1, ptr noundef nonnull @get_cached_work_texture.texid) #6
  %24 = load i32, ptr @get_cached_work_texture.texid, align 4, !tbaa !38
  call void @glBindTexture(i32 noundef 3553, i32 noundef %24) #6
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10241, i32 noundef 9729) #6
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef 9729) #6
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %26 = call ptr %25(i64 noundef 262144, ptr noundef nonnull @.str) #6
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef 256, i32 noundef 256, i32 noundef 0, i32 noundef 6408, i32 noundef 5121, ptr noundef %26) #6
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %27(ptr noundef %26) #6
  call void @glBindTexture(i32 noundef 3553, i32 noundef %23) #6
  br label %28

28:                                               ; preds = %10, %22
  %29 = load i32, ptr @get_cached_work_texture.texid, align 4, !tbaa !38
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #6
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %2) #6
  call void @glBindTexture(i32 noundef 3553, i32 noundef %29) #6
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10242, i32 noundef 33071) #6
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10243, i32 noundef 33071) #6
  call void @glTexParameteri(i32 noundef 3553, i32 noundef 10240, i32 noundef %6) #6
  %30 = icmp sgt i32 %2, 256
  %31 = icmp sgt i32 %3, 256
  %32 = or i1 %30, %31
  %33 = select i1 %32, i32 2, i32 0
  %34 = sub nuw nsw i32 256, %33
  %35 = xor i32 %33, 255
  %36 = add nsw i32 %35, %2
  %37 = sdiv i32 %36, %34
  %38 = add nsw i32 %35, %3
  %39 = sdiv i32 %38, %34
  %40 = add i32 %4, -6406
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %179

42:                                               ; preds = %28
  %43 = zext nneg i32 %40 to i64
  %44 = getelementptr inbounds [4 x i32], ptr @switch.table.glaDrawPixelsTexScaled, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %5, 5126
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 34842, i32 noundef 256, i32 noundef 256, i32 noundef 0, i32 noundef %4, i32 noundef 5126, ptr noundef null) #6
  br label %49

48:                                               ; preds = %42
  call void @glTexImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 32856, i32 noundef 256, i32 noundef 256, i32 noundef 0, i32 noundef %4, i32 noundef 5121, ptr noundef null) #6
  br label %49

49:                                               ; preds = %48, %47
  %50 = icmp sgt i32 %39, 0
  br i1 %50, label %51, label %178

51:                                               ; preds = %49
  %52 = icmp sgt i32 %37, 0
  %53 = zext nneg i32 %37 to i64
  br label %54

54:                                               ; preds = %51, %175
  %55 = phi i32 [ 0, %51 ], [ %176, %175 ]
  br i1 %52, label %56, label %175

56:                                               ; preds = %54
  %57 = mul nsw i32 %55, %34
  %58 = sub nsw i32 %3, %57
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 256)
  %60 = icmp ne i32 %55, 0
  %61 = and i1 %32, %60
  %62 = icmp sgt i32 %58, 256
  %63 = select i1 %32, i1 %62, i1 false
  %64 = sext i1 %63 to i32
  %65 = sitofp i32 %57 to float
  %66 = call float @llvm.fmuladd.f32(float %65, float %17, float %1)
  %67 = icmp sgt i32 %58, %33
  %68 = mul nsw i32 %57, %2
  %69 = add i32 %68, -1
  %70 = icmp slt i32 %58, 256
  %71 = add nsw i32 %57, -1
  %72 = add i32 %71, %59
  %73 = mul nsw i32 %72, %2
  %74 = add nsw i32 %57, -1
  %75 = add i32 %74, %59
  %76 = mul nsw i32 %75, %2
  %77 = add i32 %76, -1
  %78 = mul nsw i32 %57, %2
  %79 = add i32 %78, -1
  %80 = icmp slt i32 %58, 256
  %81 = add nsw i32 %57, -1
  %82 = add i32 %81, %59
  %83 = mul nsw i32 %82, %2
  %84 = add nsw i32 %57, -1
  %85 = add i32 %84, %59
  %86 = mul nsw i32 %85, %2
  %87 = add i32 %86, -1
  %88 = uitofp i1 %61 to float
  %89 = fmul float %88, 3.906250e-03
  %90 = call float @llvm.fmuladd.f32(float %88, float %17, float %66)
  %91 = add i32 %59, %64
  %92 = sitofp i32 %91 to float
  %93 = fmul float %92, 3.906250e-03
  %94 = fmul float %17, %92
  %95 = call float @llvm.fmuladd.f32(float %94, float %9, float %66)
  br label %96

96:                                               ; preds = %56, %172
  %97 = phi i64 [ 0, %56 ], [ %173, %172 ]
  %98 = trunc i64 %97 to i32
  %99 = mul nuw nsw i32 %34, %98
  %100 = sub nsw i32 %2, %99
  %101 = call i32 @llvm.smin.i32(i32 %100, i32 256)
  %102 = icmp ne i64 %97, 0
  %103 = and i1 %32, %102
  %104 = icmp sgt i32 %100, 256
  %105 = and i1 %32, %104
  %106 = sext i1 %105 to i32
  %107 = sitofp i32 %99 to float
  %108 = call float @llvm.fmuladd.f32(float %107, float %16, float %0)
  %109 = icmp sgt i32 %100, %33
  %110 = select i1 %109, i1 %67, i1 false
  br i1 %110, label %111, label %172

111:                                              ; preds = %96
  %112 = icmp slt i32 %100, 256
  br i1 %46, label %113, label %138

113:                                              ; preds = %111
  %114 = add i32 %99, %78
  %115 = mul i32 %114, %45
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, ptr %7, i64 %116
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %101, i32 noundef %59, i32 noundef %4, i32 noundef 5126, ptr noundef %117) #6
  br i1 %112, label %118, label %124

118:                                              ; preds = %113
  %119 = add i32 %79, %99
  %120 = add i32 %119, %101
  %121 = mul i32 %120, %45
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, ptr %7, i64 %122
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %101, i32 noundef 0, i32 noundef 1, i32 noundef %59, i32 noundef %4, i32 noundef 5126, ptr noundef %123) #6
  br label %124

124:                                              ; preds = %118, %113
  br i1 %80, label %125, label %130

125:                                              ; preds = %124
  %126 = add i32 %99, %83
  %127 = mul i32 %126, %45
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, ptr %7, i64 %128
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef %59, i32 noundef %101, i32 noundef 1, i32 noundef %4, i32 noundef 5126, ptr noundef %129) #6
  br label %130

130:                                              ; preds = %125, %124
  %131 = and i1 %80, %112
  br i1 %131, label %132, label %163

132:                                              ; preds = %130
  %133 = add i32 %87, %99
  %134 = add i32 %133, %101
  %135 = mul i32 %134, %45
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, ptr %7, i64 %136
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %101, i32 noundef %59, i32 noundef 1, i32 noundef 1, i32 noundef %4, i32 noundef 5126, ptr noundef %137) #6
  br label %163

138:                                              ; preds = %111
  %139 = add i32 %99, %68
  %140 = mul i32 %139, %45
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %7, i64 %141
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %101, i32 noundef %59, i32 noundef %4, i32 noundef 5121, ptr noundef %142) #6
  br i1 %112, label %143, label %149

143:                                              ; preds = %138
  %144 = add i32 %69, %99
  %145 = add i32 %144, %101
  %146 = mul i32 %145, %45
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %7, i64 %147
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %101, i32 noundef 0, i32 noundef 1, i32 noundef %59, i32 noundef %4, i32 noundef 5121, ptr noundef %148) #6
  br label %149

149:                                              ; preds = %143, %138
  br i1 %70, label %150, label %155

150:                                              ; preds = %149
  %151 = add i32 %99, %73
  %152 = mul i32 %151, %45
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %7, i64 %153
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef 0, i32 noundef %59, i32 noundef %101, i32 noundef 1, i32 noundef %4, i32 noundef 5121, ptr noundef %154) #6
  br label %155

155:                                              ; preds = %150, %149
  %156 = and i1 %70, %112
  br i1 %156, label %157, label %163

157:                                              ; preds = %155
  %158 = add i32 %77, %99
  %159 = add i32 %158, %101
  %160 = mul i32 %159, %45
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %7, i64 %161
  call void @glTexSubImage2D(i32 noundef 3553, i32 noundef 0, i32 noundef %101, i32 noundef %59, i32 noundef 1, i32 noundef 1, i32 noundef %4, i32 noundef 5121, ptr noundef %162) #6
  br label %163

163:                                              ; preds = %155, %157, %130, %132
  call void @glEnable(i32 noundef 3553) #6
  call void @glBegin(i32 noundef 7) #6
  %164 = uitofp i1 %103 to float
  %165 = fmul float %164, 3.906250e-03
  call void @glTexCoord2f(float noundef %165, float noundef %89) #6
  %166 = call float @llvm.fmuladd.f32(float %164, float %16, float %108)
  call void @glVertex2f(float noundef %166, float noundef %90) #6
  %167 = add i32 %101, %106
  %168 = sitofp i32 %167 to float
  %169 = fmul float %168, 3.906250e-03
  call void @glTexCoord2f(float noundef %169, float noundef %89) #6
  %170 = fmul float %16, %168
  %171 = call float @llvm.fmuladd.f32(float %170, float %8, float %108)
  call void @glVertex2f(float noundef %171, float noundef %90) #6
  call void @glTexCoord2f(float noundef %169, float noundef %93) #6
  call void @glVertex2f(float noundef %171, float noundef %95) #6
  call void @glTexCoord2f(float noundef %165, float noundef %93) #6
  call void @glVertex2f(float noundef %166, float noundef %95) #6
  call void @glEnd() #6
  call void @glDisable(i32 noundef 3553) #6
  br label %172

172:                                              ; preds = %96, %163
  %173 = add nuw nsw i64 %97, 1
  %174 = icmp eq i64 %173, %53
  br i1 %174, label %175, label %96, !llvm.loop !54

175:                                              ; preds = %172, %54
  %176 = add nuw nsw i32 %55, 1
  %177 = icmp eq i32 %176, %39
  br i1 %177, label %178, label %54, !llvm.loop !55

178:                                              ; preds = %175, %49
  call void @glBindTexture(i32 noundef 3553, i32 noundef %18) #6
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %19) #6
  call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #6
  br label %179

179:                                              ; preds = %28, %178
  ret void
}

declare void @glTexEnvi(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glPixelStorei(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glBindTexture(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexParameteri(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glTexImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glTexCoord2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaDrawPixelsTex(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  tail call void @glaDrawPixelsTexScaled(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, float noundef 1.000000e+00, float noundef 1.000000e+00)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  call void @glGetFloatv(i32 noundef 3350, ptr noundef nonnull %12) #6
  %14 = load float, ptr %12, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  call void @glGetFloatv(i32 noundef 3351, ptr noundef nonnull %11) #6
  %15 = load float, ptr %11, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  %16 = fneg float %0
  %17 = fdiv float %16, %14
  %18 = fneg float %1
  %19 = fdiv float %18, %15
  %20 = fcmp ogt float %17, 0.000000e+00
  %21 = select i1 %20, float %17, float 0.000000e+00
  %22 = call float @llvm.floor.f32(float %21)
  %23 = fptosi float %22 to i32
  %24 = fcmp ogt float %19, 0.000000e+00
  %25 = select i1 %24, float %19, float 0.000000e+00
  %26 = call float @llvm.floor.f32(float %25)
  %27 = fptosi float %26 to i32
  %28 = sitofp i32 %23 to float
  %29 = call float @llvm.fmuladd.f32(float %28, float %14, float %0)
  %30 = sitofp i32 %27 to float
  %31 = call float @llvm.fmuladd.f32(float %30, float %15, float %1)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  call void @glGetFloatv(i32 noundef 3088, ptr noundef nonnull %13) #6
  %32 = sub nsw i32 %2, %23
  %33 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 2
  %34 = load float, ptr %33, align 8, !tbaa !34
  %35 = fsub float %34, %29
  %36 = fdiv float %35, %14
  %37 = call float @llvm.ceil.f32(float %36)
  %38 = fptosi float %37 to i32
  %39 = call i32 @llvm.smin.i32(i32 %32, i32 %38)
  %40 = sub nsw i32 %3, %27
  %41 = getelementptr inbounds [4 x float], ptr %13, i64 0, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = fsub float %42, %31
  %44 = fdiv float %43, %15
  %45 = call float @llvm.ceil.f32(float %44)
  %46 = fptosi float %45 to i32
  %47 = call i32 @llvm.smin.i32(i32 %40, i32 %46)
  %48 = icmp sgt i32 %39, 0
  %49 = icmp sgt i32 %47, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %88

51:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  call void @glGetIntegerv(i32 noundef 3314, ptr noundef nonnull %10) #6
  %52 = load i32, ptr %10, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  %53 = fcmp oge float %29, 0.000000e+00
  %54 = fcmp oge float %31, 0.000000e+00
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @glRasterPos2f(float noundef %29, float noundef %31) #6
  br label %58

57:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #6
  store i8 0, ptr %9, align 1, !tbaa !52
  call void @glRasterPos2f(float noundef 0.000000e+00, float noundef 0.000000e+00) #6
  call void @glBitmap(i32 noundef 0, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %29, float noundef %31, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #6
  br label %58

58:                                               ; preds = %57, %56
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %4) #6
  switch i32 %5, label %74 [
    i32 6409, label %59
    i32 6403, label %59
  ]

59:                                               ; preds = %58, %58
  %60 = icmp eq i32 %6, 5126
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = mul nsw i32 %27, %4
  %63 = add nsw i32 %62, %23
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %7, i64 %64
  call void @glDrawPixels(i32 noundef %39, i32 noundef %47, i32 noundef %5, i32 noundef 5126, ptr noundef %65) #6
  br label %87

66:                                               ; preds = %59
  %67 = and i32 %6, -2
  %68 = icmp eq i32 %67, 5124
  br i1 %68, label %69, label %87

69:                                               ; preds = %66
  %70 = mul nsw i32 %27, %4
  %71 = add nsw i32 %70, %23
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %7, i64 %72
  call void @glDrawPixels(i32 noundef %39, i32 noundef %47, i32 noundef %5, i32 noundef %6, ptr noundef %73) #6
  br label %87

74:                                               ; preds = %58
  switch i32 %6, label %87 [
    i32 5126, label %75
    i32 5121, label %81
  ]

75:                                               ; preds = %74
  %76 = mul nsw i32 %27, %4
  %77 = add nsw i32 %76, %23
  %78 = shl nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %7, i64 %79
  call void @glDrawPixels(i32 noundef %39, i32 noundef %47, i32 noundef %5, i32 noundef 5126, ptr noundef %80) #6
  br label %87

81:                                               ; preds = %74
  %82 = mul nsw i32 %27, %4
  %83 = add nsw i32 %82, %23
  %84 = shl nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %7, i64 %85
  call void @glDrawPixels(i32 noundef %39, i32 noundef %47, i32 noundef %5, i32 noundef 5121, ptr noundef %86) #6
  br label %87

87:                                               ; preds = %74, %75, %81, %61, %66, %69
  call void @glPixelStorei(i32 noundef 3314, i32 noundef %52) #6
  br label %88

88:                                               ; preds = %87, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  ret void
}

declare void @glDrawPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaDrawPixelsAuto(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !56
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  tail call void @glaDrawPixelsTexScaled(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, float noundef 1.000000e+00, float noundef 1.000000e+00)
  br label %13

12:                                               ; preds = %8
  tail call void @glaDrawPixelsSafe(float noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef %7)
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaDefine2DArea(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !57
  %4 = load i32, ptr %0, align 4, !tbaa !59
  %5 = sub nsw i32 %3, %4
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !61
  %11 = sub nsw i32 %8, %10
  %12 = add nsw i32 %11, 1
  tail call void @glViewport(i32 noundef %4, i32 noundef %10, i32 noundef %6, i32 noundef %12) #6
  %13 = load i32, ptr %0, align 4, !tbaa !59
  %14 = load i32, ptr %9, align 4, !tbaa !61
  tail call void @glScissor(i32 noundef %13, i32 noundef %14, i32 noundef %6, i32 noundef %12) #6
  tail call void @glMatrixMode(i32 noundef 5889) #6
  tail call void @glLoadIdentity() #6
  %15 = sitofp i32 %6 to double
  %16 = sitofp i32 %12 to double
  tail call void @glOrtho(double noundef 0.000000e+00, double noundef %15, double noundef 0.000000e+00, double noundef %16, double noundef -1.000000e+00, double noundef 1.000000e+00) #6
  tail call void @glTranslatef(float noundef 3.750000e-01, float noundef 3.750000e-01, float noundef 0.000000e+00) #6
  tail call void @glMatrixMode(i32 noundef 5888) #6
  tail call void @glLoadIdentity() #6
  ret void
}

declare void @glViewport(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glScissor(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glMatrixMode(i32 noundef) local_unnamed_addr #2

declare void @glLoadIdentity() local_unnamed_addr #2

declare void @glOrtho(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bglBegin(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x float], align 16
  store i32 %0, ptr @curmode, align 4, !tbaa !38
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @glGetFloatv(i32 noundef 2834, ptr noundef nonnull %2) #6
  %5 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = fcmp olt float %6, 2.000000e+00
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  call void @glGetFloatv(i32 noundef 2833, ptr noundef nonnull %2) #6
  %9 = load float, ptr %2, align 16, !tbaa !34
  %10 = fadd float %9, 5.000000e-01
  %11 = call float @llvm.floor.f32(float %10)
  %12 = fptosi float %11 to i32
  %13 = call i32 @llvm.smin.i32(i32 %12, i32 4)
  store i32 %13, ptr @pointhack, align 4
  br label %15

14:                                               ; preds = %4
  call void @glBegin(i32 noundef 0) #6
  br label %15

15:                                               ; preds = %14, %8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bglVertex3fv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @curmode, align 4, !tbaa !38
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = load i32, ptr @pointhack, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  tail call void @glRasterPos3fv(ptr noundef %0) #6
  %8 = load i32, ptr @pointhack, align 4, !tbaa !38
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 5.000000e-01
  tail call void @glBitmap(i32 noundef %8, i32 noundef %8, float noundef %10, float noundef %10, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @Squaredot) #6
  br label %12

11:                                               ; preds = %4
  tail call void @glVertex3fv(ptr noundef %0) #6
  br label %12

12:                                               ; preds = %7, %11, %1
  ret void
}

declare void @glRasterPos3fv(ptr noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bglVertex3f(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @curmode, align 4, !tbaa !38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load i32, ptr @pointhack, align 4, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  tail call void @glRasterPos3f(float noundef %0, float noundef %1, float noundef %2) #6
  %10 = load i32, ptr @pointhack, align 4, !tbaa !38
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, 5.000000e-01
  tail call void @glBitmap(i32 noundef %10, i32 noundef %10, float noundef %12, float noundef %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @Squaredot) #6
  br label %14

13:                                               ; preds = %6
  tail call void @glVertex3f(float noundef %0, float noundef %1, float noundef %2) #6
  br label %14

14:                                               ; preds = %9, %13, %3
  ret void
}

declare void @glRasterPos3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bglVertex2fv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @curmode, align 4, !tbaa !38
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = load i32, ptr @pointhack, align 4, !tbaa !38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  tail call void @glRasterPos2fv(ptr noundef %0) #6
  %8 = load i32, ptr @pointhack, align 4, !tbaa !38
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 5.000000e-01
  %11 = sdiv i32 %8, 2
  %12 = sitofp i32 %11 to float
  tail call void @glBitmap(i32 noundef %8, i32 noundef %8, float noundef %10, float noundef %12, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @Squaredot) #6
  br label %14

13:                                               ; preds = %4
  tail call void @glVertex2fv(ptr noundef %0) #6
  br label %14

14:                                               ; preds = %7, %13, %1
  ret void
}

declare void @glRasterPos2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bglEnd() local_unnamed_addr #0 {
  %1 = load i32, ptr @pointhack, align 4, !tbaa !38
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i32 0, ptr @pointhack, align 4, !tbaa !38
  br label %5

4:                                                ; preds = %0
  tail call void @glEnd() #6
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bgl_get_mats(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @glGetDoublev(i32 noundef 2982, ptr noundef %0) #6
  %2 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 1
  tail call void @glGetDoublev(i32 noundef 2983, ptr noundef nonnull %2) #6
  %3 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 2
  tail call void @glGetIntegerv(i32 noundef 2978, ptr noundef nonnull %3) #6
  %4 = load double, ptr %0, align 8, !tbaa !62
  %5 = fcmp olt double %4, 0x3EB0C6F7A0B5ED8D
  %6 = fcmp ogt double %4, 0xBEB0C6F7A0B5ED8D
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store double 0.000000e+00, ptr %0, align 8, !tbaa !62
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds [16 x double], ptr %0, i64 0, i64 5
  %11 = load double, ptr %10, align 8, !tbaa !62
  %12 = fcmp olt double %11, 0x3EB0C6F7A0B5ED8D
  %13 = fcmp ogt double %11, 0xBEB0C6F7A0B5ED8D
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store double 0.000000e+00, ptr %10, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %15, %9
  store i32 0, ptr %3, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.bglMats, ptr %0, i64 0, i32 2, i64 1
  store i32 0, ptr %17, align 4, !tbaa !38
  ret void
}

declare void @glGetDoublev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bglPolygonOffset(float noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = fcmp une float %1, 0.000000e+00
  tail call void @glMatrixMode(i32 noundef 5889) #6
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  tail call void @glGetFloatv(i32 noundef 2983, ptr noundef nonnull @bglPolygonOffset.winmat) #6
  %5 = load float, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 15), align 4, !tbaa !34
  %6 = fcmp ogt float %5, 5.000000e-01
  %7 = fmul float %1, 0x3EE4F8B580000000
  %8 = fmul float %7, %0
  %9 = fmul float %1, 0x3F40624DE0000000
  %10 = select i1 %6, float %8, float %9
  %11 = load float, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  %12 = fsub float %11, %10
  store float %12, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  %13 = load float, ptr @bglPolygonOffset.offset, align 4, !tbaa !34
  %14 = fadd float %10, %13
  br label %19

15:                                               ; preds = %2
  %16 = load float, ptr @bglPolygonOffset.offset, align 4, !tbaa !34
  %17 = load float, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  %18 = fadd float %16, %17
  store float %18, ptr getelementptr inbounds ([16 x float], ptr @bglPolygonOffset.winmat, i64 0, i64 14), align 8, !tbaa !34
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi float [ 0.000000e+00, %15 ], [ %14, %4 ]
  store float %20, ptr @bglPolygonOffset.offset, align 4, !tbaa !34
  tail call void @glLoadMatrixf(ptr noundef nonnull @bglPolygonOffset.winmat) #6
  tail call void @glMatrixMode(i32 noundef 5888) #6
  ret void
}

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaDrawImBuf_glsl(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %83, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !68
  %18 = icmp ne i32 %17, 1
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !56
  %20 = icmp eq i16 %19, 1
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 35
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %31 = load float, ptr %30, align 8, !tbaa !70
  br i1 %29, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %28, float noundef %31, i8 noundef zeroext 1) #6
  br label %42

34:                                               ; preds = %26
  %35 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef %4, ptr noundef %5, float noundef %31, i8 noundef zeroext 1) #6
  br label %42

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 18
  %40 = load float, ptr %39, align 8, !tbaa !70
  %41 = tail call zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef %4, ptr noundef %5, ptr noundef %38, float noundef %40, i8 noundef zeroext 0) #6
  br label %42

42:                                               ; preds = %32, %34, %36
  %43 = phi i8 [ %33, %32 ], [ %35, %34 ], [ %41, %36 ]
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %42
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448) #6
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  %46 = load ptr, ptr %23, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %16, align 4, !tbaa !68
  switch i32 %49, label %51 [
    i32 3, label %52
    i32 4, label %50
  ]

50:                                               ; preds = %48
  br label %52

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %48, %51, %50
  %53 = phi i1 [ false, %50 ], [ false, %48 ], [ true, %51 ]
  %54 = phi i32 [ 6408, %50 ], [ 6407, %48 ], [ 0, %51 ]
  br i1 %53, label %68, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !72
  %58 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !73
  tail call void @glaDrawPixelsTexScaled(float noundef %1, float noundef %2, i32 noundef %57, i32 noundef %59, i32 noundef %54, i32 noundef 5126, i32 noundef %3, ptr noundef nonnull %46, float noundef 1.000000e+00, float noundef 1.000000e+00)
  br label %68

60:                                               ; preds = %45
  %61 = load ptr, ptr %8, align 8, !tbaa !64
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !72
  %66 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !73
  tail call void @glaDrawPixelsTexScaled(float noundef %1, float noundef %2, i32 noundef %65, i32 noundef %67, i32 noundef 6408, i32 noundef 5121, i32 noundef %3, ptr noundef nonnull %61, float noundef 1.000000e+00, float noundef 1.000000e+00)
  br label %68

68:                                               ; preds = %52, %55, %60, %63
  tail call void @IMB_colormanagement_finish_glsl_draw() #6
  br label %83

69:                                               ; preds = %42, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  %70 = call ptr @IMB_display_buffer_acquire(ptr noundef %0, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !72
  %75 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !73
  %77 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 89), align 2, !tbaa !56
  %78 = icmp eq i16 %77, 3
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #6
  call void @glaDrawPixelsTexScaled(float noundef %1, float noundef %2, i32 noundef %74, i32 noundef %76, i32 noundef 6408, i32 noundef 5121, i32 noundef %3, ptr noundef nonnull %70, float noundef 1.000000e+00, float noundef 1.000000e+00)
  br label %81

80:                                               ; preds = %72
  call void @glaDrawPixelsSafe(float noundef %1, float noundef %2, i32 noundef %74, i32 noundef %76, i32 noundef %74, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %70)
  br label %81

81:                                               ; preds = %80, %79, %69
  %82 = load ptr, ptr %7, align 8, !tbaa !53
  call void @IMB_display_buffer_release(ptr noundef %82) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  br label %83

83:                                               ; preds = %68, %81, %11
  ret void
}

declare zeroext i8 @IMB_colormanagement_setup_glsl_draw_from_space(ptr noundef, ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @IMB_colormanagement_setup_glsl_draw(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @IMB_colormanagement_finish_glsl_draw() local_unnamed_addr #2

declare ptr @IMB_display_buffer_acquire(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_display_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaDrawImBuf_glsl_ctx(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @IMB_colormanagement_display_settings_from_ctx(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #6
  %8 = load ptr, ptr %6, align 8, !tbaa !53
  %9 = load ptr, ptr %7, align 8, !tbaa !53
  call void @glaDrawImBuf_glsl(ptr noundef %1, float noundef %2, float noundef %3, i32 noundef %4, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret void
}

declare void @IMB_colormanagement_display_settings_from_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cpack(i32 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i32 %0 to i8
  %3 = lshr i32 %0, 8
  %4 = trunc i32 %3 to i8
  %5 = lshr i32 %0, 16
  %6 = trunc i32 %5 to i8
  tail call void @glColor3ub(i8 noundef zeroext %2, i8 noundef zeroext %4, i8 noundef zeroext %6) #6
  ret void
}

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @glaDrawBorderCorners(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !40
  %5 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !74
  %6 = sitofp i32 %5 to float
  %7 = fmul float %4, %6
  %8 = fdiv float %7, 7.200000e+01
  %9 = fmul float %8, 4.000000e+00
  %10 = fdiv float %9, %1
  %11 = fdiv float %9, %2
  %12 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !57
  %14 = load i32, ptr %0, align 4, !tbaa !59
  %15 = sub nsw i32 %13, %14
  %16 = sitofp i32 %15 to float
  %17 = fcmp olt float %10, %16
  %18 = select i1 %17, float %10, float %16
  %19 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !61
  %23 = sub nsw i32 %20, %22
  %24 = sitofp i32 %23 to float
  %25 = fcmp olt float %11, %24
  %26 = select i1 %25, float %11, float %24
  tail call void @glBegin(i32 noundef 3) #6
  %27 = load i32, ptr %0, align 4, !tbaa !59
  %28 = sitofp i32 %27 to float
  %29 = load i32, ptr %21, align 4, !tbaa !61
  %30 = sitofp i32 %29 to float
  %31 = fadd float %26, %30
  tail call void @glVertex2f(float noundef %28, float noundef %31) #6
  %32 = load i32, ptr %0, align 4, !tbaa !59
  %33 = sitofp i32 %32 to float
  %34 = load i32, ptr %21, align 4, !tbaa !61
  %35 = sitofp i32 %34 to float
  tail call void @glVertex2f(float noundef %33, float noundef %35) #6
  %36 = load i32, ptr %0, align 4, !tbaa !59
  %37 = sitofp i32 %36 to float
  %38 = fadd float %18, %37
  %39 = load i32, ptr %21, align 4, !tbaa !61
  %40 = sitofp i32 %39 to float
  tail call void @glVertex2f(float noundef %38, float noundef %40) #6
  tail call void @glEnd() #6
  tail call void @glBegin(i32 noundef 3) #6
  %41 = load i32, ptr %0, align 4, !tbaa !59
  %42 = sitofp i32 %41 to float
  %43 = load i32, ptr %19, align 4, !tbaa !60
  %44 = sitofp i32 %43 to float
  %45 = fsub float %44, %26
  tail call void @glVertex2f(float noundef %42, float noundef %45) #6
  %46 = load i32, ptr %0, align 4, !tbaa !59
  %47 = sitofp i32 %46 to float
  %48 = load i32, ptr %19, align 4, !tbaa !60
  %49 = sitofp i32 %48 to float
  tail call void @glVertex2f(float noundef %47, float noundef %49) #6
  %50 = load i32, ptr %0, align 4, !tbaa !59
  %51 = sitofp i32 %50 to float
  %52 = fadd float %18, %51
  %53 = load i32, ptr %19, align 4, !tbaa !60
  %54 = sitofp i32 %53 to float
  tail call void @glVertex2f(float noundef %52, float noundef %54) #6
  tail call void @glEnd() #6
  tail call void @glBegin(i32 noundef 3) #6
  %55 = load i32, ptr %12, align 4, !tbaa !57
  %56 = sitofp i32 %55 to float
  %57 = fsub float %56, %18
  %58 = load i32, ptr %21, align 4, !tbaa !61
  %59 = sitofp i32 %58 to float
  tail call void @glVertex2f(float noundef %57, float noundef %59) #6
  %60 = load i32, ptr %12, align 4, !tbaa !57
  %61 = sitofp i32 %60 to float
  %62 = load i32, ptr %21, align 4, !tbaa !61
  %63 = sitofp i32 %62 to float
  tail call void @glVertex2f(float noundef %61, float noundef %63) #6
  %64 = load i32, ptr %12, align 4, !tbaa !57
  %65 = sitofp i32 %64 to float
  %66 = load i32, ptr %21, align 4, !tbaa !61
  %67 = sitofp i32 %66 to float
  %68 = fadd float %26, %67
  tail call void @glVertex2f(float noundef %65, float noundef %68) #6
  tail call void @glEnd() #6
  tail call void @glBegin(i32 noundef 3) #6
  %69 = load i32, ptr %12, align 4, !tbaa !57
  %70 = sitofp i32 %69 to float
  %71 = fsub float %70, %18
  %72 = load i32, ptr %19, align 4, !tbaa !60
  %73 = sitofp i32 %72 to float
  tail call void @glVertex2f(float noundef %71, float noundef %73) #6
  %74 = load i32, ptr %12, align 4, !tbaa !57
  %75 = sitofp i32 %74 to float
  %76 = load i32, ptr %19, align 4, !tbaa !60
  %77 = sitofp i32 %76 to float
  tail call void @glVertex2f(float noundef %75, float noundef %77) #6
  %78 = load i32, ptr %12, align 4, !tbaa !57
  %79 = sitofp i32 %78 to float
  %80 = load i32, ptr %19, align 4, !tbaa !60
  %81 = sitofp i32 %80 to float
  %82 = fsub float %81, %26
  tail call void @glVertex2f(float noundef %79, float noundef %82) #6
  tail call void @glEnd() #6
  ret void
}

declare void @glGenTextures(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !35, i64 10908}
!41 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !39, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !42, i64 8496, !42, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !36, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !36, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !39, i64 8912, !39, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !35, i64 8956, !35, i64 8960, !39, i64 8964, !42, i64 8968, !42, i64 8970, !35, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !45, i64 8984, !36, i64 9760, !36, i64 9772, !42, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !39, i64 10896, !39, i64 10900, !35, i64 10904, !35, i64 10908, !39, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !46, i64 10928}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !44, i64 0, !44, i64 8}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"ColorBand", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!46 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !42, i64 24, !36, i64 26}
!47 = !{ptr @glDisable, ptr @glEnable}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{!36, !36, i64 0}
!53 = !{!44, !44, i64 0}
!54 = distinct !{!54, !49, !50}
!55 = distinct !{!55, !49, !50}
!56 = !{!41, !42, i64 8970}
!57 = !{!58, !39, i64 4}
!58 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!59 = !{!58, !39, i64 0}
!60 = !{!58, !39, i64 12}
!61 = !{!58, !39, i64 8}
!62 = !{!63, !63, i64 0}
!63 = !{!"double", !36, i64 0}
!64 = !{!65, !44, i64 40}
!65 = !{!"ImBuf", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !44, i64 40, !44, i64 48, !36, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !44, i64 88, !44, i64 96, !44, i64 104, !35, i64 112, !36, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !44, i64 296, !44, i64 304, !39, i64 312, !36, i64 316, !36, i64 1340, !44, i64 2368, !39, i64 2376, !44, i64 2384, !39, i64 2392, !39, i64 2396, !44, i64 2400, !44, i64 2408, !44, i64 2416, !44, i64 2424, !39, i64 2432, !58, i64 2436, !66, i64 2456}
!66 = !{!"DDSData", !39, i64 0, !39, i64 4, !44, i64 8, !39, i64 16}
!67 = !{!65, !44, i64 48}
!68 = !{!65, !39, i64 28}
!69 = !{!65, !44, i64 2408}
!70 = !{!65, !35, i64 112}
!71 = !{!65, !44, i64 2400}
!72 = !{!65, !39, i64 16}
!73 = !{!65, !39, i64 20}
!74 = !{!41, !39, i64 8524}
