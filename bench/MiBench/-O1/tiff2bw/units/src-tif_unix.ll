; ModuleID = 'src/tif_unix.c'
source_filename = "src/tif_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@TIFFOpen.module = internal constant [9 x i8] c"TIFFOpen\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"%s: Cannot open\00", align 1
@_TIFFwarningHandler = dso_local local_unnamed_addr global ptr @unixWarningHandler, align 8
@_TIFFerrorHandler = dso_local local_unnamed_addr global ptr @unixErrorHandler, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Warning, \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @TIFFFdOpen(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %0 to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = tail call ptr @TIFFClientOpen(ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef nonnull @_tiffReadProc, ptr noundef nonnull @_tiffWriteProc, ptr noundef nonnull @_tiffSeekProc, ptr noundef nonnull @_tiffCloseProc, ptr noundef nonnull @_tiffSizeProc, ptr noundef nonnull @_tiffMapProc, ptr noundef nonnull @_tiffUnmapProc) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tiff, ptr %6, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %8, %3
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @TIFFClientOpen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @_tiffReadProc(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = sext i32 %2 to i64
  %7 = tail call i64 @read(i32 noundef %5, ptr noundef %1, i64 noundef %6) #20
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @_tiffWriteProc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = sext i32 %2 to i64
  %7 = tail call i64 @write(i32 noundef %5, ptr noundef %1, i64 noundef %6) #20
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @_tiffSeekProc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = sext i32 %1 to i64
  %7 = tail call i64 @lseek(i32 noundef %5, i64 noundef %6, i32 noundef %2) #20
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @_tiffCloseProc(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @close(i32 noundef %3) #20
  ret i32 %4
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @_tiffSizeProc(ptr noundef %0) #3 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #20
  %3 = ptrtoint ptr %0 to i64
  %4 = trunc i64 %3 to i32
  %5 = call i32 @fstat(i32 noundef %4, ptr noundef nonnull %2) #20
  %6 = icmp slt i32 %5, 0
  %7 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = select i1 %6, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #20
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_tiffMapProc(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_tiffUnmapProc(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) #4 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @TIFFOpen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @_TIFFgetMode(ptr noundef %1, ptr noundef nonnull @TIFFOpen.module) #20
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %3, i32 noundef 438) #20
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @TIFFError(ptr noundef nonnull @TIFFOpen.module, ptr noundef nonnull @.str, ptr noundef %0) #20
  br label %16

9:                                                ; preds = %5
  %10 = zext nneg i32 %6 to i64
  %11 = inttoptr i64 %10 to ptr
  %12 = tail call ptr @TIFFClientOpen(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef nonnull @_tiffReadProc, ptr noundef nonnull @_tiffWriteProc, ptr noundef nonnull @_tiffSeekProc, ptr noundef nonnull @_tiffCloseProc, ptr noundef nonnull @_tiffSizeProc, ptr noundef nonnull @_tiffMapProc, ptr noundef nonnull @_tiffUnmapProc) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tiff, ptr %12, i64 0, i32 1
  store i32 %6, ptr %15, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %9, %2, %8
  %17 = phi ptr [ null, %8 ], [ null, %2 ], [ %12, %9 ], [ %12, %14 ]
  ret ptr %17
}

declare i32 @_TIFFgetMode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

declare void @TIFFError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @_TIFFmalloc(i32 noundef %0) local_unnamed_addr #6 {
  %2 = sext i32 %0 to i64
  %3 = tail call noalias ptr @malloc(i64 noundef %2) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_TIFFfree(ptr nocapture noundef %0) local_unnamed_addr #8 {
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @_TIFFrealloc(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = sext i32 %1 to i64
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #22
  ret ptr %4
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_TIFFmemset(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = trunc i32 %1 to i8
  %5 = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %4, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_TIFFmemcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %4, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @_TIFFmemcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #15 {
  %4 = sext i32 %2 to i64
  %5 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %4) #23
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal void @unixWarningHandler(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !16
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #24
  br label %8

8:                                                ; preds = %5, %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !16
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 9, i64 1, ptr %9) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !16
  %12 = tail call i32 @vfprintf(ptr noundef %11, ptr noundef %1, ptr noundef %2) #24
  %13 = load ptr, ptr @stderr, align 8, !tbaa !16
  %14 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 2, i64 1, ptr %13) #24
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @unixErrorHandler(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !16
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #24
  br label %8

8:                                                ; preds = %5, %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !16
  %10 = tail call i32 @vfprintf(ptr noundef %9, ptr noundef %1, ptr noundef %2) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !16
  %12 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 2, i64 1, ptr %11) #24
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #17

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"tiff", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !15, i64 504, !7, i64 512, !7, i64 520, !7, i64 528, !10, i64 536, !12, i64 540, !10, i64 544, !10, i64 548, !10, i64 552, !12, i64 556, !10, i64 560, !10, i64 564, !10, i64 568, !10, i64 572, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !7, i64 696, !7, i64 704, !10, i64 712, !10, i64 716, !7, i64 720, !10, i64 728, !7, i64 736, !10, i64 744, !7, i64 752, !10, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !10, i64 848, !7, i64 856, !7, i64 864, !7, i64 872}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !8, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !10, i64 68, !12, i64 72, !12, i64 74, !13, i64 80, !13, i64 88, !14, i64 96, !14, i64 100, !12, i64 104, !12, i64 106, !14, i64 108, !14, i64 112, !8, i64 116, !8, i64 120, !8, i64 144, !12, i64 148, !7, i64 152, !13, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !7, i64 256, !12, i64 264, !7, i64 272, !7, i64 280, !8, i64 288, !12, i64 292, !7, i64 296, !7, i64 304, !7, i64 312, !8, i64 320, !12, i64 344, !12, i64 346, !8, i64 348, !10, i64 352, !7, i64 360, !7, i64 368, !10, i64 376, !7, i64 384, !10, i64 392, !7, i64 400, !10, i64 408, !7, i64 416, !10, i64 424, !10, i64 428, !7, i64 432, !7, i64 440, !14, i64 448, !7, i64 456, !7, i64 464}
!12 = !{!"short", !8, i64 0}
!13 = !{!"double", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"", !12, i64 0, !12, i64 2, !10, i64 4}
!16 = !{!7, !7, i64 0}
