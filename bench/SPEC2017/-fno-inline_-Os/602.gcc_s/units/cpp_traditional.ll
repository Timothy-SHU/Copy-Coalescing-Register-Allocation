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
%struct.fun_macro = type { ptr, ptr, ptr, i64, i32, i32 }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_overlay_buffer(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !57
  %6 = load ptr, ptr %4, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 57
  store ptr %6, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 58
  store ptr %9, ptr %10, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 59
  store ptr %12, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 13
  store i8 0, ptr %14, align 8, !tbaa !65
  store ptr %1, ptr %4, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !66
  %16 = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %16, ptr %8, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_remove_overlay(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 57
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  store ptr %5, ptr %3, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 58
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 59
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 13
  store i8 1, ptr %12, align 8, !tbaa !65
  store ptr null, ptr %2, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_read_logical_line_trad(ptr noundef %0) local_unnamed_addr #3 !prof !35 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  br label %3

3:                                                ; preds = %17, %1
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 13
  %6 = load i8, ptr %5, align 8, !tbaa !65
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3, %8
  %12 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef nonnull %0, ptr noundef null) #14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %2, align 2, !tbaa !67
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  br label %3, !llvm.loop !68

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !36
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %8, %18
  %23 = phi i8 [ %21, %18 ], [ 0, %8 ]
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_get_fresh_line(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_scan_out_logical_line(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !35 {
  %3 = alloca %struct.fun_macro, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 4
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %8 = load i8, ptr %7, align 1, !tbaa !70
  %9 = load ptr, ptr %0, align 8, !tbaa !36
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.cpp_context, ptr %12, i64 0, i32 2
  store ptr %10, ptr %13, align 8, !tbaa !72
  %14 = load ptr, ptr %0, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = load ptr, ptr %11, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.cpp_context, ptr %17, i64 0, i32 2, i32 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !74
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.line_maps, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !76
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 3
  store i32 %25, ptr %26, align 8, !tbaa !78
  %27 = load ptr, ptr %0, align 8, !tbaa !36
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp ne ptr %1, null
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  %31 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  br label %35

35:                                               ; preds = %214, %2
  %36 = phi i8 [ %8, %2 ], [ %51, %214 ]
  %37 = phi i32 [ 0, %2 ], [ %215, %214 ]
  %38 = phi i32 [ 0, %2 ], [ %216, %214 ]
  %39 = phi i32 [ 0, %2 ], [ %217, %214 ]
  %40 = load ptr, ptr %11, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct.cpp_context, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = getelementptr inbounds %struct.cpp_context, ptr %40, i64 0, i32 2, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %42 to i64
  %47 = sub i64 %45, %46
  tail call fastcc void @check_output_buffer(ptr noundef nonnull %0, i64 noundef %47) #14
  %48 = load ptr, ptr %21, align 8, !tbaa !74
  %49 = getelementptr inbounds %struct.cpp_context, ptr %40, i64 0, i32 1
  br label %50

50:                                               ; preds = %377, %35
  %51 = phi i8 [ %36, %35 ], [ 0, %377 ]
  %52 = phi i32 [ %37, %35 ], [ %378, %377 ]
  %53 = phi i32 [ %38, %35 ], [ %368, %377 ]
  %54 = phi i32 [ %39, %35 ], [ %369, %377 ]
  %55 = phi ptr [ %48, %35 ], [ %370, %377 ]
  %56 = phi ptr [ %42, %35 ], [ %371, %377 ]
  br label %57

57:                                               ; preds = %209, %50
  %58 = phi i32 [ %52, %50 ], [ %210, %209 ]
  %59 = phi i32 [ %53, %50 ], [ %64, %209 ]
  %60 = phi ptr [ %55, %50 ], [ %211, %209 ]
  %61 = phi ptr [ %56, %50 ], [ %212, %209 ]
  %62 = icmp eq i32 %58, 2
  br label %63

63:                                               ; preds = %57, %151
  %64 = phi i32 [ %59, %57 ], [ 0, %151 ]
  %65 = phi ptr [ %60, %57 ], [ %154, %151 ]
  %66 = phi ptr [ %61, %57 ], [ %153, %151 ]
  br label %67

67:                                               ; preds = %87, %63
  %68 = phi ptr [ %65, %63 ], [ %86, %87 ]
  %69 = phi ptr [ %66, %63 ], [ %88, %87 ]
  %70 = load ptr, ptr %49, align 8, !tbaa !79
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load ptr, ptr %0, align 8, !tbaa !36
  %74 = getelementptr inbounds %struct.cpp_buffer, ptr %73, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !80
  %76 = getelementptr inbounds %struct.cpp_buffer, ptr %73, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !81
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct._cpp_line_note, ptr %75, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !82
  %81 = icmp ult ptr %69, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  store ptr %69, ptr %73, align 8, !tbaa !58
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %83

83:                                               ; preds = %82, %72, %67
  %84 = getelementptr inbounds i8, ptr %69, i64 1
  %85 = load i8, ptr %69, align 1, !tbaa !72
  %86 = getelementptr inbounds i8, ptr %68, i64 1
  store i8 %85, ptr %68, align 1, !tbaa !72
  switch i8 %85, label %366 [
    i8 32, label %87
    i8 9, label %87
    i8 12, label %87
    i8 11, label %87
    i8 0, label %87
    i8 10, label %89
    i8 60, label %129
    i8 62, label %132
    i8 34, label %135
    i8 39, label %135
    i8 92, label %141
    i8 47, label %146
    i8 95, label %155
    i8 97, label %155
    i8 98, label %155
    i8 99, label %155
    i8 100, label %155
    i8 101, label %155
    i8 102, label %155
    i8 103, label %155
    i8 104, label %155
    i8 105, label %155
    i8 106, label %155
    i8 107, label %155
    i8 108, label %155
    i8 109, label %155
    i8 110, label %155
    i8 111, label %155
    i8 112, label %155
    i8 113, label %155
    i8 114, label %155
    i8 115, label %155
    i8 116, label %155
    i8 117, label %155
    i8 118, label %155
    i8 119, label %155
    i8 120, label %155
    i8 121, label %155
    i8 122, label %155
    i8 65, label %155
    i8 66, label %155
    i8 67, label %155
    i8 68, label %155
    i8 69, label %155
    i8 70, label %155
    i8 71, label %155
    i8 72, label %155
    i8 73, label %155
    i8 74, label %155
    i8 75, label %155
    i8 76, label %155
    i8 77, label %155
    i8 78, label %155
    i8 79, label %155
    i8 80, label %155
    i8 81, label %155
    i8 82, label %155
    i8 83, label %155
    i8 84, label %155
    i8 85, label %155
    i8 86, label %155
    i8 87, label %155
    i8 88, label %155
    i8 89, label %155
    i8 90, label %155
    i8 40, label %218
    i8 44, label %236
    i8 41, label %246
    i8 35, label %292
  ]

87:                                               ; preds = %83, %83, %83, %83, %83, %126
  %88 = phi ptr [ %84, %83 ], [ %84, %83 ], [ %84, %83 ], [ %84, %83 ], [ %84, %83 ], [ %128, %126 ]
  br label %67

89:                                               ; preds = %83
  %90 = load ptr, ptr %49, align 8, !tbaa !79
  %91 = icmp eq ptr %90, null
  store ptr %68, ptr %21, align 8, !tbaa !74
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void @_cpp_pop_context(ptr noundef nonnull %0) #13
  br label %214

93:                                               ; preds = %89
  %94 = add i32 %58, -1
  %95 = icmp ult i32 %94, 2
  %96 = load ptr, ptr %0, align 8, !tbaa !36
  store ptr %84, ptr %96, align 8, !tbaa !58
  %97 = getelementptr inbounds %struct.cpp_buffer, ptr %96, i64 0, i32 13
  store i8 1, ptr %97, align 8, !tbaa !65
  %98 = load ptr, ptr %22, align 8, !tbaa !75
  %99 = load ptr, ptr %98, align 8, !tbaa !84
  %100 = getelementptr inbounds %struct.line_maps, ptr %98, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !85
  %102 = add i32 %101, -1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.line_maps, ptr %98, i64 0, i32 8
  %105 = load i32, ptr %104, align 4, !tbaa !76
  %106 = getelementptr inbounds %struct.line_map, ptr %99, i64 %103, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !86
  %108 = sub i32 %105, %107
  %109 = getelementptr inbounds %struct.line_map, ptr %99, i64 %103, i32 6
  %110 = load i8, ptr %109, align 2
  %111 = zext nneg i8 %110 to i32
  %112 = lshr i32 %108, %111
  %113 = getelementptr inbounds %struct.line_map, ptr %99, i64 %103, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !88
  %115 = add i32 %114, 1
  %116 = add i32 %115, %112
  %117 = tail call i32 @linemap_line_start(ptr noundef nonnull %98, i32 noundef %116, i32 noundef 0) #13
  br i1 %95, label %118, label %385

118:                                              ; preds = %93
  %119 = load i8, ptr %6, align 8, !tbaa !89
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %385

121:                                              ; preds = %118
  %122 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #13
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %385, label %124

124:                                              ; preds = %121
  br i1 %62, label %125, label %126

125:                                              ; preds = %124
  store i8 32, ptr %68, align 1, !tbaa !72
  br label %126

126:                                              ; preds = %125, %124
  %127 = load ptr, ptr %0, align 8, !tbaa !36
  %128 = load ptr, ptr %127, align 8, !tbaa !58
  br label %87

129:                                              ; preds = %83
  %130 = icmp eq i8 %51, 0
  %131 = select i1 %130, i32 %64, i32 62
  br label %366

132:                                              ; preds = %83
  %133 = icmp eq i32 %64, 62
  %134 = select i1 %133, i32 0, i32 %64
  br label %366

135:                                              ; preds = %83, %83
  %136 = zext nneg i8 %85 to i32
  %137 = icmp eq i32 %64, %136
  br i1 %137, label %366, label %138

138:                                              ; preds = %135
  %139 = icmp eq i32 %64, 0
  %140 = select i1 %139, i32 %136, i32 %64
  br label %366

141:                                              ; preds = %83
  %142 = load i8, ptr %84, align 1, !tbaa !72
  switch i8 %142, label %366 [
    i8 92, label %143
    i8 34, label %143
    i8 39, label %143
  ]

143:                                              ; preds = %141, %141, %141
  %144 = getelementptr inbounds i8, ptr %69, i64 2
  %145 = getelementptr inbounds i8, ptr %68, i64 2
  store i8 %142, ptr %86, align 1, !tbaa !72
  br label %366

146:                                              ; preds = %83
  %147 = icmp eq i32 %64, 0
  br i1 %147, label %148, label %366

148:                                              ; preds = %146
  %149 = load i8, ptr %84, align 1, !tbaa !72
  %150 = icmp eq i8 %149, 42
  br i1 %150, label %151, label %366

151:                                              ; preds = %148
  %152 = zext i1 %29 to i32
  store ptr %86, ptr %21, align 8, !tbaa !74
  %153 = tail call fastcc ptr @copy_comment(ptr noundef nonnull %0, ptr noundef nonnull %84, i32 noundef %152) #14
  %154 = load ptr, ptr %21, align 8, !tbaa !74
  br label %63

155:                                              ; preds = %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83
  %156 = load i8, ptr %31, align 2, !tbaa !67
  %157 = icmp eq i8 %156, 0
  %158 = icmp eq i32 %64, 0
  %159 = or i1 %29, %158
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %161, label %366

161:                                              ; preds = %155
  store ptr %68, ptr %21, align 8, !tbaa !74
  %162 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %69) #14
  %163 = load ptr, ptr %21, align 8, !tbaa !74
  %164 = load ptr, ptr %41, align 8, !tbaa !72
  %165 = getelementptr inbounds %struct.cpp_hashnode, ptr %162, i64 0, i32 3
  %166 = load i16, ptr %165, align 2
  %167 = and i16 %166, 63
  %168 = icmp eq i16 %167, 1
  %169 = icmp ult i32 %58, 2
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %171, label %192

171:                                              ; preds = %161
  %172 = load i8, ptr %32, align 8, !tbaa !90
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %171
  store i8 0, ptr %34, align 8, !tbaa !91
  %175 = load i16, ptr %165, align 2
  %176 = and i16 %175, 256
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.cpp_hashnode, ptr %162, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !72
  %181 = getelementptr inbounds %struct.cpp_macro, ptr %180, i64 0, i32 5
  %182 = load i8, ptr %181, align 2
  %183 = and i8 %182, 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %178
  call fastcc void @maybe_start_funlike(ptr noundef nonnull %0, ptr noundef nonnull %162, ptr noundef nonnull %68, ptr noundef nonnull %3) #14
  %186 = load ptr, ptr %22, align 8, !tbaa !75
  %187 = getelementptr inbounds %struct.line_maps, ptr %186, i64 0, i32 8
  %188 = load i32, ptr %187, align 4, !tbaa !76
  store i32 %188, ptr %5, align 8, !tbaa !92
  br label %209

189:                                              ; preds = %178, %174
  %190 = tail call fastcc zeroext i8 @recursive_macro(ptr noundef nonnull %0, ptr noundef nonnull %162) #14, !range !94
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %213, label %366

192:                                              ; preds = %171, %161
  %193 = and i16 %166, 4096
  %194 = icmp ne i16 %193, 0
  %195 = and i1 %29, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  store ptr %68, ptr %21, align 8, !tbaa !74
  %197 = getelementptr inbounds %struct.cpp_hashnode, ptr %162, i64 0, i32 4
  %198 = load i16, ptr %197, align 8, !tbaa !72
  %199 = zext i16 %198 to i32
  tail call fastcc void @save_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %199) #14
  %200 = load ptr, ptr %19, align 8, !tbaa !73
  br label %366

201:                                              ; preds = %192
  %202 = icmp eq i32 %58, 5
  br i1 %202, label %209, label %203

203:                                              ; preds = %201
  %204 = load i8, ptr %30, align 4, !tbaa !95
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %366, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %33, align 8, !tbaa !96
  %208 = icmp eq ptr %162, %207
  br i1 %208, label %209, label %366

209:                                              ; preds = %206, %201, %185, %361
  %210 = phi i32 [ 5, %361 ], [ 3, %206 ], [ 6, %201 ], [ 1, %185 ]
  %211 = phi ptr [ %362, %361 ], [ %163, %206 ], [ %163, %201 ], [ %163, %185 ]
  %212 = phi ptr [ %363, %361 ], [ %164, %206 ], [ %164, %201 ], [ %164, %185 ]
  br label %57

213:                                              ; preds = %189
  store ptr %68, ptr %21, align 8, !tbaa !74
  tail call fastcc void @push_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %162) #14
  br label %214

214:                                              ; preds = %213, %92, %282
  %215 = phi i32 [ 0, %213 ], [ %58, %92 ], [ 0, %282 ]
  %216 = phi i32 [ %64, %213 ], [ %64, %92 ], [ 0, %282 ]
  %217 = phi i32 [ %54, %213 ], [ %54, %92 ], [ 0, %282 ]
  br label %35

218:                                              ; preds = %83
  %219 = icmp eq i32 %64, 0
  br i1 %219, label %220, label %366

220:                                              ; preds = %218
  %221 = add i32 %54, 1
  switch i32 %58, label %233 [
    i32 1, label %222
    i32 6, label %366
  ]

222:                                              ; preds = %220
  %223 = load ptr, ptr %4, align 8, !tbaa !97
  %224 = tail call fastcc zeroext i8 @recursive_macro(ptr noundef nonnull %0, ptr noundef %223) #14, !range !94
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %366

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 1
  %228 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 3
  %229 = load ptr, ptr %19, align 8, !tbaa !73
  %230 = load i64, ptr %228, align 8, !tbaa !98
  %231 = getelementptr inbounds i8, ptr %229, i64 %230
  %232 = load ptr, ptr %227, align 8, !tbaa !99
  store i64 %230, ptr %232, align 8, !tbaa !100
  br label %366

233:                                              ; preds = %220
  %234 = icmp eq i32 %58, 3
  %235 = select i1 %234, i32 4, i32 %58
  br label %366

236:                                              ; preds = %83
  %237 = icmp eq i32 %64, 0
  %238 = select i1 %237, i1 %62, i1 false
  %239 = icmp eq i32 %54, 1
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %241, label %366

241:                                              ; preds = %236
  %242 = load ptr, ptr %19, align 8, !tbaa !73
  %243 = ptrtoint ptr %86 to i64
  %244 = ptrtoint ptr %242 to i64
  %245 = sub i64 %243, %244
  call fastcc void @save_argument(ptr noundef nonnull %3, i64 noundef %245) #14
  br label %366

246:                                              ; preds = %83
  %247 = icmp eq i32 %64, 0
  br i1 %247, label %248, label %366

248:                                              ; preds = %246
  %249 = add i32 %54, -1
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %62, i1 %250, i1 false
  br i1 %251, label %252, label %287

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 5
  %254 = load ptr, ptr %4, align 8, !tbaa !97
  %255 = getelementptr inbounds %struct.cpp_hashnode, ptr %254, i64 0, i32 4
  %256 = load ptr, ptr %255, align 8, !tbaa !72
  %257 = getelementptr inbounds %struct.cpp_macro, ptr %256, i64 0, i32 5
  %258 = load i8, ptr %257, align 2
  %259 = or i8 %258, 8
  store i8 %259, ptr %257, align 2
  %260 = load ptr, ptr %19, align 8, !tbaa !73
  %261 = ptrtoint ptr %86 to i64
  %262 = ptrtoint ptr %260 to i64
  %263 = sub i64 %261, %262
  call fastcc void @save_argument(ptr noundef nonnull %3, i64 noundef %263) #14
  %264 = load i32, ptr %253, align 4, !tbaa !101
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %277

266:                                              ; preds = %252
  %267 = getelementptr inbounds %struct.cpp_macro, ptr %256, i64 0, i32 4
  %268 = load i16, ptr %267, align 8, !tbaa !102
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 3
  %272 = load ptr, ptr %19, align 8, !tbaa !73
  %273 = load i64, ptr %271, align 8, !tbaa !98
  %274 = getelementptr inbounds i8, ptr %272, i64 %273
  %275 = icmp eq ptr %68, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  store i32 0, ptr %253, align 4, !tbaa !101
  br label %277

277:                                              ; preds = %276, %270, %266, %252
  %278 = phi i32 [ 0, %276 ], [ 1, %270 ], [ 1, %266 ], [ %264, %252 ]
  %279 = load ptr, ptr %4, align 8, !tbaa !97
  %280 = tail call zeroext i8 @_cpp_arguments_ok(ptr noundef nonnull %0, ptr noundef nonnull %256, ptr noundef %279, i32 noundef %278) #13
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %366, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 3
  %284 = load ptr, ptr %19, align 8, !tbaa !73
  %285 = load i64, ptr %283, align 8, !tbaa !98
  %286 = getelementptr inbounds i8, ptr %284, i64 %285
  store ptr %286, ptr %21, align 8, !tbaa !74
  store ptr %84, ptr %41, align 8, !tbaa !72
  call fastcc void @replace_args_and_push(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  br label %214

287:                                              ; preds = %248
  %288 = icmp eq i32 %58, 7
  %289 = icmp eq i32 %58, 4
  %290 = or i1 %288, %289
  %291 = select i1 %290, i32 0, i32 %58
  br label %366

292:                                              ; preds = %83
  %293 = icmp eq ptr %69, %28
  br i1 %293, label %294, label %361

294:                                              ; preds = %292
  %295 = load ptr, ptr %11, align 8, !tbaa !71
  %296 = getelementptr inbounds %struct.cpp_context, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !79
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %361

299:                                              ; preds = %294
  %300 = load i8, ptr %6, align 8, !tbaa !89
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %361

302:                                              ; preds = %299
  store ptr %86, ptr %21, align 8, !tbaa !74
  %303 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef nonnull %84, i32 noundef 1) #14
  %304 = load ptr, ptr %21, align 8, !tbaa !74
  %305 = load i8, ptr %303, align 1, !tbaa !72
  %306 = icmp eq i8 %305, 10
  br i1 %306, label %307, label %330

307:                                              ; preds = %302
  %308 = load ptr, ptr %0, align 8, !tbaa !36
  %309 = getelementptr inbounds %struct.cpp_buffer, ptr %308, i64 0, i32 13
  store i8 1, ptr %309, align 8, !tbaa !65
  %310 = load ptr, ptr %22, align 8, !tbaa !75
  %311 = load ptr, ptr %310, align 8, !tbaa !84
  %312 = getelementptr inbounds %struct.line_maps, ptr %310, i64 0, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !85
  %314 = add i32 %313, -1
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.line_maps, ptr %310, i64 0, i32 8
  %317 = load i32, ptr %316, align 4, !tbaa !76
  %318 = getelementptr inbounds %struct.line_map, ptr %311, i64 %315, i32 2
  %319 = load i32, ptr %318, align 4, !tbaa !86
  %320 = sub i32 %317, %319
  %321 = getelementptr inbounds %struct.line_map, ptr %311, i64 %315, i32 6
  %322 = load i8, ptr %321, align 2
  %323 = zext nneg i8 %322 to i32
  %324 = lshr i32 %320, %323
  %325 = getelementptr inbounds %struct.line_map, ptr %311, i64 %315, i32 1
  %326 = load i32, ptr %325, align 8, !tbaa !88
  %327 = add i32 %326, 1
  %328 = add i32 %327, %324
  %329 = tail call i32 @linemap_line_start(ptr noundef nonnull %310, i32 noundef %328, i32 noundef 0) #13
  br label %385

330:                                              ; preds = %302
  %331 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %332 = zext i8 %305 to i64
  %333 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %332
  %334 = load i16, ptr %333, align 2, !tbaa !104
  %335 = and i16 %334, 4
  %336 = icmp eq i16 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %330
  %338 = load i32, ptr %331, align 4, !tbaa !105
  %339 = icmp eq i32 %338, 9
  br i1 %339, label %340, label %358

340:                                              ; preds = %337, %330
  %341 = and i16 %334, 512
  %342 = icmp eq i16 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %340
  %344 = icmp eq i8 %305, 36
  br i1 %344, label %345, label %355

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %347 = load i8, ptr %346, align 2, !tbaa !106
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %355, label %349

349:                                              ; preds = %340, %345
  %350 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %303) #14
  %351 = getelementptr inbounds %struct.cpp_hashnode, ptr %350, i64 0, i32 1
  %352 = load i8, ptr %351, align 8
  %353 = and i8 %352, 1
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %343, %345, %349
  %356 = load i32, ptr %331, align 4, !tbaa !105
  %357 = icmp eq i32 %356, 9
  br i1 %357, label %361, label %358

