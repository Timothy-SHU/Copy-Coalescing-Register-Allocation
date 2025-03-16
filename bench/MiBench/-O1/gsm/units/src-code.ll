; ModuleID = 'src/code.c'
source_filename = "src/code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Gsm_Coder.e = internal global [50 x i16] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Coder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [160 x i16], align 16
  %10 = getelementptr inbounds i16, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %9) #5
  call void @Gsm_Preprocess(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #5
  call void @Gsm_LPC_Analysis(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2) #5
  call void @Gsm_Short_Term_Analysis_Filter(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9) #5
  br label %11

11:                                               ; preds = %8, %34
  %12 = phi i64 [ 0, %8 ], [ %38, %34 ]
  %13 = phi ptr [ %3, %8 ], [ %21, %34 ]
  %14 = phi ptr [ %10, %8 ], [ %37, %34 ]
  %15 = phi ptr [ %7, %8 ], [ %39, %34 ]
  %16 = phi ptr [ %6, %8 ], [ %22, %34 ]
  %17 = phi ptr [ %5, %8 ], [ %36, %34 ]
  %18 = phi ptr [ %4, %8 ], [ %35, %34 ]
  %19 = mul nuw nsw i64 %12, 40
  %20 = getelementptr inbounds i16, ptr %9, i64 %19
  %21 = getelementptr inbounds i16, ptr %13, i64 1
  call void @Gsm_Long_Term_Predictor(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %14, ptr noundef nonnull getelementptr inbounds ([50 x i16], ptr @Gsm_Coder.e, i64 0, i64 5), ptr noundef nonnull %14, ptr noundef %13, ptr noundef %18) #5
  %22 = getelementptr inbounds i16, ptr %16, i64 1
  call void @Gsm_RPE_Encoding(ptr noundef %0, ptr noundef nonnull getelementptr inbounds ([50 x i16], ptr @Gsm_Coder.e, i64 0, i64 5), ptr noundef %16, ptr noundef %17, ptr noundef %15) #5
  br label %23

23:                                               ; preds = %11, %23
  %24 = phi i64 [ 0, %11 ], [ %32, %23 ]
  %25 = add nuw nsw i64 %24, 5
  %26 = getelementptr inbounds [50 x i16], ptr @Gsm_Coder.e, i64 0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !5
  %28 = getelementptr inbounds i16, ptr %14, i64 %24
  %29 = load i16, ptr %28, align 2, !tbaa !5
  %30 = call i16 @llvm.sadd.sat.i16(i16 %27, i16 %29)
  %31 = getelementptr inbounds i16, ptr %14, i64 %24
  store i16 %30, ptr %31, align 2, !tbaa !5
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, 40
  br i1 %33, label %34, label %23, !llvm.loop !9

34:                                               ; preds = %23
  %35 = getelementptr inbounds i16, ptr %18, i64 1
  %36 = getelementptr inbounds i16, ptr %17, i64 1
  %37 = getelementptr i16, ptr %14, i64 40
  %38 = add nuw nsw i64 %12, 1
  %39 = getelementptr inbounds i16, ptr %15, i64 13
  %40 = icmp eq i64 %38, 4
  br i1 %40, label %41, label %11, !llvm.loop !11

41:                                               ; preds = %34
  %42 = getelementptr inbounds i16, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 1 dereferenceable(240) %42, i64 240, i1 false)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %9) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @Gsm_Preprocess(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gsm_LPC_Analysis(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gsm_Short_Term_Analysis_Filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gsm_Long_Term_Predictor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gsm_RPE_Encoding(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
