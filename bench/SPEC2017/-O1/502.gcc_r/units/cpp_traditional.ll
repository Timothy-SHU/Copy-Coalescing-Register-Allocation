; ModuleID = 'cpp_traditional.c'
source_filename = "cpp_traditional.c"
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
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct._cpp_line_note = type { ptr, i32 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.cpp_macro = type { ptr, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { ptr }
%struct._cpp_buff = type { ptr, ptr, ptr, ptr }
%struct.block = type { i32, i16, [1 x i8] }

@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str = private unnamed_addr constant [47 x i8] c"unterminated argument list invoking macro \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"detected recursion whilst expanding macro \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"syntax error in macro parameter list\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #12
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_overlay_buffer(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !58
  %6 = load ptr, ptr %4, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 57
  store ptr %6, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 58
  store ptr %9, ptr %10, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 59
  store ptr %12, ptr %13, align 8, !tbaa !65
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 13
  store i8 0, ptr %14, align 8, !tbaa !66
  store ptr %1, ptr %4, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %16, ptr %8, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_remove_overlay(ptr nocapture noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 57
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  store ptr %5, ptr %3, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 58
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 59
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 13
  store i8 1, ptr %12, align 8, !tbaa !66
  store ptr null, ptr %2, align 8, !tbaa !58
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @_cpp_read_logical_line_trad(ptr noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  br label %3

3:                                                ; preds = %17, %1
  %4 = load ptr, ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 13
  %6 = load i8, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3, %8
  %12 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef nonnull %0, ptr noundef null)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %2, align 2, !tbaa !68
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  br label %3, !llvm.loop !69

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !41
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %8, %18
  %23 = phi i8 [ %21, %18 ], [ 0, %8 ]
  ret i8 %23
}

declare zeroext i8 @_cpp_get_fresh_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @_cpp_scan_out_logical_line(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !72
  %6 = load ptr, ptr %0, align 8, !tbaa !41
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.cpp_context, ptr %9, i64 0, i32 2
  store ptr %7, ptr %10, align 8, !tbaa !74
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = load ptr, ptr %8, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.cpp_context, ptr %14, i64 0, i32 2, i32 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = getelementptr inbounds %struct.line_maps, ptr %20, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !78
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 3
  store i32 %22, ptr %23, align 8, !tbaa !80
  %24 = load ptr, ptr %0, align 8, !tbaa !41
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 1
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %28 = icmp ne ptr %1, null
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  br label %34

34:                                               ; preds = %136, %2
  %35 = phi i32 [ 0, %2 ], [ %137, %136 ]
  %36 = phi i32 [ 0, %2 ], [ %138, %136 ]
  %37 = phi i64 [ 0, %2 ], [ %139, %136 ]
  %38 = phi ptr [ null, %2 ], [ %140, %136 ]
  %39 = phi ptr [ null, %2 ], [ %141, %136 ]
  %40 = phi ptr [ null, %2 ], [ %142, %136 ]
  %41 = phi i8 [ %5, %2 ], [ %81, %136 ]
  %42 = phi i32 [ 0, %2 ], [ %143, %136 ]
  %43 = phi i32 [ 0, %2 ], [ %144, %136 ]
  %44 = phi i32 [ 0, %2 ], [ %145, %136 ]
  %45 = phi i8 [ 1, %2 ], [ %105, %136 ]
  %46 = load ptr, ptr %8, align 8, !tbaa !73
  %47 = getelementptr inbounds %struct.cpp_context, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !74
  %49 = getelementptr inbounds %struct.cpp_context, ptr %46, i64 0, i32 2, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %48 to i64
  %53 = sub i64 %51, %52
  %54 = add i64 %53, 3
  %55 = load ptr, ptr %26, align 8, !tbaa !81
  %56 = load ptr, ptr %18, align 8, !tbaa !76
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = icmp ugt i64 %54, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %34
  %62 = load ptr, ptr %16, align 8, !tbaa !75
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %58, %63
  %65 = add i64 %64, %54
  %66 = mul i64 %65, 3
  %67 = lshr i64 %66, 1
  %68 = tail call ptr @xrealloc(ptr noundef %62, i64 noundef %67) #12
  store ptr %68, ptr %16, align 8, !tbaa !75
  %69 = getelementptr inbounds i8, ptr %68, i64 %67
  store ptr %69, ptr %26, align 8, !tbaa !81
  %70 = getelementptr inbounds i8, ptr %68, i64 %64
  store ptr %70, ptr %18, align 8, !tbaa !76
  br label %71

71:                                               ; preds = %34, %61
  %72 = load ptr, ptr %18, align 8, !tbaa !76
  %73 = getelementptr inbounds %struct.cpp_context, ptr %46, i64 0, i32 1
  br label %74

74:                                               ; preds = %617, %71
  %75 = phi i32 [ %35, %71 ], [ %600, %617 ]
  %76 = phi i32 [ %36, %71 ], [ %601, %617 ]
  %77 = phi i64 [ %37, %71 ], [ %602, %617 ]
  %78 = phi ptr [ %38, %71 ], [ %603, %617 ]
  %79 = phi ptr [ %39, %71 ], [ %604, %617 ]
  %80 = phi ptr [ %40, %71 ], [ %605, %617 ]
  %81 = phi i8 [ %41, %71 ], [ 0, %617 ]
  %82 = phi i32 [ %42, %71 ], [ %618, %617 ]
  %83 = phi i32 [ %43, %71 ], [ %607, %617 ]
  %84 = phi i32 [ %44, %71 ], [ %608, %617 ]
  %85 = phi ptr [ %72, %71 ], [ %609, %617 ]
  %86 = phi ptr [ %48, %71 ], [ %610, %617 ]
  %87 = phi i8 [ %45, %71 ], [ %611, %617 ]
  br label %88

88:                                               ; preds = %74, %282
  %89 = phi i32 [ %283, %282 ], [ %75, %74 ]
  %90 = phi i32 [ %284, %282 ], [ %76, %74 ]
  %91 = phi i64 [ %285, %282 ], [ %77, %74 ]
  %92 = phi ptr [ %286, %282 ], [ %78, %74 ]
  %93 = phi ptr [ %287, %282 ], [ %79, %74 ]
  %94 = phi ptr [ %288, %282 ], [ %80, %74 ]
  %95 = phi i32 [ %289, %282 ], [ %82, %74 ]
  %96 = phi i32 [ %107, %282 ], [ %83, %74 ]
  %97 = phi ptr [ %291, %282 ], [ %85, %74 ]
  %98 = phi ptr [ %219, %282 ], [ %86, %74 ]
  %99 = phi i8 [ %105, %282 ], [ %87, %74 ]
  br label %100

100:                                              ; preds = %88, %592
  %101 = phi i32 [ %95, %88 ], [ 5, %592 ]
  %102 = phi i32 [ %96, %88 ], [ %107, %592 ]
  %103 = phi ptr [ %97, %88 ], [ %593, %592 ]
  %104 = phi ptr [ %98, %88 ], [ %594, %592 ]
  %105 = phi i8 [ %99, %88 ], [ %595, %592 ]
  br label %106

106:                                              ; preds = %100, %205
  %107 = phi i32 [ %102, %100 ], [ 0, %205 ]
  %108 = phi ptr [ %103, %100 ], [ %209, %205 ]
  %109 = phi ptr [ %104, %100 ], [ %208, %205 ]
  br label %110

110:                                              ; preds = %130, %106
  %111 = phi ptr [ %108, %106 ], [ %129, %130 ]
  %112 = phi ptr [ %109, %106 ], [ %131, %130 ]
  %113 = load ptr, ptr %73, align 8, !tbaa !82
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load ptr, ptr %0, align 8, !tbaa !41
  %117 = getelementptr inbounds %struct.cpp_buffer, ptr %116, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !83
  %119 = getelementptr inbounds %struct.cpp_buffer, ptr %116, i64 0, i32 6
  %120 = load i32, ptr %119, align 8, !tbaa !84
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct._cpp_line_note, ptr %118, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !85
  %124 = icmp ult ptr %112, %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %115
  store ptr %112, ptr %116, align 8, !tbaa !59
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0) #12
  br label %126

126:                                              ; preds = %125, %115, %110
  %127 = getelementptr inbounds i8, ptr %112, i64 1
  %128 = load i8, ptr %112, align 1, !tbaa !74
  %129 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 %128, ptr %111, align 1, !tbaa !74
  switch i8 %128, label %599 [
    i8 32, label %130
    i8 9, label %130
    i8 12, label %130
    i8 11, label %130
    i8 0, label %130
    i8 10, label %132
    i8 60, label %183
    i8 62, label %186
    i8 34, label %189
    i8 39, label %189
    i8 92, label %195
    i8 47, label %200
    i8 95, label %210
    i8 97, label %210
    i8 98, label %210
    i8 99, label %210
    i8 100, label %210
    i8 101, label %210
    i8 102, label %210
    i8 103, label %210
    i8 104, label %210
    i8 105, label %210
    i8 106, label %210
    i8 107, label %210
    i8 108, label %210
    i8 109, label %210
    i8 110, label %210
    i8 111, label %210
    i8 112, label %210
    i8 113, label %210
    i8 114, label %210
    i8 115, label %210
    i8 116, label %210
    i8 117, label %210
    i8 118, label %210
    i8 119, label %210
    i8 120, label %210
    i8 121, label %210
    i8 122, label %210
    i8 65, label %210
    i8 66, label %210
    i8 67, label %210
    i8 68, label %210
    i8 69, label %210
    i8 70, label %210
    i8 71, label %210
    i8 72, label %210
    i8 73, label %210
    i8 74, label %210
    i8 75, label %210
    i8 76, label %210
    i8 77, label %210
    i8 78, label %210
    i8 79, label %210
    i8 80, label %210
    i8 81, label %210
    i8 82, label %210
    i8 83, label %210
    i8 84, label %210
    i8 85, label %210
    i8 86, label %210
    i8 87, label %210
    i8 88, label %210
    i8 89, label %210
    i8 90, label %210
    i8 40, label %292
    i8 44, label %305
    i8 41, label %326
    i8 35, label %517
  ]

130:                                              ; preds = %126, %126, %126, %126, %126, %180
  %131 = phi ptr [ %127, %126 ], [ %127, %126 ], [ %127, %126 ], [ %127, %126 ], [ %127, %126 ], [ %182, %180 ]
  br label %110, !llvm.loop !87

132:                                              ; preds = %126
  %133 = load ptr, ptr %73, align 8, !tbaa !82
  %134 = icmp eq ptr %133, null
  store ptr %111, ptr %18, align 8, !tbaa !76
  br i1 %134, label %146, label %135

135:                                              ; preds = %132
  tail call void @_cpp_pop_context(ptr noundef nonnull %0) #12
  br label %136

136:                                              ; preds = %511, %282, %135
  %137 = phi i32 [ %89, %135 ], [ %283, %282 ], [ %364, %511 ]
  %138 = phi i32 [ %90, %135 ], [ %284, %282 ], [ %90, %511 ]
  %139 = phi i64 [ %91, %135 ], [ %285, %282 ], [ %91, %511 ]
  %140 = phi ptr [ %92, %135 ], [ %286, %282 ], [ %92, %511 ]
  %141 = phi ptr [ %93, %135 ], [ %287, %282 ], [ %93, %511 ]
  %142 = phi ptr [ %94, %135 ], [ %288, %282 ], [ %94, %511 ]
  %143 = phi i32 [ %101, %135 ], [ %289, %282 ], [ 0, %511 ]
  %144 = phi i32 [ %107, %135 ], [ %107, %282 ], [ 0, %511 ]
  %145 = phi i32 [ %84, %135 ], [ %84, %282 ], [ 0, %511 ]
  br label %34

146:                                              ; preds = %132
  %147 = add i32 %101, -1
  %148 = icmp ult i32 %147, 2
  %149 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %127, ptr %149, align 8, !tbaa !59
  %150 = getelementptr inbounds %struct.cpp_buffer, ptr %149, i64 0, i32 13
  store i8 1, ptr %150, align 8, !tbaa !66
  %151 = load ptr, ptr %19, align 8, !tbaa !77
  %152 = load ptr, ptr %151, align 8, !tbaa !88
  %153 = getelementptr inbounds %struct.line_maps, ptr %151, i64 0, i32 2
  %154 = load i32, ptr %153, align 4, !tbaa !89
  %155 = add i32 %154, -1
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.line_maps, ptr %151, i64 0, i32 8
  %158 = load i32, ptr %157, align 4, !tbaa !78
  %159 = getelementptr inbounds %struct.line_map, ptr %152, i64 %156, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !90
  %161 = sub i32 %158, %160
  %162 = getelementptr inbounds %struct.line_map, ptr %152, i64 %156, i32 6
  %163 = load i8, ptr %162, align 2
  %164 = zext nneg i8 %163 to i32
  %165 = lshr i32 %161, %164
  %166 = getelementptr inbounds %struct.line_map, ptr %152, i64 %156, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !92
  %168 = add i32 %167, 1
  %169 = add i32 %168, %165
  %170 = tail call i32 @linemap_line_start(ptr noundef nonnull %151, i32 noundef %169, i32 noundef 0) #12
  br i1 %148, label %171, label %625

171:                                              ; preds = %146
  %172 = load i8, ptr %3, align 8, !tbaa !93
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %625

174:                                              ; preds = %171
  %175 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #12
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %625, label %177

177:                                              ; preds = %174
  %178 = icmp eq i32 %101, 2
  br i1 %178, label %179, label %180

179:                                              ; preds = %177
  store i8 32, ptr %111, align 1, !tbaa !74
  br label %180

180:                                              ; preds = %179, %177
  %181 = load ptr, ptr %0, align 8, !tbaa !41
  %182 = load ptr, ptr %181, align 8, !tbaa !59
  br label %130

183:                                              ; preds = %126
  %184 = icmp eq i8 %81, 0
  %185 = select i1 %184, i32 %107, i32 62
  br label %599

186:                                              ; preds = %126
  %187 = icmp eq i32 %107, 62
  %188 = select i1 %187, i32 0, i32 %107
  br label %599

189:                                              ; preds = %126, %126
  %190 = zext i8 %128 to i32
  %191 = icmp eq i32 %107, %190
  br i1 %191, label %599, label %192

192:                                              ; preds = %189
  %193 = icmp eq i32 %107, 0
  %194 = select i1 %193, i32 %190, i32 %107
  br label %599

195:                                              ; preds = %126
  %196 = load i8, ptr %127, align 1, !tbaa !74
  switch i8 %196, label %599 [
    i8 92, label %197
    i8 34, label %197
    i8 39, label %197
  ]

197:                                              ; preds = %195, %195, %195
  %198 = getelementptr inbounds i8, ptr %112, i64 2
  %199 = getelementptr inbounds i8, ptr %111, i64 2
  store i8 %196, ptr %129, align 1, !tbaa !74
  br label %599

200:                                              ; preds = %126
  %201 = icmp eq i32 %107, 0
  br i1 %201, label %202, label %599

202:                                              ; preds = %200
  %203 = load i8, ptr %127, align 1, !tbaa !74
  %204 = icmp eq i8 %203, 42
  br i1 %204, label %205, label %599

205:                                              ; preds = %202
  %206 = icmp ne ptr %1, null
  %207 = zext i1 %206 to i32
  store ptr %129, ptr %18, align 8, !tbaa !76
  %208 = tail call fastcc ptr @copy_comment(ptr noundef nonnull %0, ptr noundef nonnull %127, i32 noundef %207)
  %209 = load ptr, ptr %18, align 8, !tbaa !76
  br label %106, !llvm.loop !87

210:                                              ; preds = %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126, %126
  %211 = load i8, ptr %27, align 2, !tbaa !68
  %212 = icmp eq i8 %211, 0
  %213 = icmp eq i32 %107, 0
  %214 = or i1 %28, %213
  %215 = select i1 %212, i1 %214, i1 false
  br i1 %215, label %216, label %599

216:                                              ; preds = %210
  store ptr %111, ptr %18, align 8, !tbaa !76
  %217 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %112)
  %218 = load ptr, ptr %18, align 8, !tbaa !76
  %219 = load ptr, ptr %47, align 8, !tbaa !74
  %220 = getelementptr inbounds %struct.cpp_hashnode, ptr %217, i64 0, i32 3
  %221 = load i16, ptr %220, align 2
  %222 = and i16 %221, 63
  %223 = icmp eq i16 %222, 1
  %224 = icmp ult i32 %101, 2
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %263

226:                                              ; preds = %216
  %227 = load i8, ptr %29, align 8, !tbaa !94
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %263

229:                                              ; preds = %226
  store i8 0, ptr %32, align 8, !tbaa !95
  %230 = load i16, ptr %220, align 2
  %231 = and i16 %230, 256
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %233, label %259

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.cpp_hashnode, ptr %217, i64 0, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !74
  %236 = getelementptr inbounds %struct.cpp_macro, ptr %235, i64 0, i32 5
  %237 = load i8, ptr %236, align 2
  %238 = and i8 %237, 1
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %259, label %240

240:                                              ; preds = %233
  %241 = getelementptr inbounds %struct.cpp_macro, ptr %235, i64 0, i32 4
  %242 = load i16, ptr %241, align 8, !tbaa !96
  %243 = icmp eq ptr %94, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef nonnull %94) #12
  br label %245

245:                                              ; preds = %240, %244
  %246 = zext i16 %242 to i64
  %247 = shl nuw nsw i64 %246, 3
  %248 = add nuw nsw i64 %247, 8
  %249 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %248) #12
  %250 = getelementptr inbounds %struct._cpp_buff, ptr %249, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !98
  %252 = load ptr, ptr %16, align 8, !tbaa !75
  %253 = ptrtoint ptr %111 to i64
  %254 = ptrtoint ptr %252 to i64
  %255 = sub i64 %253, %254
  %256 = load ptr, ptr %19, align 8, !tbaa !77
  %257 = getelementptr inbounds %struct.line_maps, ptr %256, i64 0, i32 8
  %258 = load i32, ptr %257, align 4, !tbaa !78
  br label %282, !llvm.loop !87