358:                                              ; preds = %337, %349, %355
  %359 = load ptr, ptr %0, align 8, !tbaa !36
  store ptr %303, ptr %359, align 8, !tbaa !58
  %360 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %385

361:                                              ; preds = %355, %299, %294, %292
  %362 = phi ptr [ %86, %294 ], [ %86, %299 ], [ %86, %292 ], [ %304, %355 ]
  %363 = phi ptr [ %84, %294 ], [ %84, %299 ], [ %84, %292 ], [ %303, %355 ]
  %364 = load i8, ptr %30, align 4, !tbaa !95
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %209

366:                                              ; preds = %206, %203, %361, %155, %146, %148, %83, %189, %277, %196, %138, %129, %220, %222, %141, %135, %287, %246, %236, %241, %218, %233, %226, %143, %132
  %367 = phi i32 [ %291, %287 ], [ %58, %246 ], [ 2, %241 ], [ %58, %236 ], [ 2, %226 ], [ %235, %233 ], [ %58, %218 ], [ %58, %143 ], [ %58, %132 ], [ %58, %129 ], [ %58, %135 ], [ %58, %138 ], [ %58, %141 ], [ 0, %222 ], [ 7, %220 ], [ %58, %196 ], [ 0, %277 ], [ %58, %189 ], [ %58, %83 ], [ %58, %148 ], [ %58, %146 ], [ %58, %155 ], [ %58, %361 ], [ %58, %203 ], [ %58, %206 ]
  %368 = phi i32 [ 0, %287 ], [ %64, %246 ], [ 0, %241 ], [ %64, %236 ], [ 0, %226 ], [ 0, %233 ], [ %64, %218 ], [ %64, %143 ], [ %134, %132 ], [ %131, %129 ], [ 0, %135 ], [ %140, %138 ], [ %64, %141 ], [ 0, %222 ], [ 0, %220 ], [ %64, %196 ], [ 0, %277 ], [ %64, %189 ], [ %64, %83 ], [ %64, %146 ], [ 0, %148 ], [ %64, %155 ], [ %64, %361 ], [ %64, %203 ], [ %64, %206 ]
  %369 = phi i32 [ %249, %287 ], [ %54, %246 ], [ 1, %241 ], [ %54, %236 ], [ 1, %226 ], [ %221, %233 ], [ %54, %218 ], [ %54, %143 ], [ %54, %132 ], [ %54, %129 ], [ %54, %135 ], [ %54, %138 ], [ %54, %141 ], [ %221, %222 ], [ %221, %220 ], [ %54, %196 ], [ 0, %277 ], [ %54, %189 ], [ %54, %83 ], [ %54, %148 ], [ %54, %146 ], [ %54, %155 ], [ %54, %361 ], [ %54, %203 ], [ %54, %206 ]
  %370 = phi ptr [ %86, %287 ], [ %86, %246 ], [ %86, %241 ], [ %86, %236 ], [ %231, %226 ], [ %86, %233 ], [ %86, %218 ], [ %145, %143 ], [ %86, %132 ], [ %86, %129 ], [ %86, %135 ], [ %86, %138 ], [ %86, %141 ], [ %86, %222 ], [ %86, %220 ], [ %200, %196 ], [ %86, %277 ], [ %163, %189 ], [ %86, %83 ], [ %86, %148 ], [ %86, %146 ], [ %163, %206 ], [ %163, %203 ], [ %362, %361 ], [ %86, %155 ]
  %371 = phi ptr [ %84, %287 ], [ %84, %246 ], [ %84, %241 ], [ %84, %236 ], [ %84, %226 ], [ %84, %233 ], [ %84, %218 ], [ %144, %143 ], [ %84, %132 ], [ %84, %129 ], [ %84, %135 ], [ %84, %138 ], [ %84, %141 ], [ %84, %222 ], [ %84, %220 ], [ %164, %196 ], [ %84, %277 ], [ %164, %189 ], [ %84, %83 ], [ %84, %148 ], [ %84, %146 ], [ %164, %206 ], [ %164, %203 ], [ %363, %361 ], [ %84, %155 ]
  %372 = load i8, ptr %6, align 8, !tbaa !89
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %366
  store i8 0, ptr %34, align 8, !tbaa !91
  br label %375

