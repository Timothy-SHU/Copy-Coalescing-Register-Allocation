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

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #6
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !45
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #6
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !45
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_init_hashtable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !47 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %10, !prof !48

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 55
  store i8 1, ptr %5, align 8, !tbaa !49
  %6 = tail call ptr @ht_create(i32 noundef 13) #6
  %7 = getelementptr inbounds %struct.ht, ptr %6, i64 0, i32 2
  store ptr @alloc_node, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46
  %9 = tail call i32 @_obstack_begin(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #6
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi ptr [ %6, %4 ], [ %1, %2 ]
  %12 = getelementptr inbounds %struct.ht, ptr %11, i64 0, i32 6
  store ptr %0, ptr %12, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  store ptr %11, ptr %13, align 8, !tbaa !69
  tail call void @_cpp_init_directives(ptr noundef %0) #6
  tail call void @_cpp_init_internal_pragmas(ptr noundef %0) #6
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %15 = load ptr, ptr %13, align 8, !tbaa !69
  %16 = tail call ptr @ht_lookup(ptr noundef %15, ptr noundef nonnull @.str, i64 noundef 7, i32 noundef 1) #6
  store ptr %16, ptr %14, align 8, !tbaa !70
  %17 = load ptr, ptr %13, align 8, !tbaa !69
  %18 = tail call ptr @ht_lookup(ptr noundef %17, ptr noundef nonnull @.str.1, i64 noundef 4, i32 noundef 1) #6
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !71
  %20 = load ptr, ptr %13, align 8, !tbaa !69
  %21 = tail call ptr @ht_lookup(ptr noundef %20, ptr noundef nonnull @.str.2, i64 noundef 5, i32 noundef 1) #6
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !72
  %23 = load ptr, ptr %13, align 8, !tbaa !69
  %24 = tail call ptr @ht_lookup(ptr noundef %23, ptr noundef nonnull @.str.3, i64 noundef 11, i32 noundef 1) #6
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.cpp_hashnode, ptr %24, i64 0, i32 3
  %27 = load i16, ptr %26, align 2
  %28 = or i16 %27, 512
  store i16 %28, ptr %26, align 2
  ret void
}

declare ptr @ht_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal ptr @alloc_node(ptr nocapture noundef readonly %0) #2 !prof !40 {
  %2 = getelementptr inbounds %struct.ht, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46, i32 5
  store i64 32, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 32
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %3, i64 0, i32 46
  tail call void @_obstack_newchunk(ptr noundef nonnull %14, i32 noundef 32) #6
  br label %15

15:                                               ; preds = %1, %13
  %16 = load ptr, ptr %2, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %16, i64 0, i32 46, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %16, i64 0, i32 46, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds i8, ptr %20, i64 %18
  store ptr %21, ptr %19, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %16, i64 0, i32 46, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %16, i64 0, i32 46, i32 10
  %27 = load i8, ptr %26, align 8
  %28 = or i8 %27, 2
  store i8 %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %15, %25
  %30 = load ptr, ptr %2, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %30, i64 0, i32 46, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = ptrtoint ptr %32 to i64
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %30, i64 0, i32 46, i32 5
  store i64 %33, ptr %34, align 8, !tbaa !74
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %30, i64 0, i32 46, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = ptrtoint ptr %36 to i64
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %30, i64 0, i32 46, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !78
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %37
  %42 = xor i32 %39, -1
  %43 = sext i32 %42 to i64
  %44 = and i64 %41, %43
  %45 = inttoptr i64 %44 to ptr
  store ptr %45, ptr %35, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %30, i64 0, i32 46, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !79
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %44, %48
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %30, i64 0, i32 46, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = ptrtoint ptr %51 to i64
  %53 = sub i64 %52, %48
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %29
  store ptr %51, ptr %35, align 8, !tbaa !76
  br label %56

56:                                               ; preds = %29, %55
  %57 = load ptr, ptr %35, align 8, !tbaa !76
  store ptr %57, ptr %31, align 8, !tbaa !77
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 32, i1 false)
  ret ptr %32
}

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #3

declare void @_cpp_init_directives(ptr noundef) local_unnamed_addr #1

