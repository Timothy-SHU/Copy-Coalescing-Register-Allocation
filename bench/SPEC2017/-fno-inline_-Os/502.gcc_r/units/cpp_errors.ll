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
define dso_local zeroext i8 @cpp_error(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !34 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.va_start(ptr nonnull %4)
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 36
  %6 = load i8, ptr %5, align 2, !tbaa !35
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !57
  br label %39

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.line_maps, ptr %17, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !59
  br label %39

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 29
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tokenrun, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tokenrun, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = load i32, ptr %34, align 8, !tbaa !66
  br label %39

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.cpp_token, ptr %22, i64 -1
  %38 = load i32, ptr %37, align 8, !tbaa !66
  br label %39

39:                                               ; preds = %28, %36, %32, %12, %15
  %40 = phi i32 [ %14, %12 ], [ %19, %15 ], [ %35, %32 ], [ %38, %36 ], [ 0, %28 ]
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !67
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
define dso_local zeroext i8 @cpp_error_with_line(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #0 !prof !34 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !67
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
define dso_local zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = load i8, ptr %2, align 1, !tbaa !68
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str, ptr %2
  %7 = tail call ptr @__errno_location() #9
  %8 = load i32, ptr %7, align 4, !tbaa !69
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

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !38, i64 1082}
!36 = !{!"cpp_reader", !37, i64 0, !37, i64 8, !40, i64 16, !37, i64 40, !41, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !42, i64 80, !37, i64 136, !37, i64 144, !43, i64 152, !41, i64 176, !38, i64 180, !37, i64 184, !37, i64 192, !45, i64 200, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !47, i64 312, !38, i64 400, !38, i64 401, !37, i64 408, !37, i64 416, !38, i64 424, !37, i64 432, !48, i64 440, !37, i64 472, !41, i64 480, !41, i64 484, !37, i64 488, !41, i64 496, !49, i64 504, !49, i64 528, !49, i64 552, !49, i64 576, !49, i64 600, !37, i64 624, !37, i64 632, !43, i64 640, !43, i64 664, !37, i64 688, !47, i64 696, !47, i64 784, !37, i64 872, !50, i64 880, !37, i64 1016, !37, i64 1024, !37, i64 1032, !51, i64 1040, !53, i64 1168, !38, i64 1200, !54, i64 1208, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !41, i64 1272, !55, i64 1280, !37, i64 1296}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"lexer_state", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8, !38, i64 9, !38, i64 10, !41, i64 12, !38, i64 16, !38, i64 17}
!41 = !{!"int", !38, i64 0}
!42 = !{!"cpp_context", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 32, !37, i64 40, !38, i64 48}
!43 = !{!"cpp_token", !41, i64 0, !41, i64 4, !44, i64 6, !38, i64 8}
!44 = !{!"short", !38, i64 0}
!45 = !{!"cpp_dir", !37, i64 0, !37, i64 8, !41, i64 16, !38, i64 20, !38, i64 21, !37, i64 24, !37, i64 32, !37, i64 40, !46, i64 48, !46, i64 56}
!46 = !{!"long", !38, i64 0}
!47 = !{!"obstack", !46, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !46, i64 40, !41, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!48 = !{!"tokenrun", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!49 = !{!"cset_converter", !37, i64 0, !37, i64 8, !41, i64 16}
!50 = !{!"cpp_callbacks", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!51 = !{!"cpp_options", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !38, i64 10, !38, i64 11, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15, !38, i64 16, !38, i64 17, !38, i64 18, !38, i64 19, !38, i64 20, !38, i64 21, !38, i64 22, !38, i64 23, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !38, i64 28, !38, i64 29, !38, i64 30, !38, i64 31, !38, i64 32, !38, i64 33, !38, i64 34, !38, i64 35, !38, i64 36, !38, i64 37, !38, i64 38, !38, i64 39, !38, i64 40, !38, i64 41, !38, i64 42, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !38, i64 76, !38, i64 77, !52, i64 80, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !38, i64 120, !38, i64 121, !38, i64 122, !38, i64 123, !38, i64 124}
!52 = !{!"", !41, i64 0, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7}
!53 = !{!"spec_nodes", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!54 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24}
!55 = !{!"", !37, i64 0, !41, i64 8, !41, i64 12}
!56 = !{!36, !38, i64 16}
!57 = !{!36, !41, i64 48}
!58 = !{!36, !37, i64 40}
!59 = !{!60, !41, i64 36}
!60 = !{!"line_maps", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 48}
!61 = !{!36, !37, i64 432}
!62 = !{!36, !37, i64 472}
!63 = !{!48, !37, i64 16}
!64 = !{!48, !37, i64 8}
!65 = !{!48, !37, i64 24}
!66 = !{!43, !41, i64 0}
!67 = !{!36, !37, i64 976}
!68 = !{!38, !38, i64 0}
!69 = !{!41, !41, i64 0}
