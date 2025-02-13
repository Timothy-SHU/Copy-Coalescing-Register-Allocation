; ModuleID = 'cpp_identifiers.c'
source_filename = "cpp_identifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.ht = type { %struct.obstack, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_init_hashtable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %10, !prof !41

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 55
  store i8 1, ptr %5, align 8, !tbaa !42
  %6 = tail call ptr @ht_create(i32 noundef 13) #4
  %7 = getelementptr inbounds %struct.ht, ptr %6, i64 0, i32 2
  store ptr @alloc_node, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46
  %9 = tail call i32 @_obstack_begin(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #4
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi ptr [ %6, %4 ], [ %1, %2 ]
  %12 = getelementptr inbounds %struct.ht, ptr %11, i64 0, i32 6
  store ptr %0, ptr %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  store ptr %11, ptr %13, align 8, !tbaa !66
  tail call void @_cpp_init_directives(ptr noundef %0) #4
  tail call void @_cpp_init_internal_pragmas(ptr noundef %0) #4
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %15 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 7) #5
  store ptr %15, ptr %14, align 8, !tbaa !67
  %16 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 4) #5
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !68
  %18 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 5) #5
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !69
  %20 = tail call ptr @cpp_lookup(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 11) #5
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.cpp_hashnode, ptr %20, i64 0, i32 3
  %23 = load i16, ptr %22, align 2
  %24 = or i16 %23, 512
  store i16 %24, ptr %22, align 2
  ret void
}

; Function Attrs: optsize
declare ptr @ht_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @alloc_node(ptr nocapture noundef readonly %0) #0 !prof !71 !PGOFuncName !72 {
  %2 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46, i32 5
  store i64 32, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 32
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46
  tail call void @_obstack_newchunk(ptr noundef nonnull %14, i32 noundef 32) #4
  %15 = load ptr, ptr %2, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %15, i64 0, i32 46, i32 5
  %17 = load i64, ptr %16, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %15, i64 0, i32 46, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  br label %20

20:                                               ; preds = %1, %13
  %21 = phi ptr [ %8, %1 ], [ %19, %13 ]
  %22 = phi i64 [ 32, %1 ], [ %17, %13 ]
  %23 = phi ptr [ %3, %1 ], [ %15, %13 ]
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %23, i64 0, i32 46, i32 3
  %25 = getelementptr inbounds i8, ptr %21, i64 %22
  store ptr %25, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %23, i64 0, i32 46, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %23, i64 0, i32 46, i32 10
  %31 = load i8, ptr %30, align 8
  %32 = or i8 %31, 2
  store i8 %32, ptr %30, align 8
  %33 = load ptr, ptr %2, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %33, i64 0, i32 46, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %33, i64 0, i32 46, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  br label %38

38:                                               ; preds = %20, %29
  %39 = phi ptr [ %25, %20 ], [ %37, %29 ]
  %40 = phi ptr [ %27, %20 ], [ %35, %29 ]
  %41 = phi ptr [ %23, %20 ], [ %33, %29 ]
  %42 = ptrtoint ptr %40 to i64
  %43 = getelementptr inbounds %struct.cpp_reader, ptr %41, i64 0, i32 46, i32 5
  store i64 %42, ptr %43, align 8, !tbaa !73
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %41, i64 0, i32 46, i32 3
  %45 = ptrtoint ptr %39 to i64
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %41, i64 0, i32 46, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !77
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = xor i32 %47, -1
  %51 = sext i32 %50 to i64
  %52 = and i64 %49, %51
  %53 = inttoptr i64 %52 to ptr
  store ptr %53, ptr %44, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.cpp_reader, ptr %41, i64 0, i32 46, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !78
  %56 = ptrtoint ptr %55 to i64
  %57 = sub i64 %52, %56
  %58 = getelementptr inbounds %struct.cpp_reader, ptr %41, i64 0, i32 46, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !74
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %56
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %38
  store ptr %59, ptr %44, align 8, !tbaa !75
  br label %64

64:                                               ; preds = %38, %63
  %65 = phi ptr [ %53, %38 ], [ %59, %63 ]
  %66 = getelementptr inbounds %struct.cpp_reader, ptr %41, i64 0, i32 46, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %40, i8 0, i64 32, i1 false)
  ret ptr %40
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #2