259:                                              ; preds = %233, %229
  %260 = tail call fastcc zeroext i8 @recursive_macro(ptr noundef nonnull %0, ptr noundef %217), !range !100
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %259
  store ptr %111, ptr %18, align 8, !tbaa !76
  tail call fastcc void @push_replacement_text(ptr noundef nonnull %0, ptr noundef %217)
  br label %282

263:                                              ; preds = %226, %216
  %264 = and i16 %221, 4096
  %265 = icmp ne i16 %264, 0
  %266 = and i1 %28, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  store ptr %111, ptr %18, align 8, !tbaa !76
  %268 = getelementptr inbounds %struct.cpp_hashnode, ptr %217, i64 0, i32 4
  %269 = load i16, ptr %268, align 8, !tbaa !74
  %270 = zext i16 %269 to i32
  tail call fastcc void @save_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %270)
  %271 = load ptr, ptr %16, align 8, !tbaa !75
  br label %282

272:                                              ; preds = %263
  %273 = icmp eq i32 %101, 5
  br i1 %273, label %282, label %274, !llvm.loop !87

274:                                              ; preds = %272
  %275 = load i8, ptr %30, align 4, !tbaa !101
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %31, align 8, !tbaa !102
  %279 = icmp eq ptr %217, %278
  %280 = select i1 %279, i32 3, i32 %101
  %281 = select i1 %279, i32 4, i32 0
  br label %282, !llvm.loop !87