375:                                              ; preds = %374, %366
  %376 = icmp ult i32 %367, 2
  br i1 %376, label %377, label %379

377:                                              ; preds = %375, %379
  %378 = phi i32 [ 0, %375 ], [ %384, %379 ]
  br label %50

379:                                              ; preds = %375
  %380 = add i32 %367, -5
  %381 = icmp ult i32 %380, 2
  %382 = icmp eq i32 %367, 3
  %383 = or i1 %382, %381
  %384 = select i1 %383, i32 0, i32 %367
  br label %377

385:                                              ; preds = %118, %121, %93, %358, %307
  %386 = phi i8 [ 0, %307 ], [ 0, %358 ], [ 1, %93 ], [ 1, %121 ], [ 1, %118 ]
  %387 = load ptr, ptr %3, align 8, !tbaa !107
  %388 = icmp eq ptr %387, null
  br i1 %388, label %390, label %389

389:                                              ; preds = %385
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %387) #13
  br label %390

390:                                              ; preds = %389, %385
  br i1 %62, label %391, label %396

391:                                              ; preds = %390
  %392 = load i32, ptr %5, align 8, !tbaa !92
  %393 = load ptr, ptr %4, align 8, !tbaa !97
  %394 = load ptr, ptr %393, align 8, !tbaa !108
  %395 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %392, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %394) #13
  br label %396

