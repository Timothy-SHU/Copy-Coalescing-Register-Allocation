; ModuleID = 'c-errors.c'
source_filename = "c-errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.diagnostic_info = type { %struct.text_info, i32, i32, ptr, i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@flag_isoc99 = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pedwarn_c99(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !39 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.va_start(ptr nonnull %5)
  %6 = load i32, ptr @flag_isoc99, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 6, i32 10
  call void @diagnostic_set_info(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %0, i32 noundef %8) #5
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %9, align 4, !tbaa !44
  %10 = load ptr, ptr @global_dc, align 8, !tbaa !48
  %11 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %10, ptr noundef nonnull %4) #5
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: optsize
declare void @diagnostic_set_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @diagnostic_report_diagnostic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pedwarn_c90(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !49 {
  %4 = alloca %struct.diagnostic_info, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.va_start(ptr nonnull %5)
  %6 = load i32, ptr @flag_isoc99, align 4, !tbaa !40
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 10, i32 6
  call void @diagnostic_set_info(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %5, i32 noundef %0, i32 noundef %8) #5
  %9 = getelementptr inbounds %struct.diagnostic_info, ptr %4, i64 0, i32 5
  store i32 %1, ptr %9, align 4, !tbaa !44
  %10 = load ptr, ptr @global_dc, align 8, !tbaa !48
  %11 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %10, ptr noundef nonnull %4) #5
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37}
!36 = !{ptr @pedwarn_c90, ptr @diagnostic_set_info, i64 80}
!37 = !{ptr @pedwarn_c90, ptr @diagnostic_report_diagnostic, i64 80}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !41, i64 60}
!45 = !{!"diagnostic_info", !46, i64 0, !41, i64 40, !41, i64 44, !47, i64 48, !41, i64 56, !41, i64 60}
!46 = !{!"", !47, i64 0, !47, i64 8, !41, i64 16, !47, i64 24, !47, i64 32}
!47 = !{!"any pointer", !42, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"function_entry_count", i64 80}
