; ModuleID = 'src/rsagen.c'
source_filename = "src/rsagen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_precision = external local_unnamed_addr global i16, align 2

; Function Attrs: nounwind uwtable
define dso_local i32 @rsa_keygen(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #0 {
  %9 = alloca [130 x i16], align 16
  %10 = alloca [130 x i16], align 16
  %11 = tail call i16 @llvm.smin.i16(i16 %6, i16 2079)
  %12 = tail call i16 @llvm.smax.i16(i16 %11, i16 32)
  %13 = add nuw nsw i16 %12, 16
  %14 = lshr i16 %13, 4
  store i16 %14, ptr @global_precision, align 2, !tbaa !5
  %15 = add nuw nsw i16 %12, 32
  %16 = zext nneg i16 %15 to i32
  tail call void @trueRandAccum(i32 noundef %16) #5
  %17 = lshr i16 %12, 1
  %18 = zext nneg i16 %17 to i32
  tail call void @trueRandConsume(i32 noundef %18) #5
  %19 = tail call i32 @randomprime(ptr noundef %3, i16 noundef signext %17) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %142, label %21

21:                                               ; preds = %8
  %22 = tail call i32 @countbits(ptr noundef %3) #5
  %23 = trunc i32 %22 to i16
  %24 = sub i16 %12, %23
  %25 = sext i16 %24 to i32
  tail call void @trueRandConsume(i32 noundef %25) #5
  br label %26

26:                                               ; preds = %45, %21
  %27 = tail call i32 @randomprime(ptr noundef %4, i16 noundef signext %24) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %142, label %29

29:                                               ; preds = %26
  %30 = tail call signext i16 @mp_compare(ptr noundef %3, ptr noundef %4) #5
  %31 = icmp sgt i16 %30, -1
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i16, ptr @global_precision, align 2, !tbaa !5
  %34 = sext i16 %33 to i32
  %35 = shl nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %3, i64 %36, i1 false)
  %37 = load i16, ptr @global_precision, align 2, !tbaa !5
  %38 = sext i16 %37 to i32
  %39 = shl nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %40, i1 false)
  %41 = load i16, ptr @global_precision, align 2, !tbaa !5
  %42 = sext i16 %41 to i32
  %43 = shl nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %5, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %32, %29
  %46 = load i16, ptr @global_precision, align 2, !tbaa !5
  %47 = sext i16 %46 to i32
  %48 = shl nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %4, i64 %49, i1 false)
  %50 = tail call zeroext i8 @mp_subb(ptr noundef %5, ptr noundef %3, i8 noundef zeroext 0) #5
  %51 = tail call i32 @countbits(ptr noundef %5) #5
  %52 = tail call i32 @countbits(ptr noundef %4) #5
  %53 = add nsw i32 %52, -7
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %26, label %55, !llvm.loop !9

55:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #5
  %56 = tail call signext i16 @mp_compare(ptr noundef %3, ptr noundef %4) #5
  %57 = icmp sgt i16 %56, -1
  %58 = select i1 %57, ptr %3, ptr %4
  %59 = select i1 %57, ptr %4, ptr %3
  %60 = load i16, ptr @global_precision, align 2, !tbaa !5
  %61 = sext i16 %60 to i32
  %62 = shl nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %59, i64 %63, i1 false)
  %64 = load i16, ptr @global_precision, align 2, !tbaa !5
  %65 = sext i16 %64 to i32
  %66 = shl nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %58, i64 %67, i1 false)
  %68 = tail call zeroext i8 @mp_dec(ptr noundef %2) #5
  %69 = tail call zeroext i8 @mp_dec(ptr noundef %5) #5
  %70 = tail call i32 @mp_mult(ptr noundef %0, ptr noundef %2, ptr noundef %5) #5
  call void @mp_gcd(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %5) #5
  %71 = call i32 @mp_udiv(ptr noundef %2, ptr noundef %5, ptr noundef %0, ptr noundef nonnull %9) #5
  %72 = load i16, ptr @global_precision, align 2, !tbaa !5
  %73 = sext i16 %72 to i32
  %74 = shl nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr align 1 %5, i64 %75, i1 false)
  %76 = sext i16 %7 to i32
  %77 = call i32 @countbits(ptr noundef %0) #5
  %78 = add nsw i32 %77, -1
  %79 = icmp sgt i32 %78, %76
  br i1 %79, label %84, label %80

80:                                               ; preds = %55
  %81 = call i32 @countbits(ptr noundef %0) #5
  %82 = trunc i32 %81 to i16
  %83 = add i16 %82, -1
  br label %84

