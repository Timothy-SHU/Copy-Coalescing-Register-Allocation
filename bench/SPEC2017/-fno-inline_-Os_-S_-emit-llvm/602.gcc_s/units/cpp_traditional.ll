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
define dso_local void @_cpp_overlay_buffer(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !27
  %6 = load ptr, ptr %4, align 8, !tbaa !28
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 57
  store ptr %6, ptr %7, align 8, !tbaa !30
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 58
  store ptr %9, ptr %10, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 59
  store ptr %12, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 13
  store i8 0, ptr %14, align 8, !tbaa !35
  store ptr %1, ptr %4, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !36
  %16 = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %16, ptr %8, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_cpp_remove_overlay(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 57
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  store ptr %5, ptr %3, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 58
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 59
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 13
  store i8 1, ptr %12, align 8, !tbaa !35
  store ptr null, ptr %2, align 8, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_read_logical_line_trad(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  br label %3

3:                                                ; preds = %17, %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.cpp_buffer, ptr %4, i64 0, i32 13
  %6 = load i8, ptr %5, align 8, !tbaa !35
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
  %15 = load i8, ptr %2, align 2, !tbaa !37
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  br label %3, !llvm.loop !38

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !6
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
define dso_local noundef zeroext i8 @_cpp_scan_out_logical_line(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fun_macro, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 3
  %7 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 4
  %8 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 5
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %11 = load i8, ptr %10, align 1, !tbaa !40
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.cpp_context, ptr %15, i64 0, i32 2
  store ptr %13, ptr %16, align 8, !tbaa !42
  %17 = load ptr, ptr %0, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = load ptr, ptr %14, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.cpp_context, ptr %20, i64 0, i32 2, i32 0, i32 1
  store ptr %19, ptr %21, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.line_maps, ptr %26, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !46
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 3
  store i32 %28, ptr %29, align 8, !tbaa !48
  %30 = load ptr, ptr %0, align 8, !tbaa !6
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = icmp ne ptr %1, null
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 1
  %35 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 4
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %38 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 54
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  br label %41

41:                                               ; preds = %219, %2
  %42 = phi i8 [ %11, %2 ], [ %57, %219 ]
  %43 = phi i32 [ 0, %2 ], [ %220, %219 ]
  %44 = phi i32 [ 0, %2 ], [ %221, %219 ]
  %45 = phi i32 [ 0, %2 ], [ %222, %219 ]
  %46 = load ptr, ptr %14, align 8, !tbaa !41
  %47 = getelementptr inbounds %struct.cpp_context, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = getelementptr inbounds %struct.cpp_context, ptr %46, i64 0, i32 2, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %48 to i64
  %53 = sub i64 %51, %52
  tail call fastcc void @check_output_buffer(ptr noundef nonnull %0, i64 noundef %53) #14
  %54 = load ptr, ptr %24, align 8, !tbaa !44
  %55 = getelementptr inbounds %struct.cpp_context, ptr %46, i64 0, i32 1
  br label %56

56:                                               ; preds = %375, %41
  %57 = phi i8 [ %42, %41 ], [ 0, %375 ]
  %58 = phi i32 [ %43, %41 ], [ %376, %375 ]
  %59 = phi i32 [ %44, %41 ], [ %366, %375 ]
  %60 = phi i32 [ %45, %41 ], [ %367, %375 ]
  %61 = phi ptr [ %54, %41 ], [ %368, %375 ]
  %62 = phi ptr [ %48, %41 ], [ %369, %375 ]
  br label %63

63:                                               ; preds = %214, %56
  %64 = phi i32 [ %58, %56 ], [ %215, %214 ]
  %65 = phi i32 [ %59, %56 ], [ %72, %214 ]
  %66 = phi ptr [ %61, %56 ], [ %216, %214 ]
  %67 = phi ptr [ %62, %56 ], [ %217, %214 ]
  %68 = icmp eq i32 %64, 2
  %69 = add i32 %64, -1
  %70 = icmp ult i32 %69, 2
  br label %71

71:                                               ; preds = %63, %157
  %72 = phi i32 [ %65, %63 ], [ 0, %157 ]
  %73 = phi ptr [ %66, %63 ], [ %159, %157 ]
  %74 = phi ptr [ %67, %63 ], [ %158, %157 ]
  br label %75

75:                                               ; preds = %95, %71
  %76 = phi ptr [ %73, %71 ], [ %94, %95 ]
  %77 = phi ptr [ %74, %71 ], [ %96, %95 ]
  %78 = load ptr, ptr %55, align 8, !tbaa !49
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load ptr, ptr %0, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.cpp_buffer, ptr %81, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !50
  %84 = getelementptr inbounds %struct.cpp_buffer, ptr %81, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !51
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct._cpp_line_note, ptr %83, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !52
  %89 = icmp ult ptr %77, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  store ptr %77, ptr %81, align 8, !tbaa !28
  tail call void @_cpp_process_line_notes(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %91

91:                                               ; preds = %90, %80, %75
  %92 = getelementptr inbounds i8, ptr %77, i64 1
  %93 = load i8, ptr %77, align 1, !tbaa !42
  %94 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 %93, ptr %76, align 1, !tbaa !42
  switch i8 %93, label %364 [
    i8 32, label %95
    i8 9, label %95
    i8 12, label %95
    i8 11, label %95
    i8 0, label %95
    i8 10, label %97
    i8 60, label %135
    i8 62, label %138
    i8 34, label %141
    i8 39, label %141
    i8 92, label %147
    i8 47, label %152
    i8 95, label %160
    i8 97, label %160
    i8 98, label %160
    i8 99, label %160
    i8 100, label %160
    i8 101, label %160
    i8 102, label %160
    i8 103, label %160
    i8 104, label %160
    i8 105, label %160
    i8 106, label %160
    i8 107, label %160
    i8 108, label %160
    i8 109, label %160
    i8 110, label %160
    i8 111, label %160
    i8 112, label %160
    i8 113, label %160
    i8 114, label %160
    i8 115, label %160
    i8 116, label %160
    i8 117, label %160
    i8 118, label %160
    i8 119, label %160
    i8 120, label %160
    i8 121, label %160
    i8 122, label %160
    i8 65, label %160
    i8 66, label %160
    i8 67, label %160
    i8 68, label %160
    i8 69, label %160
    i8 70, label %160
    i8 71, label %160
    i8 72, label %160
    i8 73, label %160
    i8 74, label %160
    i8 75, label %160
    i8 76, label %160
    i8 77, label %160
    i8 78, label %160
    i8 79, label %160
    i8 80, label %160
    i8 81, label %160
    i8 82, label %160
    i8 83, label %160
    i8 84, label %160
    i8 85, label %160
    i8 86, label %160
    i8 87, label %160
    i8 88, label %160
    i8 89, label %160
    i8 90, label %160
    i8 40, label %223
    i8 44, label %239
    i8 41, label %249
    i8 35, label %292
  ]

95:                                               ; preds = %91, %91, %91, %91, %91, %132
  %96 = phi ptr [ %92, %91 ], [ %92, %91 ], [ %92, %91 ], [ %92, %91 ], [ %92, %91 ], [ %134, %132 ]
  br label %75

97:                                               ; preds = %91
  %98 = load ptr, ptr %55, align 8, !tbaa !49
  %99 = icmp eq ptr %98, null
  store ptr %76, ptr %24, align 8, !tbaa !44
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @_cpp_pop_context(ptr noundef nonnull %0) #13
  br label %219

101:                                              ; preds = %97
  %102 = load ptr, ptr %0, align 8, !tbaa !6
  store ptr %92, ptr %102, align 8, !tbaa !28
  %103 = getelementptr inbounds %struct.cpp_buffer, ptr %102, i64 0, i32 13
  store i8 1, ptr %103, align 8, !tbaa !35
  %104 = load ptr, ptr %25, align 8, !tbaa !45
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = getelementptr inbounds %struct.line_maps, ptr %104, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !55
  %108 = add i32 %107, -1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.line_maps, ptr %104, i64 0, i32 8
  %111 = load i32, ptr %110, align 4, !tbaa !46
  %112 = getelementptr inbounds %struct.line_map, ptr %105, i64 %109, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !56
  %114 = sub i32 %111, %113
  %115 = getelementptr inbounds %struct.line_map, ptr %105, i64 %109, i32 6
  %116 = load i8, ptr %115, align 2
  %117 = zext nneg i8 %116 to i32
  %118 = lshr i32 %114, %117
  %119 = getelementptr inbounds %struct.line_map, ptr %105, i64 %109, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !58
  %121 = add i32 %120, 1
  %122 = add i32 %121, %118
  %123 = tail call i32 @linemap_line_start(ptr noundef nonnull %104, i32 noundef %122, i32 noundef 0) #13
  br i1 %70, label %124, label %383

124:                                              ; preds = %101
  %125 = load i8, ptr %9, align 8, !tbaa !59
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %383

127:                                              ; preds = %124
  %128 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #13
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %383, label %130

130:                                              ; preds = %127
  br i1 %68, label %131, label %132

131:                                              ; preds = %130
  store i8 32, ptr %76, align 1, !tbaa !42
  br label %132

132:                                              ; preds = %131, %130
  %133 = load ptr, ptr %0, align 8, !tbaa !6
  %134 = load ptr, ptr %133, align 8, !tbaa !28
  br label %95

135:                                              ; preds = %91
  %136 = icmp eq i8 %57, 0
  %137 = select i1 %136, i32 %72, i32 62
  br label %364

138:                                              ; preds = %91
  %139 = icmp eq i32 %72, 62
  %140 = select i1 %139, i32 0, i32 %72
  br label %364

141:                                              ; preds = %91, %91
  %142 = zext nneg i8 %93 to i32
  %143 = icmp eq i32 %72, %142
  br i1 %143, label %364, label %144

144:                                              ; preds = %141
  %145 = icmp eq i32 %72, 0
  %146 = select i1 %145, i32 %142, i32 %72
  br label %364

147:                                              ; preds = %91
  %148 = load i8, ptr %92, align 1, !tbaa !42
  switch i8 %148, label %364 [
    i8 92, label %149
    i8 34, label %149
    i8 39, label %149
  ]

149:                                              ; preds = %147, %147, %147
  %150 = getelementptr inbounds i8, ptr %77, i64 2
  %151 = getelementptr inbounds i8, ptr %76, i64 2
  store i8 %148, ptr %94, align 1, !tbaa !42
  br label %364

152:                                              ; preds = %91
  %153 = icmp eq i32 %72, 0
  br i1 %153, label %154, label %364

154:                                              ; preds = %152
  %155 = load i8, ptr %92, align 1, !tbaa !42
  %156 = icmp eq i8 %155, 42
  br i1 %156, label %157, label %364

157:                                              ; preds = %154
  store ptr %94, ptr %24, align 8, !tbaa !44
  %158 = tail call fastcc ptr @copy_comment(ptr noundef nonnull %0, ptr noundef nonnull %92, i32 noundef %33) #14
  %159 = load ptr, ptr %24, align 8, !tbaa !44
  br label %71

160:                                              ; preds = %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91, %91
  %161 = load i8, ptr %37, align 2, !tbaa !37
  %162 = icmp eq i8 %161, 0
  %163 = icmp eq i32 %72, 0
  %164 = or i1 %32, %163
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %364

166:                                              ; preds = %160
  store ptr %76, ptr %24, align 8, !tbaa !44
  %167 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %77) #14
  %168 = load ptr, ptr %24, align 8, !tbaa !44
  %169 = load ptr, ptr %47, align 8, !tbaa !42
  %170 = getelementptr inbounds %struct.cpp_hashnode, ptr %167, i64 0, i32 3
  %171 = load i16, ptr %170, align 2
  %172 = and i16 %171, 63
  %173 = icmp eq i16 %172, 1
  %174 = icmp ult i32 %64, 2
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %197

176:                                              ; preds = %166
  %177 = load i8, ptr %38, align 8, !tbaa !60
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %176
  store i8 0, ptr %40, align 8, !tbaa !61
  %180 = load i16, ptr %170, align 2
  %181 = and i16 %180, 256
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.cpp_hashnode, ptr %167, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !42
  %186 = getelementptr inbounds %struct.cpp_macro, ptr %185, i64 0, i32 5
  %187 = load i8, ptr %186, align 2
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %183
  call fastcc void @maybe_start_funlike(ptr noundef nonnull %0, ptr noundef nonnull %167, ptr noundef nonnull %76, ptr noundef nonnull %3) #14
  %191 = load ptr, ptr %25, align 8, !tbaa !45
  %192 = getelementptr inbounds %struct.line_maps, ptr %191, i64 0, i32 8
  %193 = load i32, ptr %192, align 4, !tbaa !46
  store i32 %193, ptr %7, align 8, !tbaa !62
  br label %214

194:                                              ; preds = %183, %179
  %195 = tail call fastcc zeroext i8 @recursive_macro(ptr noundef nonnull %0, ptr noundef nonnull %167) #14, !range !64
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %218, label %364

197:                                              ; preds = %176, %166
  %198 = and i16 %171, 4096
  %199 = icmp ne i16 %198, 0
  %200 = and i1 %32, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  store ptr %76, ptr %24, align 8, !tbaa !44
  %202 = getelementptr inbounds %struct.cpp_hashnode, ptr %167, i64 0, i32 4
  %203 = load i16, ptr %202, align 8, !tbaa !42
  %204 = zext i16 %203 to i32
  tail call fastcc void @save_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %204) #14
  %205 = load ptr, ptr %22, align 8, !tbaa !43
  br label %364

206:                                              ; preds = %197
  %207 = icmp eq i32 %64, 5
  br i1 %207, label %214, label %208

208:                                              ; preds = %206
  %209 = load i8, ptr %36, align 4, !tbaa !65
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %364, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr %39, align 8, !tbaa !66
  %213 = icmp eq ptr %167, %212
  br i1 %213, label %214, label %364

214:                                              ; preds = %211, %206, %190, %359
  %215 = phi i32 [ 5, %359 ], [ 3, %211 ], [ 6, %206 ], [ 1, %190 ]
  %216 = phi ptr [ %360, %359 ], [ %168, %211 ], [ %168, %206 ], [ %168, %190 ]
  %217 = phi ptr [ %361, %359 ], [ %169, %211 ], [ %169, %206 ], [ %169, %190 ]
  br label %63

218:                                              ; preds = %194
  store ptr %76, ptr %24, align 8, !tbaa !44
  tail call fastcc void @push_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %167) #14
  br label %219

219:                                              ; preds = %218, %100, %283
  %220 = phi i32 [ 0, %218 ], [ %64, %100 ], [ 0, %283 ]
  %221 = phi i32 [ %72, %218 ], [ %72, %100 ], [ 0, %283 ]
  %222 = phi i32 [ %60, %218 ], [ %60, %100 ], [ 0, %283 ]
  br label %41

223:                                              ; preds = %91
  %224 = icmp eq i32 %72, 0
  br i1 %224, label %225, label %364

225:                                              ; preds = %223
  %226 = add i32 %60, 1
  switch i32 %64, label %236 [
    i32 1, label %227
    i32 6, label %364
  ]

227:                                              ; preds = %225
  %228 = load ptr, ptr %5, align 8, !tbaa !67
  %229 = tail call fastcc zeroext i8 @recursive_macro(ptr noundef nonnull %0, ptr noundef %228) #14, !range !64
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %364

231:                                              ; preds = %227
  %232 = load ptr, ptr %22, align 8, !tbaa !43
  %233 = load i64, ptr %6, align 8, !tbaa !68
  %234 = getelementptr inbounds i8, ptr %232, i64 %233
  %235 = load ptr, ptr %4, align 8, !tbaa !69
  store i64 %233, ptr %235, align 8, !tbaa !70
  br label %364

236:                                              ; preds = %225
  %237 = icmp eq i32 %64, 3
  %238 = select i1 %237, i32 4, i32 %64
  br label %364

239:                                              ; preds = %91
  %240 = icmp eq i32 %72, 0
  %241 = select i1 %240, i1 %68, i1 false
  %242 = icmp eq i32 %60, 1
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %244, label %364

244:                                              ; preds = %239
  %245 = load ptr, ptr %22, align 8, !tbaa !43
  %246 = ptrtoint ptr %94 to i64
  %247 = ptrtoint ptr %245 to i64
  %248 = sub i64 %246, %247
  call fastcc void @save_argument(ptr noundef nonnull %3, i64 noundef %248) #14
  br label %364

249:                                              ; preds = %91
  %250 = icmp eq i32 %72, 0
  br i1 %250, label %251, label %364

251:                                              ; preds = %249
  %252 = add i32 %60, -1
  %253 = icmp eq i32 %252, 0
  %254 = select i1 %68, i1 %253, i1 false
  br i1 %254, label %255, label %287

255:                                              ; preds = %251
  %256 = load ptr, ptr %5, align 8, !tbaa !67
  %257 = getelementptr inbounds %struct.cpp_hashnode, ptr %256, i64 0, i32 4
  %258 = load ptr, ptr %257, align 8, !tbaa !42
  %259 = getelementptr inbounds %struct.cpp_macro, ptr %258, i64 0, i32 5
  %260 = load i8, ptr %259, align 2
  %261 = or i8 %260, 8
  store i8 %261, ptr %259, align 2
  %262 = load ptr, ptr %22, align 8, !tbaa !43
  %263 = ptrtoint ptr %94 to i64
  %264 = ptrtoint ptr %262 to i64
  %265 = sub i64 %263, %264
  call fastcc void @save_argument(ptr noundef nonnull %3, i64 noundef %265) #14
  %266 = load i32, ptr %8, align 4, !tbaa !71
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %278

268:                                              ; preds = %255
  %269 = getelementptr inbounds %struct.cpp_macro, ptr %258, i64 0, i32 4
  %270 = load i16, ptr %269, align 8, !tbaa !72
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load ptr, ptr %22, align 8, !tbaa !43
  %274 = load i64, ptr %6, align 8, !tbaa !68
  %275 = getelementptr inbounds i8, ptr %273, i64 %274
  %276 = icmp eq ptr %76, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 0, ptr %8, align 4, !tbaa !71
  br label %278

278:                                              ; preds = %277, %272, %268, %255
  %279 = phi i32 [ 0, %277 ], [ 1, %272 ], [ 1, %268 ], [ %266, %255 ]
  %280 = load ptr, ptr %5, align 8, !tbaa !67
  %281 = tail call zeroext i8 @_cpp_arguments_ok(ptr noundef nonnull %0, ptr noundef nonnull %258, ptr noundef %280, i32 noundef %279) #13
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %364, label %283

283:                                              ; preds = %278
  %284 = load ptr, ptr %22, align 8, !tbaa !43
  %285 = load i64, ptr %6, align 8, !tbaa !68
  %286 = getelementptr inbounds i8, ptr %284, i64 %285
  store ptr %286, ptr %24, align 8, !tbaa !44
  store ptr %92, ptr %47, align 8, !tbaa !42
  call fastcc void @replace_args_and_push(ptr noundef nonnull %0, ptr noundef nonnull %3) #14
  br label %219

287:                                              ; preds = %251
  %288 = icmp eq i32 %64, 7
  %289 = icmp eq i32 %64, 4
  %290 = or i1 %288, %289
  %291 = select i1 %290, i32 0, i32 %64
  br label %364

292:                                              ; preds = %91
  %293 = icmp eq ptr %77, %31
  br i1 %293, label %294, label %359

294:                                              ; preds = %292
  %295 = load ptr, ptr %14, align 8, !tbaa !41
  %296 = getelementptr inbounds %struct.cpp_context, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !49
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %359

299:                                              ; preds = %294
  %300 = load i8, ptr %9, align 8, !tbaa !59
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %359

302:                                              ; preds = %299
  store ptr %94, ptr %24, align 8, !tbaa !44
  %303 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef nonnull %92, i32 noundef 1) #14
  %304 = load ptr, ptr %24, align 8, !tbaa !44
  %305 = load i8, ptr %303, align 1, !tbaa !42
  %306 = icmp eq i8 %305, 10
  br i1 %306, label %307, label %330

307:                                              ; preds = %302
  %308 = load ptr, ptr %0, align 8, !tbaa !6
  %309 = getelementptr inbounds %struct.cpp_buffer, ptr %308, i64 0, i32 13
  store i8 1, ptr %309, align 8, !tbaa !35
  %310 = load ptr, ptr %25, align 8, !tbaa !45
  %311 = load ptr, ptr %310, align 8, !tbaa !54
  %312 = getelementptr inbounds %struct.line_maps, ptr %310, i64 0, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !55
  %314 = add i32 %313, -1
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.line_maps, ptr %310, i64 0, i32 8
  %317 = load i32, ptr %316, align 4, !tbaa !46
  %318 = getelementptr inbounds %struct.line_map, ptr %311, i64 %315, i32 2
  %319 = load i32, ptr %318, align 4, !tbaa !56
  %320 = sub i32 %317, %319
  %321 = getelementptr inbounds %struct.line_map, ptr %311, i64 %315, i32 6
  %322 = load i8, ptr %321, align 2
  %323 = zext nneg i8 %322 to i32
  %324 = lshr i32 %320, %323
  %325 = getelementptr inbounds %struct.line_map, ptr %311, i64 %315, i32 1
  %326 = load i32, ptr %325, align 8, !tbaa !58
  %327 = add i32 %326, 1
  %328 = add i32 %327, %324
  %329 = tail call i32 @linemap_line_start(ptr noundef nonnull %310, i32 noundef %328, i32 noundef 0) #13
  br label %383

330:                                              ; preds = %302
  %331 = zext i8 %305 to i64
  %332 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %331
  %333 = load i16, ptr %332, align 2, !tbaa !74
  %334 = and i16 %333, 4
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %330
  %337 = load i32, ptr %34, align 4, !tbaa !75
  %338 = icmp eq i32 %337, 9
  br i1 %338, label %339, label %356

339:                                              ; preds = %336, %330
  %340 = and i16 %333, 512
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = icmp eq i8 %305, 36
  br i1 %343, label %344, label %353

344:                                              ; preds = %342
  %345 = load i8, ptr %35, align 2, !tbaa !76
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %353, label %347

347:                                              ; preds = %339, %344
  %348 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %303) #14
  %349 = getelementptr inbounds %struct.cpp_hashnode, ptr %348, i64 0, i32 1
  %350 = load i8, ptr %349, align 8
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %342, %344, %347
  %354 = load i32, ptr %34, align 4, !tbaa !75
  %355 = icmp eq i32 %354, 9
  br i1 %355, label %359, label %356