282:                                              ; preds = %277, %259, %274, %267, %272, %262, %245
  %283 = phi i32 [ %89, %262 ], [ %89, %259 ], [ 0, %245 ], [ %89, %272 ], [ %89, %274 ], [ %89, %277 ], [ %89, %267 ]
  %284 = phi i32 [ %90, %262 ], [ %90, %259 ], [ %258, %245 ], [ %90, %272 ], [ %90, %274 ], [ %90, %277 ], [ %90, %267 ]
  %285 = phi i64 [ %91, %262 ], [ %91, %259 ], [ %255, %245 ], [ %91, %272 ], [ %91, %274 ], [ %91, %277 ], [ %91, %267 ]
  %286 = phi ptr [ %92, %262 ], [ %92, %259 ], [ %217, %245 ], [ %92, %272 ], [ %92, %274 ], [ %92, %277 ], [ %92, %267 ]
  %287 = phi ptr [ %93, %262 ], [ %93, %259 ], [ %251, %245 ], [ %93, %272 ], [ %93, %274 ], [ %93, %277 ], [ %93, %267 ]
  %288 = phi ptr [ %94, %262 ], [ %94, %259 ], [ %249, %245 ], [ %94, %272 ], [ %94, %274 ], [ %94, %277 ], [ %94, %267 ]
  %289 = phi i32 [ 0, %262 ], [ %101, %259 ], [ 1, %245 ], [ 6, %272 ], [ %101, %274 ], [ %280, %277 ], [ %101, %267 ]
  %290 = phi i32 [ 2, %262 ], [ 0, %259 ], [ 4, %245 ], [ 4, %272 ], [ 0, %274 ], [ %281, %277 ], [ 0, %267 ]
  %291 = phi ptr [ %218, %262 ], [ %218, %259 ], [ %218, %245 ], [ %218, %272 ], [ %218, %274 ], [ %218, %277 ], [ %271, %267 ]
  switch i32 %290, label %635 [
    i32 0, label %599
    i32 4, label %88
    i32 2, label %136
  ]

292:                                              ; preds = %126
  %293 = icmp eq i32 %107, 0
  br i1 %293, label %294, label %599

294:                                              ; preds = %292
  %295 = add i32 %84, 1
  switch i32 %101, label %302 [
    i32 1, label %296
    i32 6, label %599
  ]

296:                                              ; preds = %294
  %297 = tail call fastcc zeroext i8 @recursive_macro(ptr noundef nonnull %0, ptr noundef %92), !range !100
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %299, label %599

299:                                              ; preds = %296
  %300 = load ptr, ptr %16, align 8, !tbaa !75
  %301 = getelementptr inbounds i8, ptr %300, i64 %91
  store i64 %91, ptr %93, align 8, !tbaa !103
  br label %599

302:                                              ; preds = %294
  %303 = icmp eq i32 %101, 3
  %304 = select i1 %303, i32 4, i32 %101
  br label %599

305:                                              ; preds = %126
  %306 = icmp eq i32 %107, 0
  %307 = icmp eq i32 %101, 2
  %308 = select i1 %306, i1 %307, i1 false
  %309 = icmp eq i32 %84, 1
  %310 = select i1 %308, i1 %309, i1 false
  br i1 %310, label %311, label %599

311:                                              ; preds = %305
  %312 = add i32 %89, 1
  %313 = getelementptr inbounds %struct.cpp_hashnode, ptr %92, i64 0, i32 4
  %314 = load ptr, ptr %313, align 8, !tbaa !74
  %315 = getelementptr inbounds %struct.cpp_macro, ptr %314, i64 0, i32 4
  %316 = load i16, ptr %315, align 8, !tbaa !96
  %317 = zext i16 %316 to i32
  %318 = icmp ugt i32 %312, %317
  br i1 %318, label %599, label %319

319:                                              ; preds = %311
  %320 = ptrtoint ptr %129 to i64
  %321 = load ptr, ptr %16, align 8, !tbaa !75
  %322 = ptrtoint ptr %321 to i64
  %323 = sub i64 %320, %322
  %324 = zext nneg i32 %312 to i64
  %325 = getelementptr inbounds i64, ptr %93, i64 %324
  store i64 %323, ptr %325, align 8, !tbaa !103
  br label %599

326:                                              ; preds = %126
  %327 = icmp eq i32 %107, 0
  br i1 %327, label %328, label %599

328:                                              ; preds = %326
  %329 = add i32 %84, -1
  %330 = icmp eq i32 %101, 2
  %331 = icmp eq i32 %329, 0
  %332 = select i1 %330, i1 %331, i1 false
  br i1 %332, label %333, label %512

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.cpp_hashnode, ptr %92, i64 0, i32 4
  %335 = load ptr, ptr %334, align 8, !tbaa !74
  %336 = getelementptr inbounds %struct.cpp_macro, ptr %335, i64 0, i32 5
  %337 = load i8, ptr %336, align 2
  %338 = or i8 %337, 8
  store i8 %338, ptr %336, align 2
  %339 = add i32 %89, 1
  %340 = load ptr, ptr %334, align 8, !tbaa !74
  %341 = getelementptr inbounds %struct.cpp_macro, ptr %340, i64 0, i32 4
  %342 = load i16, ptr %341, align 8, !tbaa !96
  %343 = zext i16 %342 to i32
  %344 = icmp ugt i32 %339, %343
  br i1 %344, label %352, label %345

345:                                              ; preds = %333
  %346 = ptrtoint ptr %129 to i64
  %347 = load ptr, ptr %16, align 8, !tbaa !75
  %348 = ptrtoint ptr %347 to i64
  %349 = sub i64 %346, %348
  %350 = zext nneg i32 %339 to i64
  %351 = getelementptr inbounds i64, ptr %93, i64 %350
  store i64 %349, ptr %351, align 8, !tbaa !103
  br label %352

352:                                              ; preds = %333, %345
  %353 = icmp eq i32 %89, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.cpp_macro, ptr %335, i64 0, i32 4
  %356 = load i16, ptr %355, align 8, !tbaa !96
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %354
  %359 = load ptr, ptr %16, align 8, !tbaa !75
  %360 = getelementptr inbounds i8, ptr %359, i64 %91
  %361 = icmp eq ptr %111, %360
  %362 = select i1 %361, i32 0, i32 %339
  br label %363

363:                                              ; preds = %358, %354, %352
  %364 = phi i32 [ %339, %354 ], [ %339, %352 ], [ %362, %358 ]
  %365 = tail call zeroext i8 @_cpp_arguments_ok(ptr noundef nonnull %0, ptr noundef %335, ptr noundef %92, i32 noundef %364) #12
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %599, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %16, align 8, !tbaa !75
  %369 = getelementptr inbounds i8, ptr %368, i64 %91
  store ptr %369, ptr %18, align 8, !tbaa !76
  store ptr %127, ptr %47, align 8, !tbaa !74
  %370 = load ptr, ptr %334, align 8, !tbaa !74
  %371 = getelementptr inbounds %struct.cpp_macro, ptr %370, i64 0, i32 4
  %372 = load i16, ptr %371, align 8, !tbaa !96
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %367
  tail call fastcc void @push_replacement_text(ptr noundef %0, ptr noundef %92)
  br label %511

375:                                              ; preds = %367
  %376 = getelementptr inbounds %struct.cpp_macro, ptr %370, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !74
  br label %378

378:                                              ; preds = %402, %375
  %379 = phi i64 [ 0, %375 ], [ %403, %402 ]
  %380 = phi ptr [ %377, %375 ], [ %404, %402 ]
  %381 = load i32, ptr %380, align 4, !tbaa !104
  %382 = zext i32 %381 to i64
  %383 = add i64 %379, %382
  %384 = getelementptr inbounds %struct.block, ptr %380, i64 0, i32 1
  %385 = load i16, ptr %384, align 4, !tbaa !106
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %402, label %387

387:                                              ; preds = %378
  %388 = zext i16 %385 to i64
  %389 = getelementptr inbounds i64, ptr %93, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !103
  %391 = add nuw nsw i64 %388, 4294967295
  %392 = and i64 %391, 4294967295
  %393 = getelementptr inbounds i64, ptr %93, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !103
  %395 = xor i64 %394, -1
  %396 = add i64 %390, %395
  %397 = shl i64 %396, 1
  %398 = add i64 %397, %383
  %399 = add nuw nsw i64 %382, 13
  %400 = and i64 %399, 8589934584
  %401 = getelementptr inbounds i8, ptr %380, i64 %400
  br label %402

402:                                              ; preds = %378, %387
  %403 = phi i64 [ %398, %387 ], [ %383, %378 ]
  %404 = phi ptr [ %401, %387 ], [ %380, %378 ]
  br i1 %386, label %405, label %378

405:                                              ; preds = %402
  %406 = add i64 %403, 1
  %407 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %406) #12
  %408 = getelementptr inbounds %struct._cpp_buff, ptr %407, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !98
  %410 = load ptr, ptr %376, align 8, !tbaa !74
  br label %411

411:                                              ; preds = %503, %405
  %412 = phi i32 [ 0, %405 ], [ %437, %503 ]
  %413 = phi i64 [ 0, %405 ], [ %504, %503 ]
  %414 = phi ptr [ %409, %405 ], [ %505, %503 ]
  %415 = phi ptr [ %410, %405 ], [ %506, %503 ]
  %416 = load i32, ptr %415, align 4, !tbaa !104
  %417 = zext i32 %416 to i64
  %418 = add i64 %413, %417
  %419 = icmp eq i32 %416, 0
  br i1 %419, label %436, label %420

420:                                              ; preds = %411
  %421 = getelementptr inbounds %struct.block, ptr %415, i64 0, i32 2
  br label %422

422:                                              ; preds = %420, %422
  %423 = phi ptr [ %432, %422 ], [ %421, %420 ]
  %424 = phi i64 [ %434, %422 ], [ %417, %420 ]
  %425 = phi ptr [ %433, %422 ], [ %414, %420 ]
  %426 = phi i32 [ %431, %422 ], [ %412, %420 ]
  %427 = load i8, ptr %423, align 1, !tbaa !74
  %428 = icmp eq i8 %427, 34
  %429 = icmp eq i32 %426, 0
  %430 = zext i1 %429 to i32
  %431 = select i1 %428, i32 %430, i32 %426
  %432 = getelementptr inbounds i8, ptr %423, i64 1
  %433 = getelementptr inbounds i8, ptr %425, i64 1
  store i8 %427, ptr %425, align 1, !tbaa !74
  %434 = add nsw i64 %424, -1
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %436, label %422, !llvm.loop !107

436:                                              ; preds = %422, %411
  %437 = phi i32 [ %412, %411 ], [ %431, %422 ]
  %438 = phi ptr [ %414, %411 ], [ %433, %422 ]
  %439 = getelementptr inbounds %struct.block, ptr %415, i64 0, i32 1
  %440 = load i16, ptr %439, align 4, !tbaa !106
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %503, label %442

