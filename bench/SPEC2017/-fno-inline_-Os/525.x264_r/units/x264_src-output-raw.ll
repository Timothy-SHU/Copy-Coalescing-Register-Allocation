; ModuleID = 'x264_src/output/raw.c'
source_filename = "x264_src/output/raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@raw_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @open_file(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !34 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load ptr, ptr @stdout, align 8, !tbaa !35
  store ptr %6, ptr %1, align 8, !tbaa !35
  br label %10

7:                                                ; preds = %2
  %8 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  store ptr %8, ptr %1, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %5
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi i32 [ 0, %10 ], [ -1, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @set_param(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 !PGOFuncName !39 {
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal i32 @write_headers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !40 {
  %3 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 1, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = add nsw i32 %6, %4
  %8 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 2, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = add nsw i32 %7, %9
  %11 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = sext i32 %10 to i64
  %14 = tail call i64 @fwrite(ptr noundef %12, i64 noundef %13, i64 noundef 1, ptr noundef %0) #5
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %15, i32 -1, i32 %10
  ret i32 %16
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @write_frame(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 !PGOFuncName !45 {
  %5 = sext i32 %2 to i64
  %6 = tail call i64 @fwrite(ptr noundef %1, i64 noundef %5, i64 noundef 1, ptr noundef %0) #5
  %7 = icmp eq i64 %6, 0
  %8 = select i1 %7, i32 -1, i32 %2
  ret i32 %8
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @close_file(ptr noundef %0, i64 %1, i64 %2) #0 !PGOFuncName !46 {
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @stdout, align 8
  %6 = icmp eq ptr %5, %0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @fclose(ptr noundef nonnull %0) #5
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize willreturn memory(read) }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"raw.c:open_file"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"raw.c:set_param"}
!40 = !{!"raw.c:write_headers"}
!41 = !{!42, !43, i64 8}
!42 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !36, i64 16}
!43 = !{!"int", !37, i64 0}
!44 = !{!42, !36, i64 16}
!45 = !{!"raw.c:write_frame"}
!46 = !{!"raw.c:close_file"}