356:                                              ; preds = %336, %347, %353
  %357 = load ptr, ptr %0, align 8, !tbaa !6
  store ptr %303, ptr %357, align 8, !tbaa !28
  %358 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %383

359:                                              ; preds = %353, %299, %294, %292
  %360 = phi ptr [ %94, %294 ], [ %94, %299 ], [ %94, %292 ], [ %304, %353 ]
  %361 = phi ptr [ %92, %294 ], [ %92, %299 ], [ %92, %292 ], [ %303, %353 ]
  %362 = load i8, ptr %36, align 4, !tbaa !65
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %364, label %214

364:                                              ; preds = %211, %208, %359, %160, %152, %154, %91, %194, %278, %201, %144, %135, %225, %227, %147, %141, %287, %249, %239, %244, %223, %236, %231, %149, %138
  %365 = phi i32 [ %291, %287 ], [ %64, %249 ], [ 2, %244 ], [ %64, %239 ], [ 2, %231 ], [ %238, %236 ], [ %64, %223 ], [ %64, %149 ], [ %64, %138 ], [ %64, %135 ], [ %64, %141 ], [ %64, %144 ], [ %64, %147 ], [ 0, %227 ], [ 7, %225 ], [ %64, %201 ], [ 0, %278 ], [ %64, %194 ], [ %64, %91 ], [ %64, %154 ], [ %64, %152 ], [ %64, %160 ], [ %64, %359 ], [ %64, %208 ], [ %64, %211 ]
  %366 = phi i32 [ 0, %287 ], [ %72, %249 ], [ 0, %244 ], [ %72, %239 ], [ 0, %231 ], [ 0, %236 ], [ %72, %223 ], [ %72, %149 ], [ %140, %138 ], [ %137, %135 ], [ 0, %141 ], [ %146, %144 ], [ %72, %147 ], [ 0, %227 ], [ 0, %225 ], [ %72, %201 ], [ 0, %278 ], [ %72, %194 ], [ %72, %91 ], [ %72, %152 ], [ 0, %154 ], [ %72, %160 ], [ %72, %359 ], [ %72, %208 ], [ %72, %211 ]
  %367 = phi i32 [ %252, %287 ], [ %60, %249 ], [ 1, %244 ], [ %60, %239 ], [ 1, %231 ], [ %226, %236 ], [ %60, %223 ], [ %60, %149 ], [ %60, %138 ], [ %60, %135 ], [ %60, %141 ], [ %60, %144 ], [ %60, %147 ], [ %226, %227 ], [ %226, %225 ], [ %60, %201 ], [ 0, %278 ], [ %60, %194 ], [ %60, %91 ], [ %60, %154 ], [ %60, %152 ], [ %60, %160 ], [ %60, %359 ], [ %60, %208 ], [ %60, %211 ]
  %368 = phi ptr [ %94, %287 ], [ %94, %249 ], [ %94, %244 ], [ %94, %239 ], [ %234, %231 ], [ %94, %236 ], [ %94, %223 ], [ %151, %149 ], [ %94, %138 ], [ %94, %135 ], [ %94, %141 ], [ %94, %144 ], [ %94, %147 ], [ %94, %227 ], [ %94, %225 ], [ %205, %201 ], [ %94, %278 ], [ %168, %194 ], [ %94, %91 ], [ %94, %154 ], [ %94, %152 ], [ %168, %211 ], [ %168, %208 ], [ %360, %359 ], [ %94, %160 ]
  %369 = phi ptr [ %92, %287 ], [ %92, %249 ], [ %92, %244 ], [ %92, %239 ], [ %92, %231 ], [ %92, %236 ], [ %92, %223 ], [ %150, %149 ], [ %92, %138 ], [ %92, %135 ], [ %92, %141 ], [ %92, %144 ], [ %92, %147 ], [ %92, %227 ], [ %92, %225 ], [ %169, %201 ], [ %92, %278 ], [ %169, %194 ], [ %92, %91 ], [ %92, %154 ], [ %92, %152 ], [ %169, %211 ], [ %169, %208 ], [ %361, %359 ], [ %92, %160 ]
  %370 = load i8, ptr %9, align 8, !tbaa !59
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %364
  store i8 0, ptr %40, align 8, !tbaa !61
  br label %373