442:                                              ; preds = %436
  %443 = zext i16 %440 to i64
  %444 = getelementptr inbounds i64, ptr %93, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !103
  %446 = add nuw nsw i64 %443, 4294967295
  %447 = and i64 %446, 4294967295
  %448 = getelementptr inbounds i64, ptr %93, i64 %447
  %449 = load i64, ptr %448, align 8, !tbaa !103
  %450 = xor i64 %449, -1
  %451 = add i64 %445, %450
  %452 = load ptr, ptr %16, align 8, !tbaa !75
  %453 = getelementptr inbounds i8, ptr %452, i64 %449
  %454 = icmp eq i64 %451, 0
  br i1 %454, label %495, label %455

455:                                              ; preds = %442
  %456 = icmp ne i32 %437, 0
  br label %457

457:                                              ; preds = %455, %485
  %458 = phi ptr [ %453, %455 ], [ %489, %485 ]
  %459 = phi i32 [ 0, %455 ], [ %488, %485 ]
  %460 = phi i64 [ %451, %455 ], [ %493, %485 ]
  %461 = phi ptr [ %438, %455 ], [ %491, %485 ]
  %462 = phi i64 [ %418, %455 ], [ %492, %485 ]
  br i1 %456, label %463, label %475

463:                                              ; preds = %457
  %464 = load i8, ptr %458, align 1, !tbaa !74
  %465 = icmp eq i8 %464, 34
  br i1 %465, label %466, label %475

466:                                              ; preds = %463
  %467 = icmp ugt ptr %458, %453
  br i1 %467, label %468, label %481

468:                                              ; preds = %466
  %469 = getelementptr inbounds i8, ptr %458, i64 -1
  %470 = load i8, ptr %469, align 1, !tbaa !74
  %471 = icmp eq i8 %470, 92
  br i1 %471, label %481, label %472

472:                                              ; preds = %468
  %473 = icmp eq i32 %459, 0
  %474 = zext i1 %473 to i32
  br label %481

475:                                              ; preds = %463, %457
  %476 = icmp ne i32 %459, 0
  %477 = select i1 %456, i1 %476, i1 false
  br i1 %477, label %478, label %485

478:                                              ; preds = %475
  %479 = load i8, ptr %458, align 1, !tbaa !74
  %480 = icmp eq i8 %479, 92
  br i1 %480, label %481, label %485

481:                                              ; preds = %478, %466, %468, %472
  %482 = phi i32 [ %474, %472 ], [ %459, %468 ], [ %459, %466 ], [ 1, %478 ]
  %483 = getelementptr inbounds i8, ptr %461, i64 1
  store i8 92, ptr %461, align 1, !tbaa !74
  %484 = add i64 %462, 1
  br label %485

485:                                              ; preds = %481, %478, %475
  %486 = phi i64 [ %462, %478 ], [ %462, %475 ], [ %484, %481 ]
  %487 = phi ptr [ %461, %478 ], [ %461, %475 ], [ %483, %481 ]
  %488 = phi i32 [ 1, %478 ], [ %459, %475 ], [ %482, %481 ]
  %489 = getelementptr inbounds i8, ptr %458, i64 1
  %490 = load i8, ptr %458, align 1, !tbaa !74
  %491 = getelementptr inbounds i8, ptr %487, i64 1
  store i8 %490, ptr %487, align 1, !tbaa !74
  %492 = add i64 %486, 1
  %493 = add i64 %460, -1
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %457, !llvm.loop !108

495:                                              ; preds = %485, %442
  %496 = phi i64 [ %418, %442 ], [ %492, %485 ]
  %497 = phi ptr [ %438, %442 ], [ %491, %485 ]
  %498 = load i32, ptr %415, align 4, !tbaa !104
  %499 = zext i32 %498 to i64
  %500 = add nuw nsw i64 %499, 13
  %501 = and i64 %500, 8589934584
  %502 = getelementptr inbounds i8, ptr %415, i64 %501
  br label %503

503:                                              ; preds = %495, %436
  %504 = phi i64 [ %496, %495 ], [ %418, %436 ]
  %505 = phi ptr [ %497, %495 ], [ %438, %436 ]
  %506 = phi ptr [ %502, %495 ], [ %415, %436 ]
  br i1 %441, label %507, label %411

507:                                              ; preds = %503
  store i8 10, ptr %505, align 1, !tbaa !74
  %508 = load ptr, ptr %408, align 8, !tbaa !98
  tail call void @_cpp_push_text_context(ptr noundef %0, ptr noundef %92, ptr noundef %508, i64 noundef %504) #12
  %509 = load ptr, ptr %8, align 8, !tbaa !73
  %510 = getelementptr inbounds %struct.cpp_context, ptr %509, i64 0, i32 3
  store ptr %407, ptr %510, align 8, !tbaa !109
  br label %511

511:                                              ; preds = %507, %374
  br i1 %366, label %599, label %136

512:                                              ; preds = %328
  %513 = icmp eq i32 %101, 7
  %514 = icmp eq i32 %101, 4
  %515 = or i1 %513, %514
  %516 = select i1 %515, i32 0, i32 %101
  br label %599

517:                                              ; preds = %126
  %518 = icmp eq ptr %112, %25
  br i1 %518, label %519, label %592

519:                                              ; preds = %517
  %520 = load ptr, ptr %8, align 8, !tbaa !73
  %521 = getelementptr inbounds %struct.cpp_context, ptr %520, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !82
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %592

524:                                              ; preds = %519
  %525 = load i8, ptr %3, align 8, !tbaa !93
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %527, label %592

527:                                              ; preds = %524
  store ptr %129, ptr %18, align 8, !tbaa !76
  %528 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef nonnull %127, i32 noundef 1)
  %529 = load ptr, ptr %18, align 8, !tbaa !76
  %530 = load i8, ptr %528, align 1, !tbaa !74
  %531 = icmp eq i8 %530, 10
  br i1 %531, label %532, label %555

532:                                              ; preds = %527
  %533 = load ptr, ptr %0, align 8, !tbaa !41
  %534 = getelementptr inbounds %struct.cpp_buffer, ptr %533, i64 0, i32 13
  store i8 1, ptr %534, align 8, !tbaa !66
  %535 = load ptr, ptr %19, align 8, !tbaa !77
  %536 = load ptr, ptr %535, align 8, !tbaa !88
  %537 = getelementptr inbounds %struct.line_maps, ptr %535, i64 0, i32 2
  %538 = load i32, ptr %537, align 4, !tbaa !89
  %539 = add i32 %538, -1
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds %struct.line_maps, ptr %535, i64 0, i32 8
  %542 = load i32, ptr %541, align 4, !tbaa !78
  %543 = getelementptr inbounds %struct.line_map, ptr %536, i64 %540, i32 2
  %544 = load i32, ptr %543, align 4, !tbaa !90
  %545 = sub i32 %542, %544
  %546 = getelementptr inbounds %struct.line_map, ptr %536, i64 %540, i32 6
  %547 = load i8, ptr %546, align 2
  %548 = zext nneg i8 %547 to i32
  %549 = lshr i32 %545, %548
  %550 = getelementptr inbounds %struct.line_map, ptr %536, i64 %540, i32 1
  %551 = load i32, ptr %550, align 8, !tbaa !92
  %552 = add i32 %551, 1
  %553 = add i32 %552, %549
  %554 = tail call i32 @linemap_line_start(ptr noundef nonnull %535, i32 noundef %553, i32 noundef 0) #12
  br label %625

555:                                              ; preds = %527
  %556 = zext i8 %530 to i64
  %557 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %556
  %558 = load i16, ptr %557, align 2, !tbaa !110
  %559 = and i16 %558, 4
  %560 = icmp eq i16 %559, 0
  br i1 %560, label %565, label %561

561:                                              ; preds = %555
  %562 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %563 = load i32, ptr %562, align 4, !tbaa !111
  %564 = icmp eq i32 %563, 9
  br i1 %564, label %565, label %579

565:                                              ; preds = %561, %555
  %566 = and i16 %558, 512
  %567 = icmp eq i16 %566, 0
  br i1 %567, label %568, label %574

568:                                              ; preds = %565
  %569 = icmp eq i8 %530, 36
  br i1 %569, label %570, label %579

570:                                              ; preds = %568
  %571 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %572 = load i8, ptr %571, align 2, !tbaa !112
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %579, label %574

574:                                              ; preds = %570, %565
  %575 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %528)
  %576 = getelementptr inbounds %struct.cpp_hashnode, ptr %575, i64 0, i32 1
  %577 = load i8, ptr %576, align 8
  %578 = and i8 %577, 1
  br label %579

579:                                              ; preds = %570, %561, %568, %574
  %580 = phi i8 [ %578, %574 ], [ 0, %568 ], [ 1, %561 ], [ 0, %570 ]
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %582, label %586

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %584 = load i32, ptr %583, align 4, !tbaa !111
  %585 = icmp eq i32 %584, 9
  br i1 %585, label %589, label %586

586:                                              ; preds = %582, %579
  %587 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %528, ptr %587, align 8, !tbaa !59
  %588 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef 0) #12
  br label %589

589:                                              ; preds = %582, %586
  %590 = phi i1 [ false, %586 ], [ true, %582 ]
  %591 = phi i8 [ 0, %586 ], [ %105, %582 ]
  br i1 %590, label %592, label %625

592:                                              ; preds = %589, %524, %519, %517
  %593 = phi ptr [ %129, %519 ], [ %129, %524 ], [ %529, %589 ], [ %129, %517 ]
  %594 = phi ptr [ %127, %519 ], [ %127, %524 ], [ %528, %589 ], [ %127, %517 ]
  %595 = phi i8 [ %105, %519 ], [ %105, %524 ], [ %591, %589 ], [ %105, %517 ]
  %596 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  %597 = load i8, ptr %596, align 4, !tbaa !101
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %599, label %100, !llvm.loop !87