396:                                              ; preds = %390, %391
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret i8 %386
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_output_buffer(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #3 !prof !35 !PGOFuncName !111 {
  %3 = add i64 %1, 3
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp ugt i64 %3, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %9, %15
  %17 = add i64 %16, %3
  %18 = mul i64 %17, 3
  %19 = lshr i64 %18, 1
  %20 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %19) #13
  store ptr %20, ptr %13, align 8, !tbaa !73
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  store ptr %21, ptr %4, align 8, !tbaa !112
  %22 = getelementptr inbounds i8, ptr %20, i64 %16
  store ptr %22, ptr %6, align 8, !tbaa !74
  br label %23

23:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: optsize
declare void @_cpp_process_line_notes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_cpp_pop_context(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_comment(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !35 !PGOFuncName !113 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = load ptr, ptr %0, align 8, !tbaa !36
  store ptr %1, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call fastcc void @skip_macro_block_comment(ptr noundef nonnull %0) #14
  br label %20

15:                                               ; preds = %3
  %16 = tail call zeroext i8 @_cpp_skip_block_comment(ptr noundef nonnull %0) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %7, i32 noundef 0, ptr noundef nonnull @.str.1) #13
  br label %20

20:                                               ; preds = %14, %18, %15
  %21 = phi i1 [ true, %14 ], [ false, %18 ], [ true, %15 ]
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %23 = load i8, ptr %22, align 8, !tbaa !89
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %29 = load i8, ptr %28, align 4, !tbaa !114
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !74
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  store ptr %34, ptr %32, align 8, !tbaa !74
  br label %60

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  %38 = getelementptr inbounds i8, ptr %37, i64 -1
  store i8 32, ptr %38, align 1, !tbaa !72
  br label %60

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %41 = load i8, ptr %40, align 1, !tbaa !115
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = getelementptr inbounds i8, ptr %45, i64 -1
  store ptr %46, ptr %44, align 8, !tbaa !74
  br label %60

47:                                               ; preds = %27, %39
  %48 = load ptr, ptr %8, align 8, !tbaa !58
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %1 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %1, i64 %51, i1 false)
  %54 = load ptr, ptr %52, align 8, !tbaa !74
  %55 = getelementptr inbounds i8, ptr %54, i64 %51
  store ptr %55, ptr %52, align 8, !tbaa !74
  br i1 %21, label %60, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %57, ptr %52, align 8, !tbaa !74
  store i8 42, ptr %55, align 1, !tbaa !72
  %58 = load ptr, ptr %52, align 8, !tbaa !74
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %52, align 8, !tbaa !74
  store i8 47, ptr %58, align 1, !tbaa !72
  br label %60