373:                                              ; preds = %372, %364
  %374 = icmp ult i32 %365, 2
  br i1 %374, label %375, label %377

375:                                              ; preds = %373, %377
  %376 = phi i32 [ 0, %373 ], [ %382, %377 ]
  br label %56

377:                                              ; preds = %373
  %378 = add i32 %365, -5
  %379 = icmp ult i32 %378, 2
  %380 = icmp eq i32 %365, 3
  %381 = or i1 %380, %379
  %382 = select i1 %381, i32 0, i32 %365
  br label %375

383:                                              ; preds = %124, %127, %101, %356, %307
  %384 = phi i8 [ 0, %307 ], [ 0, %356 ], [ 1, %101 ], [ 1, %127 ], [ 1, %124 ]
  %385 = load ptr, ptr %3, align 8, !tbaa !77
  %386 = icmp eq ptr %385, null
  br i1 %386, label %388, label %387

387:                                              ; preds = %383
  tail call void @_cpp_release_buff(ptr noundef nonnull %0, ptr noundef nonnull %385) #13
  br label %388

388:                                              ; preds = %387, %383
  br i1 %68, label %389, label %394

389:                                              ; preds = %388
  %390 = load i32, ptr %7, align 8, !tbaa !62
  %391 = load ptr, ptr %5, align 8, !tbaa !67
  %392 = load ptr, ptr %391, align 8, !tbaa !78
  %393 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %390, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %392) #13
  br label %394