; Function Attrs: optsize
declare void @_cpp_init_directives(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_cpp_init_internal_pragmas(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cpp_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !79 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @ht_lookup(ptr noundef %5, ptr noundef %1, i64 noundef %6, i32 noundef 1) #4
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_destroy_hashtable(ptr noundef %0) local_unnamed_addr #0 !prof !71 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 55
  %3 = load i8, ptr %2, align 8, !tbaa !42
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  tail call void @ht_destroy(ptr noundef %7) #4
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 5
  store i64 %12, ptr %13, align 8, !tbaa !73
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %11
  %20 = icmp sgt i64 %19, %12
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %10, i64 %12
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 3
  store ptr %22, ptr %24, align 8, !tbaa !75
  br label %27

25:                                               ; preds = %15, %5
  %26 = getelementptr inbounds i8, ptr %10, i64 %12
  tail call void @obstack_free(ptr noundef nonnull %8, ptr noundef %26) #4
  br label %27

27:                                               ; preds = %21, %25, %1
  ret void
}

; Function Attrs: optsize
declare void @ht_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cpp_defined(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !71 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = sext i32 %2 to i64
  %7 = tail call ptr @ht_lookup(ptr noundef %5, ptr noundef %1, i64 noundef %6, i32 noundef 0) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cpp_hashnode, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 63
  %13 = icmp eq i16 %12, 1
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cpp_forall_identifiers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !71 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  tail call void @ht_forall(ptr noundef %5, ptr noundef %1, ptr noundef %2) #4
  ret void
}

; Function Attrs: optsize
declare void @ht_forall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_cpp_init_hashtable, ptr @_cpp_init_directives, i64 1}
!36 = !{ptr @_cpp_init_hashtable, ptr @_cpp_init_internal_pragmas, i64 1}
!37 = !{ptr @_cpp_init_hashtable, ptr @cpp_lookup, i64 4}
!38 = !{ptr @cpp_lookup, ptr @ht_lookup, i64 69}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!"branch_weights", i32 1, i32 2}
!42 = !{!43, !45, i64 1200}
!43 = !{!"cpp_reader", !44, i64 0, !44, i64 8, !47, i64 16, !44, i64 40, !48, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !49, i64 80, !44, i64 136, !44, i64 144, !50, i64 152, !48, i64 176, !45, i64 180, !44, i64 184, !44, i64 192, !52, i64 200, !44, i64 264, !44, i64 272, !44, i64 280, !44, i64 288, !44, i64 296, !44, i64 304, !54, i64 312, !45, i64 400, !45, i64 401, !44, i64 408, !44, i64 416, !45, i64 424, !44, i64 432, !55, i64 440, !44, i64 472, !48, i64 480, !48, i64 484, !44, i64 488, !48, i64 496, !56, i64 504, !56, i64 528, !56, i64 552, !56, i64 576, !56, i64 600, !44, i64 624, !44, i64 632, !50, i64 640, !50, i64 664, !44, i64 688, !54, i64 696, !54, i64 784, !44, i64 872, !57, i64 880, !44, i64 1016, !44, i64 1024, !44, i64 1032, !58, i64 1040, !60, i64 1168, !45, i64 1200, !61, i64 1208, !44, i64 1240, !44, i64 1248, !44, i64 1256, !44, i64 1264, !48, i64 1272, !62, i64 1280, !44, i64 1296}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !{!"lexer_state", !45, i64 0, !45, i64 1, !45, i64 2, !45, i64 3, !45, i64 4, !45, i64 5, !45, i64 6, !45, i64 7, !45, i64 8, !45, i64 9, !45, i64 10, !48, i64 12, !45, i64 16, !45, i64 17}
!48 = !{!"int", !45, i64 0}
!49 = !{!"cpp_context", !44, i64 0, !44, i64 8, !45, i64 16, !44, i64 32, !44, i64 40, !45, i64 48}
!50 = !{!"cpp_token", !48, i64 0, !48, i64 4, !51, i64 6, !45, i64 8}
!51 = !{!"short", !45, i64 0}
!52 = !{!"cpp_dir", !44, i64 0, !44, i64 8, !48, i64 16, !45, i64 20, !45, i64 21, !44, i64 24, !44, i64 32, !44, i64 40, !53, i64 48, !53, i64 56}
!53 = !{!"long", !45, i64 0}
!54 = !{!"obstack", !53, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !53, i64 40, !48, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !48, i64 80, !48, i64 80, !48, i64 80}
!55 = !{!"tokenrun", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!56 = !{!"cset_converter", !44, i64 0, !44, i64 8, !48, i64 16}
!57 = !{!"cpp_callbacks", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !44, i64 112, !44, i64 120, !44, i64 128}
!58 = !{!"cpp_options", !48, i64 0, !48, i64 4, !45, i64 8, !45, i64 9, !45, i64 10, !45, i64 11, !45, i64 12, !45, i64 13, !45, i64 14, !45, i64 15, !45, i64 16, !45, i64 17, !45, i64 18, !45, i64 19, !45, i64 20, !45, i64 21, !45, i64 22, !45, i64 23, !45, i64 24, !45, i64 25, !45, i64 26, !45, i64 27, !45, i64 28, !45, i64 29, !45, i64 30, !45, i64 31, !45, i64 32, !45, i64 33, !45, i64 34, !45, i64 35, !45, i64 36, !45, i64 37, !45, i64 38, !45, i64 39, !45, i64 40, !45, i64 41, !45, i64 42, !44, i64 48, !44, i64 56, !44, i64 64, !48, i64 72, !45, i64 76, !45, i64 77, !59, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !45, i64 120, !45, i64 121, !45, i64 122, !45, i64 123, !45, i64 124}
!59 = !{!"", !48, i64 0, !45, i64 4, !45, i64 5, !45, i64 6, !45, i64 7}
!60 = !{!"spec_nodes", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!61 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !48, i64 24}
!62 = !{!"", !44, i64 0, !48, i64 8, !48, i64 12}
!63 = !{!64, !44, i64 96}
!64 = !{!"ht", !54, i64 0, !44, i64 88, !44, i64 96, !44, i64 104, !48, i64 112, !48, i64 116, !44, i64 120, !48, i64 128, !48, i64 132, !45, i64 136}
!65 = !{!64, !44, i64 120}
!66 = !{!43, !44, i64 1016}
!67 = !{!60, !44, i64 0}
!68 = !{!60, !44, i64 8}
!69 = !{!60, !44, i64 16}
!70 = !{!60, !44, i64 24}
!71 = !{!"function_entry_count", i64 0}
!72 = !{!"cpp_identifiers.c:alloc_node"}
!73 = !{!43, !53, i64 736}
!74 = !{!43, !44, i64 728}
!75 = !{!43, !44, i64 720}
!76 = !{!43, !44, i64 712}
!77 = !{!43, !48, i64 744}
!78 = !{!43, !44, i64 704}
!79 = !{!"function_entry_count", i64 69}
