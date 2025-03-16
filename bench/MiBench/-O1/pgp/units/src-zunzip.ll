; ModuleID = 'src/zunzip.c'
source_filename = "src/zunzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mask_bits = dso_local local_unnamed_addr global [33 x i64] [i64 0, i64 1, i64 3, i64 7, i64 15, i64 31, i64 63, i64 127, i64 255, i64 511, i64 1023, i64 2047, i64 4095, i64 8191, i64 16383, i64 32767, i64 65535, i64 131071, i64 262143, i64 524287, i64 1048575, i64 2097151, i64 4194303, i64 8388607, i64 16777215, i64 33554431, i64 67108863, i64 134217727, i64 268435455, i64 536870911, i64 1073741823, i64 2147483647, i64 4294967295], align 16
@inbuf = dso_local local_unnamed_addr global ptr null, align 8
@outfd = dso_local local_unnamed_addr global i32 0, align 4
@zipfd = dso_local local_unnamed_addr global i32 0, align 4
@outbuf = dso_local local_unnamed_addr global ptr null, align 8
@outout = dso_local local_unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [38 x i8] c"error:  can't allocate unzip buffers\0A\00", align 1
@hold = internal unnamed_addr global ptr null, align 8
@bits_left = dso_local local_unnamed_addr global i32 0, align 4
@bitbuf = dso_local local_unnamed_addr global i64 0, align 8
@outpos = dso_local local_unnamed_addr global i64 0, align 8
@outcnt = dso_local local_unnamed_addr global i32 0, align 4
@outptr = dso_local local_unnamed_addr global ptr null, align 8
@zipeof = dso_local local_unnamed_addr global i8 0, align 1
@incnt = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\0AERROR: unexpected end of compressed data input.\0A\00", align 1
@inptr = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @unzip(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fileno(ptr noundef %1) #9
  store i32 %3, ptr @outfd, align 4, !tbaa !5
  %4 = tail call i32 @fileno(ptr noundef %0) #9
  store i32 %4, ptr @zipfd, align 4, !tbaa !5
  %5 = tail call noalias dereferenceable_or_null(8196) ptr @malloc(i64 noundef 8196) #10
  store ptr %5, ptr @inbuf, align 8, !tbaa !9
  %6 = tail call noalias dereferenceable_or_null(8193) ptr @malloc(i64 noundef 8193) #10
  store ptr %6, ptr @outbuf, align 8, !tbaa !9
  store ptr %6, ptr @outout, align 8, !tbaa !9
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = tail call i64 @fwrite(ptr nonnull @.str, i64 37, i64 1, ptr %11) #11
  br label %41

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %5, i64 8192
  store ptr %14, ptr @hold, align 8, !tbaa !9
  store i32 0, ptr @bits_left, align 4, !tbaa !5
  store i64 0, ptr @bitbuf, align 8, !tbaa !11
  store i64 0, ptr @outpos, align 8, !tbaa !11
  store i32 0, ptr @outcnt, align 4, !tbaa !5
  store ptr %6, ptr @outptr, align 8, !tbaa !9
  store i8 0, ptr @zipeof, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %6, i8 0, i64 8192, i1 false)
  %15 = tail call i64 @ftell(ptr noundef %0)
  %16 = tail call i64 @lseek(i32 noundef %4, i64 noundef %15, i32 noundef 0) #9
  %17 = load i32, ptr @zipfd, align 4, !tbaa !5
  %18 = load ptr, ptr @inbuf, align 8, !tbaa !9
  %19 = tail call i64 @read(i32 noundef %17, ptr noundef %18, i64 noundef 8192) #9
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr @incnt, align 4, !tbaa !5
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr @stderr, align 8, !tbaa !9
  %24 = tail call ptr @LANG(ptr noundef nonnull @.str.1) #9
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef %24) #11
  %26 = load ptr, ptr @inbuf, align 8, !tbaa !9
  store ptr %26, ptr @inptr, align 8, !tbaa !9
  br label %30

27:                                               ; preds = %13
  %28 = load ptr, ptr @inbuf, align 8, !tbaa !9
  store ptr %28, ptr @inptr, align 8, !tbaa !9
  %29 = tail call i32 @inflate() #9
  br label %30

30:                                               ; preds = %22, %27
  %31 = phi i32 [ %29, %27 ], [ -1, %22 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = tail call i32 @FlushOutput() #9
  %35 = icmp ne i32 %34, 0
  %36 = sext i1 %35 to i32
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %31, %30 ], [ %36, %33 ]
  %39 = load ptr, ptr @inbuf, align 8, !tbaa !9
  tail call void @free(ptr noundef %39) #9
  %40 = load ptr, ptr @outbuf, align 8, !tbaa !9
  tail call void @free(ptr noundef %40) #9
  store ptr null, ptr @outout, align 8, !tbaa !9
  store ptr null, ptr @outbuf, align 8, !tbaa !9
  store ptr null, ptr @inbuf, align 8, !tbaa !9
  br label %41

41:                                               ; preds = %37, %10
  %42 = phi i32 [ 4, %10 ], [ %38, %37 ]
  ret i32 %42
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare ptr @LANG(ptr noundef) local_unnamed_addr #6

declare i32 @inflate() local_unnamed_addr #6

declare i32 @FlushOutput() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!7, !7, i64 0}