599:                                              ; preds = %210, %282, %592, %200, %202, %126, %363, %189, %319, %311, %192, %183, %511, %294, %296, %195, %512, %326, %305, %292, %302, %299, %197, %186
  %600 = phi i32 [ %364, %511 ], [ %89, %512 ], [ %89, %326 ], [ %89, %305 ], [ %89, %302 ], [ %89, %294 ], [ %89, %299 ], [ %89, %296 ], [ %89, %292 ], [ %89, %195 ], [ %89, %197 ], [ %89, %192 ], [ %89, %186 ], [ %89, %183 ], [ %312, %311 ], [ %312, %319 ], [ %89, %189 ], [ %364, %363 ], [ %89, %126 ], [ %89, %202 ], [ %89, %200 ], [ %89, %592 ], [ %283, %282 ], [ %89, %210 ]
  %601 = phi i32 [ %90, %511 ], [ %90, %512 ], [ %90, %326 ], [ %90, %305 ], [ %90, %302 ], [ %90, %294 ], [ %90, %299 ], [ %90, %296 ], [ %90, %292 ], [ %90, %195 ], [ %90, %197 ], [ %90, %192 ], [ %90, %186 ], [ %90, %183 ], [ %90, %311 ], [ %90, %319 ], [ %90, %189 ], [ %90, %363 ], [ %90, %126 ], [ %90, %202 ], [ %90, %200 ], [ %90, %592 ], [ %284, %282 ], [ %90, %210 ]
  %602 = phi i64 [ %91, %511 ], [ %91, %512 ], [ %91, %326 ], [ %91, %305 ], [ %91, %302 ], [ %91, %294 ], [ %91, %299 ], [ %91, %296 ], [ %91, %292 ], [ %91, %195 ], [ %91, %197 ], [ %91, %192 ], [ %91, %186 ], [ %91, %183 ], [ %91, %311 ], [ %91, %319 ], [ %91, %189 ], [ %91, %363 ], [ %91, %126 ], [ %91, %202 ], [ %91, %200 ], [ %91, %592 ], [ %285, %282 ], [ %91, %210 ]
  %603 = phi ptr [ %92, %511 ], [ %92, %512 ], [ %92, %326 ], [ %92, %305 ], [ %92, %302 ], [ %92, %294 ], [ %92, %299 ], [ %92, %296 ], [ %92, %292 ], [ %92, %195 ], [ %92, %197 ], [ %92, %192 ], [ %92, %186 ], [ %92, %183 ], [ %92, %311 ], [ %92, %319 ], [ %92, %189 ], [ %92, %363 ], [ %92, %126 ], [ %92, %202 ], [ %92, %200 ], [ %92, %592 ], [ %286, %282 ], [ %92, %210 ]
  %604 = phi ptr [ %93, %511 ], [ %93, %512 ], [ %93, %326 ], [ %93, %305 ], [ %93, %302 ], [ %93, %294 ], [ %93, %299 ], [ %93, %296 ], [ %93, %292 ], [ %93, %195 ], [ %93, %197 ], [ %93, %192 ], [ %93, %186 ], [ %93, %183 ], [ %93, %311 ], [ %93, %319 ], [ %93, %189 ], [ %93, %363 ], [ %93, %126 ], [ %93, %202 ], [ %93, %200 ], [ %93, %592 ], [ %287, %282 ], [ %93, %210 ]
  %605 = phi ptr [ %94, %511 ], [ %94, %512 ], [ %94, %326 ], [ %94, %305 ], [ %94, %302 ], [ %94, %294 ], [ %94, %299 ], [ %94, %296 ], [ %94, %292 ], [ %94, %195 ], [ %94, %197 ], [ %94, %192 ], [ %94, %186 ], [ %94, %183 ], [ %94, %311 ], [ %94, %319 ], [ %94, %189 ], [ %94, %363 ], [ %94, %126 ], [ %94, %202 ], [ %94, %200 ], [ %94, %592 ], [ %288, %282 ], [ %94, %210 ]
  %606 = phi i32 [ 0, %511 ], [ %516, %512 ], [ %101, %326 ], [ %101, %305 ], [ %304, %302 ], [ 7, %294 ], [ 2, %299 ], [ 0, %296 ], [ %101, %292 ], [ %101, %195 ], [ %101, %197 ], [ %101, %192 ], [ %101, %186 ], [ %101, %183 ], [ 2, %311 ], [ 2, %319 ], [ %101, %189 ], [ 0, %363 ], [ %101, %126 ], [ %101, %202 ], [ %101, %200 ], [ %101, %592 ], [ %289, %282 ], [ %101, %210 ]
  %607 = phi i32 [ 0, %511 ], [ 0, %512 ], [ %107, %326 ], [ %107, %305 ], [ 0, %302 ], [ 0, %294 ], [ 0, %299 ], [ 0, %296 ], [ %107, %292 ], [ %107, %195 ], [ %107, %197 ], [ %194, %192 ], [ %188, %186 ], [ %185, %183 ], [ 0, %311 ], [ 0, %319 ], [ 0, %189 ], [ 0, %363 ], [ %107, %126 ], [ %107, %200 ], [ 0, %202 ], [ %107, %592 ], [ %107, %282 ], [ %107, %210 ]
  %608 = phi i32 [ 0, %511 ], [ %329, %512 ], [ %84, %326 ], [ %84, %305 ], [ %295, %302 ], [ %295, %294 ], [ 1, %299 ], [ %295, %296 ], [ %84, %292 ], [ %84, %195 ], [ %84, %197 ], [ %84, %192 ], [ %84, %186 ], [ %84, %183 ], [ 1, %311 ], [ 1, %319 ], [ %84, %189 ], [ 0, %363 ], [ %84, %126 ], [ %84, %202 ], [ %84, %200 ], [ %84, %592 ], [ %84, %282 ], [ %84, %210 ]
  %609 = phi ptr [ %129, %511 ], [ %129, %512 ], [ %129, %326 ], [ %129, %305 ], [ %129, %302 ], [ %129, %294 ], [ %301, %299 ], [ %129, %296 ], [ %129, %292 ], [ %129, %195 ], [ %199, %197 ], [ %129, %192 ], [ %129, %186 ], [ %129, %183 ], [ %129, %311 ], [ %129, %319 ], [ %129, %189 ], [ %129, %363 ], [ %129, %126 ], [ %129, %202 ], [ %129, %200 ], [ %593, %592 ], [ %291, %282 ], [ %129, %210 ]
  %610 = phi ptr [ %127, %511 ], [ %127, %512 ], [ %127, %326 ], [ %127, %305 ], [ %127, %302 ], [ %127, %294 ], [ %127, %299 ], [ %127, %296 ], [ %127, %292 ], [ %127, %195 ], [ %198, %197 ], [ %127, %192 ], [ %127, %186 ], [ %127, %183 ], [ %127, %311 ], [ %127, %319 ], [ %127, %189 ], [ %127, %363 ], [ %127, %126 ], [ %127, %202 ], [ %127, %200 ], [ %594, %592 ], [ %219, %282 ], [ %127, %210 ]
  %611 = phi i8 [ %105, %511 ], [ %105, %512 ], [ %105, %326 ], [ %105, %305 ], [ %105, %302 ], [ %105, %294 ], [ %105, %299 ], [ %105, %296 ], [ %105, %292 ], [ %105, %195 ], [ %105, %197 ], [ %105, %192 ], [ %105, %186 ], [ %105, %183 ], [ %105, %311 ], [ %105, %319 ], [ %105, %189 ], [ %105, %363 ], [ %105, %126 ], [ %105, %202 ], [ %105, %200 ], [ %595, %592 ], [ %105, %282 ], [ %105, %210 ]
  %612 = load i8, ptr %3, align 8, !tbaa !93
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %615

614:                                              ; preds = %599
  store i8 0, ptr %33, align 8, !tbaa !95
  br label %615

615:                                              ; preds = %614, %599
  %616 = icmp ult i32 %606, 2
  br i1 %616, label %617, label %619

617:                                              ; preds = %615, %619
  %618 = phi i32 [ 0, %615 ], [ %624, %619 ]
  br label %74, !llvm.loop !87

619:                                              ; preds = %615
  %620 = add i32 %606, -5
  %621 = icmp ult i32 %620, 2
  %622 = icmp eq i32 %606, 3
  %623 = or i1 %622, %621
  %624 = select i1 %623, i32 0, i32 %606
  br label %617

625:                                              ; preds = %589, %171, %174, %146, %532
  %626 = phi i8 [ 0, %532 ], [ %105, %146 ], [ %105, %174 ], [ %105, %171 ], [ %591, %589 ]
  %627 = icmp eq ptr %94, null
  br i1 %627, label %629, label %628

628:                                              ; preds = %625
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %94) #12
  br label %629

629:                                              ; preds = %628, %625
  %630 = icmp eq i32 %101, 2
  br i1 %630, label %631, label %634

631:                                              ; preds = %629
  %632 = load ptr, ptr %92, align 8, !tbaa !113
  %633 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %90, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %632) #12
  br label %634

634:                                              ; preds = %629, %631
  ret i8 %626

635:                                              ; preds = %282
  unreachable
}

declare void @_cpp_process_line_notes(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_cpp_pop_context(ptr noundef) local_unnamed_addr #1

declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @copy_comment(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 !prof !34 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !78
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %1, ptr %8, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !74
  %17 = icmp eq i8 %16, 47
  %18 = getelementptr inbounds i8, ptr %1, i64 2
  %19 = select i1 %17, ptr %18, ptr %15
  br label %20

20:                                               ; preds = %29, %14
  %21 = phi ptr [ %19, %14 ], [ %22, %29 ]
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load i8, ptr %21, align 1, !tbaa !74
  %24 = icmp eq i8 %23, 47
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %21, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !74
  %28 = icmp eq i8 %27, 42
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %20
  br label %20, !llvm.loop !116

30:                                               ; preds = %25
  store ptr %22, ptr %8, align 8, !tbaa !59
  br label %34

31:                                               ; preds = %3
  %32 = tail call zeroext i8 @_cpp_skip_block_comment(ptr noundef nonnull %0) #12
  %33 = icmp eq i8 %32, 0
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i1 [ true, %30 ], [ %33, %31 ]
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %7, i32 noundef 0, ptr noundef nonnull @.str.1) #12
  br label %38

38:                                               ; preds = %36, %34
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !93
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %46 = load i8, ptr %45, align 4, !tbaa !117
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !76
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  store ptr %51, ptr %49, align 8, !tbaa !76
  br label %77

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = getelementptr inbounds i8, ptr %54, i64 -1
  store i8 32, ptr %55, align 1, !tbaa !74
  br label %77

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %58 = load i8, ptr %57, align 1, !tbaa !118
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = getelementptr inbounds i8, ptr %62, i64 -1
  store ptr %63, ptr %61, align 8, !tbaa !76
  br label %77

64:                                               ; preds = %44, %56
  %65 = load ptr, ptr %8, align 8, !tbaa !59
  %66 = ptrtoint ptr %65 to i64
  %67 = ptrtoint ptr %1 to i64
  %68 = sub i64 %66, %67
  %69 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %1, i64 %68, i1 false)
  %71 = load ptr, ptr %69, align 8, !tbaa !76
  %72 = getelementptr inbounds i8, ptr %71, i64 %68
  store ptr %72, ptr %69, align 8, !tbaa !76
  br i1 %35, label %77, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %74, ptr %69, align 8, !tbaa !76
  store i8 42, ptr %72, align 1, !tbaa !74
  %75 = load ptr, ptr %69, align 8, !tbaa !76
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %76, ptr %69, align 8, !tbaa !76
  store i8 47, ptr %75, align 1, !tbaa !74
  br label %77

