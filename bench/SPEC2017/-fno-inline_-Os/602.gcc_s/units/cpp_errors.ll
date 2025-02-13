; ModuleID = 'cpp_errors.c'
source_filename = "cpp_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.cpp_reader = type { ptr, ptr, %struct.lexer_state, ptr, i32, ptr, ptr, ptr, %struct.cpp_context, ptr, ptr, %struct.cpp_token, i32, i8, ptr, ptr, %struct.cpp_dir, ptr, ptr, ptr, ptr, ptr, ptr, %struct.obstack, i8, i8, ptr, ptr, i8, ptr, %struct.tokenrun, ptr, i32, i32, ptr, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, ptr, ptr, %struct.cpp_token, %struct.cpp_token, ptr, %struct.obstack, %struct.obstack, ptr, %struct.cpp_callbacks, ptr, ptr, ptr, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, ptr, ptr, ptr, ptr, i32, %struct.cpp_comment_table, ptr }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.cpp_context = type { ptr, ptr, %union.anon, ptr, ptr, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { ptr }
%struct.cpp_dir = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, i64, i64 }
%struct.tokenrun = type { ptr, ptr, ptr, ptr }
%struct.cset_converter = type { ptr, ptr, i32 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, ptr }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.cpp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { ptr, ptr, ptr, ptr }
%struct.anon.2 = type { ptr, ptr, ptr, i32 }
%struct.cpp_comment_table = type { ptr, i32, i32 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cpp_error(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !35 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.va_start(ptr nonnull %4)
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %6 = load i8, ptr %5, align 2, !tbaa !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !57
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !58
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.line_maps, ptr %17, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !60
  br label %39

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !66
  %35 = load i32, ptr %34, align 8, !tbaa !67
  br label %39

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.cpp_token, ptr %22, i64 -1
  %38 = load i32, ptr %37, align 8, !tbaa !67
  br label %39

39:                                               ; preds = %28, %36, %32, %12, %15
  %40 = phi i32 [ %14, %12 ], [ %19, %15 ], [ %35, %32 ], [ %38, %36 ], [ 0, %28 ]
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !68
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #7
  unreachable

45:                                               ; preds = %39
  %46 = call zeroext i8 %42(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %40, i32 noundef 0, ptr noundef %2, ptr noundef nonnull %4) #8
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i8 %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cpp_error_with_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #0 !prof !35 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @abort() #7
  unreachable

11:                                               ; preds = %5
  %12 = call zeroext i8 %8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #8
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = load i8, ptr %2, align 1, !tbaa !69
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str, ptr %2
  %7 = tail call ptr @__errno_location() #9
  %8 = load i32, ptr %7, align 4, !tbaa !70
  %9 = tail call ptr @xstrerror(i32 noundef %8) #8
  %10 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, ptr noundef %9) #10
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @xstrerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize willreturn memory(none) }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !39, i64 1082}
!37 = !{!"cpp_reader", !38, i64 0, !38, i64 8, !41, i64 16, !38, i64 40, !42, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !43, i64 80, !38, i64 136, !38, i64 144, !44, i64 152, !42, i64 176, !39, i64 180, !38, i64 184, !38, i64 192, !46, i64 200, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !48, i64 312, !39, i64 400, !39, i64 401, !38, i64 408, !38, i64 416, !39, i64 424, !38, i64 432, !49, i64 440, !38, i64 472, !42, i64 480, !42, i64 484, !38, i64 488, !42, i64 496, !50, i64 504, !50, i64 528, !50, i64 552, !50, i64 576, !50, i64 600, !38, i64 624, !38, i64 632, !44, i64 640, !44, i64 664, !38, i64 688, !48, i64 696, !48, i64 784, !38, i64 872, !51, i64 880, !38, i64 1016, !38, i64 1024, !38, i64 1032, !52, i64 1040, !54, i64 1168, !39, i64 1200, !55, i64 1208, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !42, i64 1272, !56, i64 1280, !38, i64 1296}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"lexer_state", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !39, i64 4, !39, i64 5, !39, i64 6, !39, i64 7, !39, i64 8, !39, i64 9, !39, i64 10, !42, i64 12, !39, i64 16, !39, i64 17}
!42 = !{!"int", !39, i64 0}
!43 = !{!"cpp_context", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 32, !38, i64 40, !39, i64 48}
!44 = !{!"cpp_token", !42, i64 0, !42, i64 4, !45, i64 6, !39, i64 8}
!45 = !{!"short", !39, i64 0}
!46 = !{!"cpp_dir", !38, i64 0, !38, i64 8, !42, i64 16, !39, i64 20, !39, i64 21, !38, i64 24, !38, i64 32, !38, i64 40, !47, i64 48, !47, i64 56}
!47 = !{!"long", !39, i64 0}
!48 = !{!"obstack", !47, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !47, i64 40, !42, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !42, i64 80, !42, i64 80, !42, i64 80}
!49 = !{!"tokenrun", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!50 = !{!"cset_converter", !38, i64 0, !38, i64 8, !42, i64 16}
!51 = !{!"cpp_callbacks", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128}
!52 = !{!"cpp_options", !42, i64 0, !42, i64 4, !39, i64 8, !39, i64 9, !39, i64 10, !39, i64 11, !39, i64 12, !39, i64 13, !39, i64 14, !39, i64 15, !39, i64 16, !39, i64 17, !39, i64 18, !39, i64 19, !39, i64 20, !39, i64 21, !39, i64 22, !39, i64 23, !39, i64 24, !39, i64 25, !39, i64 26, !39, i64 27, !39, i64 28, !39, i64 29, !39, i64 30, !39, i64 31, !39, i64 32, !39, i64 33, !39, i64 34, !39, i64 35, !39, i64 36, !39, i64 37, !39, i64 38, !39, i64 39, !39, i64 40, !39, i64 41, !39, i64 42, !38, i64 48, !38, i64 56, !38, i64 64, !42, i64 72, !39, i64 76, !39, i64 77, !53, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !39, i64 120, !39, i64 121, !39, i64 122, !39, i64 123, !39, i64 124}
!53 = !{!"", !42, i64 0, !39, i64 4, !39, i64 5, !39, i64 6, !39, i64 7}
!54 = !{!"spec_nodes", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!55 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !42, i64 24}
!56 = !{!"", !38, i64 0, !42, i64 8, !42, i64 12}
!57 = !{!37, !39, i64 16}
!58 = !{!37, !42, i64 48}
!59 = !{!37, !38, i64 40}
!60 = !{!61, !42, i64 36}
!61 = !{!"line_maps", !38, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !39, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !38, i64 48}
!62 = !{!37, !38, i64 432}
!63 = !{!37, !38, i64 472}
!64 = !{!49, !38, i64 16}
!65 = !{!49, !38, i64 8}
!66 = !{!49, !38, i64 24}
!67 = !{!44, !42, i64 0}
!68 = !{!37, !38, i64 976}
!69 = !{!39, !39, i64 0}
!70 = !{!42, !42, i64 0}