394:                                              ; preds = %388, %389
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret i8 %384
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_output_buffer(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = add i64 %1, 3
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp ugt i64 %3, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = ptrtoint ptr %14 to i64
  %16 = sub i64 %9, %15
  %17 = add i64 %16, %3
  %18 = mul i64 %17, 3
  %19 = lshr i64 %18, 1
  %20 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %19) #13
  store ptr %20, ptr %13, align 8, !tbaa !43
  %21 = getelementptr inbounds i8, ptr %20, i64 %19
  store ptr %21, ptr %4, align 8, !tbaa !81
  %22 = getelementptr inbounds i8, ptr %20, i64 %16
  store ptr %22, ptr %6, align 8, !tbaa !44
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
define internal fastcc ptr @copy_comment(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  store ptr %1, ptr %8, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.cpp_context, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !49
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
  %23 = load i8, ptr %22, align 8, !tbaa !59
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %29 = load i8, ptr %28, align 4, !tbaa !82
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  store ptr %34, ptr %32, align 8, !tbaa !44
  br label %60

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds i8, ptr %37, i64 -1
  store i8 32, ptr %38, align 1, !tbaa !42
  br label %60

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 5
  %41 = load i8, ptr %40, align 1, !tbaa !83
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = getelementptr inbounds i8, ptr %45, i64 -1
  store ptr %46, ptr %44, align 8, !tbaa !44
  br label %60

47:                                               ; preds = %27, %39
  %48 = load ptr, ptr %8, align 8, !tbaa !28
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %1 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %1, i64 %51, i1 false)
  %54 = load ptr, ptr %52, align 8, !tbaa !44
  %55 = getelementptr inbounds i8, ptr %54, i64 %51
  store ptr %55, ptr %52, align 8, !tbaa !44
  br i1 %21, label %60, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %57, ptr %52, align 8, !tbaa !44
  store i8 42, ptr %55, align 1, !tbaa !42
  %58 = load ptr, ptr %52, align 8, !tbaa !44
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %52, align 8, !tbaa !44
  store i8 47, ptr %58, align 1, !tbaa !42
  br label %60