84:                                               ; preds = %80, %55
  %85 = phi i16 [ %83, %80 ], [ %7, %55 ]
  %86 = icmp eq i16 %85, 0
  %87 = call i16 @llvm.smax.i16(i16 %85, i16 2)
  %88 = add nuw i16 %87, 15
  call void @mp_init(ptr noundef %1, i16 noundef zeroext 0) #5
  %89 = select i1 %86, i16 20, i16 %88
  %90 = and i16 %89, 15
  %91 = shl nuw i16 1, %90
  %92 = lshr i16 %89, 4
  %93 = zext nneg i16 %92 to i64
  %94 = getelementptr i16, ptr %1, i64 %93
  %95 = getelementptr i16, ptr %94, i64 -1
  %96 = load i16, ptr %95, align 2, !tbaa !5
  %97 = or i16 %91, %96
  store i16 %97, ptr %95, align 2, !tbaa !5
  %98 = load i16, ptr %1, align 2, !tbaa !5
  %99 = or i16 %98, 1
  store i16 %99, ptr %1, align 2, !tbaa !5
  %100 = call zeroext i8 @mp_dec(ptr noundef nonnull %1) #5
  %101 = call zeroext i8 @mp_dec(ptr noundef nonnull %1) #5
  br label %102

102:                                              ; preds = %110, %84
  %103 = call zeroext i8 @mp_inc(ptr noundef nonnull %1) #5
  %104 = call zeroext i8 @mp_inc(ptr noundef nonnull %1) #5
  call void @mp_gcd(ptr noundef %2, ptr noundef nonnull %1, ptr noundef %0) #5
  %105 = load i16, ptr %2, align 2, !tbaa !5
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = call signext i16 @significance(ptr noundef nonnull %2) #5
  %109 = icmp sgt i16 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %102
  br label %102, !llvm.loop !11

111:                                              ; preds = %107
  call void @mp_inv(ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %9) #5
  call void @mp_inv(ptr noundef %5, ptr noundef %59, ptr noundef %58) #5
  %112 = call i32 @mp_mult(ptr noundef %0, ptr noundef %59, ptr noundef %58) #5
  call void @mp_init(ptr noundef nonnull %9, i16 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #5
  call void @trueRandFlush() #5
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #5
  br label %113

113:                                              ; preds = %111, %113
  %114 = phi i64 [ 0, %111 ], [ %119, %113 ]
  %115 = trunc i64 %114 to i8
  %116 = mul nuw i8 %115, 3
  %117 = add nuw nsw i8 %116, 7
  %118 = getelementptr inbounds i8, ptr %10, i64 %114
  store i8 %117, ptr %118, align 1, !tbaa !12
  %119 = add nuw nsw i64 %114, 1
  %120 = icmp eq i64 %119, 16
  br i1 %120, label %121, label %113, !llvm.loop !13

121:                                              ; preds = %113
  %122 = call i32 @rsa_private_encrypt(ptr noundef nonnull %10, ptr noundef nonnull %10, i16 noundef signext 16, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %0) #5
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %121
  %125 = call i32 @rsa_public_decrypt(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %0) #5
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %124
  %128 = icmp eq i32 %125, 16
  br i1 %128, label %132, label %140

129:                                              ; preds = %132
  %130 = add nuw nsw i64 %133, 1
  %131 = icmp eq i64 %130, 16
  br i1 %131, label %140, label %132, !llvm.loop !14

132:                                              ; preds = %127, %129
  %133 = phi i64 [ %130, %129 ], [ 0, %127 ]
  %134 = getelementptr inbounds i8, ptr %10, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !12
  %136 = mul nuw nsw i64 %133, 3
  %137 = add nuw nsw i64 %136, 7
  %138 = zext i8 %135 to i64
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %129, label %140

140:                                              ; preds = %129, %132, %127, %124, %121
  %141 = phi i32 [ %122, %121 ], [ %125, %124 ], [ -15, %127 ], [ -15, %132 ], [ 0, %129 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #5
  br label %142

142:                                              ; preds = %26, %140, %8
  %143 = phi i32 [ %19, %8 ], [ %141, %140 ], [ %27, %26 ]
  ret i32 %143
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @trueRandAccum(i32 noundef) local_unnamed_addr #2

declare void @trueRandConsume(i32 noundef) local_unnamed_addr #2

declare i32 @randomprime(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @countbits(ptr noundef) local_unnamed_addr #2

declare signext i16 @mp_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare zeroext i8 @mp_subb(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @trueRandFlush() local_unnamed_addr #2

declare i32 @rsa_private_encrypt(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rsa_public_decrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @mp_dec(ptr noundef) local_unnamed_addr #2

declare i32 @mp_mult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mp_gcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mp_udiv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mp_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @mp_inc(ptr noundef) local_unnamed_addr #2

declare signext i16 @significance(ptr noundef) local_unnamed_addr #2

declare void @mp_inv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #4

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