declare void @_cpp_init_internal_pragmas(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @cpp_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !80 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = zext i32 %2 to i64
  %7 = tail call ptr @ht_lookup(ptr noundef %5, ptr noundef %1, i64 noundef %6, i32 noundef 1) #6
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_destroy_hashtable(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 55
  %3 = load i8, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @ht_destroy(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 5
  store i64 %12, ptr %13, align 8, !tbaa !74
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %11
  %20 = icmp sgt i64 %19, %12
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %10, i64 %12
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 46, i32 3
  store ptr %22, ptr %24, align 8, !tbaa !76
  br label %27

25:                                               ; preds = %15, %5
  %26 = getelementptr inbounds i8, ptr %10, i64 %12
  tail call void @obstack_free(ptr noundef nonnull %8, ptr noundef %26) #6
  br label %27

27:                                               ; preds = %21, %25, %1
  ret void
}

declare void @ht_destroy(ptr noundef) local_unnamed_addr #1

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cpp_defined(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = sext i32 %2 to i64
  %7 = tail call ptr @ht_lookup(ptr noundef %5, ptr noundef %1, i64 noundef %6, i32 noundef 0) #6
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

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_forall_identifiers(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  tail call void @ht_forall(ptr noundef %5, ptr noundef %1, ptr noundef %2) #6
  ret void
}

declare void @ht_forall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_cpp_init_hashtable, ptr @_cpp_init_directives, i64 1}
!36 = !{ptr @_cpp_init_hashtable, ptr @_cpp_init_internal_pragmas, i64 1}
!37 = !{ptr @_cpp_init_hashtable, ptr @ht_lookup, i64 4}
!38 = !{ptr @cpp_lookup, ptr @ht_lookup, i64 65}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !43, i64 0}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!"branch_weights", i32 0, i32 1}
!49 = !{!50, !43, i64 1200}
!50 = !{!"cpp_reader", !42, i64 0, !42, i64 8, !51, i64 16, !42, i64 40, !46, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !52, i64 80, !42, i64 136, !42, i64 144, !53, i64 152, !46, i64 176, !43, i64 180, !42, i64 184, !42, i64 192, !55, i64 200, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !57, i64 312, !43, i64 400, !43, i64 401, !42, i64 408, !42, i64 416, !43, i64 424, !42, i64 432, !58, i64 440, !42, i64 472, !46, i64 480, !46, i64 484, !42, i64 488, !46, i64 496, !59, i64 504, !59, i64 528, !59, i64 552, !59, i64 576, !59, i64 600, !42, i64 624, !42, i64 632, !53, i64 640, !53, i64 664, !42, i64 688, !57, i64 696, !57, i64 784, !42, i64 872, !60, i64 880, !42, i64 1016, !42, i64 1024, !42, i64 1032, !61, i64 1040, !63, i64 1168, !43, i64 1200, !64, i64 1208, !42, i64 1240, !42, i64 1248, !42, i64 1256, !42, i64 1264, !46, i64 1272, !65, i64 1280, !42, i64 1296}
!51 = !{!"lexer_state", !43, i64 0, !43, i64 1, !43, i64 2, !43, i64 3, !43, i64 4, !43, i64 5, !43, i64 6, !43, i64 7, !43, i64 8, !43, i64 9, !43, i64 10, !46, i64 12, !43, i64 16, !43, i64 17}
!52 = !{!"cpp_context", !42, i64 0, !42, i64 8, !43, i64 16, !42, i64 32, !42, i64 40, !43, i64 48}
!53 = !{!"cpp_token", !46, i64 0, !46, i64 4, !54, i64 6, !43, i64 8}
!54 = !{!"short", !43, i64 0}
!55 = !{!"cpp_dir", !42, i64 0, !42, i64 8, !46, i64 16, !43, i64 20, !43, i64 21, !42, i64 24, !42, i64 32, !42, i64 40, !56, i64 48, !56, i64 56}
!56 = !{!"long", !43, i64 0}
!57 = !{!"obstack", !56, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !56, i64 40, !46, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !46, i64 80, !46, i64 80, !46, i64 80}
!58 = !{!"tokenrun", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!59 = !{!"cset_converter", !42, i64 0, !42, i64 8, !46, i64 16}
!60 = !{!"cpp_callbacks", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128}
!61 = !{!"cpp_options", !46, i64 0, !46, i64 4, !43, i64 8, !43, i64 9, !43, i64 10, !43, i64 11, !43, i64 12, !43, i64 13, !43, i64 14, !43, i64 15, !43, i64 16, !43, i64 17, !43, i64 18, !43, i64 19, !43, i64 20, !43, i64 21, !43, i64 22, !43, i64 23, !43, i64 24, !43, i64 25, !43, i64 26, !43, i64 27, !43, i64 28, !43, i64 29, !43, i64 30, !43, i64 31, !43, i64 32, !43, i64 33, !43, i64 34, !43, i64 35, !43, i64 36, !43, i64 37, !43, i64 38, !43, i64 39, !43, i64 40, !43, i64 41, !43, i64 42, !42, i64 48, !42, i64 56, !42, i64 64, !46, i64 72, !43, i64 76, !43, i64 77, !62, i64 80, !56, i64 88, !56, i64 96, !56, i64 104, !56, i64 112, !43, i64 120, !43, i64 121, !43, i64 122, !43, i64 123, !43, i64 124}
!62 = !{!"", !46, i64 0, !43, i64 4, !43, i64 5, !43, i64 6, !43, i64 7}
!63 = !{!"spec_nodes", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!64 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !46, i64 24}
!65 = !{!"", !42, i64 0, !46, i64 8, !46, i64 12}
!66 = !{!67, !42, i64 96}
!67 = !{!"ht", !57, i64 0, !42, i64 88, !42, i64 96, !42, i64 104, !46, i64 112, !46, i64 116, !42, i64 120, !46, i64 128, !46, i64 132, !43, i64 136}
!68 = !{!67, !42, i64 120}
!69 = !{!50, !42, i64 1016}
!70 = !{!63, !42, i64 0}
!71 = !{!63, !42, i64 8}
!72 = !{!63, !42, i64 16}
!73 = !{!63, !42, i64 24}
!74 = !{!50, !56, i64 736}
!75 = !{!50, !42, i64 728}
!76 = !{!50, !42, i64 720}
!77 = !{!50, !42, i64 712}
!78 = !{!50, !46, i64 744}
!79 = !{!50, !42, i64 704}
!80 = !{!"function_entry_count", i64 65}