60:                                               ; preds = %31, %35, %43, %47, %56
  %61 = load ptr, ptr %8, align 8, !tbaa !28
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lex_identifier(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = load i8, ptr %1, align 1, !tbaa !42
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i8 [ %5, %2 ], [ %12, %6 ]
  %8 = phi ptr [ %4, %2 ], [ %11, %6 ]
  %9 = phi ptr [ %1, %2 ], [ %10, %6 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !42
  %12 = load i8, ptr %10, align 1, !tbaa !42
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !74
  %16 = and i16 %15, 516
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %6, !llvm.loop !84

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.cpp_context, ptr %20, i64 0, i32 2
  store ptr %10, ptr %21, align 8, !tbaa !42
  %22 = load ptr, ptr %3, align 8, !tbaa !44
  %23 = ptrtoint ptr %11 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 50
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  %28 = tail call ptr @ht_lookup(ptr noundef %27, ptr noundef %22, i64 noundef %25, i32 noundef 1) #13
  store ptr %11, ptr %3, align 8, !tbaa !44
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_start_funlike(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !72
  %9 = load ptr, ptr %3, align 8, !tbaa !77
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
  store ptr %16, ptr %3, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct._cpp_buff, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 2
  store ptr %1, ptr %20, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = ptrtoint ptr %2 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 3
  store i64 %25, ptr %26, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.fun_macro, ptr %3, i64 0, i32 5
  store i32 0, ptr %27, align 4, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @recursive_macro(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 2048
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %9, i64 0, i32 5
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %26, %14
  %18 = phi i64 [ 0, %14 ], [ %20, %26 ]
  %19 = phi ptr [ %16, %14 ], [ %28, %26 ]
  %20 = add i64 %18, 1
  %21 = getelementptr inbounds %struct.cpp_context, ptr %19, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = icmp eq ptr %22, %1
  %24 = icmp ugt i64 %20, 20
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.cpp_context, ptr %19, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %17, !llvm.loop !89

30:                                               ; preds = %17, %7
  %31 = load ptr, ptr %1, align 8, !tbaa !78
  %32 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef %31) #13
  br label %33

33:                                               ; preds = %26, %2, %30
  %34 = phi i8 [ 1, %30 ], [ 0, %2 ], [ 0, %26 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_replacement_text(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
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
  store i8 10, ptr %12, align 1, !tbaa !42
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.cpp_hashnode, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 5
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = or i8 %17, 24
  store i8 %20, ptr %16, align 2
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %15, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !90
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %13, %7
  %25 = phi ptr [ %11, %7 ], [ %19, %13 ]
  %26 = phi i64 [ %9, %7 ], [ %23, %13 ]
  tail call void @_cpp_push_text_context(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %25, i64 noundef %26) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_replacement_text(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = load ptr, ptr %4, align 8, !tbaa !43
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !72
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = add i64 %10, 1
  %16 = tail call ptr @_cpp_unaligned_alloc(ptr noundef nonnull %0, i64 noundef %15) #13
  %17 = load ptr, ptr %4, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %10, i1 false)
  %18 = getelementptr inbounds i8, ptr %16, i64 %10
  store i8 10, ptr %18, align 1, !tbaa !42
  %19 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 2
  %22 = or i8 %21, 16
  store i8 %22, ptr %20, align 2
  %23 = trunc i64 %10 to i32
  %24 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !90
  br label %72

25:                                               ; preds = %3
  %26 = add i64 %10, 13
  %27 = and i64 %26, -8
  %28 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !90
  %30 = zext i32 %29 to i64
  %31 = add i64 %27, %30
  %32 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  %34 = getelementptr inbounds %struct._cpp_buff, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds %struct._cpp_buff, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = ptrtoint ptr %35 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %31, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %25
  tail call void @_cpp_extend_buff(ptr noundef nonnull %0, ptr noundef nonnull %32, i64 noundef %31) #13
  %43 = load ptr, ptr %32, align 8, !tbaa !91
  %44 = getelementptr inbounds %struct._cpp_buff, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !86
  %46 = load i32, ptr %28, align 4, !tbaa !90
  %47 = zext i32 %46 to i64
  br label %48

48:                                               ; preds = %42, %25
  %49 = phi i64 [ %47, %42 ], [ %30, %25 ]
  %50 = phi ptr [ %45, %42 ], [ %37, %25 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 %49
  %52 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  store ptr %50, ptr %52, align 8, !tbaa !42
  %53 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %54 = load i8, ptr %53, align 2
  %55 = or i8 %54, 16
  store i8 %55, ptr %53, align 2
  %56 = trunc i64 %10 to i32
  store i32 %56, ptr %51, align 4, !tbaa !93
  %57 = trunc i32 %2 to i16
  %58 = getelementptr inbounds %struct.block, ptr %51, i64 0, i32 1
  store i16 %57, ptr %58, align 4, !tbaa !95
  %59 = getelementptr inbounds %struct.block, ptr %51, i64 0, i32 2
  %60 = load ptr, ptr %4, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %59, ptr align 1 %60, i64 %10, i1 false)
  %61 = load ptr, ptr %4, align 8, !tbaa !43
  store ptr %61, ptr %5, align 8, !tbaa !44
  %62 = load i32, ptr %28, align 4, !tbaa !90
  %63 = trunc i64 %27 to i32
  %64 = add i32 %62, %63
  store i32 %64, ptr %28, align 4, !tbaa !90
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %48
  %67 = load ptr, ptr %32, align 8, !tbaa !91
  %68 = getelementptr inbounds %struct._cpp_buff, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !86
  %70 = zext i32 %64 to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store ptr %71, ptr %68, align 8, !tbaa !86
  br label %72

72:                                               ; preds = %48, %66, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @save_argument(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fun_macro, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !71
  %6 = getelementptr inbounds %struct.fun_macro, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.cpp_hashnode, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.cpp_macro, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !72
  %12 = zext i16 %11 to i32
  %13 = icmp ugt i32 %5, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.fun_macro, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = zext nneg i32 %5 to i64
  %18 = getelementptr inbounds i64, ptr %16, i64 %17
  store i64 %1, ptr %18, align 8, !tbaa !70
  br label %19

19:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_arguments_ok(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_args_and_push(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.fun_macro, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.cpp_hashnode, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !72
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call fastcc void @push_replacement_text(ptr noundef %0, ptr noundef nonnull %4) #14
  br label %153

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = load i32, ptr %13, align 4, !tbaa !93
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.block, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 4, !tbaa !95
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.fun_macro, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i16 [ %17, %19 ], [ %45, %22 ]
  %24 = phi i64 [ %15, %19 ], [ %43, %22 ]
  %25 = phi i64 [ %15, %19 ], [ %42, %22 ]
  %26 = phi ptr [ %13, %19 ], [ %40, %22 ]
  %27 = zext i16 %23 to i64
  %28 = getelementptr inbounds i64, ptr %21, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !70
  %30 = add nuw nsw i64 %27, 4294967295
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds i64, ptr %21, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !70
  %34 = xor i64 %33, -1
  %35 = add i64 %29, %34
  %36 = shl i64 %35, 1
  %37 = add i64 %36, %24
  %38 = add nuw nsw i64 %25, 13
  %39 = and i64 %38, 8589934584
  %40 = getelementptr inbounds i8, ptr %26, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !93
  %42 = zext i32 %41 to i64
  %43 = add i64 %37, %42
  %44 = getelementptr inbounds %struct.block, ptr %40, i64 0, i32 1
  %45 = load i16, ptr %44, align 4, !tbaa !95
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %22

47:                                               ; preds = %22, %11
  %48 = phi i64 [ %15, %11 ], [ %43, %22 ]
  %49 = add i64 %48, 1
  %50 = tail call ptr @_cpp_get_buff(ptr noundef %0, i64 noundef %49) #13
  %51 = getelementptr inbounds %struct._cpp_buff, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !86
  %53 = load ptr, ptr %12, align 8, !tbaa !42
  %54 = getelementptr inbounds %struct.fun_macro, ptr %1, i64 0, i32 1
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  br label %56

56:                                               ; preds = %139, %47
  %57 = phi i32 [ 0, %47 ], [ %82, %139 ]
  %58 = phi i64 [ 0, %47 ], [ %140, %139 ]
  %59 = phi ptr [ %52, %47 ], [ %141, %139 ]
  %60 = phi ptr [ %53, %47 ], [ %146, %139 ]
  %61 = load i32, ptr %60, align 4, !tbaa !93
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
  %72 = load i8, ptr %68, align 1, !tbaa !42
  %73 = icmp eq i8 %72, 34
  %74 = icmp eq i32 %71, 0
  %75 = zext i1 %74 to i32
  %76 = select i1 %73, i32 %75, i32 %71
  %77 = getelementptr inbounds i8, ptr %68, i64 1
  %78 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %72, ptr %70, align 1, !tbaa !42
  %79 = add nsw i64 %69, -1
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %67, !llvm.loop !96

81:                                               ; preds = %67, %56
  %82 = phi i32 [ %57, %56 ], [ %76, %67 ]
  %83 = phi ptr [ %59, %56 ], [ %78, %67 ]
  %84 = getelementptr inbounds %struct.block, ptr %60, i64 0, i32 1
  %85 = load i16, ptr %84, align 4, !tbaa !95
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %147, label %87

87:                                               ; preds = %81
  %88 = zext i16 %85 to i64
  %89 = load ptr, ptr %54, align 8, !tbaa !69
  %90 = getelementptr inbounds i64, ptr %89, i64 %88
  %91 = load i64, ptr %90, align 8, !tbaa !70
  %92 = add nuw nsw i64 %88, 4294967295
  %93 = and i64 %92, 4294967295
  %94 = getelementptr inbounds i64, ptr %89, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !70
  %96 = xor i64 %95, -1
  %97 = add i64 %91, %96
  %98 = load ptr, ptr %55, align 8, !tbaa !43
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
  %110 = load i8, ptr %104, align 1, !tbaa !42
  %111 = icmp eq i8 %110, 34
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = icmp ugt ptr %104, %99
  br i1 %113, label %114, label %125

114:                                              ; preds = %112
  %115 = getelementptr inbounds i8, ptr %104, i64 -1
  %116 = load i8, ptr %115, align 1, !tbaa !42
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
  store i8 92, ptr %107, align 1, !tbaa !42
  %128 = add i64 %108, 1
  br label %129

129:                                              ; preds = %125, %103, %121, %123
  %130 = phi i64 [ %108, %123 ], [ %108, %121 ], [ %108, %103 ], [ %128, %125 ]
  %131 = phi ptr [ %107, %123 ], [ %107, %121 ], [ %107, %103 ], [ %127, %125 ]
  %132 = phi i32 [ 1, %123 ], [ 0, %121 ], [ %105, %103 ], [ %126, %125 ]
  %133 = getelementptr inbounds i8, ptr %104, i64 1
  %134 = load i8, ptr %104, align 1, !tbaa !42
  %135 = getelementptr inbounds i8, ptr %131, i64 1
  store i8 %134, ptr %131, align 1, !tbaa !42
  %136 = add i64 %130, 1
  %137 = add i64 %106, -1
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %103, !llvm.loop !97

139:                                              ; preds = %129, %87
  %140 = phi i64 [ %63, %87 ], [ %136, %129 ]
  %141 = phi ptr [ %83, %87 ], [ %135, %129 ]
  %142 = load i32, ptr %60, align 4, !tbaa !93
  %143 = zext i32 %142 to i64
  %144 = add nuw nsw i64 %143, 13
  %145 = and i64 %144, 8589934584
  %146 = getelementptr inbounds i8, ptr %60, i64 %145
  br label %56

147:                                              ; preds = %81
  store i8 10, ptr %83, align 1, !tbaa !42
  %148 = load ptr, ptr %3, align 8, !tbaa !67
  %149 = load ptr, ptr %51, align 8, !tbaa !86
  tail call void @_cpp_push_text_context(ptr noundef %0, ptr noundef %148, ptr noundef %149, i64 noundef %63) #13
  %150 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %151 = load ptr, ptr %150, align 8, !tbaa !41
  %152 = getelementptr inbounds %struct.cpp_context, ptr %151, i64 0, i32 3
  store ptr %50, ptr %152, align 8, !tbaa !98
  br label %153

153:                                              ; preds = %147, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @skip_whitespace(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ne i32 %2, 0
  br label %7

7:                                                ; preds = %18, %3
  %8 = phi ptr [ %5, %3 ], [ %19, %18 ]
  %9 = phi ptr [ %1, %3 ], [ %20, %18 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %9, align 1, !tbaa !42
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 %11, ptr %8, align 1, !tbaa !42
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !74
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
  %24 = load i8, ptr %10, align 1, !tbaa !42
  %25 = icmp eq i8 %24, 42
  %26 = and i1 %6, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  store ptr %12, ptr %4, align 8, !tbaa !44
  %28 = tail call fastcc ptr @copy_comment(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0) #14
  %29 = load ptr, ptr %4, align 8, !tbaa !44
  br label %18

30:                                               ; preds = %23, %21
  store ptr %8, ptr %4, align 8, !tbaa !44
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
define internal fastcc void @skip_macro_block_comment(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !42
  %6 = icmp eq i8 %5, 47
  %7 = getelementptr inbounds i8, ptr %3, i64 2
  %8 = select i1 %6, ptr %7, ptr %4
  br label %9

9:                                                ; preds = %18, %1
  %10 = phi ptr [ %8, %1 ], [ %11, %18 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %10, align 1, !tbaa !42
  %13 = icmp eq i8 %12, 47
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %10, i64 -1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = icmp eq i8 %16, 42
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %9
  br label %9, !llvm.loop !99

19:                                               ; preds = %14
  store ptr %11, ptr %2, align 8, !tbaa !28
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
define internal fastcc i64 @ustrlen(ptr nocapture noundef readonly %0) unnamed_addr #7 {
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
define dso_local i64 @_cpp_replacement_text_len(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !72
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = load i32, ptr %12, align 4, !tbaa !93
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.block, ptr %12, i64 0, i32 1
  %16 = load i16, ptr %15, align 4, !tbaa !95
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %47, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %0, align 8, !tbaa !100
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
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = getelementptr inbounds %struct.ht_identifier, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !102
  %32 = zext i32 %31 to i64
  %33 = add i64 %22, %32
  %34 = add nuw nsw i64 %23, 13
  %35 = and i64 %34, 8589934584
  %36 = getelementptr inbounds i8, ptr %24, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !93
  %38 = zext i32 %37 to i64
  %39 = add i64 %33, %38
  %40 = getelementptr inbounds %struct.block, ptr %36, i64 0, i32 1
  %41 = load i16, ptr %40, align 4, !tbaa !95
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %20

43:                                               ; preds = %6, %1
  %44 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !90
  %46 = zext i32 %45 to i64
  br label %47

47:                                               ; preds = %20, %10, %43
  %48 = phi i64 [ %46, %43 ], [ %14, %10 ], [ %39, %20 ]
  ret i64 %48
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @_cpp_copy_replacement_text(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !72
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.block, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %13, align 4, !tbaa !93
  %16 = zext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 2 %14, i64 %16, i1 false)
  %17 = load i32, ptr %13, align 4, !tbaa !93
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.block, ptr %13, i64 0, i32 1
  %21 = load i16, ptr %20, align 4, !tbaa !95
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %11, %23
  %24 = phi i16 [ %52, %23 ], [ %21, %11 ]
  %25 = phi ptr [ %50, %23 ], [ %19, %11 ]
  %26 = phi ptr [ %44, %23 ], [ %13, %11 ]
  %27 = zext i16 %24 to i64
  %28 = load ptr, ptr %0, align 8, !tbaa !100
  %29 = add nuw nsw i64 %27, 4294967295
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = load ptr, ptr %32, align 8, !tbaa !78
  %34 = getelementptr inbounds %struct.ht_identifier, ptr %32, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !102
  %36 = zext i32 %35 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %33, i64 %36, i1 false)
  %37 = load i32, ptr %34, align 8, !tbaa !102
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %25, i64 %38
  %40 = load i32, ptr %26, align 4, !tbaa !93
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %41, 13
  %43 = and i64 %42, 8589934584
  %44 = getelementptr inbounds i8, ptr %26, i64 %43
  %45 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %44, align 4, !tbaa !93
  %47 = zext i32 %46 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 2 %45, i64 %47, i1 false)
  %48 = load i32, ptr %44, align 4, !tbaa !93
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %39, i64 %49
  %51 = getelementptr inbounds %struct.block, ptr %44, i64 0, i32 1
  %52 = load i16, ptr %51, align 4, !tbaa !95
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %63, label %23

54:                                               ; preds = %7, %2
  %55 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !42
  %57 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !90
  %59 = zext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %56, i64 %59, i1 false)
  %60 = load i32, ptr %57, align 4, !tbaa !90
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %1, i64 %61
  br label %63

63:                                               ; preds = %23, %11, %54
  %64 = phi ptr [ %62, %54 ], [ %19, %11 ], [ %50, %23 ]
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @_cpp_create_trad_definition(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 56, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !44
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !42
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.cpp_buffer, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2, i32 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !42
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %9 to i64
  %17 = sub i64 %15, %16
  tail call fastcc void @check_output_buffer(ptr noundef nonnull %0, i64 noundef %17) #14
  %18 = load ptr, ptr %10, align 8, !tbaa !42
  %19 = load i8, ptr %18, align 1, !tbaa !42
  %20 = icmp eq i8 %19, 40
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = tail call fastcc zeroext i8 @scan_parameters(ptr noundef nonnull %0, ptr noundef %1) #14, !range !64
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct._cpp_buff, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  store ptr %26, ptr %1, align 8, !tbaa !100
  %27 = icmp eq i8 %22, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !72
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %26, i64 %31
  store ptr %32, ptr %25, align 8, !tbaa !86
  %33 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 5
  %34 = load i8, ptr %33, align 2
  %35 = or i8 %34, 1
  store i8 %35, ptr %33, align 2
  br label %36

36:                                               ; preds = %28, %21, %2
  %37 = phi ptr [ %1, %2 ], [ %1, %28 ], [ null, %21 ]
  %38 = load ptr, ptr %10, align 8, !tbaa !42
  %39 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 6
  %40 = load i8, ptr %39, align 4, !tbaa !82
  %41 = zext i8 %40 to i32
  %42 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef %38, i32 noundef %41) #14
  %43 = load ptr, ptr %0, align 8, !tbaa !6
  store ptr %42, ptr %43, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 8
  %45 = load i8, ptr %44, align 8, !tbaa !60
  %46 = add i8 %45, 1
  store i8 %46, ptr %44, align 8, !tbaa !60
  %47 = tail call zeroext i8 @_cpp_scan_out_logical_line(ptr noundef nonnull %0, ptr noundef %37) #14
  %48 = load i8, ptr %44, align 8, !tbaa !60
  %49 = add i8 %48, -1
  store i8 %49, ptr %44, align 8, !tbaa !60
  %50 = icmp eq ptr %37, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %36
  %52 = load ptr, ptr %5, align 8, !tbaa !43
  %53 = load ptr, ptr %7, align 8, !tbaa !44
  br label %54

54:                                               ; preds = %57, %51
  %55 = phi ptr [ %53, %51 ], [ %58, %57 ]
  %56 = icmp ugt ptr %55, %52
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %55, i64 -1
  %59 = load i8, ptr %58, align 1, !tbaa !42
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !74
  %63 = and i16 %62, 3072
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %54, !llvm.loop !103

65:                                               ; preds = %54, %57
  store ptr %55, ptr %7, align 8, !tbaa !44
  tail call fastcc void @save_replacement_text(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef 0) #14
  br label %66

66:                                               ; preds = %36, %65
  %67 = phi i8 [ 1, %65 ], [ 0, %36 ]
  ret i8 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @scan_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.cpp_context, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 24
  br label %8

8:                                                ; preds = %26, %2
  %9 = phi ptr [ %6, %2 ], [ %30, %26 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = tail call fastcc ptr @skip_whitespace(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef 1) #14
  %12 = load i8, ptr %11, align 1, !tbaa !42
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !74
  %16 = and i16 %15, 512
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  switch i8 %12, label %36 [
    i8 36, label %19
    i8 41, label %32
  ]

19:                                               ; preds = %18
  %20 = load i8, ptr %7, align 2, !tbaa !76
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19, %8
  %23 = tail call fastcc ptr @lex_identifier(ptr noundef nonnull %0, ptr noundef nonnull %11) #14
  %24 = tail call zeroext i8 @_cpp_save_parameter(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %23) #13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 8, !tbaa !41
  %28 = getelementptr inbounds %struct.cpp_context, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = tail call fastcc ptr @skip_whitespace(ptr noundef %0, ptr noundef %29, i32 noundef 1) #14
  %31 = load i8, ptr %30, align 1, !tbaa !42
  switch i8 %31, label %36 [
    i8 44, label %8
    i8 41, label %42
  ]

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !72
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %18, %19, %22, %26, %32
  %37 = phi ptr [ %11, %32 ], [ %11, %18 ], [ %11, %19 ], [ %11, %22 ], [ %30, %26 ]
  %38 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.3) #13
  %39 = load i8, ptr %37, align 1, !tbaa !42
  %40 = icmp eq i8 %39, 41
  %41 = zext i1 %40 to i64
  br label %42

42:                                               ; preds = %26, %36, %32
  %43 = phi i64 [ %41, %36 ], [ 1, %32 ], [ 1, %26 ]
  %44 = phi i8 [ 0, %36 ], [ 1, %32 ], [ 1, %26 ]
  %45 = phi ptr [ %37, %36 ], [ %11, %32 ], [ %30, %26 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 %43
  %47 = load ptr, ptr %3, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.cpp_context, ptr %47, i64 0, i32 2
  store ptr %46, ptr %48, align 8, !tbaa !42
  ret i8 %44
}

; Function Attrs: optsize
declare zeroext i8 @_cpp_save_parameter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @_cpp_expansions_different_trad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !90
  %7 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !90
  %9 = add i32 %8, %6
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xmalloc(i64 noundef %10) #13
  %12 = load i32, ptr %5, align 4, !tbaa !90
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !tbaa !42
  %15 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !72
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds %struct.cpp_macro, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  br i1 %17, label %63, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 1
  %24 = load i16, ptr %23, align 4, !tbaa !95
  %25 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 1
  %26 = load i16, ptr %25, align 4, !tbaa !95
  %27 = icmp eq i16 %24, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %20, %47
  %29 = phi ptr [ %58, %47 ], [ %23, %20 ]
  %30 = phi ptr [ %57, %47 ], [ %22, %20 ]
  %31 = phi ptr [ %52, %47 ], [ %19, %20 ]
  %32 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %31, align 4, !tbaa !93
  %34 = zext i32 %33 to i64
  %35 = call fastcc i64 @canonicalize_text(ptr noundef %11, ptr noundef nonnull %32, i64 noundef %34, ptr noundef nonnull %3) #14
  %36 = getelementptr inbounds %struct.block, ptr %30, i64 0, i32 2
  %37 = load i32, ptr %30, align 4, !tbaa !93
  %38 = zext i32 %37 to i64
  %39 = call fastcc i64 @canonicalize_text(ptr noundef %14, ptr noundef nonnull %36, i64 noundef %38, ptr noundef nonnull %4) #14
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %28
  %42 = tail call i32 @bcmp(ptr %11, ptr %14, i64 %35)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load i16, ptr %29, align 4, !tbaa !95
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %31, align 4, !tbaa !93
  %49 = zext i32 %48 to i64
  %50 = add nuw nsw i64 %49, 13
  %51 = and i64 %50, 8589934584
  %52 = getelementptr inbounds i8, ptr %31, i64 %51
  %53 = load i32, ptr %30, align 4, !tbaa !93
  %54 = zext i32 %53 to i64
  %55 = add nuw nsw i64 %54, 13
  %56 = and i64 %55, 8589934584
  %57 = getelementptr inbounds i8, ptr %30, i64 %56
  %58 = getelementptr inbounds %struct.block, ptr %52, i64 0, i32 1
  %59 = load i16, ptr %58, align 4, !tbaa !95
  %60 = getelementptr inbounds %struct.block, ptr %57, i64 0, i32 1
  %61 = load i16, ptr %60, align 4, !tbaa !95
  %62 = icmp eq i16 %59, %61
  br i1 %62, label %28, label %75

63:                                               ; preds = %2
  %64 = call fastcc i64 @canonicalize_text(ptr noundef %11, ptr noundef %19, i64 noundef %13, ptr noundef nonnull %3) #14
  %65 = getelementptr inbounds %struct.cpp_macro, ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = load i32, ptr %7, align 4, !tbaa !90
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
define internal fastcc i64 @canonicalize_text(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) unnamed_addr #5 {
  %5 = load i8, ptr %3, align 1, !tbaa !42
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %4, %46
  %8 = phi i8 [ %49, %46 ], [ %5, %4 ]
  %9 = phi ptr [ %50, %46 ], [ %0, %4 ]
  %10 = phi ptr [ %48, %46 ], [ %1, %4 ]
  %11 = phi i64 [ %47, %46 ], [ %2, %4 ]
  %12 = load i8, ptr %10, align 1, !tbaa !42
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !74
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
  %29 = load i8, ptr %28, align 1, !tbaa !42
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !74
  %33 = and i16 %32, 3072
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !104

35:                                               ; preds = %22, %27
  %36 = phi ptr [ %21, %22 ], [ %28, %27 ]
  store i8 32, ptr %9, align 1, !tbaa !42
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
  store i8 %12, ptr %9, align 1, !tbaa !42
  %45 = add nsw i64 %11, -1
  br label %46

46:                                               ; preds = %42, %35
  %47 = phi i64 [ %45, %42 ], [ %25, %35 ]
  %48 = phi ptr [ %44, %42 ], [ %36, %35 ]
  %49 = phi i8 [ %43, %42 ], [ 0, %35 ]
  %50 = getelementptr inbounds i8, ptr %9, i64 1
  %51 = icmp eq i64 %47, 0
  br i1 %51, label %52, label %7, !llvm.loop !105

52:                                               ; preds = %46, %4
  %53 = phi ptr [ %0, %4 ], [ %50, %46 ]
  %54 = phi i8 [ %5, %4 ], [ %49, %46 ]
  store i8 %54, ptr %3, align 1, !tbaa !42
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"cpp_reader", !8, i64 0, !8, i64 8, !11, i64 16, !8, i64 40, !12, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !13, i64 80, !8, i64 136, !8, i64 144, !14, i64 152, !12, i64 176, !9, i64 180, !8, i64 184, !8, i64 192, !16, i64 200, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !18, i64 312, !9, i64 400, !9, i64 401, !8, i64 408, !8, i64 416, !9, i64 424, !8, i64 432, !19, i64 440, !8, i64 472, !12, i64 480, !12, i64 484, !8, i64 488, !12, i64 496, !20, i64 504, !20, i64 528, !20, i64 552, !20, i64 576, !20, i64 600, !8, i64 624, !8, i64 632, !14, i64 640, !14, i64 664, !8, i64 688, !18, i64 696, !18, i64 784, !8, i64 872, !21, i64 880, !8, i64 1016, !8, i64 1024, !8, i64 1032, !22, i64 1040, !24, i64 1168, !9, i64 1200, !25, i64 1208, !8, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !12, i64 1272, !26, i64 1280, !8, i64 1296}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"lexer_state", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8, !9, i64 9, !9, i64 10, !12, i64 12, !9, i64 16, !9, i64 17}
!12 = !{!"int", !9, i64 0}
!13 = !{!"cpp_context", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 32, !8, i64 40, !9, i64 48}
!14 = !{!"cpp_token", !12, i64 0, !12, i64 4, !15, i64 6, !9, i64 8}
!15 = !{!"short", !9, i64 0}
!16 = !{!"cpp_dir", !8, i64 0, !8, i64 8, !12, i64 16, !9, i64 20, !9, i64 21, !8, i64 24, !8, i64 32, !8, i64 40, !17, i64 48, !17, i64 56}
!17 = !{!"long", !9, i64 0}
!18 = !{!"obstack", !17, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !17, i64 40, !12, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!19 = !{!"tokenrun", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!20 = !{!"cset_converter", !8, i64 0, !8, i64 8, !12, i64 16}
!21 = !{!"cpp_callbacks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128}
!22 = !{!"cpp_options", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !9, i64 40, !9, i64 41, !9, i64 42, !8, i64 48, !8, i64 56, !8, i64 64, !12, i64 72, !9, i64 76, !9, i64 77, !23, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !9, i64 120, !9, i64 121, !9, i64 122, !9, i64 123, !9, i64 124}
!23 = !{!"", !12, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"spec_nodes", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!25 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24}
!26 = !{!"", !8, i64 0, !12, i64 8, !12, i64 12}
!27 = !{!7, !8, i64 8}
!28 = !{!29, !8, i64 0}
!29 = !{!"cpp_buffer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !9, i64 96, !12, i64 97, !12, i64 97, !12, i64 97, !9, i64 98, !16, i64 104, !20, i64 168}
!30 = !{!7, !8, i64 1240}
!31 = !{!29, !8, i64 32}
!32 = !{!7, !8, i64 1248}
!33 = !{!29, !8, i64 16}
!34 = !{!7, !8, i64 1256}
!35 = !{!29, !9, i64 96}
!36 = !{!29, !8, i64 8}
!37 = !{!7, !9, i64 18}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!7, !9, i64 19}
!41 = !{!7, !8, i64 136}
!42 = !{!9, !9, i64 0}
!43 = !{!7, !8, i64 1208}
!44 = !{!7, !8, i64 1224}
!45 = !{!7, !8, i64 40}
!46 = !{!47, !12, i64 36}
!47 = !{!"line_maps", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 48}
!48 = !{!7, !12, i64 1232}
!49 = !{!13, !8, i64 8}
!50 = !{!29, !8, i64 40}
!51 = !{!29, !12, i64 48}
!52 = !{!53, !8, i64 0}
!53 = !{!"_cpp_line_note", !8, i64 0, !12, i64 8}
!54 = !{!47, !8, i64 0}
!55 = !{!47, !12, i64 12}
!56 = !{!57, !12, i64 12}
!57 = !{!"line_map", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !9, i64 21, !12, i64 22}
!58 = !{!57, !12, i64 8}
!59 = !{!7, !9, i64 16}
!60 = !{!7, !9, i64 24}
!61 = !{!7, !9, i64 424}
!62 = !{!63, !12, i64 32}
!63 = !{!"fun_macro", !8, i64 0, !8, i64 8, !8, i64 16, !17, i64 24, !12, i64 32, !12, i64 36}
!64 = !{i8 0, i8 2}
!65 = !{!7, !9, i64 20}
!66 = !{!7, !8, i64 1168}
!67 = !{!63, !8, i64 16}
!68 = !{!63, !17, i64 24}
!69 = !{!63, !8, i64 8}
!70 = !{!17, !17, i64 0}
!71 = !{!63, !12, i64 36}
!72 = !{!73, !15, i64 24}
!73 = !{!"cpp_macro", !8, i64 0, !9, i64 8, !12, i64 16, !12, i64 20, !15, i64 24, !12, i64 26, !12, i64 26, !12, i64 26, !12, i64 26, !12, i64 26, !12, i64 26}
!74 = !{!15, !15, i64 0}
!75 = !{!7, !12, i64 1044}
!76 = !{!7, !9, i64 1070}
!77 = !{!63, !8, i64 0}
!78 = !{!79, !8, i64 0}
!79 = !{!"cpp_hashnode", !80, i64 0, !12, i64 16, !12, i64 16, !9, i64 17, !12, i64 18, !12, i64 18, !9, i64 24}
!80 = !{!"ht_identifier", !8, i64 0, !12, i64 8, !12, i64 12}
!81 = !{!7, !8, i64 1216}
!82 = !{!7, !9, i64 1052}
!83 = !{!7, !9, i64 1051}
!84 = distinct !{!84, !39}
!85 = !{!7, !8, i64 1016}
!86 = !{!87, !8, i64 16}
!87 = !{!"_cpp_buff", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!88 = !{!13, !8, i64 40}
!89 = distinct !{!89, !39}
!90 = !{!73, !12, i64 20}
!91 = !{!7, !8, i64 56}
!92 = !{!87, !8, i64 24}
!93 = !{!94, !12, i64 0}
!94 = !{!"block", !12, i64 0, !15, i64 4, !9, i64 6}
!95 = !{!94, !15, i64 4}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = !{!13, !8, i64 32}
!99 = distinct !{!99, !39}
!100 = !{!73, !8, i64 0}
!101 = !{!8, !8, i64 0}
!102 = !{!79, !12, i64 8}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