77:                                               ; preds = %48, %52, %60, %64, %73
  %78 = load ptr, ptr %8, align 8, !tbaa !59
  ret ptr %78
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lex_identifier(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %10, %5 ]
  %7 = phi ptr [ %1, %2 ], [ %8, %5 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !74
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %9, ptr %6, align 1, !tbaa !74
  %11 = load i8, ptr %8, align 1, !tbaa !74
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !110
  %15 = and i16 %14, 516
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %5, !llvm.loop !119

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.cpp_context, ptr %19, i64 0, i32 2
  store ptr %8, ptr %20, align 8, !tbaa !74
  %21 = load ptr, ptr %3, align 8, !tbaa !76
  %22 = ptrtoint ptr %10 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  %27 = tail call ptr @ht_lookup(ptr noundef %26, ptr noundef %21, i64 noundef %24, i32 noundef 1) #12
  store ptr %10, ptr %3, align 8, !tbaa !76
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @recursive_macro(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = lshr i16 %4, 11
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %11, i64 0, i32 5
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  br label %19

19:                                               ; preds = %28, %16
  %20 = phi i64 [ 0, %16 ], [ %22, %28 ]
  %21 = phi ptr [ %18, %16 ], [ %30, %28 ]
  %22 = add i64 %20, 1
  %23 = getelementptr inbounds %struct.cpp_context, ptr %21, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  %25 = icmp eq ptr %24, %1
  %26 = icmp ugt i64 %22, 20
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.cpp_context, ptr %21, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !122

32:                                               ; preds = %28, %19
  %33 = phi ptr [ %21, %19 ], [ null, %28 ]
  %34 = icmp ne ptr %33, null
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %32, %9, %2
  %37 = phi i8 [ %35, %32 ], [ %7, %9 ], [ %7, %2 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %1, align 8, !tbaa !113
  %41 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef %40) #12
  br label %42

42:                                               ; preds = %39, %36
  ret i8 %37
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @push_replacement_text(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 256
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @_cpp_builtin_macro_text(ptr noundef %0, ptr noundef %1) #12
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #13
  %10 = add i64 %9, 1
  %11 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %10) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %8, i64 %9, i1 false)
  %12 = getelementptr inbounds i8, ptr %11, i64 %9
  store i8 10, ptr %12, align 1, !tbaa !74
  br label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 5
  %17 = load i8, ptr %16, align 2
  %18 = or i8 %17, 8
  store i8 %18, ptr %16, align 2
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = or i8 %17, 24
  store i8 %21, ptr %16, align 2
  %22 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !123
  %24 = zext i32 %23 to i64
  br label %25

25:                                               ; preds = %13, %7
  %26 = phi ptr [ %11, %7 ], [ %20, %13 ]
  %27 = phi i64 [ %9, %7 ], [ %24, %13 ]
  tail call void @_cpp_push_text_context(ptr noundef %0, ptr noundef %1, ptr noundef %26, i64 noundef %27) #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @save_replacement_text(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #5 !prof !34 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = load ptr, ptr %4, align 8, !tbaa !75
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = add i64 %10, 1
  %16 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %15) #12
  %17 = load ptr, ptr %4, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %10, i1 false)
  %18 = getelementptr inbounds i8, ptr %16, i64 %10
  store i8 10, ptr %18, align 1, !tbaa !74
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 2
  %22 = or i8 %21, 16
  store i8 %22, ptr %20, align 2
  %23 = trunc i64 %10 to i32
  %24 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !123
  br label %70

25:                                               ; preds = %3
  %26 = add i64 %10, 13
  %27 = and i64 %26, -8
  %28 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !123
  %30 = zext i32 %29 to i64
  %31 = add i64 %27, %30
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  %34 = getelementptr inbounds %struct._cpp_buff, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !125
  %36 = getelementptr inbounds %struct._cpp_buff, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = ptrtoint ptr %35 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %31, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  tail call void @_cpp_extend_buff(ptr noundef %0, ptr noundef nonnull %32, i64 noundef %31) #12
  br label %43

43:                                               ; preds = %42, %25
  %44 = load ptr, ptr %32, align 8, !tbaa !124
  %45 = getelementptr inbounds %struct._cpp_buff, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = load i32, ptr %28, align 4, !tbaa !123
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %46, ptr %50, align 8, !tbaa !74
  %51 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %52 = load i8, ptr %51, align 2
  %53 = or i8 %52, 16
  store i8 %53, ptr %51, align 2
  %54 = trunc i64 %10 to i32
  store i32 %54, ptr %49, align 4, !tbaa !104
  %55 = trunc i32 %2 to i16
  %56 = getelementptr inbounds %struct.block, ptr %49, i64 0, i32 1
  store i16 %55, ptr %56, align 4, !tbaa !106
  %57 = getelementptr inbounds %struct.block, ptr %49, i64 0, i32 2
  %58 = load ptr, ptr %4, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %57, ptr align 1 %58, i64 %10, i1 false)
  %59 = load ptr, ptr %4, align 8, !tbaa !75
  store ptr %59, ptr %5, align 8, !tbaa !76
  %60 = load i32, ptr %28, align 4, !tbaa !123
  %61 = trunc i64 %27 to i32
  %62 = add i32 %60, %61
  store i32 %62, ptr %28, align 4, !tbaa !123
  %63 = icmp eq i32 %2, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %43
  %65 = load ptr, ptr %32, align 8, !tbaa !124
  %66 = getelementptr inbounds %struct._cpp_buff, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !98
  %68 = zext i32 %62 to i64
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  store ptr %69, ptr %66, align 8, !tbaa !98
  br label %70

70:                                               ; preds = %43, %64, %14
  ret void
}

declare zeroext i8 @_cpp_arguments_ok(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc nonnull ptr @skip_whitespace(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 !prof !34 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp ne i32 %2, 0
  br label %7

7:                                                ; preds = %27, %3
  %8 = phi ptr [ %5, %3 ], [ %28, %27 ]
  %9 = phi ptr [ %1, %3 ], [ %29, %27 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %9, align 1, !tbaa !74
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %11, ptr %8, align 1, !tbaa !74
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !110
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %27, !llvm.loop !126

18:                                               ; preds = %7
  %19 = icmp eq i8 %11, 47
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = load i8, ptr %10, align 1, !tbaa !74
  %22 = icmp eq i8 %21, 42
  %23 = and i1 %6, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  store ptr %12, ptr %4, align 8, !tbaa !76
  %25 = tail call fastcc ptr @copy_comment(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0)
  %26 = load ptr, ptr %4, align 8, !tbaa !76
  br label %27, !llvm.loop !126

27:                                               ; preds = %7, %18, %20, %24
  %28 = phi ptr [ %26, %24 ], [ %8, %20 ], [ %8, %18 ], [ %12, %7 ]
  %29 = phi ptr [ %25, %24 ], [ %10, %20 ], [ %10, %18 ], [ %10, %7 ]
  %30 = phi i1 [ true, %24 ], [ false, %20 ], [ false, %18 ], [ true, %7 ]
  br i1 %30, label %7, label %31

31:                                               ; preds = %27
  store ptr %28, ptr %4, align 8, !tbaa !76
  %32 = getelementptr inbounds i8, ptr %29, i64 -1
  ret ptr %32
}

declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_cpp_release_buff(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @_cpp_replacement_text_len(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !96
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  br label %13

13:                                               ; preds = %36, %10
  %14 = phi ptr [ %12, %10 ], [ %37, %36 ]
  %15 = phi i64 [ 0, %10 ], [ %38, %36 ]
  %16 = load i32, ptr %14, align 4, !tbaa !104
  %17 = zext i32 %16 to i64
  %18 = add i64 %15, %17
  %19 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 1
  %20 = load i16, ptr %19, align 4, !tbaa !106
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %13
  %23 = zext i16 %20 to i64
  %24 = load ptr, ptr %0, align 8, !tbaa !127
  %25 = add nuw nsw i64 %23, 4294967295
  %26 = and i64 %25, 4294967295
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.ht_identifier, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !128
  %31 = zext i32 %30 to i64
  %32 = add i64 %18, %31
  %33 = add nuw nsw i64 %17, 13
  %34 = and i64 %33, 8589934584
  %35 = getelementptr inbounds i8, ptr %14, i64 %34
  br label %36

36:                                               ; preds = %13, %22
  %37 = phi ptr [ %35, %22 ], [ %14, %13 ]
  %38 = phi i64 [ %32, %22 ], [ %18, %13 ]
  br i1 %21, label %43, label %13

39:                                               ; preds = %6, %1
  %40 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !123
  %42 = zext i32 %41 to i64
  br label %43

43:                                               ; preds = %36, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %36 ]
  ret i64 %44
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @_cpp_copy_replacement_text(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #7 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !96
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  br label %14

14:                                               ; preds = %45, %11
  %15 = phi ptr [ %13, %11 ], [ %46, %45 ]
  %16 = phi ptr [ %1, %11 ], [ %47, %45 ]
  %17 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %15, align 4, !tbaa !104
  %19 = zext i32 %18 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr nonnull align 2 %17, i64 %19, i1 false)
  %20 = load i32, ptr %15, align 4, !tbaa !104
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %16, i64 %21
  %23 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 1
  %24 = load i16, ptr %23, align 4, !tbaa !106
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %14
  %27 = zext i16 %24 to i64
  %28 = load ptr, ptr %0, align 8, !tbaa !127
  %29 = add nuw nsw i64 %27, 4294967295
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  %34 = getelementptr inbounds %struct.ht_identifier, ptr %32, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !128
  %36 = zext i32 %35 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %33, i64 %36, i1 false)
  %37 = load i32, ptr %34, align 8, !tbaa !128
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %22, i64 %38
  %40 = load i32, ptr %15, align 4, !tbaa !104
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %41, 13
  %43 = and i64 %42, 8589934584
  %44 = getelementptr inbounds i8, ptr %15, i64 %43
  br label %45

45:                                               ; preds = %14, %26
  %46 = phi ptr [ %44, %26 ], [ %15, %14 ]
  %47 = phi ptr [ %39, %26 ], [ %22, %14 ]
  br i1 %25, label %57, label %14

48:                                               ; preds = %7, %2
  %49 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  %51 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !123
  %53 = zext i32 %52 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %50, i64 %53, i1 false)
  %54 = load i32, ptr %51, align 4, !tbaa !123
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %1, i64 %55
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %47, %45 ]
  ret ptr %58
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @_cpp_create_trad_definition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !76
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !74
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2, i32 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !74
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %9 to i64
  %17 = sub i64 %15, %16
  %18 = add i64 %17, 3
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = load ptr, ptr %7, align 8, !tbaa !76
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = icmp ugt i64 %18, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load ptr, ptr %5, align 8, !tbaa !75
  %28 = ptrtoint ptr %27 to i64
  %29 = sub i64 %23, %28
  %30 = add i64 %29, %18
  %31 = mul i64 %30, 3
  %32 = lshr i64 %31, 1
  %33 = tail call ptr @xrealloc(ptr noundef %27, i64 noundef %32) #12
  store ptr %33, ptr %5, align 8, !tbaa !75
  %34 = getelementptr inbounds i8, ptr %33, i64 %32
  store ptr %34, ptr %19, align 8, !tbaa !81
  %35 = getelementptr inbounds i8, ptr %33, i64 %29
  store ptr %35, ptr %7, align 8, !tbaa !76
  br label %36

