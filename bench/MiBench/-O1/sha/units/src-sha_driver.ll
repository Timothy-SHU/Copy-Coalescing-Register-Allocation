; ModuleID = 'src/sha_driver.c'
source_filename = "src/sha_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.SHA_INFO, align 8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %3) #4
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = add nsw i32 %0, -1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr @stdin, align 8, !tbaa !5
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef %9) #4
  call void @sha_print(ptr noundef nonnull %3) #4
  br label %25

10:                                               ; preds = %5, %22
  %11 = phi i32 [ %23, %22 ], [ %6, %5 ]
  %12 = phi ptr [ %13, %22 ], [ %1, %5 ]
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = call noalias ptr @fopen(ptr noundef %14, ptr noundef nonnull @.str)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr %13, align 8, !tbaa !5
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %18)
  br label %22

20:                                               ; preds = %10
  call void @sha_stream(ptr noundef nonnull %3, ptr noundef nonnull %15) #4
  call void @sha_print(ptr noundef nonnull %3) #4
  %21 = call i32 @fclose(ptr noundef nonnull %15)
  br label %22

22:                                               ; preds = %20, %17
  %23 = add nsw i32 %11, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !9

25:                                               ; preds = %22, %5, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %3) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @sha_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sha_print(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
