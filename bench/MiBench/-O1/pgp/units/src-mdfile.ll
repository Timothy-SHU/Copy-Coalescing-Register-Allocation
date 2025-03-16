; ModuleID = 'src/mdfile.c'
source_filename = "src/mdfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"\0A\07Can't open file '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MDfile0_len(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  tail call void @MD5Init(ptr noundef %0) #6
  br label %5

5:                                                ; preds = %14, %3
  %6 = phi i64 [ %2, %3 ], [ %15, %14 ]
  %7 = call i64 @llvm.umin.i64(i64 %6, i64 1024)
  %8 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %7, ptr noundef %1)
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  call void @MD5Update(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %9) #6
  %12 = and i64 %8, 4294967295
  %13 = sub i64 %6, %12
  br label %14

14:                                               ; preds = %5, %11
  %15 = phi i64 [ %13, %11 ], [ %6, %5 ]
  %16 = icmp eq i32 %9, 1024
  br i1 %16, label %5, label %17, !llvm.loop !5

17:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @MD5Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @MD5Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @MDfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr @pgpout, align 8, !tbaa !7
  %8 = tail call ptr @LANG(ptr noundef nonnull @.str.1) #6
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef %1)
  br label %21

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #6
  tail call void @MD5Init(ptr noundef %0) #6
  %11 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1024, ptr noundef nonnull %4)
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %17, %14 ], [ %12, %10 ]
  call void @MD5Update(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %15) #6
  %16 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1024, ptr noundef nonnull %4)
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !11

19:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #6
  %20 = call i32 @fclose(ptr noundef nonnull %4)
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi i32 [ -1, %6 ], [ 0, %19 ]
  ret i32 %22
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @LANG(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MD_addbuffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @MD5Update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %5 = icmp eq ptr %3, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @MD5Final(ptr noundef nonnull %3, ptr noundef %0) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %0, i8 0, i64 112, i1 false)
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

declare void @MD5Final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !6}
