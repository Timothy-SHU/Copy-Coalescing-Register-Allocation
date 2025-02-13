; ModuleID = 'liblzma/delta/delta_encoder.c'
source_filename = "liblzma/delta/delta_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_delta_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @delta_encode, ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @delta_encoder_update, ptr %5, align 8, !tbaa !41
  %6 = tail call i32 @lzma_delta_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @delta_encode(ptr nocapture noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !34 !PGOFuncName !42 {
  %10 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i64, ptr %3, align 8, !tbaa !45
  %15 = sub i64 %4, %14
  %16 = load i64, ptr %6, align 8, !tbaa !45
  %17 = sub i64 %7, %16
  %18 = tail call i64 @llvm.umin.i64(i64 %15, i64 %17)
  %19 = getelementptr inbounds i8, ptr %2, i64 %14
  %20 = getelementptr inbounds i8, ptr %5, i64 %16
  tail call fastcc void @copy_and_encode(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %20, i64 noundef %18) #5
  %21 = add i64 %18, %14
  store i64 %21, ptr %3, align 8, !tbaa !45
  %22 = add i64 %18, %16
  store i64 %22, ptr %6, align 8, !tbaa !45
  %23 = icmp eq i32 %8, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %13
  %25 = icmp eq i64 %21, %4
  %26 = zext i1 %25 to i32
  br label %34

27:                                               ; preds = %9
  %28 = load i64, ptr %6, align 8, !tbaa !45
  %29 = load ptr, ptr %0, align 8, !tbaa !46
  %30 = tail call i32 %11(ptr noundef %29, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %8) #4
  %31 = getelementptr inbounds i8, ptr %5, i64 %28
  %32 = load i64, ptr %6, align 8, !tbaa !45
  %33 = sub i64 %32, %28
  tail call fastcc void @encode_in_place(ptr noundef nonnull %0, ptr noundef %31, i64 noundef %33) #5
  br label %34

34:                                               ; preds = %13, %24, %27
  %35 = phi i32 [ %30, %27 ], [ 0, %13 ], [ %26, %24 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @delta_encoder_update(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3) #0 !prof !34 !PGOFuncName !47 {
  %5 = getelementptr inbounds %struct.lzma_filter, ptr %3, i64 1
  %6 = tail call i32 @lzma_next_filter_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #4
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_delta_props_encode(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i64 @lzma_delta_coder_memusage(ptr noundef %0) #4
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_options_delta, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, -1
  store i8 %9, ptr %1, align 1, !tbaa !51
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ 0, %5 ], [ 11, %2 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i64 @lzma_delta_coder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @copy_and_encode(ptr nocapture noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef writeonly %2, i64 noundef %3) unnamed_addr #2 !prof !34 !PGOFuncName !52 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %10 = trunc i64 %8 to i8
  %11 = load i8, ptr %9, align 8, !tbaa !54
  br label %14

12:                                               ; preds = %14
  store i8 %23, ptr %9, align 8, !tbaa !54
  br label %13

13:                                               ; preds = %12, %4
  ret void

14:                                               ; preds = %6, %14
  %15 = phi i8 [ %11, %6 ], [ %23, %14 ]
  %16 = phi i64 [ 0, %6 ], [ %28, %14 ]
  %17 = add i8 %15, %10
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !51
  %21 = getelementptr inbounds i8, ptr %1, i64 %16
  %22 = load i8, ptr %21, align 1, !tbaa !51
  %23 = add i8 %15, -1
  %24 = zext i8 %15 to i64
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %24
  store i8 %22, ptr %25, align 1, !tbaa !51
  %26 = sub i8 %22, %20
  %27 = getelementptr inbounds i8, ptr %2, i64 %16
  store i8 %26, ptr %27, align 1, !tbaa !51
  %28 = add nuw i64 %16, 1
  %29 = icmp eq i64 %28, %3
  br i1 %29, label %12, label %14, !llvm.loop !55
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @encode_in_place(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #2 !prof !34 !PGOFuncName !57 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %9 = trunc i64 %7 to i8
  br label %11

10:                                               ; preds = %11, %3
  ret void

11:                                               ; preds = %5, %11
  %12 = phi i64 [ 0, %5 ], [ %25, %11 ]
  %13 = load i8, ptr %8, align 8, !tbaa !54
  %14 = add i8 %13, %9
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !51
  %18 = getelementptr inbounds i8, ptr %1, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !51
  %20 = add i8 %13, -1
  store i8 %20, ptr %8, align 8, !tbaa !54
  %21 = zext i8 %13 to i64
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %21
  store i8 %19, ptr %22, align 1, !tbaa !51
  %23 = load i8, ptr %18, align 1, !tbaa !51
  %24 = sub i8 %23, %17
  store i8 %24, ptr %18, align 1, !tbaa !51
  %25 = add nuw i64 %12, 1
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %10, label %11, !llvm.loop !58
}

; Function Attrs: optsize
declare i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 24}
!36 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!36, !37, i64 56}
!42 = !{!"delta_encoder.c:delta_encode"}
!43 = !{!44, !37, i64 24}
!44 = !{!"lzma_coder_s", !36, i64 0, !40, i64 64, !38, i64 72, !38, i64 73}
!45 = !{!40, !40, i64 0}
!46 = !{!44, !37, i64 0}
!47 = !{!"delta_encoder.c:delta_encoder_update"}
!48 = !{!49, !50, i64 4}
!49 = !{!"", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !37, i64 24, !37, i64 32}
!50 = !{!"int", !38, i64 0}
!51 = !{!38, !38, i64 0}
!52 = !{!"delta_encoder.c:copy_and_encode"}
!53 = !{!44, !40, i64 64}
!54 = !{!44, !38, i64 72}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"delta_encoder.c:encode_in_place"}
!58 = distinct !{!58, !56}