36:                                               ; preds = %2, %26
  %37 = load ptr, ptr %10, align 8, !tbaa !74
  %38 = load i8, ptr %37, align 1, !tbaa !74
  %39 = icmp eq i8 %38, 40
  br i1 %39, label %40, label %102

40:                                               ; preds = %36
  %41 = load ptr, ptr %3, align 8, !tbaa !73
  %42 = getelementptr inbounds %struct.cpp_context, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  br label %45

45:                                               ; preds = %63, %40
  %46 = phi ptr [ %43, %40 ], [ %67, %63 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef 1)
  %49 = load i8, ptr %48, align 1, !tbaa !74
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !110
  %53 = and i16 %52, 512
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  switch i8 %49, label %78 [
    i8 36, label %56
    i8 41, label %74
  ]

56:                                               ; preds = %55
  %57 = load i8, ptr %44, align 2, !tbaa !112
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56, %45
  %60 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %48)
  %61 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %60) #12
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load ptr, ptr %3, align 8, !tbaa !73
  %65 = getelementptr inbounds %struct.cpp_context, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !74
  %67 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef %66, i32 noundef 1)
  %68 = load i8, ptr %67, align 1, !tbaa !74
  %69 = icmp eq i8 %68, 44
  br i1 %69, label %45, label %70, !llvm.loop !129

70:                                               ; preds = %63
  %71 = icmp eq i8 %68, 41
  br label %78

72:                                               ; preds = %56
  %73 = icmp eq i8 %49, 41
  br i1 %73, label %74, label %78

74:                                               ; preds = %55, %72
  %75 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %76 = load i16, ptr %75, align 8, !tbaa !96
  %77 = icmp eq i16 %76, 0
  br label %78

78:                                               ; preds = %55, %59, %74, %72, %70
  %79 = phi ptr [ %67, %70 ], [ %48, %74 ], [ %48, %72 ], [ %48, %59 ], [ %48, %55 ]
  %80 = phi i1 [ %71, %70 ], [ %77, %74 ], [ false, %72 ], [ false, %59 ], [ false, %55 ]
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.3) #12
  br label %83

83:                                               ; preds = %78, %81
  %84 = load i8, ptr %79, align 1, !tbaa !74
  %85 = icmp eq i8 %84, 41
  %86 = zext i1 %85 to i64
  %87 = getelementptr inbounds i8, ptr %79, i64 %86
  %88 = load ptr, ptr %3, align 8, !tbaa !73
  %89 = getelementptr inbounds %struct.cpp_context, ptr %88, i64 0, i32 2
  store ptr %87, ptr %89, align 8, !tbaa !74
  %90 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !124
  %92 = getelementptr inbounds %struct._cpp_buff, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !98
  store ptr %93, ptr %1, align 8, !tbaa !127
  br i1 %80, label %94, label %102

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %96 = load i16, ptr %95, align 8, !tbaa !96
  %97 = zext i16 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %93, i64 %97
  store ptr %98, ptr %92, align 8, !tbaa !98
  %99 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %100 = load i8, ptr %99, align 2
  %101 = or i8 %100, 1
  store i8 %101, ptr %99, align 2
  br label %102

102:                                              ; preds = %94, %83, %36
  %103 = phi ptr [ %1, %36 ], [ %1, %94 ], [ null, %83 ]
  %104 = load ptr, ptr %10, align 8, !tbaa !74
  %105 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %106 = load i8, ptr %105, align 4, !tbaa !117
  %107 = zext i8 %106 to i32
  %108 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef %104, i32 noundef %107)
  %109 = load ptr, ptr %0, align 8, !tbaa !41
  store ptr %108, ptr %109, align 8, !tbaa !59
  %110 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %111 = load i8, ptr %110, align 8, !tbaa !94
  %112 = add i8 %111, 1
  store i8 %112, ptr %110, align 8, !tbaa !94
  %113 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef nonnull %0, ptr noundef %103)
  %114 = load i8, ptr %110, align 8, !tbaa !94
  %115 = add i8 %114, -1
  store i8 %115, ptr %110, align 8, !tbaa !94
  %116 = icmp eq ptr %103, null
  br i1 %116, label %132, label %117

117:                                              ; preds = %102
  %118 = load ptr, ptr %5, align 8, !tbaa !75
  %119 = load ptr, ptr %7, align 8, !tbaa !76
  br label %120

120:                                              ; preds = %123, %117
  %121 = phi ptr [ %119, %117 ], [ %124, %123 ]
  %122 = icmp ugt ptr %121, %118
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, ptr %121, i64 -1
  %125 = load i8, ptr %124, align 1, !tbaa !74
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !110
  %129 = and i16 %128, 3072
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !130

131:                                              ; preds = %123, %120
  store ptr %121, ptr %7, align 8, !tbaa !76
  tail call fastcc void @save_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %103, i32 noundef 0)
  br label %132

132:                                              ; preds = %102, %131
  %133 = phi i8 [ 1, %131 ], [ 0, %102 ]
  ret i8 %133
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @_cpp_expansions_different_trad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !34 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !123
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !123
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xmalloc(i64 noundef %10) #12
  %12 = load i32, ptr %5, align 4, !tbaa !123
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 0, ptr %3, align 1, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !tbaa !74
  %15 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !96
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  br i1 %17, label %64, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  br label %23

23:                                               ; preds = %59, %20
  %24 = phi ptr [ %19, %20 ], [ %60, %59 ]
  %25 = phi ptr [ %22, %20 ], [ %61, %59 ]
  %26 = phi i8 [ 1, %20 ], [ %62, %59 ]
  %27 = getelementptr inbounds %struct.block, ptr %24, i64 0, i32 1
  %28 = load i16, ptr %27, align 4, !tbaa !106
  %29 = getelementptr inbounds %struct.block, ptr %25, i64 0, i32 1
  %30 = load i16, ptr %29, align 4, !tbaa !106
  %31 = icmp eq i16 %28, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.block, ptr %24, i64 0, i32 2
  %34 = load i32, ptr %24, align 4, !tbaa !104
  %35 = zext i32 %34 to i64
  %36 = call fastcc i64 @canonicalize_text(ptr noundef %11, ptr noundef nonnull %33, i64 noundef %35, ptr noundef nonnull %3)
  %37 = getelementptr inbounds %struct.block, ptr %25, i64 0, i32 2
  %38 = load i32, ptr %25, align 4, !tbaa !104
  %39 = zext i32 %38 to i64
  %40 = call fastcc i64 @canonicalize_text(ptr noundef %14, ptr noundef nonnull %37, i64 noundef %39, ptr noundef nonnull %4)
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %32
  %43 = tail call i32 @bcmp(ptr %11, ptr %14, i64 %36)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i16, ptr %27, align 4, !tbaa !106
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %24, align 4, !tbaa !104
  %50 = zext i32 %49 to i64
  %51 = add nuw nsw i64 %50, 13
  %52 = and i64 %51, 8589934584
  %53 = getelementptr inbounds i8, ptr %24, i64 %52
  %54 = load i32, ptr %25, align 4, !tbaa !104
  %55 = zext i32 %54 to i64
  %56 = add nuw nsw i64 %55, 13
  %57 = and i64 %56, 8589934584
  %58 = getelementptr inbounds i8, ptr %25, i64 %57
  br label %59

59:                                               ; preds = %23, %45, %32, %42, %48
  %60 = phi ptr [ %53, %48 ], [ %24, %42 ], [ %24, %32 ], [ %24, %45 ], [ %24, %23 ]
  %61 = phi ptr [ %58, %48 ], [ %25, %42 ], [ %25, %32 ], [ %25, %45 ], [ %25, %23 ]
  %62 = phi i8 [ %26, %48 ], [ %26, %42 ], [ %26, %32 ], [ 0, %45 ], [ %26, %23 ]
  %63 = phi i1 [ true, %48 ], [ false, %42 ], [ false, %32 ], [ false, %45 ], [ false, %23 ]
  br i1 %63, label %23, label %76

