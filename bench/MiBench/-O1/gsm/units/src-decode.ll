; ModuleID = 'src/decode.c'
source_filename = "src/decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local void @Gsm_Decoder(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [40 x i16], align 16
  %10 = alloca [160 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %10) #5
  %11 = getelementptr i16, ptr %0, i64 120
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ 0, %8 ], [ %25, %12 ]
  %14 = phi ptr [ %2, %8 ], [ %28, %12 ]
  %15 = phi ptr [ %3, %8 ], [ %27, %12 ]
  %16 = phi ptr [ %6, %8 ], [ %30, %12 ]
  %17 = phi ptr [ %5, %8 ], [ %26, %12 ]
  %18 = phi ptr [ %4, %8 ], [ %29, %12 ]
  %19 = mul nuw nsw i64 %13, 80
  %20 = getelementptr i8, ptr %10, i64 %19
  %21 = load i16, ptr %17, align 2, !tbaa !5
  %22 = load i16, ptr %18, align 2, !tbaa !5
  call void @Gsm_RPE_Decoding(ptr noundef %0, i16 noundef signext %21, i16 noundef signext %22, ptr noundef %16, ptr noundef nonnull %9) #5
  %23 = load i16, ptr %14, align 2, !tbaa !5
  %24 = load i16, ptr %15, align 2, !tbaa !5
  call void @Gsm_Long_Term_Synthesis_Filtering(ptr noundef %0, i16 noundef signext %23, i16 noundef signext %24, ptr noundef nonnull %9, ptr noundef nonnull %11) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %20, ptr noundef nonnull align 2 dereferenceable(80) %11, i64 80, i1 false), !tbaa !5
  %25 = add nuw nsw i64 %13, 1
  %26 = getelementptr inbounds i16, ptr %17, i64 1
  %27 = getelementptr inbounds i16, ptr %15, i64 1
  %28 = getelementptr inbounds i16, ptr %14, i64 1
  %29 = getelementptr inbounds i16, ptr %18, i64 1
  %30 = getelementptr inbounds i16, ptr %16, i64 13
  %31 = icmp eq i64 %25, 4
  br i1 %31, label %32, label %12, !llvm.loop !9

32:                                               ; preds = %12
  call void @Gsm_Short_Term_Synthesis_Filter(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef %7) #5
  %33 = getelementptr inbounds %struct.gsm_state, ptr %0, i64 0, i32 9
  %34 = load i16, ptr %33, align 2, !tbaa !11
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %7, %32 ], [ %54, %35 ]
  %37 = phi i16 [ %34, %32 ], [ %46, %35 ]
  %38 = phi i32 [ 160, %32 ], [ %39, %35 ]
  %39 = add nsw i32 %38, -1
  %40 = sext i16 %37 to i64
  %41 = load i16, ptr %36, align 2, !tbaa !5
  %42 = mul nsw i64 %40, 242064356802560
  %43 = add nsw i64 %42, 140737488355328
  %44 = lshr i64 %43, 48
  %45 = trunc i64 %44 to i16
  %46 = call i16 @llvm.sadd.sat.i16(i16 %45, i16 %41)
  %47 = zext i16 %46 to i64
  %48 = shl nuw i64 %47, 48
  %49 = ashr exact i64 %48, 47
  %50 = call i64 @llvm.smax.i64(i64 %49, i64 -32768)
  %51 = call i64 @llvm.smin.i64(i64 %50, i64 32767)
  %52 = trunc i64 %51 to i16
  %53 = and i16 %52, -8
  store i16 %53, ptr %36, align 2, !tbaa !5
  %54 = getelementptr inbounds i16, ptr %36, i64 1
  %55 = icmp eq i32 %39, 0
  br i1 %55, label %56, label %35, !llvm.loop !15

56:                                               ; preds = %35
  store i16 %46, ptr %33, align 2, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @Gsm_RPE_Decoding(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gsm_Long_Term_Synthesis_Filtering(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gsm_Short_Term_Synthesis_Filter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!11 = !{!12, !6, i64 650}
!12 = !{!"gsm_state", !7, i64 0, !6, i64 560, !13, i64 568, !14, i64 576, !7, i64 580, !7, i64 596, !6, i64 628, !6, i64 630, !7, i64 632, !6, i64 650, !7, i64 652, !7, i64 653}
!13 = !{!"long", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !10}