60:                                               ; preds = %31, %35, %43, %47, %56
  %61 = load ptr, ptr %8, align 8, !tbaa !58
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_identifier(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 !prof !35 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = load i8, ptr %1, align 1, !tbaa !72
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i8 [ %5, %2 ], [ %12, %6 ]
  %8 = phi ptr [ %4, %2 ], [ %11, %6 ]
  %9 = phi ptr [ %1, %2 ], [ %10, %6 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !72
  %12 = load i8, ptr %10, align 1, !tbaa !72
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !104
  %16 = and i16 %15, 516
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !117

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.cpp_context, ptr %20, i64 0, i32 2
  store ptr %10, ptr %21, align 8, !tbaa !72
  %22 = load ptr, ptr %3, align 8, !tbaa !74
  %23 = ptrtoint ptr %11 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %27 = load ptr, ptr %26, align 8, !tbaa !118
  %28 = tail call ptr @ht_lookup(ptr noundef %27, ptr noundef %22, i64 noundef %25, i32 noundef 1) #13
  store ptr %11, ptr %3, align 8, !tbaa !74
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_start_funlike(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #3 !prof !35 !PGOFuncName !119 {
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !102
  %9 = load ptr, ptr %3, align 8, !tbaa !107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @_cpp_release_buff(ptr noundef %0, ptr noundef nonnull %9) #13
  br label %12

12:                                               ; preds = %11, %4
  %13 = zext i16 %8 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = add nuw nsw i64 %14, 8
  %16 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %15) #13
  store ptr %16, ptr %3, align 8, !tbaa !107
  %17 = getelementptr inbounds %struct._cpp_buff, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 2
  store ptr %1, ptr %20, align 8, !tbaa !97
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = ptrtoint ptr %2 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 3
  store i64 %25, ptr %26, align 8, !tbaa !98
  %27 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 5
  store i32 0, ptr %27, align 4, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @recursive_macro(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 !prof !35 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 2048
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %9, i64 0, i32 5
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  br label %17

17:                                               ; preds = %26, %14
  %18 = phi i64 [ 0, %14 ], [ %20, %26 ]
  %19 = phi ptr [ %16, %14 ], [ %28, %26 ]
  %20 = add i64 %18, 1
  %21 = getelementptr inbounds %struct.cpp_context, ptr %19, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = icmp eq ptr %22, %1
  %24 = icmp ugt i64 %20, 20
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.cpp_context, ptr %19, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %17, !llvm.loop !124

30:                                               ; preds = %17, %7
  %31 = load ptr, ptr %1, align 8, !tbaa !108
  %32 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef %31) #13
  br label %33

33:                                               ; preds = %26, %2, %30
  %34 = phi i8 [ 1, %30 ], [ 0, %2 ], [ 0, %26 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_replacement_text(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !35 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 256
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @_cpp_builtin_macro_text(ptr noundef %0, ptr noundef nonnull %1) #13
  %9 = tail call fastcc i64 @ustrlen(ptr noundef %8) #14
  %10 = add i64 %9, 1
  %11 = tail call ptr @_cpp_unaligned_alloc(ptr noundef %0, i64 noundef %10) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %8, i64 %9, i1 false)
  %12 = getelementptr inbounds i8, ptr %11, i64 %9
  store i8 10, ptr %12, align 1, !tbaa !72
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 5
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = or i8 %17, 24
  store i8 %20, ptr %16, align 2
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !126
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %13, %7
  %25 = phi ptr [ %11, %7 ], [ %19, %13 ]
  %26 = phi i64 [ %9, %7 ], [ %23, %13 ]
  tail call void @_cpp_push_text_context(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %25, i64 noundef %26) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_replacement_text(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #3 !prof !35 !PGOFuncName !127 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = load ptr, ptr %4, align 8, !tbaa !73
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !102
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = add i64 %10, 1
  %16 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %15) #13
  %17 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %10, i1 false)
  %18 = getelementptr inbounds i8, ptr %16, i64 %10
  store i8 10, ptr %18, align 1, !tbaa !72
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 2
  %22 = or i8 %21, 16
  store i8 %22, ptr %20, align 2
  %23 = trunc i64 %10 to i32
  %24 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !126
  br label %72

25:                                               ; preds = %3
  %26 = add i64 %10, 13
  %27 = and i64 %26, -8
  %28 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !126
  %30 = zext i32 %29 to i64
  %31 = add i64 %27, %30
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  %34 = getelementptr inbounds %struct._cpp_buff, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !129
  %36 = getelementptr inbounds %struct._cpp_buff, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !120
  %38 = ptrtoint ptr %35 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %31, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %25
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef %31) #13
  %43 = load ptr, ptr %32, align 8, !tbaa !128
  %44 = getelementptr inbounds %struct._cpp_buff, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  %46 = load i32, ptr %28, align 4, !tbaa !126
  %47 = zext i32 %46 to i64
  br label %48

48:                                               ; preds = %42, %25
  %49 = phi i64 [ %47, %42 ], [ %30, %25 ]
  %50 = phi ptr [ %45, %42 ], [ %37, %25 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 %49
  %52 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %50, ptr %52, align 8, !tbaa !72
  %53 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %54 = load i8, ptr %53, align 2
  %55 = or i8 %54, 16
  store i8 %55, ptr %53, align 2
  %56 = trunc i64 %10 to i32
  store i32 %56, ptr %51, align 4, !tbaa !130
  %57 = trunc i32 %2 to i16
  %58 = getelementptr inbounds %struct.block, ptr %51, i64 0, i32 1
  store i16 %57, ptr %58, align 4, !tbaa !132
  %59 = getelementptr inbounds %struct.block, ptr %51, i64 0, i32 2
  %60 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %59, ptr align 1 %60, i64 %10, i1 false)
  %61 = load ptr, ptr %4, align 8, !tbaa !73
  store ptr %61, ptr %5, align 8, !tbaa !74
  %62 = load i32, ptr %28, align 4, !tbaa !126
  %63 = trunc i64 %27 to i32
  %64 = add i32 %62, %63
  store i32 %64, ptr %28, align 4, !tbaa !126
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %48
  %67 = load ptr, ptr %32, align 8, !tbaa !128
  %68 = getelementptr inbounds %struct._cpp_buff, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !120
  %70 = zext i32 %64 to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store ptr %71, ptr %68, align 8, !tbaa !120
  br label %72

72:                                               ; preds = %48, %66, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @save_argument(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !133 {
  %3 = getelementptr inbounds %struct.fun_macro, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !101
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !101
  %6 = getelementptr inbounds %struct.fun_macro, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !102
  %12 = zext i16 %11 to i32
  %13 = icmp ugt i32 %5, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fun_macro, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = zext nneg i32 %5 to i64
  %18 = getelementptr inbounds i64, ptr %16, i64 %17
  store i64 %1, ptr %18, align 8, !tbaa !100
  br label %19

19:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_arguments_ok(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_args_and_push(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !35 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.fun_macro, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !102
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call fastcc void @push_replacement_text(ptr noundef %0, ptr noundef nonnull %4) #14
  br label %153

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = load i32, ptr %13, align 4, !tbaa !130
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.block, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 4, !tbaa !132
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.fun_macro, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i16 [ %17, %19 ], [ %45, %22 ]
  %24 = phi i64 [ %15, %19 ], [ %43, %22 ]
  %25 = phi i64 [ %15, %19 ], [ %42, %22 ]
  %26 = phi ptr [ %13, %19 ], [ %40, %22 ]
  %27 = zext i16 %23 to i64
  %28 = getelementptr inbounds i64, ptr %21, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !100
  %30 = add nuw nsw i64 %27, 4294967295
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds i64, ptr %21, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !100
  %34 = xor i64 %33, -1
  %35 = add i64 %29, %34
  %36 = shl i64 %35, 1
  %37 = add i64 %36, %24
  %38 = add nuw nsw i64 %25, 13
  %39 = and i64 %38, 8589934584
  %40 = getelementptr inbounds i8, ptr %26, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !130
  %42 = zext i32 %41 to i64
  %43 = add i64 %37, %42
  %44 = getelementptr inbounds %struct.block, ptr %40, i64 0, i32 1
  %45 = load i16, ptr %44, align 4, !tbaa !132
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %22

47:                                               ; preds = %22, %11
  %48 = phi i64 [ %15, %11 ], [ %43, %22 ]
  %49 = add i64 %48, 1
  %50 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %49) #13
  %51 = getelementptr inbounds %struct._cpp_buff, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !120
  %53 = load ptr, ptr %12, align 8, !tbaa !72
  %54 = getelementptr inbounds %struct.fun_macro, ptr %1, i64 0, i32 1
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  br label %56

56:                                               ; preds = %139, %47
  %57 = phi i32 [ 0, %47 ], [ %82, %139 ]
  %58 = phi i64 [ 0, %47 ], [ %140, %139 ]
  %59 = phi ptr [ %52, %47 ], [ %141, %139 ]
  %60 = phi ptr [ %53, %47 ], [ %146, %139 ]
  %61 = load i32, ptr %60, align 4, !tbaa !130
  %62 = zext i32 %61 to i64
  %63 = add i64 %58, %62
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.block, ptr %60, i64 0, i32 2
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi ptr [ %77, %67 ], [ %66, %65 ]
  %69 = phi i64 [ %79, %67 ], [ %62, %65 ]
  %70 = phi ptr [ %78, %67 ], [ %59, %65 ]
  %71 = phi i32 [ %76, %67 ], [ %57, %65 ]
  %72 = load i8, ptr %68, align 1, !tbaa !72
  %73 = icmp eq i8 %72, 34
  %74 = icmp eq i32 %71, 0
  %75 = zext i1 %74 to i32
  %76 = select i1 %73, i32 %75, i32 %71
  %77 = getelementptr inbounds i8, ptr %68, i64 1
  %78 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %72, ptr %70, align 1, !tbaa !72
  %79 = add nsw i64 %69, -1
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %67, !llvm.loop !135

81:                                               ; preds = %67, %56
  %82 = phi i32 [ %57, %56 ], [ %76, %67 ]
  %83 = phi ptr [ %59, %56 ], [ %78, %67 ]
  %84 = getelementptr inbounds %struct.block, ptr %60, i64 0, i32 1
  %85 = load i16, ptr %84, align 4, !tbaa !132
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %147, label %87

87:                                               ; preds = %81
  %88 = zext i16 %85 to i64
  %89 = load ptr, ptr %54, align 8, !tbaa !99
  %90 = getelementptr inbounds i64, ptr %89, i64 %88
  %91 = load i64, ptr %90, align 8, !tbaa !100
  %92 = add nuw nsw i64 %88, 4294967295
  %93 = and i64 %92, 4294967295
  %94 = getelementptr inbounds i64, ptr %89, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !100
  %96 = xor i64 %95, -1
  %97 = add i64 %91, %96
  %98 = load ptr, ptr %55, align 8, !tbaa !73
  %99 = getelementptr inbounds i8, ptr %98, i64 %95
  %100 = icmp eq i64 %97, 0
  br i1 %100, label %139, label %101

101:                                              ; preds = %87
  %102 = icmp eq i32 %82, 0
  br label %103

103:                                              ; preds = %101, %129
  %104 = phi ptr [ %99, %101 ], [ %133, %129 ]
  %105 = phi i32 [ 0, %101 ], [ %132, %129 ]
  %106 = phi i64 [ %97, %101 ], [ %137, %129 ]
  %107 = phi ptr [ %83, %101 ], [ %135, %129 ]
  %108 = phi i64 [ %63, %101 ], [ %136, %129 ]
  br i1 %102, label %129, label %109

109:                                              ; preds = %103
  %110 = load i8, ptr %104, align 1, !tbaa !72
  %111 = icmp eq i8 %110, 34
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = icmp ugt ptr %104, %99
  br i1 %113, label %114, label %125

114:                                              ; preds = %112
  %115 = getelementptr inbounds i8, ptr %104, i64 -1
  %116 = load i8, ptr %115, align 1, !tbaa !72
  %117 = icmp eq i8 %116, 92
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = icmp eq i32 %105, 0
  %120 = zext i1 %119 to i32
  br label %125

121:                                              ; preds = %109
  %122 = icmp eq i32 %105, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %121
  %124 = icmp eq i8 %110, 92
  br i1 %124, label %125, label %129

125:                                              ; preds = %123, %112, %114, %118
  %126 = phi i32 [ %120, %118 ], [ %105, %114 ], [ %105, %112 ], [ 1, %123 ]
  %127 = getelementptr inbounds i8, ptr %107, i64 1
  store i8 92, ptr %107, align 1, !tbaa !72
  %128 = add i64 %108, 1
  br label %129

129:                                              ; preds = %125, %103, %121, %123
  %130 = phi i64 [ %108, %123 ], [ %108, %121 ], [ %108, %103 ], [ %128, %125 ]
  %131 = phi ptr [ %107, %123 ], [ %107, %121 ], [ %107, %103 ], [ %127, %125 ]
  %132 = phi i32 [ 1, %123 ], [ 0, %121 ], [ %105, %103 ], [ %126, %125 ]
  %133 = getelementptr inbounds i8, ptr %104, i64 1
  %134 = load i8, ptr %104, align 1, !tbaa !72
  %135 = getelementptr inbounds i8, ptr %131, i64 1
  store i8 %134, ptr %131, align 1, !tbaa !72
  %136 = add i64 %130, 1
  %137 = add i64 %106, -1
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %103, !llvm.loop !136

139:                                              ; preds = %129, %87
  %140 = phi i64 [ %63, %87 ], [ %136, %129 ]
  %141 = phi ptr [ %83, %87 ], [ %135, %129 ]
  %142 = load i32, ptr %60, align 4, !tbaa !130
  %143 = zext i32 %142 to i64
  %144 = add nuw nsw i64 %143, 13
  %145 = and i64 %144, 8589934584
  %146 = getelementptr inbounds i8, ptr %60, i64 %145
  br label %56

147:                                              ; preds = %81
  store i8 10, ptr %83, align 1, !tbaa !72
  %148 = load ptr, ptr %3, align 8, !tbaa !97
  %149 = load ptr, ptr %51, align 8, !tbaa !120
  tail call void @_cpp_push_text_context(ptr noundef %0, ptr noundef %148, ptr noundef %149, i64 noundef %63) #13
  %150 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %151 = load ptr, ptr %150, align 8, !tbaa !71
  %152 = getelementptr inbounds %struct.cpp_context, ptr %151, i64 0, i32 3
  store ptr %50, ptr %152, align 8, !tbaa !137
  br label %153

153:                                              ; preds = %147, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @skip_whitespace(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !35 !PGOFuncName !138 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp ne i32 %2, 0
  br label %7

7:                                                ; preds = %18, %3
  %8 = phi ptr [ %5, %3 ], [ %19, %18 ]
  %9 = phi ptr [ %1, %3 ], [ %20, %18 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %9, align 1, !tbaa !72
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %11, ptr %8, align 1, !tbaa !72
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !104
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %7, %27
  %19 = phi ptr [ %29, %27 ], [ %12, %7 ]
  %20 = phi ptr [ %28, %27 ], [ %10, %7 ]
  br label %7

21:                                               ; preds = %7
  %22 = icmp eq i8 %11, 47
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = load i8, ptr %10, align 1, !tbaa !72
  %25 = icmp eq i8 %24, 42
  %26 = and i1 %6, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  store ptr %12, ptr %4, align 8, !tbaa !74
  %28 = tail call fastcc ptr @copy_comment(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0) #14
  %29 = load ptr, ptr %4, align 8, !tbaa !74
  br label %18

30:                                               ; preds = %23, %21
  store ptr %8, ptr %4, align 8, !tbaa !74
  ret ptr %9
}

; Function Attrs: optsize
declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_cpp_release_buff(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @skip_macro_block_comment(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !35 !PGOFuncName !139 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !72
  %6 = icmp eq i8 %5, 47
  %7 = getelementptr inbounds i8, ptr %3, i64 2
  %8 = select i1 %6, ptr %7, ptr %4
  br label %9

9:                                                ; preds = %18, %1
  %10 = phi ptr [ %8, %1 ], [ %11, %18 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %10, align 1, !tbaa !72
  %13 = icmp eq i8 %12, 47
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %10, i64 -1
  %16 = load i8, ptr %15, align 1, !tbaa !72
  %17 = icmp eq i8 %16, 42
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %9
  br label %9, !llvm.loop !140

19:                                               ; preds = %14
  store ptr %11, ptr %2, align 8, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_skip_block_comment(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @ht_lookup(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @_cpp_get_buff(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @_cpp_builtin_macro_text(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ustrlen(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !35 !PGOFuncName !141 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: optsize
declare ptr @_cpp_unaligned_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_cpp_push_text_context(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_cpp_extend_buff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @_cpp_replacement_text_len(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !35 {
  %2 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !102
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load i32, ptr %12, align 4, !tbaa !130
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.block, ptr %12, i64 0, i32 1
  %16 = load i16, ptr %15, align 4, !tbaa !132
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %0, align 8, !tbaa !142
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i16 [ %16, %18 ], [ %41, %20 ]
  %22 = phi i64 [ %14, %18 ], [ %39, %20 ]
  %23 = phi i64 [ %14, %18 ], [ %38, %20 ]
  %24 = phi ptr [ %12, %18 ], [ %36, %20 ]
  %25 = zext i16 %21 to i64
  %26 = add nuw nsw i64 %25, 4294967295
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds ptr, ptr %19, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !143
  %30 = getelementptr inbounds %struct.ht_identifier, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !144
  %32 = zext i32 %31 to i64
  %33 = add i64 %22, %32
  %34 = add nuw nsw i64 %23, 13
  %35 = and i64 %34, 8589934584
  %36 = getelementptr inbounds i8, ptr %24, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !130
  %38 = zext i32 %37 to i64
  %39 = add i64 %33, %38
  %40 = getelementptr inbounds %struct.block, ptr %36, i64 0, i32 1
  %41 = load i16, ptr %40, align 4, !tbaa !132
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %20

43:                                               ; preds = %6, %1
  %44 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !126
  %46 = zext i32 %45 to i64
  br label %47

47:                                               ; preds = %20, %10, %43
  %48 = phi i64 [ %46, %43 ], [ %14, %10 ], [ %39, %20 ]
  ret i64 %48
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @_cpp_copy_replacement_text(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 !prof !35 {
  %3 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !102
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.block, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %13, align 4, !tbaa !130
  %16 = zext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 2 %14, i64 %16, i1 false)
  %17 = load i32, ptr %13, align 4, !tbaa !130
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.block, ptr %13, i64 0, i32 1
  %21 = load i16, ptr %20, align 4, !tbaa !132
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %11, %23
  %24 = phi i16 [ %52, %23 ], [ %21, %11 ]
  %25 = phi ptr [ %50, %23 ], [ %19, %11 ]
  %26 = phi ptr [ %44, %23 ], [ %13, %11 ]
  %27 = zext i16 %24 to i64
  %28 = load ptr, ptr %0, align 8, !tbaa !142
  %29 = add nuw nsw i64 %27, 4294967295
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = getelementptr inbounds %struct.ht_identifier, ptr %32, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !144
  %36 = zext i32 %35 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %33, i64 %36, i1 false)
  %37 = load i32, ptr %34, align 8, !tbaa !144
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %25, i64 %38
  %40 = load i32, ptr %26, align 4, !tbaa !130
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %41, 13
  %43 = and i64 %42, 8589934584
  %44 = getelementptr inbounds i8, ptr %26, i64 %43
  %45 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %44, align 4, !tbaa !130
  %47 = zext i32 %46 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 2 %45, i64 %47, i1 false)
  %48 = load i32, ptr %44, align 4, !tbaa !130
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %39, i64 %49
  %51 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 1
  %52 = load i16, ptr %51, align 4, !tbaa !132
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %63, label %23

54:                                               ; preds = %7, %2
  %55 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !72
  %57 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !126
  %59 = zext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %56, i64 %59, i1 false)
  %60 = load i32, ptr %57, align 4, !tbaa !126
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %1, i64 %61
  br label %63

63:                                               ; preds = %23, %11, %54
  %64 = phi ptr [ %62, %54 ], [ %19, %11 ], [ %50, %23 ]
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_create_trad_definition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !35 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !74
  %8 = load ptr, ptr %0, align 8, !tbaa !36
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !72
  %11 = load ptr, ptr %0, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2, i32 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !72
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %9 to i64
  %17 = sub i64 %15, %16
  tail call fastcc void @check_output_buffer(ptr noundef nonnull %0, i64 noundef %17) #14
  %18 = load ptr, ptr %10, align 8, !tbaa !72
  %19 = load i8, ptr %18, align 1, !tbaa !72
  %20 = icmp eq i8 %19, 40
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = tail call fastcc zeroext i8 @scan_parameters(ptr noundef nonnull %0, ptr noundef %1) #14, !range !94
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = getelementptr inbounds %struct._cpp_buff, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  store ptr %26, ptr %1, align 8, !tbaa !142
  %27 = icmp eq i8 %22, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !102
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %26, i64 %31
  store ptr %32, ptr %25, align 8, !tbaa !120
  %33 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %34 = load i8, ptr %33, align 2
  %35 = or i8 %34, 1
  store i8 %35, ptr %33, align 2
  br label %36

36:                                               ; preds = %28, %21, %2
  %37 = phi ptr [ %1, %2 ], [ %1, %28 ], [ null, %21 ]
  %38 = load ptr, ptr %10, align 8, !tbaa !72
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %40 = load i8, ptr %39, align 4, !tbaa !114
  %41 = zext i8 %40 to i32
  %42 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef %38, i32 noundef %41) #14
  %43 = load ptr, ptr %0, align 8, !tbaa !36
  store ptr %42, ptr %43, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %45 = load i8, ptr %44, align 8, !tbaa !90
  %46 = add i8 %45, 1
  store i8 %46, ptr %44, align 8, !tbaa !90
  %47 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef nonnull %0, ptr noundef %37) #14
  %48 = load i8, ptr %44, align 8, !tbaa !90
  %49 = add i8 %48, -1
  store i8 %49, ptr %44, align 8, !tbaa !90
  %50 = icmp eq ptr %37, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %36
  %52 = load ptr, ptr %5, align 8, !tbaa !73
  %53 = load ptr, ptr %7, align 8, !tbaa !74
  br label %54

54:                                               ; preds = %57, %51
  %55 = phi ptr [ %53, %51 ], [ %58, %57 ]
  %56 = icmp ugt ptr %55, %52
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %55, i64 -1
  %59 = load i8, ptr %58, align 1, !tbaa !72
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !104
  %63 = and i16 %62, 3072
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %54, !llvm.loop !145

65:                                               ; preds = %54, %57
  store ptr %55, ptr %7, align 8, !tbaa !74
  tail call fastcc void @save_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef 0) #14
  br label %66

66:                                               ; preds = %36, %65
  %67 = phi i8 [ 1, %65 ], [ 0, %36 ]
  ret i8 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @scan_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !35 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  br label %8

8:                                                ; preds = %26, %2
  %9 = phi ptr [ %6, %2 ], [ %30, %26 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef 1) #14
  %12 = load i8, ptr %11, align 1, !tbaa !72
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !104
  %16 = and i16 %15, 512
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  switch i8 %12, label %36 [
    i8 36, label %19
    i8 41, label %32
  ]

19:                                               ; preds = %18
  %20 = load i8, ptr %7, align 2, !tbaa !106
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19, %8
  %23 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %11) #14
  %24 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %23) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.cpp_context, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = tail call fastcc ptr @skip_whitespace(ptr noundef %0, ptr noundef %29, i32 noundef 1) #14
  %31 = load i8, ptr %30, align 1, !tbaa !72
  switch i8 %31, label %36 [
    i8 44, label %8
    i8 41, label %42
  ]

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !102
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %18, %19, %22, %26, %32
  %37 = phi ptr [ %11, %32 ], [ %11, %18 ], [ %11, %19 ], [ %11, %22 ], [ %30, %26 ]
  %38 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.3) #13
  %39 = load i8, ptr %37, align 1, !tbaa !72
  %40 = icmp eq i8 %39, 41
  %41 = zext i1 %40 to i64
  br label %42

42:                                               ; preds = %26, %36, %32
  %43 = phi i64 [ %41, %36 ], [ 1, %32 ], [ 1, %26 ]
  %44 = phi i8 [ 0, %36 ], [ 1, %32 ], [ 1, %26 ]
  %45 = phi ptr [ %37, %36 ], [ %11, %32 ], [ %30, %26 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 %43
  %47 = load ptr, ptr %3, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct.cpp_context, ptr %47, i64 0, i32 2
  store ptr %46, ptr %48, align 8, !tbaa !72
  ret i8 %44
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_save_parameter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_expansions_different_trad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !35 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !126
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !126
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xmalloc(i64 noundef %10) #13
  %12 = load i32, ptr %5, align 4, !tbaa !126
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !tbaa !72
  %15 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !102
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  br i1 %17, label %63, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 1
  %24 = load i16, ptr %23, align 4, !tbaa !132
  %25 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 1
  %26 = load i16, ptr %25, align 4, !tbaa !132
  %27 = icmp eq i16 %24, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %20, %47
  %29 = phi ptr [ %58, %47 ], [ %23, %20 ]
  %30 = phi ptr [ %57, %47 ], [ %22, %20 ]
  %31 = phi ptr [ %52, %47 ], [ %19, %20 ]
  %32 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %31, align 4, !tbaa !130
  %34 = zext i32 %33 to i64
  %35 = call fastcc i64 @canonicalize_text(ptr noundef %11, ptr noundef nonnull %32, i64 noundef %34, ptr noundef nonnull %3) #14
  %36 = getelementptr inbounds %struct.block, ptr %30, i64 0, i32 2
  %37 = load i32, ptr %30, align 4, !tbaa !130
  %38 = zext i32 %37 to i64
  %39 = call fastcc i64 @canonicalize_text(ptr noundef %14, ptr noundef nonnull %36, i64 noundef %38, ptr noundef nonnull %4) #14
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %28
  %42 = tail call i32 @bcmp(ptr %11, ptr %14, i64 %35)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load i16, ptr %29, align 4, !tbaa !132
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %31, align 4, !tbaa !130
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %49, 13
  %51 = and i64 %50, 8589934584
  %52 = getelementptr inbounds i8, ptr %31, i64 %51
  %53 = load i32, ptr %30, align 4, !tbaa !130
  %54 = zext i32 %53 to i64
  %55 = add nuw nsw i64 %54, 13
  %56 = and i64 %55, 8589934584
  %57 = getelementptr inbounds i8, ptr %30, i64 %56
  %58 = getelementptr inbounds %struct.block, ptr %52, i64 0, i32 1
  %59 = load i16, ptr %58, align 4, !tbaa !132
  %60 = getelementptr inbounds %struct.block, ptr %57, i64 0, i32 1
  %61 = load i16, ptr %60, align 4, !tbaa !132
  %62 = icmp eq i16 %59, %61
  br i1 %62, label %28, label %75

63:                                               ; preds = %2
  %64 = call fastcc i64 @canonicalize_text(ptr noundef %11, ptr noundef %19, i64 noundef %13, ptr noundef nonnull %3) #14
  %65 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = load i32, ptr %7, align 4, !tbaa !126
  %68 = zext i32 %67 to i64
  %69 = call fastcc i64 @canonicalize_text(ptr noundef %14, ptr noundef %66, i64 noundef %68, ptr noundef nonnull %4) #14
  %70 = icmp eq i64 %64, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = tail call i32 @bcmp(ptr %11, ptr %14, i64 %64)
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i8
  br label %75

75:                                               ; preds = %47, %41, %28, %44, %20, %63, %71
  %76 = phi i8 [ 1, %63 ], [ %74, %71 ], [ 1, %20 ], [ 1, %47 ], [ 1, %41 ], [ 1, %28 ], [ 0, %44 ]
  tail call void @free(ptr noundef %11) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i8 %76
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @canonicalize_text(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #5 !prof !35 !PGOFuncName !147 {
  %5 = load i8, ptr %3, align 1, !tbaa !72
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %4, %46
  %8 = phi i8 [ %49, %46 ], [ %5, %4 ]
  %9 = phi ptr [ %50, %46 ], [ %0, %4 ]
  %10 = phi ptr [ %48, %46 ], [ %1, %4 ]
  %11 = phi i64 [ %47, %46 ], [ %2, %4 ]
  %12 = load i8, ptr %10, align 1, !tbaa !72
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !104
  %16 = and i16 %15, 3072
  %17 = icmp eq i16 %16, 0
  %18 = icmp ne i8 %8, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %37, label %20

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
  %29 = load i8, ptr %28, align 1, !tbaa !72
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !104
  %33 = and i16 %32, 3072
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !148

35:                                               ; preds = %22, %27
  %36 = phi ptr [ %21, %22 ], [ %28, %27 ]
  store i8 32, ptr %9, align 1, !tbaa !72
  br label %46

37:                                               ; preds = %7
  switch i8 %12, label %42 [
    i8 39, label %38
    i8 34, label %38
  ]

38:                                               ; preds = %37, %37
  br i1 %18, label %39, label %42

39:                                               ; preds = %38
  %40 = icmp eq i8 %8, %12
  %41 = select i1 %40, i8 0, i8 %8
  br label %42

42:                                               ; preds = %38, %37, %39
  %43 = phi i8 [ %41, %39 ], [ %8, %37 ], [ %12, %38 ]
  %44 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %12, ptr %9, align 1, !tbaa !72
  %45 = add nsw i64 %11, -1
  br label %46

46:                                               ; preds = %42, %35
  %47 = phi i64 [ %45, %42 ], [ %25, %35 ]
  %48 = phi ptr [ %44, %42 ], [ %36, %35 ]
  %49 = phi i8 [ %43, %42 ], [ 0, %35 ]
  %50 = getelementptr inbounds i8, ptr %9, i64 1
  %51 = icmp eq i64 %47, 0
  br i1 %51, label %52, label %7, !llvm.loop !149

52:                                               ; preds = %46, %4
  %53 = phi ptr [ %0, %4 ], [ %50, %46 ]
  %54 = phi i8 [ %5, %4 ], [ %49, %46 ]
  store i8 %54, ptr %3, align 1, !tbaa !72
  %55 = ptrtoint ptr %53 to i64
  %56 = ptrtoint ptr %0 to i64
  %57 = sub i64 %55, %56
  ret i64 %57
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!36 = !{!37, !38, i64 0}
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
!57 = !{!37, !38, i64 8}
!58 = !{!59, !38, i64 0}
!59 = !{!"cpp_buffer", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !42, i64 48, !42, i64 52, !42, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !39, i64 96, !42, i64 97, !42, i64 97, !42, i64 97, !39, i64 98, !46, i64 104, !50, i64 168}
!60 = !{!37, !38, i64 1240}
!61 = !{!59, !38, i64 32}
!62 = !{!37, !38, i64 1248}
!63 = !{!59, !38, i64 16}
!64 = !{!37, !38, i64 1256}
!65 = !{!59, !39, i64 96}
!66 = !{!59, !38, i64 8}
!67 = !{!37, !39, i64 18}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!37, !39, i64 19}
!71 = !{!37, !38, i64 136}
!72 = !{!39, !39, i64 0}
!73 = !{!37, !38, i64 1208}
!74 = !{!37, !38, i64 1224}
!75 = !{!37, !38, i64 40}
!76 = !{!77, !42, i64 36}
!77 = !{!"line_maps", !38, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !39, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !38, i64 48}
!78 = !{!37, !42, i64 1232}
!79 = !{!43, !38, i64 8}
!80 = !{!59, !38, i64 40}
!81 = !{!59, !42, i64 48}
!82 = !{!83, !38, i64 0}
!83 = !{!"_cpp_line_note", !38, i64 0, !42, i64 8}
!84 = !{!77, !38, i64 0}
!85 = !{!77, !42, i64 12}
!86 = !{!87, !42, i64 12}
!87 = !{!"line_map", !38, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !39, i64 21, !42, i64 22}
!88 = !{!87, !42, i64 8}
!89 = !{!37, !39, i64 16}
!90 = !{!37, !39, i64 24}
!91 = !{!37, !39, i64 424}
!92 = !{!93, !42, i64 32}
!93 = !{!"fun_macro", !38, i64 0, !38, i64 8, !38, i64 16, !47, i64 24, !42, i64 32, !42, i64 36}
!94 = !{i8 0, i8 2}
!95 = !{!37, !39, i64 20}
!96 = !{!37, !38, i64 1168}
!97 = !{!93, !38, i64 16}
!98 = !{!93, !47, i64 24}
!99 = !{!93, !38, i64 8}
!100 = !{!47, !47, i64 0}
!101 = !{!93, !42, i64 36}
!102 = !{!103, !45, i64 24}
!103 = !{!"cpp_macro", !38, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !45, i64 24, !42, i64 26, !42, i64 26, !42, i64 26, !42, i64 26, !42, i64 26, !42, i64 26}
!104 = !{!45, !45, i64 0}
!105 = !{!37, !42, i64 1044}
!106 = !{!37, !39, i64 1070}
!107 = !{!93, !38, i64 0}
!108 = !{!109, !38, i64 0}
!109 = !{!"cpp_hashnode", !110, i64 0, !42, i64 16, !42, i64 16, !39, i64 17, !42, i64 18, !42, i64 18, !39, i64 24}
!110 = !{!"ht_identifier", !38, i64 0, !42, i64 8, !42, i64 12}
!111 = !{!"cpp_traditional.c:check_output_buffer"}
!112 = !{!37, !38, i64 1216}
!113 = !{!"cpp_traditional.c:copy_comment"}
!114 = !{!37, !39, i64 1052}
!115 = !{!37, !39, i64 1051}
!116 = !{!"cpp_traditional.c:lex_identifier"}
!117 = distinct !{!117, !69}
!118 = !{!37, !38, i64 1016}
!119 = !{!"cpp_traditional.c:maybe_start_funlike"}
!120 = !{!121, !38, i64 16}
!121 = !{!"_cpp_buff", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24}
!122 = !{!"cpp_traditional.c:recursive_macro"}
!123 = !{!43, !38, i64 40}
!124 = distinct !{!124, !69}
!125 = !{!"cpp_traditional.c:push_replacement_text"}
!126 = !{!103, !42, i64 20}
!127 = !{!"cpp_traditional.c:save_replacement_text"}
!128 = !{!37, !38, i64 56}
!129 = !{!121, !38, i64 24}
!130 = !{!131, !42, i64 0}
!131 = !{!"block", !42, i64 0, !45, i64 4, !39, i64 6}
!132 = !{!131, !45, i64 4}
!133 = !{!"cpp_traditional.c:save_argument"}
!134 = !{!"cpp_traditional.c:replace_args_and_push"}
!135 = distinct !{!135, !69}
!136 = distinct !{!136, !69}
!137 = !{!43, !38, i64 32}
!138 = !{!"cpp_traditional.c:skip_whitespace"}
!139 = !{!"cpp_traditional.c:skip_macro_block_comment"}
!140 = distinct !{!140, !69}
!141 = !{!"cpp_traditional.c:ustrlen"}
!142 = !{!103, !38, i64 0}
!143 = !{!38, !38, i64 0}
!144 = !{!109, !42, i64 8}
!145 = distinct !{!145, !69}
!146 = !{!"cpp_traditional.c:scan_parameters"}
!147 = !{!"cpp_traditional.c:canonicalize_text"}
!148 = distinct !{!148, !69}
!149 = distinct !{!149, !69}
