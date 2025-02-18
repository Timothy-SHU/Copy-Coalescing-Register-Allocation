; ModuleID = 'lto-section-out.c'
source_filename = "lto-section-out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.lto_output_stream = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.lto_decl_slot = type { ptr, i32 }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_lto_out_decl_state_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@forced_extern_inline = internal unnamed_addr global ptr null, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@decl_state_stack = internal unnamed_addr global ptr null, align 8
@lto_function_decl_states = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [18 x i8] c"lto-section-out.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_new_extern_inline_states() local_unnamed_addr #9 !prof !34 {
  %1 = tail call ptr @lto_bitmap_alloc() #17
  store ptr %1, ptr @forced_extern_inline, align 8, !tbaa !35
  ret void
}

declare ptr @lto_bitmap_alloc() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_delete_extern_inline_states() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !35
  tail call void @lto_bitmap_free(ptr noundef %1) #17
  store ptr null, ptr @forced_extern_inline, align 8, !tbaa !35
  ret void
}

declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_force_functions_extern_inline(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !35
  %3 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %2, ptr noundef %0) #17
  ret void
}

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @lto_forced_extern_inline_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @forced_extern_inline, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !46
  %5 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %4) #17
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lto_hash_decl_slot_node(ptr nocapture noundef readonly %0) #10 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = ptrtoint ptr %2 to i64
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 262143
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lto_eq_decl_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = load ptr, ptr %1, align 8, !tbaa !54
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lto_hash_type_slot_node(ptr nocapture noundef readonly %0) #11 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !46
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lto_eq_type_slot_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = load ptr, ptr %1, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_begin_section(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35), align 8, !tbaa !56
  tail call void %3(ptr noundef %0) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_end_section() local_unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 2), align 8, !tbaa !64
  tail call void %1() #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_write_stream(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  br label %6

6:                                                ; preds = %4, %16
  %7 = phi i32 [ 1024, %4 ], [ %20, %16 ]
  %8 = phi ptr [ %2, %4 ], [ %11, %16 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  %10 = add i32 %7, -8
  %11 = load ptr, ptr %8, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load i32, ptr %5, align 8, !tbaa !69
  %15 = sub i32 %10, %14
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %10, %6 ], [ %15, %13 ]
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 1), align 8, !tbaa !70
  %19 = zext i32 %17 to i64
  tail call void %18(ptr noundef nonnull %9, i64 noundef %19, ptr noundef nonnull %8) #17
  %20 = shl i32 %7, 1
  %21 = icmp eq ptr %11, null
  br i1 %21, label %22, label %6, !llvm.loop !71

22:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_1_stream(ptr nocapture noundef %0, i8 noundef signext %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @append_block(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  store i8 %1, ptr %9, align 1, !tbaa !46
  %10 = load ptr, ptr %8, align 8, !tbaa !72
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %8, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !73
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !73
  %15 = load i32, ptr %3, align 8, !tbaa !69
  %16 = add i32 %15, -1
  store i32 %16, ptr %3, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @append_block(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 4
  br i1 %8, label %10, label %12

10:                                               ; preds = %6
  store i32 1024, ptr %9, align 4, !tbaa !74
  %11 = tail call ptr @xmalloc(i64 noundef 1024) #17
  store ptr %11, ptr %0, align 8, !tbaa !65
  br label %19

12:                                               ; preds = %6
  %13 = load i32, ptr %9, align 4, !tbaa !74
  %14 = shl i32 %13, 1
  store i32 %14, ptr %9, align 4, !tbaa !74
  %15 = zext i32 %14 to i64
  %16 = tail call ptr @xmalloc(i64 noundef %15) #17
  %17 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  store ptr %16, ptr %18, align 8, !tbaa !67
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %16, %12 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %22 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 1
  store ptr %20, ptr %23, align 8, !tbaa !75
  store ptr null, ptr %20, align 8, !tbaa !67
  %24 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !74
  %26 = add i32 %25, -8
  store i32 %26, ptr %2, align 8, !tbaa !69
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_data_stream(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %5, %15
  %10 = phi i64 [ %2, %5 ], [ %28, %15 ]
  %11 = phi ptr [ %1, %5 ], [ %27, %15 ]
  %12 = load i32, ptr %6, align 8, !tbaa !69
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call fastcc void @append_block(ptr noundef %0)
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i32, ptr %6, align 8, !tbaa !69
  %17 = zext i32 %16 to i64
  %18 = tail call i64 @llvm.umin.i64(i64 %10, i64 %17)
  %19 = load ptr, ptr %7, align 8, !tbaa !72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %11, i64 %18, i1 false)
  %20 = load ptr, ptr %7, align 8, !tbaa !72
  %21 = getelementptr inbounds i8, ptr %20, i64 %18
  store ptr %21, ptr %7, align 8, !tbaa !72
  %22 = load i32, ptr %8, align 8, !tbaa !73
  %23 = trunc i64 %18 to i32
  %24 = add i32 %22, %23
  store i32 %24, ptr %8, align 8, !tbaa !73
  %25 = load i32, ptr %6, align 8, !tbaa !69
  %26 = sub i32 %25, %23
  store i32 %26, ptr %6, align 8, !tbaa !69
  %27 = getelementptr inbounds i8, ptr %11, i64 %18
  %28 = sub i64 %10, %18
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %9, !llvm.loop !76

30:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_uleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i64 [ %1, %2 ], [ %10, %18 ]
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 127
  %10 = lshr i64 %7, 7
  %11 = icmp ult i64 %7, 128
  %12 = or i32 %8, 128
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = trunc i32 %13 to i8
  %15 = load i32, ptr %3, align 8, !tbaa !69
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call fastcc void @append_block(ptr noundef %0)
  br label %18

18:                                               ; preds = %6, %17
  %19 = load ptr, ptr %4, align 8, !tbaa !72
  store i8 %14, ptr %19, align 1, !tbaa !46
  %20 = load ptr, ptr %4, align 8, !tbaa !72
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %4, align 8, !tbaa !72
  %22 = load i32, ptr %5, align 8, !tbaa !73
  %23 = add i32 %22, 1
  store i32 %23, ptr %5, align 8, !tbaa !73
  %24 = load i32, ptr %3, align 8, !tbaa !69
  %25 = add i32 %24, -1
  store i32 %25, ptr %3, align 8, !tbaa !69
  br i1 %11, label %26, label %6, !llvm.loop !77

26:                                               ; preds = %18
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_widest_uint_uleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i64 [ %1, %2 ], [ %10, %18 ]
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 127
  %10 = lshr i64 %7, 7
  %11 = icmp ult i64 %7, 128
  %12 = or i32 %8, 128
  %13 = select i1 %11, i32 %9, i32 %12
  %14 = trunc i32 %13 to i8
  %15 = load i32, ptr %3, align 8, !tbaa !69
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call fastcc void @append_block(ptr noundef %0)
  br label %18

18:                                               ; preds = %6, %17
  %19 = load ptr, ptr %4, align 8, !tbaa !72
  store i8 %14, ptr %19, align 1, !tbaa !46
  %20 = load ptr, ptr %4, align 8, !tbaa !72
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %4, align 8, !tbaa !72
  %22 = load i32, ptr %5, align 8, !tbaa !73
  %23 = add i32 %22, 1
  store i32 %23, ptr %5, align 8, !tbaa !73
  %24 = load i32, ptr %3, align 8, !tbaa !69
  %25 = add i32 %24, -1
  store i32 %25, ptr %3, align 8, !tbaa !69
  br i1 %11, label %26, label %6, !llvm.loop !78

26:                                               ; preds = %18
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_sleb128_stream(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  br label %6

6:                                                ; preds = %23, %2
  %7 = phi i64 [ %1, %2 ], [ %8, %23 ]
  %8 = ashr i64 %7, 7
  %9 = icmp ult i64 %7, 64
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 127
  %13 = icmp eq i64 %8, -1
  %14 = and i32 %11, 64
  %15 = icmp ne i32 %14, 0
  %16 = and i1 %13, %15
  %17 = or i32 %11, 128
  %18 = select i1 %16, i32 %12, i32 %17
  %19 = trunc i32 %18 to i8
  %20 = load i32, ptr %3, align 8, !tbaa !69
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  tail call fastcc void @append_block(ptr noundef %0)
  br label %23

23:                                               ; preds = %10, %22
  %24 = load ptr, ptr %4, align 8, !tbaa !72
  store i8 %19, ptr %24, align 1, !tbaa !46
  %25 = load ptr, ptr %4, align 8, !tbaa !72
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %26, ptr %4, align 8, !tbaa !72
  %27 = load i32, ptr %5, align 8, !tbaa !73
  %28 = add i32 %27, 1
  store i32 %28, ptr %5, align 8, !tbaa !73
  %29 = load i32, ptr %3, align 8, !tbaa !69
  %30 = add i32 %29, -1
  store i32 %30, ptr %3, align 8, !tbaa !69
  br i1 %16, label %47, label %6, !llvm.loop !79

31:                                               ; preds = %6
  %32 = trunc i64 %7 to i8
  %33 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !69
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call fastcc void @append_block(ptr noundef %0)
  br label %37

37:                                               ; preds = %31, %36
  %38 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  store i8 %32, ptr %39, align 1, !tbaa !46
  %40 = load ptr, ptr %38, align 8, !tbaa !72
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %41, ptr %38, align 8, !tbaa !72
  %42 = getelementptr inbounds %struct.lto_output_stream, ptr %0, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !73
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 8, !tbaa !73
  %45 = load i32, ptr %33, align 8, !tbaa !69
  %46 = add i32 %45, -1
  store i32 %46, ptr %33, align 8, !tbaa !69
  br label %47

47:                                               ; preds = %23, %37
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @lto_output_decl_index(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.lto_decl_slot, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  store ptr %2, ptr %5, align 8, !tbaa !54
  %6 = load ptr, ptr %1, align 8, !tbaa !80
  %7 = call ptr @htab_find_slot(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 1) #17
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = call ptr @xmalloc(i64 noundef 16) #17
  %12 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !82
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !82
  store ptr %2, ptr %11, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.lto_decl_slot, ptr %11, i64 0, i32 1
  store i32 %13, ptr %15, align 8, !tbaa !83
  store ptr %11, ptr %7, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.lto_tree_ref_encoder, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.VEC_tree_base, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !84
  %22 = load i32, ptr %17, align 8, !tbaa !86
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %10, %19
  %25 = call ptr @vec_heap_p_reserve(ptr noundef %17, i32 noundef 1) #17
  store ptr %25, ptr %16, align 8, !tbaa !35
  br label %26

26:                                               ; preds = %19, %24
  %27 = load ptr, ptr %16, align 8, !tbaa !35
  %28 = load i32, ptr %27, align 8, !tbaa !86
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !86
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.VEC_tree_base, ptr %27, i64 0, i32 2, i64 %30
  store ptr %2, ptr %31, align 8, !tbaa !35
  br label %35

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.lto_decl_slot, ptr %8, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !83
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i8 [ 1, %26 ], [ 0, %32 ]
  %37 = phi i32 [ %13, %26 ], [ %34, %32 ]
  %38 = icmp eq ptr %0, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = sext i32 %37 to i64
  call void @lto_output_uleb128_stream(ptr noundef nonnull %0, i64 noundef %40)
  br label %41

41:                                               ; preds = %39, %35
  store i32 %37, ptr %3, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret i8 %36
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_field_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 1
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4), !range !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_fn_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 2
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4), !range !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_namespace_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 5
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4), !range !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_var_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 3
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4), !range !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_type_decl_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 4
  %6 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4), !range !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_output_type_ref_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = call zeroext i8 @lto_output_decl_index(ptr noundef %1, ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4), !range !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @lto_create_simple_output_block(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #17
  store i32 %0, ptr %2, align 8, !tbaa !88
  %3 = load ptr, ptr @decl_state_stack, align 8
  %4 = load i32, ptr %3, align 8, !tbaa !90
  %5 = add i32 %4, -1
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %3, i64 0, i32 2, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !92
  %10 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #17
  %11 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !93
  ret ptr %2
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lto_get_out_decl_state() local_unnamed_addr #11 !prof !34 {
  %1 = load ptr, ptr @decl_state_stack, align 8
  %2 = load i32, ptr %1, align 8, !tbaa !90
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %1, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_destroy_simple_output_block(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.lto_simple_header, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %3 = load i32, ptr %0, align 8, !tbaa !88
  %4 = tail call ptr @lto_get_section_name(i32 noundef %3, ptr noundef null) #17
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35), align 8, !tbaa !56
  tail call void %5(ptr noundef %4) #17
  tail call void @free(ptr noundef %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i16 1, ptr %2, align 4, !tbaa !94
  %6 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 1
  store i16 0, ptr %6, align 2, !tbaa !97
  %7 = getelementptr inbounds %struct.lto_header, ptr %2, i64 0, i32 2
  store i32 3, ptr %7, align 4, !tbaa !98
  %8 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !99
  %9 = getelementptr inbounds %struct.lto_simple_output_block, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = getelementptr inbounds %struct.lto_output_stream, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.lto_simple_header, ptr %2, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !100
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #17
  call void @lto_output_data_stream(ptr noundef %14, ptr noundef nonnull %2, i64 noundef 16)
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.lto_output_stream, ptr %14, i64 0, i32 3
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i32 [ 1024, %17 ], [ %33, %29 ]
  %21 = phi ptr [ %15, %17 ], [ %24, %29 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  %23 = add i32 %20, -8
  %24 = load ptr, ptr %21, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, ptr %18, align 8, !tbaa !69
  %28 = sub i32 %23, %27
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i32 [ %23, %19 ], [ %28, %26 ]
  %31 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 1), align 8, !tbaa !70
  %32 = zext i32 %30 to i64
  tail call void %31(ptr noundef nonnull %22, i64 noundef %32, ptr noundef nonnull %21) #17
  %33 = shl i32 %20, 1
  %34 = icmp eq ptr %24, null
  br i1 %34, label %35, label %19, !llvm.loop !71

35:                                               ; preds = %29, %1
  tail call void @free(ptr noundef %14)
  %36 = load ptr, ptr %9, align 8, !tbaa !93
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.lto_output_stream, ptr %36, i64 0, i32 3
  br label %41

41:                                               ; preds = %39, %51
  %42 = phi i32 [ 1024, %39 ], [ %55, %51 ]
  %43 = phi ptr [ %37, %39 ], [ %46, %51 ]
  %44 = getelementptr inbounds i8, ptr %43, i64 8
  %45 = add i32 %42, -8
  %46 = load ptr, ptr %43, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, ptr %40, align 8, !tbaa !69
  %50 = sub i32 %45, %49
  br label %51

51:                                               ; preds = %48, %41
  %52 = phi i32 [ %45, %41 ], [ %50, %48 ]
  %53 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 1), align 8, !tbaa !70
  %54 = zext i32 %52 to i64
  tail call void %53(ptr noundef nonnull %44, i64 noundef %54, ptr noundef nonnull %43) #17
  %55 = shl i32 %42, 1
  %56 = icmp eq ptr %46, null
  br i1 %56, label %57, label %41, !llvm.loop !71

57:                                               ; preds = %51, %35
  %58 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 35, i32 2), align 8, !tbaa !64
  tail call void %58() #17
  %59 = load ptr, ptr %9, align 8, !tbaa !93
  tail call void @free(ptr noundef %59)
  tail call void @free(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

declare ptr @lto_get_section_name(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: cold nounwind uwtable
define dso_local ptr @lto_new_out_decl_state() local_unnamed_addr #9 !prof !34 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 184) #17
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i64 [ 0, %0 ], [ %11, %2 ]
  %4 = icmp eq i64 %3, 0
  %5 = select i1 %4, ptr @lto_hash_type_slot_node, ptr @lto_hash_decl_slot_node
  %6 = select i1 %4, ptr @lto_eq_type_slot_node, ptr @lto_eq_decl_slot_node
  %7 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %3
  %8 = tail call ptr @htab_create(i64 noundef 37, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @free) #17
  store ptr %8, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %3, i32 1
  store i32 0, ptr %9, align 8, !tbaa !82
  %10 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %3, i32 2
  store ptr null, ptr %10, align 8, !tbaa !101
  %11 = add nuw nsw i64 %3, 1
  %12 = icmp eq i64 %11, 7
  br i1 %12, label %13, label %2, !llvm.loop !102

13:                                               ; preds = %2
  %14 = tail call ptr @lto_cgraph_encoder_new() #17
  %15 = getelementptr inbounds %struct.lto_out_decl_state, ptr %1, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !103
  ret ptr %1
}

declare ptr @lto_cgraph_encoder_new() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_delete_out_decl_state(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %1, %13
  %3 = phi i64 [ 0, %1 ], [ %14, %13 ]
  %4 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @htab_delete(ptr noundef nonnull %5) #17
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %0, i64 0, i64 %3, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef %10)
  br label %13

13:                                               ; preds = %8, %12
  store ptr null, ptr %9, align 8, !tbaa !35
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 7
  br i1 %15, label %16, label %2, !llvm.loop !105

16:                                               ; preds = %13
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_push_out_decl_state(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @decl_state_stack, align 8, !tbaa !35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !106
  %7 = load i32, ptr %2, align 8, !tbaa !90
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1, %4
  %10 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %10, ptr @decl_state_stack, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr @decl_state_stack, align 8, !tbaa !35
  %13 = load i32, ptr %12, align 8, !tbaa !90
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !90
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %12, i64 0, i32 2, i64 %15
  store ptr %0, ptr %16, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @lto_pop_out_decl_state() local_unnamed_addr #15 !prof !34 {
  %1 = load ptr, ptr @decl_state_stack, align 8
  %2 = load i32, ptr %1, align 8, !tbaa !90
  %3 = add i32 %2, -1
  store i32 %3, ptr %1, align 8, !tbaa !90
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %1, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_record_function_out_decl_state(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %2, %9
  %4 = phi i64 [ 0, %2 ], [ %10, %9 ]
  %5 = getelementptr inbounds [7 x %struct.lto_tree_ref_encoder], ptr %1, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @htab_delete(ptr noundef nonnull %6) #17
  store ptr null, ptr %5, align 8, !tbaa !80
  br label %9

9:                                                ; preds = %3, %8
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 7
  br i1 %11, label %12, label %3, !llvm.loop !107

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lto_out_decl_state, ptr %1, i64 0, i32 2
  store ptr %0, ptr %13, align 8, !tbaa !108
  %14 = load ptr, ptr @lto_function_decl_states, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !106
  %19 = load i32, ptr %14, align 8, !tbaa !90
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %12, %16
  %22 = tail call ptr @vec_heap_p_reserve(ptr noundef %14, i32 noundef 1) #17
  store ptr %22, ptr @lto_function_decl_states, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %16, %21
  %24 = load ptr, ptr @lto_function_decl_states, align 8, !tbaa !35
  %25 = load i32, ptr %24, align 8, !tbaa !90
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !90
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds %struct.VEC_lto_out_decl_state_ptr_base, ptr %24, i64 0, i32 2, i64 %27
  store ptr %1, ptr %28, align 8, !tbaa !35
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 0}
!55 = !{!"lto_decl_slot", !36, i64 0, !41, i64 8}
!56 = !{!57, !36, i64 560}
!57 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !58, i64 240, !59, i64 248, !60, i64 256, !61, i64 272, !62, i64 432, !63, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!58 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!59 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!60 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!61 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!62 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!63 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!64 = !{!57, !36, i64 576}
!65 = !{!66, !36, i64 0}
!66 = !{!"lto_output_stream", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32}
!67 = !{!68, !36, i64 0}
!68 = !{!"lto_char_ptr_base", !36, i64 0}
!69 = !{!66, !41, i64 24}
!70 = !{!57, !36, i64 568}
!71 = distinct !{!71, !52, !53}
!72 = !{!66, !36, i64 16}
!73 = !{!66, !41, i64 32}
!74 = !{!66, !41, i64 28}
!75 = !{!66, !36, i64 8}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = !{!81, !36, i64 0}
!81 = !{!"lto_tree_ref_encoder", !36, i64 0, !41, i64 8, !36, i64 16}
!82 = !{!81, !41, i64 8}
!83 = !{!55, !41, i64 8}
!84 = !{!85, !41, i64 4}
!85 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!86 = !{!85, !41, i64 0}
!87 = !{i8 0, i8 2}
!88 = !{!89, !41, i64 0}
!89 = !{!"lto_simple_output_block", !41, i64 0, !36, i64 8, !36, i64 16}
!90 = !{!91, !41, i64 0}
!91 = !{!"VEC_lto_out_decl_state_ptr_base", !41, i64 0, !41, i64 4, !37, i64 8}
!92 = !{!89, !36, i64 8}
!93 = !{!89, !36, i64 16}
!94 = !{!95, !43, i64 0}
!95 = !{!"lto_simple_header", !96, i64 0, !41, i64 8, !41, i64 12}
!96 = !{!"lto_header", !43, i64 0, !43, i64 2, !41, i64 4}
!97 = !{!95, !43, i64 2}
!98 = !{!95, !41, i64 4}
!99 = !{!95, !41, i64 12}
!100 = !{!95, !41, i64 8}
!101 = !{!81, !36, i64 16}
!102 = distinct !{!102, !52, !53}
!103 = !{!104, !36, i64 168}
!104 = !{!"lto_out_decl_state", !37, i64 0, !36, i64 168, !36, i64 176}
!105 = distinct !{!105, !52, !53}
!106 = !{!91, !41, i64 4}
!107 = distinct !{!107, !52, !53}
!108 = !{!104, !36, i64 176}