64:                                               ; preds = %2
  %65 = call fastcc i64 @canonicalize_text(ptr noundef %11, ptr noundef %19, i64 noundef %13, ptr noundef nonnull %3)
  %66 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !74
  %68 = load i32, ptr %7, align 4, !tbaa !123
  %69 = zext i32 %68 to i64
  %70 = call fastcc i64 @canonicalize_text(ptr noundef %14, ptr noundef %67, i64 noundef %69, ptr noundef nonnull %4)
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = tail call i32 @bcmp(ptr %11, ptr %14, i64 %65)
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i8
  br label %76

76:                                               ; preds = %59, %64, %72
  %77 = phi i8 [ 1, %64 ], [ %75, %72 ], [ %62, %59 ]
  tail call void @free(ptr noundef %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret i8 %77
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @canonicalize_text(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #7 !prof !34 {
  %5 = load i8, ptr %3, align 1, !tbaa !74
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %4, %47
  %8 = phi i8 [ %50, %47 ], [ %5, %4 ]
  %9 = phi ptr [ %51, %47 ], [ %0, %4 ]
  %10 = phi ptr [ %49, %47 ], [ %1, %4 ]
  %11 = phi i64 [ %48, %47 ], [ %2, %4 ]
  %12 = load i8, ptr %10, align 1, !tbaa !74
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !110
  %16 = and i16 %15, 3072
  %17 = icmp eq i16 %16, 0
  %18 = icmp ne i8 %8, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %10, i64 %11
  br label %22

22:                                               ; preds = %20, %27
  %23 = phi i64 [ %25, %27 ], [ %11, %20 ]
  %24 = phi ptr [ %28, %27 ], [ %10, %20 ]
  %25 = add nsw i64 %23, -1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !74
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !110
  %33 = and i16 %32, 3072
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !131

35:                                               ; preds = %27, %22
  %36 = phi ptr [ %28, %27 ], [ %21, %22 ]
  %37 = phi i64 [ %25, %27 ], [ 0, %22 ]
  store i8 32, ptr %9, align 1, !tbaa !74
  br label %47

38:                                               ; preds = %7
  switch i8 %12, label %43 [
    i8 39, label %39
    i8 34, label %39
  ]

39:                                               ; preds = %38, %38
  br i1 %18, label %40, label %43

40:                                               ; preds = %39
  %41 = icmp eq i8 %8, %12
  %42 = select i1 %41, i8 0, i8 %8
  br label %43

43:                                               ; preds = %39, %38, %40
  %44 = phi i8 [ %42, %40 ], [ %8, %38 ], [ %12, %39 ]
  %45 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %12, ptr %9, align 1, !tbaa !74
  %46 = add nsw i64 %11, -1
  br label %47

47:                                               ; preds = %43, %35
  %48 = phi i64 [ %46, %43 ], [ %37, %35 ]
  %49 = phi ptr [ %45, %43 ], [ %36, %35 ]
  %50 = phi i8 [ %44, %43 ], [ %8, %35 ]
  %51 = getelementptr inbounds i8, ptr %9, i64 1
  %52 = icmp eq i64 %48, 0
  br i1 %52, label %53, label %7, !llvm.loop !132

53:                                               ; preds = %47, %4
  %54 = phi ptr [ %0, %4 ], [ %51, %47 ]
  %55 = phi i8 [ %5, %4 ], [ %50, %47 ]
  store i8 %55, ptr %3, align 1, !tbaa !74
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %0 to i64
  %58 = sub i64 %56, %57
  ret i64 %58
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_skip_block_comment(ptr noundef) local_unnamed_addr #1

declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_cpp_get_buff(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_cpp_builtin_macro_text(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_unaligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_cpp_push_text_context(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_cpp_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_save_parameter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !36, i64 0}
!42 = !{!"cpp_reader", !36, i64 0, !36, i64 8, !43, i64 16, !36, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !44, i64 80, !36, i64 136, !36, i64 144, !45, i64 152, !40, i64 176, !37, i64 180, !36, i64 184, !36, i64 192, !47, i64 200, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !49, i64 312, !37, i64 400, !37, i64 401, !36, i64 408, !36, i64 416, !37, i64 424, !36, i64 432, !50, i64 440, !36, i64 472, !40, i64 480, !40, i64 484, !36, i64 488, !40, i64 496, !51, i64 504, !51, i64 528, !51, i64 552, !51, i64 576, !51, i64 600, !36, i64 624, !36, i64 632, !45, i64 640, !45, i64 664, !36, i64 688, !49, i64 696, !49, i64 784, !36, i64 872, !52, i64 880, !36, i64 1016, !36, i64 1024, !36, i64 1032, !53, i64 1040, !55, i64 1168, !37, i64 1200, !56, i64 1208, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !40, i64 1272, !57, i64 1280, !36, i64 1296}
!43 = !{!"lexer_state", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8, !37, i64 9, !37, i64 10, !40, i64 12, !37, i64 16, !37, i64 17}
!44 = !{!"cpp_context", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !36, i64 40, !37, i64 48}
!45 = !{!"cpp_token", !40, i64 0, !40, i64 4, !46, i64 6, !37, i64 8}
!46 = !{!"short", !37, i64 0}
!47 = !{!"cpp_dir", !36, i64 0, !36, i64 8, !40, i64 16, !37, i64 20, !37, i64 21, !36, i64 24, !36, i64 32, !36, i64 40, !48, i64 48, !48, i64 56}
!48 = !{!"long", !37, i64 0}
!49 = !{!"obstack", !48, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !48, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !40, i64 80, !40, i64 80}
!50 = !{!"tokenrun", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!51 = !{!"cset_converter", !36, i64 0, !36, i64 8, !40, i64 16}
!52 = !{!"cpp_callbacks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!53 = !{!"cpp_options", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15, !37, i64 16, !37, i64 17, !37, i64 18, !37, i64 19, !37, i64 20, !37, i64 21, !37, i64 22, !37, i64 23, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !37, i64 28, !37, i64 29, !37, i64 30, !37, i64 31, !37, i64 32, !37, i64 33, !37, i64 34, !37, i64 35, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !37, i64 40, !37, i64 41, !37, i64 42, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !37, i64 76, !37, i64 77, !54, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !37, i64 120, !37, i64 121, !37, i64 122, !37, i64 123, !37, i64 124}
!54 = !{!"", !40, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7}
!55 = !{!"spec_nodes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!56 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24}
!57 = !{!"", !36, i64 0, !40, i64 8, !40, i64 12}
!58 = !{!42, !36, i64 8}
!59 = !{!60, !36, i64 0}
!60 = !{!"cpp_buffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !40, i64 97, !40, i64 97, !40, i64 97, !37, i64 98, !47, i64 104, !51, i64 168}
!61 = !{!42, !36, i64 1240}
!62 = !{!60, !36, i64 32}
!63 = !{!42, !36, i64 1248}
!64 = !{!60, !36, i64 16}
!65 = !{!42, !36, i64 1256}
!66 = !{!60, !37, i64 96}
!67 = !{!60, !36, i64 8}
!68 = !{!42, !37, i64 18}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!42, !37, i64 19}
!73 = !{!42, !36, i64 136}
!74 = !{!37, !37, i64 0}
!75 = !{!42, !36, i64 1208}
!76 = !{!42, !36, i64 1224}
!77 = !{!42, !36, i64 40}
!78 = !{!79, !40, i64 36}
!79 = !{!"line_maps", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 48}
!80 = !{!42, !40, i64 1232}
!81 = !{!42, !36, i64 1216}
!82 = !{!44, !36, i64 8}
!83 = !{!60, !36, i64 40}
!84 = !{!60, !40, i64 48}
!85 = !{!86, !36, i64 0}
!86 = !{!"_cpp_line_note", !36, i64 0, !40, i64 8}
!87 = distinct !{!87, !71}
!88 = !{!79, !36, i64 0}
!89 = !{!79, !40, i64 12}
!90 = !{!91, !40, i64 12}
!91 = !{!"line_map", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 21, !40, i64 22}
!92 = !{!91, !40, i64 8}
!93 = !{!42, !37, i64 16}
!94 = !{!42, !37, i64 24}
!95 = !{!42, !37, i64 424}
!96 = !{!97, !46, i64 24}
!97 = !{!"cpp_macro", !36, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !46, i64 24, !40, i64 26, !40, i64 26, !40, i64 26, !40, i64 26, !40, i64 26, !40, i64 26}
!98 = !{!99, !36, i64 16}
!99 = !{!"_cpp_buff", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!100 = !{i8 0, i8 2}
!101 = !{!42, !37, i64 20}
!102 = !{!42, !36, i64 1168}
!103 = !{!48, !48, i64 0}
!104 = !{!105, !40, i64 0}
!105 = !{!"block", !40, i64 0, !46, i64 4, !37, i64 6}
!106 = !{!105, !46, i64 4}
!107 = distinct !{!107, !70, !71}
!108 = distinct !{!108, !70, !71}
!109 = !{!44, !36, i64 32}
!110 = !{!46, !46, i64 0}
!111 = !{!42, !40, i64 1044}
!112 = !{!42, !37, i64 1070}
!113 = !{!114, !36, i64 0}
!114 = !{!"cpp_hashnode", !115, i64 0, !40, i64 16, !40, i64 16, !37, i64 17, !40, i64 18, !40, i64 18, !37, i64 24}
!115 = !{!"ht_identifier", !36, i64 0, !40, i64 8, !40, i64 12}
!116 = distinct !{!116, !70, !71}
!117 = !{!42, !37, i64 1052}
!118 = !{!42, !37, i64 1051}
!119 = distinct !{!119, !70, !71}
!120 = !{!42, !36, i64 1016}
!121 = !{!44, !36, i64 40}
!122 = distinct !{!122, !70, !71}
!123 = !{!97, !40, i64 20}
!124 = !{!42, !36, i64 56}
!125 = !{!99, !36, i64 24}
!126 = distinct !{!126, !71}
!127 = !{!97, !36, i64 0}
!128 = !{!114, !40, i64 8}
!129 = distinct !{!129, !71}
!130 = distinct !{!130, !70, !71}
!131 = distinct !{!131, !70, !71}
!132 = distinct !{!132, !70, !71}
