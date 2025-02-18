; ModuleID = 'cpp_files.c'
source_filename = "cpp_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._cpp_file = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.stat, i32, i32, i16, i8, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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
%struct.file_hash_entry = type { ptr, ptr, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.file_hash_entry_pool = type { i32, ptr, [127 x %struct.file_hash_entry] }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.pchf_compare_data = type { i64, [16 x i8], i8, i8, ptr }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.pchf_data = type { i64, i8, [1 x %struct.pchf_entry] }
%struct.pchf_entry = type { i64, [16 x i8], i8 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.report_missing_guard_data = type { ptr, i64 }

@.str = private unnamed_addr constant [28 x i8] c"NULL directory in find_file\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"one or more PCH files were found, but they were invalid\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"use -Winvalid-pch for more information\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Multiple include guards may be useful for:\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@pchf = internal unnamed_addr global ptr null, align 8
@read_name_map.FILE_NAME_MAP_FILE = internal unnamed_addr constant [11 x i8] c"header.gcc\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@pch_open_file.extension = internal unnamed_addr constant [5 x i8] c".gch\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%c %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s is a block device\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%s is shorter than expected\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"no include path in which to search for %s\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !69
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !69
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @_cpp_find_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !71 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !72
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @_cpp_find_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #3 !prof !71 {
  %6 = alloca %struct.stat, align 8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10, !prof !78

8:                                                ; preds = %5
  %9 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str) #20
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = tail call i32 @htab_hash_string(ptr noundef %1) #20
  %14 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef %1, i32 noundef %13, i32 noundef 1) #20
  br label %15

15:                                               ; preds = %19, %10
  %16 = phi ptr [ %14, %10 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19, !prof !94

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.file_hash_entry, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %15, !llvm.loop !97

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.file_hash_entry, ptr %17, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  br label %430

26:                                               ; preds = %15
  %27 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 232) #20
  %28 = load ptr, ptr %0, align 8, !tbaa !101
  %29 = icmp eq ptr %28, null
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 15
  store i8 %30, ptr %31, align 4, !tbaa !102
  %32 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 10
  store i32 -1, ptr %32, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 8
  store ptr %2, ptr %33, align 8, !tbaa !104
  %34 = tail call ptr @xstrdup(ptr noundef %1) #20
  store ptr %34, ptr %27, align 8, !tbaa !105
  %35 = icmp eq i8 %3, 0
  %36 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 23
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 22
  %38 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 11
  %39 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 1
  %40 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 8
  %41 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %42 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3
  %43 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 2
  %44 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 11
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 5
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 3
  %47 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 4
  %48 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23
  %49 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 2
  %50 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 10
  %51 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 6
  %52 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 1
  %53 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 11
  %54 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 1
  %55 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 15
  %56 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  br i1 %35, label %58, label %333, !prof !94

57:                                               ; preds = %325
  br i1 %35, label %58, label %333, !prof !94

58:                                               ; preds = %26, %57
  %59 = phi i8 [ %324, %57 ], [ 0, %26 ]
  %60 = phi i8 [ %323, %57 ], [ 0, %26 ]
  %61 = phi i8 [ %280, %57 ], [ 0, %26 ]
  br label %62

62:                                               ; preds = %58, %319
  %63 = phi i8 [ %280, %319 ], [ %61, %58 ]
  %64 = load i8, ptr %36, align 1, !tbaa !106
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %127, label %66, !prof !94

66:                                               ; preds = %62
  %67 = load ptr, ptr %33, align 8, !tbaa !104
  %68 = load ptr, ptr %27, align 8, !tbaa !105
  br label %69

69:                                               ; preds = %100, %66
  %70 = phi ptr [ %68, %66 ], [ %123, %100 ]
  %71 = phi ptr [ %67, %66 ], [ %122, %100 ]
  %72 = getelementptr inbounds %struct.cpp_dir, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !107
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  tail call fastcc void @read_name_map(ptr noundef %71)
  br label %76

76:                                               ; preds = %75, %69
  %77 = load ptr, ptr %72, align 8, !tbaa !107
  %78 = load ptr, ptr %77, align 8, !tbaa !65
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %76, %90
  %81 = phi ptr [ %93, %90 ], [ %78, %76 ]
  %82 = phi i64 [ %91, %90 ], [ 0, %76 ]
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %70) #21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = or disjoint i64 %82, 1
  %87 = getelementptr inbounds ptr, ptr %77, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !65
  %89 = tail call ptr @xstrdup(ptr noundef %88) #20
  br label %124

90:                                               ; preds = %80
  %91 = add i64 %82, 2
  %92 = getelementptr inbounds ptr, ptr %77, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !65
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %80, !llvm.loop !108

95:                                               ; preds = %90, %76
  %96 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 47) #21
  %97 = icmp eq ptr %96, null
  %98 = icmp eq ptr %96, %70
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %124, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.cpp_dir, ptr %71, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !109
  %103 = zext i32 %102 to i64
  %104 = ptrtoint ptr %96 to i64
  %105 = ptrtoint ptr %70 to i64
  %106 = sub i64 %104, %105
  %107 = add nsw i64 %106, 1
  %108 = add nsw i64 %107, %103
  %109 = add i64 %108, 1
  %110 = tail call ptr @xmalloc(i64 noundef %109) #20
  %111 = getelementptr inbounds %struct.cpp_dir, ptr %71, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !110
  %113 = load i32, ptr %101, align 8, !tbaa !109
  %114 = zext i32 %113 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %112, i64 %114, i1 false)
  %115 = load i32, ptr %101, align 8, !tbaa !109
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %110, i64 %116
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %70, i64 %107, i1 false)
  %118 = getelementptr inbounds i8, ptr %110, i64 %108
  store i8 0, ptr %118, align 1, !tbaa !100
  %119 = getelementptr inbounds %struct.cpp_dir, ptr %71, i64 0, i32 3
  %120 = load i8, ptr %119, align 4, !tbaa !111
  %121 = zext i8 %120 to i32
  %122 = tail call fastcc ptr @make_cpp_dir(ptr noundef nonnull %0, ptr noundef %110, i32 noundef %121)
  %123 = getelementptr inbounds i8, ptr %96, i64 1
  br label %69, !llvm.loop !112

124:                                              ; preds = %95, %85
  %125 = phi ptr [ %89, %85 ], [ null, %95 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %137

127:                                              ; preds = %124, %62
  %128 = load ptr, ptr %33, align 8, !tbaa !104
  %129 = getelementptr inbounds %struct.cpp_dir, ptr %128, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !113
  %131 = icmp eq ptr %130, null
  %132 = load ptr, ptr %27, align 8, !tbaa !105
  br i1 %131, label %135, label %133, !prof !94

133:                                              ; preds = %127
  %134 = tail call ptr %130(ptr noundef %132, ptr noundef %128) #20
  br label %137

135:                                              ; preds = %127
  %136 = tail call fastcc ptr @append_file_to_dir(ptr noundef %132, ptr noundef %128)
  br label %137

137:                                              ; preds = %135, %133, %124
  %138 = phi ptr [ %125, %124 ], [ %134, %133 ], [ %136, %135 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %278, label %140, !prof !78

140:                                              ; preds = %137
  %141 = tail call i32 @htab_hash_string(ptr noundef nonnull %138) #20
  %142 = load ptr, ptr %37, align 8, !tbaa !114
  %143 = tail call ptr @htab_find_with_hash(ptr noundef %142, ptr noundef nonnull %138, i32 noundef %141) #20
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145, !prof !94

145:                                              ; preds = %140
  store i32 2, ptr %38, align 4, !tbaa !72
  br label %279

146:                                              ; preds = %140
  store ptr %138, ptr %39, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #20
  %147 = load ptr, ptr %27, align 8, !tbaa !105
  %148 = load i8, ptr %147, align 1, !tbaa !100
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %224, label %150, !prof !78

150:                                              ; preds = %146
  %151 = load ptr, ptr %40, align 8, !tbaa !116
  %152 = icmp eq ptr %151, null
  br i1 %152, label %224, label %153, !prof !78

153:                                              ; preds = %150
  %154 = load ptr, ptr %41, align 8, !tbaa !117
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156, !prof !94

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct._cpp_file, ptr %154, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !118
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %224

160:                                              ; preds = %156, %153
  %161 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %138) #21
  %162 = add i64 %161, 5
  %163 = tail call ptr @xmalloc(i64 noundef %162) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %163, ptr nonnull align 1 %138, i64 %161, i1 false), !prof !119
  %164 = getelementptr inbounds i8, ptr %163, i64 %161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %164, ptr noundef nonnull align 1 dereferenceable(5) @pch_open_file.extension, i64 5, i1 false)
  %165 = call i32 @stat(ptr noundef %163, ptr noundef nonnull %6) #20
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %218, !prof !78

167:                                              ; preds = %160
  %168 = load i32, ptr %42, align 8, !tbaa !120
  %169 = and i32 %168, 61440
  %170 = icmp eq i32 %169, 16384
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = tail call fastcc zeroext i8 @validate_pch(ptr noundef nonnull %0, ptr noundef nonnull %27, ptr noundef %163), !range !121
  br label %213

173:                                              ; preds = %167
  %174 = tail call ptr @opendir(ptr noundef %163)
  %175 = icmp eq ptr %174, null
  br i1 %175, label %213, label %176

176:                                              ; preds = %173
  %177 = getelementptr i8, ptr %164, i64 4
  store i8 47, ptr %177, align 1, !tbaa !100
  br label %178

178:                                              ; preds = %203, %176
  %179 = phi ptr [ %204, %203 ], [ %163, %176 ]
  %180 = phi i64 [ %205, %203 ], [ %162, %176 ]
  %181 = tail call ptr @readdir(ptr noundef nonnull %174) #20
  %182 = icmp eq ptr %181, null
  br i1 %182, label %209, label %183

183:                                              ; preds = %178, %192
  %184 = phi ptr [ %193, %192 ], [ %181, %178 ]
  %185 = getelementptr inbounds %struct.dirent, ptr %184, i64 0, i32 4
  %186 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(2) @.str.6) #21
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %183
  %189 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %185) #21
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %185, ptr noundef nonnull dereferenceable(3) @.str.7) #21
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188, %183
  %193 = tail call ptr @readdir(ptr noundef nonnull %174) #20
  %194 = icmp eq ptr %193, null
  br i1 %194, label %209, label %183, !llvm.loop !122

195:                                              ; preds = %188
  %196 = add i64 %189, 1
  %197 = add i64 %196, %162
  %198 = icmp ugt i64 %197, %180
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = add i64 %180, 65
  %201 = add i64 %200, %189
  %202 = tail call ptr @xrealloc(ptr noundef %179, i64 noundef %201) #20
  br label %203

203:                                              ; preds = %199, %195
  %204 = phi ptr [ %202, %199 ], [ %179, %195 ]
  %205 = phi i64 [ %201, %199 ], [ %180, %195 ]
  %206 = getelementptr inbounds i8, ptr %204, i64 %162
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %206, ptr nonnull align 1 %185, i64 %196, i1 false)
  %207 = tail call fastcc zeroext i8 @validate_pch(ptr noundef nonnull %0, ptr noundef nonnull %27, ptr noundef %204), !range !121
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %178, label %209, !llvm.loop !122

209:                                              ; preds = %203, %178, %192
  %210 = phi i8 [ 0, %192 ], [ 1, %203 ], [ 0, %178 ]
  %211 = phi ptr [ %179, %192 ], [ %204, %203 ], [ %179, %178 ]
  %212 = tail call i32 @closedir(ptr noundef nonnull %174)
  br label %213

213:                                              ; preds = %209, %173, %171
  %214 = phi i8 [ %210, %209 ], [ 0, %173 ], [ %172, %171 ]
  %215 = phi ptr [ %211, %209 ], [ %163, %173 ], [ %163, %171 ]
  %216 = icmp eq i8 %214, 0
  %217 = select i1 %216, i8 1, i8 %63
  br label %218

218:                                              ; preds = %213, %160
  %219 = phi i8 [ %63, %160 ], [ %217, %213 ]
  %220 = phi i1 [ true, %160 ], [ %216, %213 ]
  %221 = phi ptr [ %163, %160 ], [ %215, %213 ]
  br i1 %220, label %223, label %222, !prof !94

222:                                              ; preds = %218
  store ptr %221, ptr %43, align 8, !tbaa !123
  br label %224

223:                                              ; preds = %218
  tail call void @free(ptr noundef %221) #20
  br label %224

224:                                              ; preds = %223, %222, %156, %150, %146
  %225 = phi i8 [ %63, %146 ], [ %63, %150 ], [ %219, %223 ], [ %219, %222 ], [ %63, %156 ]
  %226 = phi i1 [ true, %146 ], [ true, %150 ], [ true, %223 ], [ false, %222 ], [ true, %156 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #20
  br i1 %226, label %227, label %279, !prof !94

227:                                              ; preds = %224
  %228 = tail call fastcc zeroext i8 @open_file(ptr noundef nonnull %27), !range !121
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %279, !prof !78

230:                                              ; preds = %227
  %231 = load i32, ptr %44, align 4, !tbaa !72
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  tail call fastcc void @open_file_failed(ptr noundef nonnull %0, ptr noundef nonnull %27, i32 noundef 0)
  br label %279

234:                                              ; preds = %230
  %235 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %138) #21
  store i64 %235, ptr %45, align 8, !tbaa !124
  %236 = load ptr, ptr %46, align 8, !tbaa !125
  %237 = getelementptr inbounds i8, ptr %236, i64 %235
  %238 = getelementptr inbounds i8, ptr %237, i64 1
  %239 = load ptr, ptr %47, align 8, !tbaa !126
  %240 = icmp ugt ptr %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %234
  %242 = trunc i64 %235 to i32
  %243 = add i32 %242, 1
  tail call void @_obstack_newchunk(ptr noundef nonnull %48, i32 noundef %243) #20
  br label %244

244:                                              ; preds = %241, %234
  %245 = load ptr, ptr %46, align 8, !tbaa !125
  %246 = load i64, ptr %45, align 8, !tbaa !124
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %245, ptr nonnull align 1 %138, i64 %246, i1 false)
  %247 = load i64, ptr %45, align 8, !tbaa !124
  %248 = load ptr, ptr %46, align 8, !tbaa !125
  %249 = getelementptr inbounds i8, ptr %248, i64 %247
  %250 = getelementptr inbounds i8, ptr %249, i64 1
  store ptr %250, ptr %46, align 8, !tbaa !125
  store i8 0, ptr %249, align 1, !tbaa !100
  %251 = load ptr, ptr %46, align 8, !tbaa !125
  %252 = load ptr, ptr %49, align 8, !tbaa !127
  %253 = icmp eq ptr %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %244
  %255 = load i8, ptr %50, align 8
  %256 = or i8 %255, 2
  store i8 %256, ptr %50, align 8
  br label %257

257:                                              ; preds = %254, %244
  %258 = ptrtoint ptr %252 to i64
  store i64 %258, ptr %45, align 8, !tbaa !124
  %259 = ptrtoint ptr %251 to i64
  %260 = load i32, ptr %51, align 8, !tbaa !128
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %259
  %263 = xor i32 %260, -1
  %264 = sext i32 %263 to i64
  %265 = and i64 %262, %264
  %266 = inttoptr i64 %265 to ptr
  store ptr %266, ptr %46, align 8, !tbaa !125
  %267 = load ptr, ptr %52, align 8, !tbaa !129
  %268 = ptrtoint ptr %267 to i64
  %269 = sub i64 %265, %268
  %270 = load ptr, ptr %47, align 8, !tbaa !126
  %271 = ptrtoint ptr %270 to i64
  %272 = sub i64 %271, %268
  %273 = icmp sgt i64 %269, %272
  %274 = select i1 %273, ptr %270, ptr %266
  store ptr %274, ptr %46, align 8
  store ptr %274, ptr %49, align 8, !tbaa !127
  tail call void @free(ptr noundef %138) #20
  %275 = load ptr, ptr %37, align 8, !tbaa !114
  %276 = tail call ptr @htab_find_slot_with_hash(ptr noundef %275, ptr noundef %252, i32 noundef %141, i32 noundef 1) #20
  store ptr %252, ptr %276, align 8, !tbaa !65
  %277 = load ptr, ptr %27, align 8, !tbaa !105
  store ptr %277, ptr %39, align 8, !tbaa !115
  br label %279

278:                                              ; preds = %137
  store i32 2, ptr %53, align 4, !tbaa !72
  store ptr null, ptr %54, align 8, !tbaa !115
  br label %279

279:                                              ; preds = %145, %224, %227, %233, %257, %278
  %280 = phi i8 [ %63, %278 ], [ %225, %257 ], [ %225, %233 ], [ %225, %227 ], [ %225, %224 ], [ %63, %145 ]
  %281 = phi i1 [ true, %278 ], [ true, %257 ], [ false, %233 ], [ false, %227 ], [ false, %224 ], [ true, %145 ]
  br i1 %281, label %282, label %333, !prof !78

282:                                              ; preds = %279
  %283 = load ptr, ptr %33, align 8, !tbaa !104
  %284 = load ptr, ptr %283, align 8, !tbaa !130
  store ptr %284, ptr %33, align 8, !tbaa !104
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %316

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 10
  %288 = load ptr, ptr %287, align 8, !tbaa !131
  %289 = icmp eq ptr %288, null
  br i1 %289, label %305, label %290

290:                                              ; preds = %286
  %291 = tail call ptr %288(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %33) #20
  %292 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 1
  store ptr %291, ptr %292, align 8, !tbaa !115
  %293 = icmp eq ptr %291, null
  br i1 %293, label %299, label %294

294:                                              ; preds = %290
  %295 = tail call fastcc zeroext i8 @open_file(ptr noundef %27), !range !121
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load ptr, ptr %292, align 8, !tbaa !115
  tail call void @free(ptr noundef %298) #20
  br label %299

299:                                              ; preds = %297, %290
  %300 = load ptr, ptr %27, align 8, !tbaa !105
  store ptr %300, ptr %292, align 8, !tbaa !115
  br label %305

301:                                              ; preds = %294
  %302 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %303 = load ptr, ptr %302, align 8, !tbaa !117
  %304 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 4
  store ptr %303, ptr %304, align 8, !tbaa !118
  store ptr %27, ptr %302, align 8, !tbaa !117
  br label %430

305:                                              ; preds = %299, %286
  %306 = icmp eq i8 %280, 0
  br i1 %306, label %315, label %307

307:                                              ; preds = %305
  %308 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.1) #20
  %309 = tail call ptr @cpp_get_options(ptr noundef nonnull %0) #20
  %310 = getelementptr inbounds %struct.cpp_options, ptr %309, i64 0, i32 41
  %311 = load i8, ptr %310, align 4, !tbaa !132
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %307
  %314 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.2) #20
  br label %315

315:                                              ; preds = %307, %313, %305
  tail call fastcc void @open_file_failed(ptr noundef nonnull %0, ptr noundef %27, i32 noundef %4)
  br label %333

316:                                              ; preds = %282
  %317 = load ptr, ptr %55, align 8, !tbaa !133
  %318 = icmp eq ptr %284, %317
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = load ptr, ptr %56, align 8, !tbaa !134
  %321 = icmp eq ptr %284, %320
  br i1 %321, label %322, label %62, !llvm.loop !135

322:                                              ; preds = %319, %316
  %323 = phi i8 [ 1, %316 ], [ %60, %319 ]
  %324 = phi i8 [ %59, %316 ], [ 1, %319 ]
  br label %325

325:                                              ; preds = %329, %322
  %326 = phi ptr [ %14, %322 ], [ %327, %329 ]
  %327 = load ptr, ptr %326, align 8, !tbaa !65
  %328 = icmp eq ptr %327, null
  br i1 %328, label %57, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.file_hash_entry, ptr %327, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !95
  %332 = icmp eq ptr %331, %284
  br i1 %332, label %333, label %325, !llvm.loop !97

333:                                              ; preds = %57, %279, %329, %26, %315
  %334 = phi ptr [ null, %315 ], [ null, %26 ], [ %327, %329 ], [ null, %279 ], [ null, %57 ]
  %335 = phi i8 [ %60, %315 ], [ 0, %26 ], [ %323, %329 ], [ %60, %279 ], [ 0, %57 ]
  %336 = phi i8 [ %59, %315 ], [ 0, %26 ], [ %324, %329 ], [ %59, %279 ], [ 0, %57 ]
  %337 = phi ptr [ null, %315 ], [ null, %26 ], [ %284, %329 ], [ null, %279 ], [ null, %57 ]
  %338 = icmp eq ptr %334, null
  br i1 %338, label %343, label %339, !prof !94

339:                                              ; preds = %333
  %340 = load ptr, ptr %27, align 8, !tbaa !105
  tail call void @free(ptr noundef %340) #20
  tail call void @free(ptr noundef %27) #20
  %341 = getelementptr inbounds %struct.file_hash_entry, ptr %334, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !100
  br label %347

343:                                              ; preds = %333
  %344 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %345 = load ptr, ptr %344, align 8, !tbaa !117
  %346 = getelementptr inbounds %struct._cpp_file, ptr %27, i64 0, i32 4
  store ptr %345, ptr %346, align 8, !tbaa !118
  store ptr %27, ptr %344, align 8, !tbaa !117
  br label %347

347:                                              ; preds = %343, %339
  %348 = phi ptr [ %342, %339 ], [ %27, %343 ]
  %349 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  %350 = load ptr, ptr %349, align 8, !tbaa !136
  %351 = load i32, ptr %350, align 8, !tbaa !137
  %352 = icmp eq i32 %351, 127
  br i1 %352, label %353, label %357, !prof !78

353:                                              ; preds = %347
  %354 = tail call ptr @xmalloc(i64 noundef 4080) #20
  store i32 0, ptr %354, align 8, !tbaa !137
  %355 = load ptr, ptr %349, align 8, !tbaa !136
  %356 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %354, i64 0, i32 1
  store ptr %355, ptr %356, align 8, !tbaa !139
  store ptr %354, ptr %349, align 8, !tbaa !136
  br label %357

357:                                              ; preds = %347, %353
  %358 = load ptr, ptr %349, align 8, !tbaa !136
  %359 = load i32, ptr %358, align 8, !tbaa !137
  %360 = add i32 %359, 1
  store i32 %360, ptr %358, align 8, !tbaa !137
  %361 = zext i32 %359 to i64
  %362 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %358, i64 0, i32 2, i64 %361
  %363 = load ptr, ptr %14, align 8, !tbaa !65
  store ptr %363, ptr %362, align 8, !tbaa !140
  %364 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %358, i64 0, i32 2, i64 %361, i32 1
  store ptr %2, ptr %364, align 8, !tbaa !95
  %365 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %366 = load ptr, ptr %365, align 8, !tbaa !141
  %367 = getelementptr inbounds %struct.line_maps, ptr %366, i64 0, i32 7
  %368 = load i32, ptr %367, align 8, !tbaa !142
  %369 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %358, i64 0, i32 2, i64 %361, i32 2
  store i32 %368, ptr %369, align 8, !tbaa !144
  %370 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %358, i64 0, i32 2, i64 %361, i32 3
  store ptr %348, ptr %370, align 8, !tbaa !100
  store ptr %362, ptr %14, align 8, !tbaa !65
  %371 = icmp eq i8 %335, 0
  br i1 %371, label %400, label %372, !prof !94

372:                                              ; preds = %357
  %373 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 15
  %374 = load ptr, ptr %373, align 8, !tbaa !133
  %375 = icmp eq ptr %374, %2
  %376 = icmp eq ptr %337, %374
  %377 = or i1 %375, %376
  br i1 %377, label %400, label %378

378:                                              ; preds = %372
  %379 = load ptr, ptr %349, align 8, !tbaa !136
  %380 = load i32, ptr %379, align 8, !tbaa !137
  %381 = icmp eq i32 %380, 127
  br i1 %381, label %382, label %386

382:                                              ; preds = %378
  %383 = tail call ptr @xmalloc(i64 noundef 4080) #20
  store i32 0, ptr %383, align 8, !tbaa !137
  %384 = load ptr, ptr %349, align 8, !tbaa !136
  %385 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %383, i64 0, i32 1
  store ptr %384, ptr %385, align 8, !tbaa !139
  store ptr %383, ptr %349, align 8, !tbaa !136
  br label %386

386:                                              ; preds = %378, %382
  %387 = load ptr, ptr %349, align 8, !tbaa !136
  %388 = load i32, ptr %387, align 8, !tbaa !137
  %389 = add i32 %388, 1
  store i32 %389, ptr %387, align 8, !tbaa !137
  %390 = zext i32 %388 to i64
  %391 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %387, i64 0, i32 2, i64 %390
  %392 = load ptr, ptr %14, align 8, !tbaa !65
  store ptr %392, ptr %391, align 8, !tbaa !140
  %393 = load ptr, ptr %373, align 8, !tbaa !133
  %394 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %387, i64 0, i32 2, i64 %390, i32 1
  store ptr %393, ptr %394, align 8, !tbaa !95
  %395 = load ptr, ptr %365, align 8, !tbaa !141
  %396 = getelementptr inbounds %struct.line_maps, ptr %395, i64 0, i32 7
  %397 = load i32, ptr %396, align 8, !tbaa !142
  %398 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %387, i64 0, i32 2, i64 %390, i32 2
  store i32 %397, ptr %398, align 8, !tbaa !144
  %399 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %387, i64 0, i32 2, i64 %390, i32 3
  store ptr %348, ptr %399, align 8, !tbaa !100
  store ptr %391, ptr %14, align 8, !tbaa !65
  br label %400

400:                                              ; preds = %386, %372, %357
  %401 = icmp eq i8 %336, 0
  br i1 %401, label %430, label %402, !prof !94

402:                                              ; preds = %400
  %403 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  %404 = load ptr, ptr %403, align 8, !tbaa !134
  %405 = icmp eq ptr %404, %2
  %406 = icmp eq ptr %337, %404
  %407 = or i1 %405, %406
  br i1 %407, label %430, label %408

408:                                              ; preds = %402
  %409 = load ptr, ptr %349, align 8, !tbaa !136
  %410 = load i32, ptr %409, align 8, !tbaa !137
  %411 = icmp eq i32 %410, 127
  br i1 %411, label %412, label %416

412:                                              ; preds = %408
  %413 = tail call ptr @xmalloc(i64 noundef 4080) #20
  store i32 0, ptr %413, align 8, !tbaa !137
  %414 = load ptr, ptr %349, align 8, !tbaa !136
  %415 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %413, i64 0, i32 1
  store ptr %414, ptr %415, align 8, !tbaa !139
  store ptr %413, ptr %349, align 8, !tbaa !136
  br label %416

416:                                              ; preds = %408, %412
  %417 = load ptr, ptr %349, align 8, !tbaa !136
  %418 = load i32, ptr %417, align 8, !tbaa !137
  %419 = add i32 %418, 1
  store i32 %419, ptr %417, align 8, !tbaa !137
  %420 = zext i32 %418 to i64
  %421 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %417, i64 0, i32 2, i64 %420
  %422 = load ptr, ptr %14, align 8, !tbaa !65
  store ptr %422, ptr %421, align 8, !tbaa !140
  %423 = load ptr, ptr %403, align 8, !tbaa !134
  %424 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %417, i64 0, i32 2, i64 %420, i32 1
  store ptr %423, ptr %424, align 8, !tbaa !95
  %425 = load ptr, ptr %365, align 8, !tbaa !141
  %426 = getelementptr inbounds %struct.line_maps, ptr %425, i64 0, i32 7
  %427 = load i32, ptr %426, align 8, !tbaa !142
  %428 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %417, i64 0, i32 2, i64 %420, i32 2
  store i32 %427, ptr %428, align 8, !tbaa !144
  %429 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %417, i64 0, i32 2, i64 %420, i32 3
  store ptr %348, ptr %429, align 8, !tbaa !100
  store ptr %421, ptr %14, align 8, !tbaa !65
  br label %430

430:                                              ; preds = %400, %402, %416, %301, %23
  %431 = phi ptr [ %25, %23 ], [ %27, %301 ], [ %348, %416 ], [ %348, %402 ], [ %348, %400 ]
  ret ptr %431
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare zeroext i8 @cpp_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @htab_hash_string(ptr noundef) #1

declare ptr @cpp_get_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @open_file_failed(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 !prof !64 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !101
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 15
  %14 = load i8, ptr %13, align 2, !tbaa !146
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %3, %9, %12
  %17 = phi i1 [ %15, %12 ], [ false, %9 ], [ false, %3 ]
  %18 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %19 = load i32, ptr %18, align 8, !tbaa !148
  %20 = icmp ne i32 %2, 0
  %21 = select i1 %20, i1 true, i1 %17
  %22 = zext i1 %21 to i32
  %23 = icmp ugt i32 %19, %22
  %24 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 11
  %25 = load i32, ptr %24, align 4, !tbaa !72
  %26 = tail call ptr @__errno_location() #22
  store i32 %25, ptr %26, align 4, !tbaa !69
  br i1 %23, label %27, label %40

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 1
  %29 = load i8, ptr %28, align 4, !tbaa !149
  %30 = icmp ne i8 %29, 0
  %31 = icmp eq i32 %25, 2
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = load ptr, ptr %1, align 8, !tbaa !105
  tail call void @deps_add_dep(ptr noundef %35, ptr noundef %36) #20
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 4
  %38 = load i8, ptr %37, align 1, !tbaa !151
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %49

40:                                               ; preds = %27, %16
  %41 = load i32, ptr %18, align 8, !tbaa !148
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %23, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 4
  %46 = load i8, ptr %45, align 1, !tbaa !151
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 0, i32 6
  br label %49

49:                                               ; preds = %44, %40, %33
  %50 = phi i32 [ 6, %33 ], [ 6, %40 ], [ %48, %44 ]
  %51 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef %50, ptr noundef %52) #20
  br label %54

54:                                               ; preds = %49, %33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @_cpp_stack_file(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 !prof !71 {
  %4 = alloca %struct.pchf_compare_data, align 8
  %5 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 13
  %6 = load i8, ptr %5, align 2, !tbaa !152
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %260, !prof !94

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %15, label %10, !prof !94

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 25
  store i8 1, ptr %11, align 1, !tbaa !153
  store i8 1, ptr %5, align 2, !tbaa !152
  %12 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 12
  %13 = load i16, ptr %12, align 8, !tbaa !154
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %260

15:                                               ; preds = %10, %8
  %16 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !94

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cpp_hashnode, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, 63
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %260, label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !123
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28, !prof !94

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !156
  %31 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !103
  %33 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !115
  tail call void %30(ptr noundef %0, ptr noundef nonnull %26, i32 noundef %32, ptr noundef %34) #20
  store i32 -1, ptr %31, align 8, !tbaa !103
  %35 = load ptr, ptr %25, align 8, !tbaa !123
  tail call void @free(ptr noundef %35) #20
  store ptr null, ptr %25, align 8, !tbaa !123
  br label %260

36:                                               ; preds = %24
  %37 = tail call fastcc zeroext i8 @read_file(ptr noundef %0, ptr noundef %1), !range !121
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %260, label %39, !prof !78

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #20
  %40 = load ptr, ptr @pchf, align 8, !tbaa !65
  %41 = icmp eq ptr %40, null
  br i1 %41, label %104, label %42, !prof !94

42:                                               ; preds = %39
  br i1 %9, label %43, label %47

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.pchf_data, ptr %40, i64 0, i32 1
  %45 = load i8, ptr %44, align 8, !tbaa !157
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %104, label %47

47:                                               ; preds = %43, %42
  %48 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !159
  store i64 %49, ptr %4, align 8, !tbaa !160
  %50 = getelementptr inbounds %struct.pchf_compare_data, ptr %4, i64 0, i32 2
  store i8 0, ptr %50, align 8, !tbaa !162
  %51 = getelementptr inbounds %struct.pchf_compare_data, ptr %4, i64 0, i32 4
  store ptr %1, ptr %51, align 8, !tbaa !163
  %52 = getelementptr inbounds %struct.pchf_compare_data, ptr %4, i64 0, i32 3
  store i8 %2, ptr %52, align 1, !tbaa !164
  %53 = getelementptr inbounds %struct.pchf_data, ptr %40, i64 0, i32 2
  %54 = load i64, ptr %40, align 8, !tbaa !165
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %105, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.pchf_compare_data, ptr %4, i64 0, i32 1
  %58 = getelementptr inbounds %struct.pchf_compare_data, ptr %4, i64 0, i32 1
  br label %59

59:                                               ; preds = %56, %97
  %60 = phi i64 [ 0, %56 ], [ %99, %97 ]
  %61 = phi i64 [ %54, %56 ], [ %98, %97 ]
  %62 = add i64 %60, %61
  %63 = lshr i64 %62, 1
  %64 = shl i64 %63, 5
  %65 = getelementptr inbounds i8, ptr %53, i64 %64
  %66 = call i32 @memcmp(ptr noundef nonnull dereferenceable(8) %4, ptr noundef nonnull dereferenceable(8) %65, i64 noundef 8) #21
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %59
  %69 = load i8, ptr %50, align 8, !tbaa !162
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load ptr, ptr %51, align 8, !tbaa !163
  %73 = getelementptr inbounds %struct._cpp_file, ptr %72, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !166
  %75 = getelementptr inbounds %struct._cpp_file, ptr %72, i64 0, i32 9, i32 8
  %76 = load i64, ptr %75, align 8, !tbaa !159
  %77 = call ptr @md5_buffer(ptr noundef %74, i64 noundef %76, ptr noundef nonnull %57) #20
  store i8 1, ptr %50, align 8, !tbaa !162
  br label %78

78:                                               ; preds = %71, %68
  %79 = getelementptr inbounds %struct.pchf_entry, ptr %65, i64 0, i32 1
  %80 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %58, ptr noundef nonnull dereferenceable(16) %79, i64 noundef 16) #21
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i8, ptr %52, align 1, !tbaa !164
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.pchf_entry, ptr %65, i64 0, i32 2
  %87 = load i8, ptr %86, align 8, !tbaa !167
  %88 = icmp eq i8 %87, 0
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %85, %82, %78, %59
  %91 = phi i32 [ %66, %59 ], [ %80, %78 ], [ 0, %82 ], [ %89, %85 ]
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = icmp eq i32 %91, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %93
  %96 = add nuw i64 %63, 1
  br label %97

97:                                               ; preds = %95, %90
  %98 = phi i64 [ %61, %95 ], [ %63, %90 ]
  %99 = phi i64 [ %96, %95 ], [ %60, %90 ]
  %100 = icmp ult i64 %99, %98
  br i1 %100, label %59, label %105, !llvm.loop !169

101:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br i1 %9, label %102, label %260

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 25
  store i8 1, ptr %103, align 1, !tbaa !153
  store i8 1, ptr %5, align 2, !tbaa !152
  br label %260

104:                                              ; preds = %39, %43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br label %106

105:                                              ; preds = %97, %47
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #20
  br label %106

106:                                              ; preds = %105, %104
  %107 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 25
  %108 = load i8, ptr %107, align 1, !tbaa !153
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %195, label %110, !prof !94

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %112 = load ptr, ptr %111, align 8, !tbaa !65
  %113 = icmp eq ptr %112, null
  br i1 %113, label %195, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 12
  %116 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  br label %117

117:                                              ; preds = %114, %190
  %118 = phi i1 [ %113, %114 ], [ %193, %190 ]
  %119 = phi ptr [ %112, %114 ], [ %192, %190 ]
  %120 = icmp eq ptr %119, %1
  br i1 %120, label %190, label %121

121:                                              ; preds = %117
  br i1 %9, label %122, label %126

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 13
  %124 = load i8, ptr %123, align 2, !tbaa !152
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %190, label %126

126:                                              ; preds = %122, %121
  %127 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 11
  %128 = load i32, ptr %127, align 4, !tbaa !72
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %190

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 9, i32 12
  %132 = load i64, ptr %131, align 8, !tbaa !170
  %133 = load i64, ptr %115, align 8, !tbaa !170
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %190

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 9, i32 8
  %137 = load i64, ptr %136, align 8, !tbaa !159
  %138 = load i64, ptr %116, align 8, !tbaa !159
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %190

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 5
  %142 = load ptr, ptr %141, align 8, !tbaa !166
  %143 = icmp eq ptr %142, null
  br i1 %143, label %163, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 16
  %146 = load i8, ptr %145, align 1, !tbaa !171
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 8
  %150 = load ptr, ptr %149, align 8, !tbaa !104
  %151 = load ptr, ptr %119, align 8, !tbaa !105
  %152 = call ptr @xcalloc(i64 noundef 1, i64 noundef 232) #20
  %153 = load ptr, ptr %0, align 8, !tbaa !101
  %154 = icmp eq ptr %153, null
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct._cpp_file, ptr %152, i64 0, i32 15
  store i8 %155, ptr %156, align 4, !tbaa !102
  %157 = getelementptr inbounds %struct._cpp_file, ptr %152, i64 0, i32 10
  store i32 -1, ptr %157, align 8, !tbaa !103
  %158 = getelementptr inbounds %struct._cpp_file, ptr %152, i64 0, i32 8
  store ptr %150, ptr %158, align 8, !tbaa !104
  %159 = call ptr @xstrdup(ptr noundef %151) #20
  store ptr %159, ptr %152, align 8, !tbaa !105
  %160 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !115
  %162 = getelementptr inbounds %struct._cpp_file, ptr %152, i64 0, i32 1
  store ptr %161, ptr %162, align 8, !tbaa !115
  br label %163

163:                                              ; preds = %148, %144, %140
  %164 = phi ptr [ %152, %148 ], [ %119, %144 ], [ %119, %140 ]
  %165 = call fastcc zeroext i8 @read_file(ptr noundef %0, ptr noundef nonnull %164), !range !121
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct._cpp_file, ptr %164, i64 0, i32 9, i32 8
  %169 = load i64, ptr %168, align 8, !tbaa !159
  %170 = load i64, ptr %116, align 8, !tbaa !159
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  %174 = getelementptr inbounds %struct._cpp_file, ptr %164, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !166
  %176 = load ptr, ptr %173, align 8, !tbaa !166
  %177 = call i32 @bcmp(ptr %175, ptr %176, i64 %170)
  %178 = icmp eq i32 %177, 0
  br label %179

179:                                              ; preds = %172, %167, %163
  %180 = phi i1 [ false, %167 ], [ false, %163 ], [ %178, %172 ]
  %181 = load ptr, ptr %141, align 8, !tbaa !166
  %182 = icmp eq ptr %181, null
  br i1 %182, label %189, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 16
  %185 = load i8, ptr %184, align 1, !tbaa !171
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct._cpp_file, ptr %164, i64 0, i32 1
  store ptr null, ptr %188, align 8, !tbaa !115
  call fastcc void @destroy_cpp_file(ptr noundef nonnull %164)
  br label %189

189:                                              ; preds = %187, %183, %179
  br i1 %180, label %194, label %190

190:                                              ; preds = %122, %189, %135, %130, %126, %117
  %191 = getelementptr inbounds %struct._cpp_file, ptr %119, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !65
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %117, !llvm.loop !172

194:                                              ; preds = %189
  br i1 %118, label %195, label %260, !prof !94

195:                                              ; preds = %190, %110, %106, %194
  %196 = load ptr, ptr %0, align 8, !tbaa !101
  %197 = icmp eq ptr %196, null
  br i1 %197, label %209, label %198, !prof !94

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 8
  %200 = load ptr, ptr %199, align 8, !tbaa !104
  %201 = icmp eq ptr %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.cpp_buffer, ptr %196, i64 0, i32 15
  %204 = load i8, ptr %203, align 2, !tbaa !146
  %205 = getelementptr inbounds %struct.cpp_dir, ptr %200, i64 0, i32 3
  %206 = load i8, ptr %205, align 4, !tbaa !111
  %207 = call i8 @llvm.umax.i8(i8 %204, i8 %206)
  %208 = zext i8 %207 to i32
  br label %209

209:                                              ; preds = %195, %198, %202
  %210 = phi i32 [ %208, %202 ], [ 0, %198 ], [ 0, %195 ]
  %211 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43
  %212 = load i32, ptr %211, align 8, !tbaa !148
  %213 = icmp ne i32 %210, 0
  %214 = zext i1 %213 to i32
  %215 = icmp ugt i32 %212, %214
  br i1 %215, label %216, label %233, !prof !78

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 12
  %218 = load i16, ptr %217, align 8, !tbaa !154
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 15
  %222 = load i8, ptr %221, align 4, !tbaa !102
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 43, i32 3
  %226 = load i8, ptr %225, align 2, !tbaa !173
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %224, %220
  %229 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 45
  %230 = load ptr, ptr %229, align 8, !tbaa !150
  %231 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !115
  call void @deps_add_dep(ptr noundef %230, ptr noundef %232) #20
  br label %233

233:                                              ; preds = %224, %228, %216, %209
  %234 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 16
  store i8 0, ptr %234, align 1, !tbaa !171
  %235 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 12
  %236 = load i16, ptr %235, align 8, !tbaa !154
  %237 = add i16 %236, 1
  store i16 %237, ptr %235, align 8, !tbaa !154
  %238 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !166
  %240 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %241 = load i64, ptr %240, align 8, !tbaa !159
  %242 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 32
  %243 = load i8, ptr %242, align 2, !tbaa !174
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %250, label %245, !prof !94

245:                                              ; preds = %233
  %246 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 52
  %247 = load i8, ptr %246, align 4, !tbaa !175
  %248 = icmp eq i8 %247, 0
  %249 = zext i1 %248 to i32
  br label %250

250:                                              ; preds = %245, %233
  %251 = phi i32 [ 0, %233 ], [ %249, %245 ]
  %252 = call ptr @cpp_push_buffer(ptr noundef nonnull %0, ptr noundef %239, i64 noundef %241, i32 noundef %251) #20
  %253 = getelementptr inbounds %struct.cpp_buffer, ptr %252, i64 0, i32 10
  store ptr %1, ptr %253, align 8, !tbaa !176
  %254 = trunc i32 %210 to i8
  %255 = getelementptr inbounds %struct.cpp_buffer, ptr %252, i64 0, i32 15
  store i8 %254, ptr %255, align 2, !tbaa !146
  %256 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  store i8 1, ptr %256, align 8, !tbaa !177
  %257 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  store ptr null, ptr %257, align 8, !tbaa !178
  %258 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !115
  call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %259, i32 noundef 1, i32 noundef %210) #20
  br label %260

260:                                              ; preds = %28, %3, %10, %19, %36, %102, %101, %194, %250
  %261 = phi i8 [ 1, %250 ], [ 0, %194 ], [ 0, %101 ], [ 0, %102 ], [ 0, %36 ], [ 0, %19 ], [ 0, %10 ], [ 0, %3 ], [ 0, %28 ]
  ret i8 %261
}

declare void @deps_add_dep(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cpp_push_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_cpp_do_file_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_cpp_mark_file_once_only(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 !prof !64 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 25
  store i8 1, ptr %3, align 1, !tbaa !153
  %4 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 13
  store i8 1, ptr %4, align 2, !tbaa !152
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @_cpp_stack_include(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !64 {
  %5 = tail call fastcc ptr @search_path_head(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @_cpp_find_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %2)
  %9 = getelementptr inbounds %struct._cpp_file, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._cpp_file, ptr %8, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne i32 %3, 3
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  %21 = getelementptr inbounds %struct.line_maps, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !142
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 8, !tbaa !142
  br label %24

24:                                               ; preds = %18, %12, %7
  %25 = icmp eq i32 %3, 2
  %26 = zext i1 %25 to i8
  %27 = tail call zeroext i8 @_cpp_stack_file(ptr noundef %0, ptr noundef %8, i8 noundef zeroext %26), !range !121
  br label %28

28:                                               ; preds = %4, %24
  %29 = phi i8 [ %27, %24 ], [ 0, %4 ]
  ret i8 %29
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @search_path_head(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !prof !64 {
  %5 = load i8, ptr %1, align 1, !tbaa !100
  %6 = icmp eq i8 %5, 47
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 16
  br label %71

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !101
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 18
  %13 = getelementptr inbounds %struct.cpp_buffer, ptr %10, i64 0, i32 10
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq i32 %3, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._cpp_file, ptr %15, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 16
  %22 = icmp eq ptr %19, %21
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %17, %9
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 15
  br label %65

28:                                               ; preds = %24
  %29 = icmp eq i32 %3, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @make_cpp_dir(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef 0)
  br label %71

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 24
  %34 = load i8, ptr %33, align 8, !tbaa !179
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  br label %65

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct._cpp_file, ptr %15, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !180
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct._cpp_file, ptr %15, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  %45 = tail call ptr @lbasename(ptr noundef %44) #20
  %46 = load ptr, ptr %43, align 8, !tbaa !115
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = add i64 %49, 1
  %51 = tail call ptr @xmalloc(i64 noundef %50) #20
  %52 = load ptr, ptr %43, align 8, !tbaa !115
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %52, i64 %49, i1 false)
  %53 = getelementptr inbounds i8, ptr %51, i64 %49
  store i8 0, ptr %53, align 1, !tbaa !100
  store ptr %51, ptr %39, align 8, !tbaa !180
  br label %54

54:                                               ; preds = %38, %42
  %55 = load ptr, ptr %39, align 8, !tbaa !180
  %56 = load ptr, ptr %0, align 8, !tbaa !101
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.cpp_buffer, ptr %56, i64 0, i32 15
  %60 = load i8, ptr %59, align 2, !tbaa !146
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %54, %58
  %63 = phi i32 [ %61, %58 ], [ 0, %54 ]
  %64 = tail call fastcc ptr @make_cpp_dir(ptr noundef nonnull %0, ptr noundef %55, i32 noundef %63)
  br label %71

65:                                               ; preds = %17, %26, %36
  %66 = phi ptr [ %27, %26 ], [ %37, %36 ], [ %19, %17 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #20
  br label %71

71:                                               ; preds = %65, %69, %62, %30, %7
  %72 = phi ptr [ %8, %7 ], [ %31, %30 ], [ %64, %62 ], [ %67, %69 ], [ %67, %65 ]
  ret ptr %72
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @cpp_included(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !64 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = tail call i32 @htab_hash_string(ptr noundef %1) #20
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %4, ptr noundef %1, i32 noundef %5) #20
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2, %20
  %9 = phi i1 [ %22, %20 ], [ %7, %2 ]
  %10 = phi ptr [ %21, %20 ], [ %6, %2 ]
  %11 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct._cpp_file, ptr %16, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !72
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %8, %14
  %21 = load ptr, ptr %10, align 8, !tbaa !140
  %22 = icmp ne ptr %21, null
  br i1 %22, label %8, label %23, !llvm.loop !181

23:                                               ; preds = %14, %20, %2
  %24 = phi i1 [ %7, %2 ], [ %9, %14 ], [ %22, %20 ]
  %25 = zext i1 %24 to i8
  ret i8 %25
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @cpp_included_before(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !64 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = tail call i32 @htab_hash_string(ptr noundef %1) #20
  %7 = tail call ptr @htab_find_with_hash(ptr noundef %5, ptr noundef %1, i32 noundef %6) #20
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %3, %25
  %10 = phi i1 [ %27, %25 ], [ %8, %3 ]
  %11 = phi ptr [ %26, %25 ], [ %7, %3 ]
  %12 = getelementptr inbounds %struct.file_hash_entry, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.file_hash_entry, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct._cpp_file, ptr %17, i64 0, i32 11
  %19 = load i32, ptr %18, align 4, !tbaa !72
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.file_hash_entry, ptr %11, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !144
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %25, label %28

25:                                               ; preds = %15, %9, %21
  %26 = load ptr, ptr %11, align 8, !tbaa !140
  %27 = icmp ne ptr %26, null
  br i1 %27, label %9, label %28, !llvm.loop !182

28:                                               ; preds = %21, %25, %3
  %29 = phi i1 [ %8, %3 ], [ %10, %21 ], [ %27, %25 ]
  %30 = zext i1 %29 to i8
  ret i8 %30
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_init_files(ptr noundef %0) local_unnamed_addr #3 !prof !71 {
  %2 = tail call ptr @htab_create_alloc(i64 noundef 127, ptr noundef nonnull @file_hash_hash, ptr noundef nonnull @file_hash_eq, ptr noundef null, ptr noundef nonnull @xcalloc, ptr noundef nonnull @free) #20
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  store ptr %2, ptr %3, align 8, !tbaa !79
  %4 = tail call ptr @htab_create_alloc(i64 noundef 127, ptr noundef nonnull @file_hash_hash, ptr noundef nonnull @file_hash_eq, ptr noundef null, ptr noundef nonnull @xcalloc, ptr noundef nonnull @free) #20
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 20
  store ptr %4, ptr %5, align 8, !tbaa !183
  %6 = tail call ptr @xmalloc(i64 noundef 4080) #20
  store i32 0, ptr %6, align 8, !tbaa !137
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %6, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !139
  store ptr %6, ptr %7, align 8, !tbaa !136
  %10 = tail call ptr @htab_create_alloc(i64 noundef 127, ptr noundef nonnull @htab_hash_string, ptr noundef nonnull @nonexistent_file_hash_eq, ptr noundef null, ptr noundef nonnull @xcalloc, ptr noundef nonnull @free) #20
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 22
  store ptr %10, ptr %11, align 8, !tbaa !114
  %12 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23
  %13 = tail call i32 @_obstack_begin(ptr noundef nonnull %12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #20
  ret void
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal i32 @file_hash_hash(ptr nocapture noundef readonly %0) #3 !prof !64 {
  %2 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = getelementptr inbounds %struct.cpp_dir, ptr %6, i64 0, i32 1
  %8 = select i1 %4, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = tail call i32 @htab_hash_string(ptr noundef %9) #20
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @file_hash_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !prof !64 {
  %3 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.file_hash_entry, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = getelementptr inbounds %struct.cpp_dir, ptr %7, i64 0, i32 1
  %9 = select i1 %5, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #21
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare ptr @xcalloc(i64 noundef, i64 noundef) #1

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal i32 @nonexistent_file_hash_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !prof !64 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #21
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @xmalloc(i64 noundef) #1

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_cleanup_files(ptr noundef %0) local_unnamed_addr #3 !prof !64 {
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  tail call void @htab_delete(ptr noundef %3) #20
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  tail call void @htab_delete(ptr noundef %5) #20
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  tail call void @htab_delete(ptr noundef %7) #20
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 5
  store i64 %12, ptr %13, align 8, !tbaa !124
  %14 = icmp sgt i64 %12, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !126
  %18 = ptrtoint ptr %17 to i64
  %19 = sub i64 %18, %11
  %20 = icmp sgt i64 %19, %12
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %10, i64 %12
  %23 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !127
  %24 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 23, i32 3
  store ptr %22, ptr %24, align 8, !tbaa !125
  br label %27

25:                                               ; preds = %15, %1
  %26 = getelementptr inbounds i8, ptr %10, i64 %12
  tail call void @obstack_free(ptr noundef nonnull %8, ptr noundef %26) #20
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  %29 = load ptr, ptr %28, align 8, !tbaa !136
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %34, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !139
  tail call void @free(ptr noundef %32) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %31, !llvm.loop !184

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !117
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct._cpp_file, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !118
  tail call fastcc void @destroy_cpp_file(ptr noundef nonnull %41)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %40, !llvm.loop !185

45:                                               ; preds = %40, %36
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #1

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_clear_file_cache(ptr noundef %0) local_unnamed_addr #3 !prof !64 {
  tail call void @_cpp_cleanup_files(ptr noundef %0)
  %2 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  store ptr null, ptr %2, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  store ptr null, ptr %3, align 8, !tbaa !117
  tail call void @_cpp_init_files(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_fake_include(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !101
  %4 = getelementptr inbounds %struct.cpp_buffer, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = getelementptr inbounds %struct._cpp_file, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = tail call ptr @_cpp_find_file(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %7, i8 noundef zeroext 1, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_make_system_header(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !64 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !187
  %9 = icmp eq i32 %1, 0
  %10 = icmp eq i32 %2, 0
  %11 = select i1 %10, i32 1, i32 2
  %12 = select i1 %9, i32 0, i32 %11
  %13 = add i32 %8, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14
  %16 = trunc i32 %12 to i8
  %17 = load ptr, ptr %0, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %17, i64 0, i32 15
  store i8 %16, ptr %18, align 2, !tbaa !146
  %19 = load ptr, ptr %15, align 8, !tbaa !188
  %20 = getelementptr inbounds %struct.line_maps, ptr %5, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !145
  %22 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !190
  %24 = sub i32 %21, %23
  %25 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14, i32 6
  %26 = load i8, ptr %25, align 2
  %27 = zext nneg i8 %26 to i32
  %28 = lshr i32 %24, %27
  %29 = getelementptr inbounds %struct.line_map, ptr %6, i64 %14, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !191
  %31 = add i32 %28, %30
  tail call void @_cpp_do_file_change(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %19, i32 noundef %31, i32 noundef %12) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @cpp_change_file(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !71 {
  tail call void @_cpp_do_file_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef 0) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_report_missing_guards(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !64 {
  %2 = alloca %struct.report_missing_guard_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  store ptr null, ptr %2, align 8, !tbaa !192
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = tail call i64 @htab_elements(ptr noundef %4) #20
  %6 = getelementptr inbounds %struct.report_missing_guard_data, ptr %2, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !194
  %7 = load ptr, ptr %3, align 8, !tbaa !79
  call void @htab_traverse(ptr noundef %7, ptr noundef nonnull @report_missing_guard, ptr noundef nonnull %2) #20
  %8 = load ptr, ptr %2, align 8, !tbaa !192
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = load i64, ptr %6, align 8, !tbaa !194
  call void @spec_qsort(ptr noundef nonnull %8, i64 noundef %11, i64 noundef 8, ptr noundef nonnull @report_missing_guard_cmp) #20
  %12 = load ptr, ptr @stderr, align 8, !tbaa !65
  %13 = call i64 @fwrite(ptr nonnull @.str.3, i64 43, i64 1, ptr %12) #23
  %14 = load i64, ptr %6, align 8, !tbaa !194
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10, %16
  %17 = phi i64 [ %25, %16 ], [ 0, %10 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !192
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  %21 = load ptr, ptr @stderr, align 8, !tbaa !65
  %22 = call i32 @fputs(ptr noundef %20, ptr noundef %21) #23
  %23 = load ptr, ptr @stderr, align 8, !tbaa !65
  %24 = call i32 @putc(i32 noundef 10, ptr noundef %23)
  %25 = add nuw i64 %17, 1
  %26 = load i64, ptr %6, align 8, !tbaa !194
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %16, label %28, !llvm.loop !195

28:                                               ; preds = %16, %10
  %29 = load ptr, ptr %2, align 8, !tbaa !192
  call void @free(ptr noundef %29) #20
  br label %30

30:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret void
}

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #1

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @report_missing_guard(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.file_hash_entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file_hash_entry, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 12
  %15 = load i16, ptr %14, align 8, !tbaa !154
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 15
  %19 = load i8, ptr %18, align 4, !tbaa !102
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 8, !tbaa !192
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.report_missing_guard_data, ptr %1, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !194
  %27 = tail call ptr @xcalloc(i64 noundef %26, i64 noundef 8) #20
  store ptr %27, ptr %1, align 8, !tbaa !192
  store i64 0, ptr %25, align 8, !tbaa !194
  br label %28

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds %struct._cpp_file, ptr %9, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  %31 = load ptr, ptr %1, align 8, !tbaa !192
  %32 = getelementptr inbounds %struct.report_missing_guard_data, ptr %1, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !194
  %34 = add i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !194
  %35 = getelementptr inbounds ptr, ptr %31, i64 %33
  store ptr %30, ptr %35, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %7, %13, %17, %28, %2
  ret i32 1
}

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @report_missing_guard_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !prof !64 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = load ptr, ptr %1, align 8, !tbaa !65
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #21
  ret i32 %5
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local i32 @_cpp_compare_file_date(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !64 {
  %4 = tail call fastcc ptr @search_path_head(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @_cpp_find_file(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef %2)
  %8 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 11
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !103
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @close(i32 noundef %13) #20
  store i32 -1, ptr %12, align 8, !tbaa !103
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 9, i32 12
  %19 = load i64, ptr %18, align 8, !tbaa !170
  %20 = load ptr, ptr %0, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.cpp_buffer, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !176
  %23 = getelementptr inbounds %struct._cpp_file, ptr %22, i64 0, i32 9, i32 12
  %24 = load i64, ptr %23, align 8, !tbaa !170
  %25 = icmp sgt i64 %19, %24
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %6, %3, %17
  %28 = phi i32 [ %26, %17 ], [ -1, %3 ], [ -1, %6 ]
  ret i32 %28
}

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @cpp_push_include(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !64 {
  %3 = tail call zeroext i8 @_cpp_stack_include(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 3), !range !121
  ret i8 %3
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @_cpp_pop_file_buffer(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !71 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %4 = load i8, ptr %3, align 8, !tbaa !177
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6, !prof !94

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  store ptr %12, ptr %7, align 8, !tbaa !155
  br label %13

13:                                               ; preds = %10, %6, %2
  store i8 0, ptr %3, align 8, !tbaa !177
  %14 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17, !prof !78

17:                                               ; preds = %13
  tail call void @free(ptr noundef %15) #20
  %18 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  %19 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 16
  store i8 0, ptr %19, align 1, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  br label %20

20:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @_cpp_get_file_stat(ptr noundef readnone %0) local_unnamed_addr #11 !prof !64 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 9
  ret ptr %2
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cpp_set_include_chains(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 !prof !71 {
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  store ptr %1, ptr %5, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 15
  store ptr %1, ptr %6, align 8, !tbaa !133
  %7 = trunc i32 %3 to i8
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 24
  store i8 %7, ptr %8, align 8, !tbaa !179
  %9 = icmp eq ptr %1, null
  br i1 %9, label %23, label %10, !prof !197

10:                                               ; preds = %4, %20
  %11 = phi ptr [ %21, %20 ], [ %1, %4 ]
  %12 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #21
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.cpp_dir, ptr %11, i64 0, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !109
  %18 = icmp eq ptr %11, %2
  br i1 %18, label %19, label %20, !prof !94

19:                                               ; preds = %10
  store ptr %2, ptr %6, align 8, !tbaa !133
  br label %20

20:                                               ; preds = %10, %19
  %21 = load ptr, ptr %11, align 8, !tbaa !130
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !prof !198, !llvm.loop !199

23:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_path(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_dir(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_buffer(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !64 {
  %2 = load ptr, ptr %0, align 8, !tbaa !101
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_file(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @cpp_get_prev(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !64 {
  %2 = getelementptr inbounds %struct.cpp_buffer, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !200
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @_cpp_save_file_entries(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !64 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i64 [ %9, %6 ], [ 0, %2 ]
  %9 = add i64 %8, 1
  %10 = getelementptr inbounds %struct._cpp_file, ptr %7, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !201

13:                                               ; preds = %6
  %14 = shl i64 %9, 5
  %15 = or disjoint i64 %14, 16
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i64 [ 16, %2 ], [ %15, %13 ]
  %18 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %17) #20
  store i64 0, ptr %18, align 8, !tbaa !165
  %19 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 1
  store i8 0, ptr %19, align 8, !tbaa !157
  %20 = load ptr, ptr %3, align 8, !tbaa !65
  %21 = icmp eq ptr %20, null
  br i1 %21, label %76, label %22

22:                                               ; preds = %16, %72
  %23 = phi ptr [ %74, %72 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 14
  %25 = load i8, ptr %24, align 1, !tbaa !202
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 11
  %29 = load i32, ptr %28, align 4, !tbaa !72
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 12
  %33 = load i16, ptr %32, align 8, !tbaa !154
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %18, align 8, !tbaa !165
  %37 = add i64 %36, 1
  store i64 %37, ptr %18, align 8, !tbaa !165
  %38 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 13
  %39 = load i8, ptr %38, align 2, !tbaa !152
  %40 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36
  %41 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36, i32 2
  store i8 %39, ptr %41, align 8, !tbaa !167
  %42 = load i8, ptr %19, align 8, !tbaa !157
  %43 = or i8 %42, %39
  store i8 %43, ptr %19, align 8, !tbaa !157
  %44 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 16
  %45 = load i8, ptr %44, align 1, !tbaa !171
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !166
  %50 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 9, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !159
  %52 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36, i32 1
  %53 = tail call ptr @md5_buffer(ptr noundef %49, i64 noundef %51, ptr noundef nonnull %52) #20
  br label %67

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 10
  %56 = load i32, ptr %55, align 8, !tbaa !103
  %57 = tail call fastcc zeroext i8 @open_file(ptr noundef nonnull %23), !range !121
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  tail call fastcc void @open_file_failed(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 0)
  br label %66

60:                                               ; preds = %54
  %61 = load i32, ptr %55, align 8, !tbaa !103
  %62 = tail call ptr @fdopen_unlocked(i32 noundef %61, ptr noundef nonnull @.str.4) #20
  %63 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2, i64 %36, i32 1
  %64 = tail call i32 @md5_stream(ptr noundef %62, ptr noundef nonnull %63) #20
  %65 = tail call i32 @fclose(ptr noundef %62)
  store i32 %56, ptr %55, align 8, !tbaa !103
  br label %66

66:                                               ; preds = %60, %59
  br i1 %58, label %70, label %67

67:                                               ; preds = %66, %47
  %68 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 9, i32 8
  %69 = load i64, ptr %68, align 8, !tbaa !159
  store i64 %69, ptr %40, align 8, !tbaa !203
  br label %70

70:                                               ; preds = %31, %22, %27, %66, %67
  %71 = phi i32 [ 0, %67 ], [ 1, %66 ], [ 7, %27 ], [ 7, %22 ], [ 7, %31 ]
  switch i32 %71, label %84 [
    i32 0, label %72
    i32 7, label %72
  ]

72:                                               ; preds = %70, %70
  %73 = getelementptr inbounds %struct._cpp_file, ptr %23, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !65
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %22, !llvm.loop !204

76:                                               ; preds = %72, %16
  %77 = load i64, ptr %18, align 8, !tbaa !165
  %78 = shl i64 %77, 5
  %79 = or disjoint i64 %78, 16
  %80 = getelementptr inbounds %struct.pchf_data, ptr %18, i64 0, i32 2
  tail call void @spec_qsort(ptr noundef nonnull %80, i64 noundef %77, i64 noundef 32, ptr noundef nonnull @pchf_save_compare) #20
  %81 = tail call i64 @fwrite(ptr noundef nonnull %18, i64 noundef %79, i64 noundef 1, ptr noundef %1)
  %82 = icmp eq i64 %81, 1
  %83 = zext i1 %82 to i8
  br label %84

84:                                               ; preds = %70, %76
  %85 = phi i8 [ %83, %76 ], [ 0, %70 ]
  ret i8 %85
}

declare ptr @md5_buffer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @open_file(ptr nocapture noundef %0) unnamed_addr #3 !prof !71 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = load i8, ptr %3, align 1, !tbaa !100
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6, !prof !78

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 256, i32 noundef 438) #20
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 10
  store i32 %9, ptr %10, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 10
  %12 = icmp eq i32 %9, -1
  br i1 %12, label %27, label %13, !prof !78

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 9
  %15 = tail call i32 @fstat(i32 noundef %9, ptr noundef nonnull %14) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24, !prof !94

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 9, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !206
  %20 = and i32 %19, 61440
  %21 = icmp eq i32 %20, 16384
  br i1 %21, label %22, label %35, !prof !78

22:                                               ; preds = %17
  %23 = tail call ptr @__errno_location() #22
  store i32 2, ptr %23, align 4, !tbaa !69
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, ptr %11, align 8, !tbaa !103
  %26 = tail call i32 @close(i32 noundef %25) #20
  store i32 -1, ptr %11, align 8, !tbaa !103
  br label %32

27:                                               ; preds = %8
  %28 = tail call ptr @__errno_location() #22
  %29 = load i32, ptr %28, align 4, !tbaa !69
  %30 = icmp eq i32 %29, 20
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 2, ptr %28, align 4, !tbaa !69
  br label %32

32:                                               ; preds = %27, %31, %24
  %33 = tail call ptr @__errno_location() #22
  %34 = load i32, ptr %33, align 4, !tbaa !69
  br label %35

35:                                               ; preds = %17, %32
  %36 = phi i32 [ %34, %32 ], [ 0, %17 ]
  %37 = phi i8 [ 0, %32 ], [ 1, %17 ]
  %38 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 11
  store i32 %36, ptr %38, align 4, !tbaa !72
  ret i8 %37
}

declare ptr @fdopen_unlocked(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @md5_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal i32 @pchf_save_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !prof !64 {
  %3 = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(32) %0, ptr noundef nonnull dereferenceable(32) %1, i64 noundef 32) #21
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @_cpp_read_file_entries(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !64 {
  %3 = alloca %struct.pchf_data, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #20
  %4 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 16, i64 noundef 1, ptr noundef %1)
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !165
  %8 = shl i64 %7, 5
  %9 = or disjoint i64 %8, 16
  %10 = tail call ptr @xmalloc(i64 noundef %9) #20
  store ptr %10, ptr @pchf, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.pchf_data, ptr %10, i64 0, i32 2
  %12 = tail call i64 @fread(ptr noundef nonnull %11, i64 noundef 32, i64 noundef %7, ptr noundef %1)
  %13 = icmp eq i64 %12, %7
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i8 [ 0, %2 ], [ %14, %6 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #20
  ret i8 %16
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @append_file_to_dir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !71 !PGOFuncName !207 {
  %3 = getelementptr inbounds %struct.cpp_dir, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = zext i32 %4 to i64
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %7 = add nuw nsw i64 %5, 1
  %8 = add i64 %6, 1
  %9 = add i64 %8, %7
  %10 = tail call ptr @xmalloc(i64 noundef %9) #20
  %11 = getelementptr inbounds %struct.cpp_dir, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %12, i64 %5, i1 false), !prof !208
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %20, label %14, !prof !94

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %10, i64 %5
  %16 = getelementptr i8, ptr %15, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !100
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i8 47, ptr %15, align 1, !tbaa !100
  br label %20

20:                                               ; preds = %19, %14, %2
  %21 = phi i64 [ %7, %19 ], [ %5, %14 ], [ 0, %2 ]
  %22 = getelementptr inbounds i8, ptr %10, i64 %21
  %23 = add i64 %6, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %0, i64 %23, i1 false), !prof !209
  ret ptr %10
}

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @read_name_map(ptr nocapture noundef %0) unnamed_addr #3 !prof !64 {
  %2 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !109
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 12
  %6 = alloca i8, i64 %5, align 16
  %7 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr align 1 %8, i64 %4, i1 false)
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %6, i64 %4
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !100
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %4, 1
  store i8 47, ptr %11, align 1, !tbaa !100
  br label %17

17:                                               ; preds = %15, %10, %1
  %18 = phi i64 [ %16, %15 ], [ %4, %10 ], [ 0, %1 ]
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %19, ptr noundef nonnull align 1 dereferenceable(11) @read_name_map.FILE_NAME_MAP_FILE, i64 11, i1 false) #20
  %20 = call ptr @fopen_unlocked(ptr noundef nonnull %6, ptr noundef nonnull @.str.5) #20
  %21 = call ptr @xmalloc(i64 noundef 72) #20
  %22 = getelementptr inbounds %struct.cpp_dir, ptr %0, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !107
  %23 = icmp eq ptr %20, null
  br i1 %23, label %84, label %24

24:                                               ; preds = %17
  %25 = call i32 @getc(ptr noundef nonnull %20)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %81, label %27

27:                                               ; preds = %24, %76
  %28 = phi i32 [ %79, %76 ], [ %25, %24 ]
  %29 = phi i64 [ %78, %76 ], [ 9, %24 ]
  %30 = phi i64 [ %77, %76 ], [ 0, %24 ]
  %31 = and i32 %28, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !210
  %35 = and i16 %34, 3072
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %76, !llvm.loop !211

37:                                               ; preds = %27
  %38 = add i64 %30, 2
  %39 = icmp ugt i64 %38, %29
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = add i64 %29, 8
  %42 = load ptr, ptr %22, align 8, !tbaa !107
  %43 = shl i64 %41, 3
  %44 = call ptr @xrealloc(ptr noundef %42, i64 noundef %43) #20
  store ptr %44, ptr %22, align 8, !tbaa !107
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i64 [ %41, %40 ], [ %29, %37 ]
  %47 = call fastcc ptr @read_filename_string(i32 noundef %28, ptr noundef nonnull %20)
  %48 = load ptr, ptr %22, align 8, !tbaa !107
  %49 = getelementptr inbounds ptr, ptr %48, i64 %30
  store ptr %47, ptr %49, align 8, !tbaa !65
  br label %50

50:                                               ; preds = %53, %45
  %51 = call i32 @getc(ptr noundef nonnull %20)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = and i32 %51, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !210
  %58 = and i16 %57, 1
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %50, !llvm.loop !212

60:                                               ; preds = %53, %50
  %61 = call fastcc ptr @read_filename_string(i32 noundef %51, ptr noundef nonnull %20)
  %62 = load i8, ptr %61, align 1, !tbaa !100
  %63 = icmp eq i8 %62, 47
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load ptr, ptr %22, align 8, !tbaa !107
  %66 = getelementptr ptr, ptr %65, i64 %30
  %67 = getelementptr ptr, ptr %66, i64 1
  store ptr %61, ptr %67, align 8, !tbaa !65
  br label %73

68:                                               ; preds = %60
  %69 = call fastcc ptr @append_file_to_dir(ptr noundef nonnull %61, ptr noundef %0)
  %70 = load ptr, ptr %22, align 8, !tbaa !107
  %71 = getelementptr ptr, ptr %70, i64 %30
  %72 = getelementptr ptr, ptr %71, i64 1
  store ptr %69, ptr %72, align 8, !tbaa !65
  call void @free(ptr noundef %61) #20
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %74
  %75 = call i32 @getc(ptr noundef nonnull %20)
  switch i32 %75, label %74 [
    i32 -1, label %76
    i32 10, label %76
  ]

76:                                               ; preds = %74, %74, %27
  %77 = phi i64 [ %30, %27 ], [ %38, %74 ], [ %38, %74 ]
  %78 = phi i64 [ %29, %27 ], [ %46, %74 ], [ %46, %74 ]
  %79 = call i32 @getc(ptr noundef nonnull %20)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %27

81:                                               ; preds = %76, %24
  %82 = phi i64 [ 0, %24 ], [ %77, %76 ]
  %83 = call i32 @fclose(ptr noundef nonnull %20)
  br label %84

84:                                               ; preds = %81, %17
  %85 = phi i64 [ %82, %81 ], [ 0, %17 ]
  %86 = load ptr, ptr %22, align 8, !tbaa !107
  %87 = getelementptr inbounds ptr, ptr %86, i64 %85
  store ptr null, ptr %87, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @make_cpp_dir(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !64 {
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = tail call i32 @htab_hash_string(ptr noundef %1) #20
  %7 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef %1, i32 noundef %6, i32 noundef 1) #20
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !213

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.file_hash_entry, ptr %10, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  br label %52

19:                                               ; preds = %8
  %20 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #20
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  store ptr %22, ptr %20, align 8, !tbaa !130
  %23 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !110
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !109
  %27 = trunc i32 %2 to i8
  %28 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 3
  store i8 %27, ptr %28, align 4, !tbaa !111
  %29 = getelementptr inbounds %struct.cpp_dir, ptr %20, i64 0, i32 7
  store ptr null, ptr %29, align 8, !tbaa !113
  %30 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 21
  %31 = load ptr, ptr %30, align 8, !tbaa !136
  %32 = load i32, ptr %31, align 8, !tbaa !137
  %33 = icmp eq i32 %32, 127
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = tail call ptr @xmalloc(i64 noundef 4080) #20
  store i32 0, ptr %35, align 8, !tbaa !137
  %36 = load ptr, ptr %30, align 8, !tbaa !136
  %37 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %35, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !139
  store ptr %35, ptr %30, align 8, !tbaa !136
  br label %38

38:                                               ; preds = %19, %34
  %39 = load ptr, ptr %30, align 8, !tbaa !136
  %40 = load i32, ptr %39, align 8, !tbaa !137
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !137
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %39, i64 0, i32 2, i64 %42
  %44 = load ptr, ptr %7, align 8, !tbaa !65
  store ptr %44, ptr %43, align 8, !tbaa !140
  %45 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %39, i64 0, i32 2, i64 %42, i32 1
  store ptr null, ptr %45, align 8, !tbaa !95
  %46 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !141
  %48 = getelementptr inbounds %struct.line_maps, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !142
  %50 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %39, i64 0, i32 2, i64 %42, i32 2
  store i32 %49, ptr %50, align 8, !tbaa !144
  %51 = getelementptr inbounds %struct.file_hash_entry_pool, ptr %39, i64 0, i32 2, i64 %42, i32 3
  store ptr %20, ptr %51, align 8, !tbaa !100
  store ptr %43, ptr %7, align 8, !tbaa !65
  br label %52

52:                                               ; preds = %38, %16
  %53 = phi ptr [ %18, %16 ], [ %20, %38 ]
  ret ptr %53
}

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #9

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @read_filename_string(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #3 !prof !64 {
  %3 = tail call ptr @xmalloc(i64 noundef 21) #20
  %4 = and i32 %0, 255
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !210
  %8 = and i16 %7, 3072
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = trunc i32 %0 to i8
  store i8 %11, ptr %3, align 1, !tbaa !100
  %12 = getelementptr inbounds i8, ptr %3, i64 1
  %13 = tail call i32 @getc(ptr noundef %1)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %46, label %15

15:                                               ; preds = %10, %38
  %16 = phi i32 [ %44, %38 ], [ %13, %10 ]
  %17 = phi ptr [ %43, %38 ], [ %12, %10 ]
  %18 = phi i32 [ %41, %38 ], [ 20, %10 ]
  %19 = phi ptr [ %39, %38 ], [ %3, %10 ]
  %20 = and i32 %16, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !210
  %24 = and i16 %23, 3072
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %15
  %27 = ptrtoint ptr %17 to i64
  %28 = ptrtoint ptr %19 to i64
  %29 = sub i64 %27, %28
  %30 = sext i32 %18 to i64
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = shl nsw i32 %18, 1
  %34 = or disjoint i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = tail call ptr @xrealloc(ptr noundef %19, i64 noundef %35) #20
  %37 = getelementptr inbounds i8, ptr %36, i64 %30
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi ptr [ %36, %32 ], [ %19, %26 ]
  %40 = phi ptr [ %37, %32 ], [ %17, %26 ]
  %41 = phi i32 [ %33, %32 ], [ %18, %26 ]
  %42 = trunc i32 %16 to i8
  store i8 %42, ptr %40, align 1, !tbaa !100
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = tail call i32 @getc(ptr noundef %1)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %15, !llvm.loop !214

46:                                               ; preds = %38, %15, %10, %2
  %47 = phi i32 [ %0, %2 ], [ -1, %10 ], [ %16, %15 ], [ -1, %38 ]
  %48 = phi ptr [ %3, %2 ], [ %3, %10 ], [ %19, %15 ], [ %39, %38 ]
  %49 = phi ptr [ %3, %2 ], [ %12, %10 ], [ %17, %15 ], [ %43, %38 ]
  store i8 0, ptr %49, align 1, !tbaa !100
  %50 = tail call i32 @ungetc(i32 noundef %47, ptr noundef %1)
  ret ptr %48
}

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @validate_pch(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #3 !prof !64 {
  %4 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  store ptr %2, ptr %4, align 8, !tbaa !115
  %6 = tail call fastcc zeroext i8 @open_file(ptr noundef %1), !range !121
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 49, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %2, i32 noundef %12) #20
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, ptr %11, align 8, !tbaa !103
  %19 = tail call i32 @close(i32 noundef %18) #20
  store i32 -1, ptr %11, align 8, !tbaa !103
  br label %20

20:                                               ; preds = %17, %8
  %21 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 11
  %22 = load i8, ptr %21, align 1, !tbaa !215
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !141
  %27 = getelementptr inbounds %struct.line_maps, ptr %26, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !216
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %24, %30
  %31 = phi i32 [ %34, %30 ], [ 1, %24 ]
  %32 = load ptr, ptr @stderr, align 8, !tbaa !65
  %33 = tail call i32 @putc(i32 noundef 46, ptr noundef %32)
  %34 = add nuw i32 %31, 1
  %35 = load ptr, ptr %25, align 8, !tbaa !141
  %36 = getelementptr inbounds %struct.line_maps, ptr %35, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !216
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %30, label %39, !llvm.loop !217

39:                                               ; preds = %30, %24
  %40 = load ptr, ptr @stderr, align 8, !tbaa !65
  %41 = and i32 %13, 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 120, i32 33
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.8, i32 noundef %43, ptr noundef %2) #23
  br label %45

45:                                               ; preds = %20, %39, %3
  %46 = phi i8 [ %15, %39 ], [ %15, %20 ], [ 0, %3 ]
  store ptr %5, ptr %4, align 8, !tbaa !115
  ret i8 %46
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #9

declare ptr @readdir(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @read_file(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !71 !PGOFuncName !218 {
  %3 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 16
  %4 = load i8, ptr %3, align 1, !tbaa !171
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %94, !prof !94

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 14
  %8 = load i8, ptr %7, align 1, !tbaa !202
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %94, !prof !94

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 11
  %12 = load i32, ptr %11, align 4, !tbaa !72
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %94, !prof !94

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !103
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22, !prof !78

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @open_file(ptr noundef %1), !range !121
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call fastcc void @open_file_failed(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %94

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !206
  %25 = and i32 %24, 61440
  %26 = icmp eq i32 %25, 24576
  br i1 %26, label %27, label %31, !prof !78

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.9, ptr noundef %29) #20
  br label %87

31:                                               ; preds = %22
  %32 = icmp ne i32 %25, 32768
  br i1 %32, label %36, label %33, !prof !78

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !159
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i64 [ %35, %33 ], [ 8192, %31 ]
  %38 = add nsw i64 %37, 1
  %39 = tail call ptr @xmalloc(i64 noundef %38) #20
  %40 = load i32, ptr %15, align 8, !tbaa !103
  %41 = tail call i64 @read(i32 noundef %40, ptr noundef %39, i64 noundef %37) #20
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %63, !prof !94

43:                                               ; preds = %36, %55
  %44 = phi i64 [ %61, %55 ], [ %41, %36 ]
  %45 = phi ptr [ %57, %55 ], [ %39, %36 ]
  %46 = phi i64 [ %56, %55 ], [ %37, %36 ]
  %47 = phi i64 [ %48, %55 ], [ 0, %36 ]
  %48 = add nuw nsw i64 %44, %47
  %49 = icmp eq i64 %48, %46
  br i1 %49, label %50, label %55, !prof !94

50:                                               ; preds = %43
  br i1 %32, label %51, label %63, !prof !78

51:                                               ; preds = %50
  %52 = shl nsw i64 %46, 1
  %53 = or disjoint i64 %52, 1
  %54 = tail call ptr @xrealloc(ptr noundef %45, i64 noundef %53) #20
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i64 [ %52, %51 ], [ %46, %43 ]
  %57 = phi ptr [ %54, %51 ], [ %45, %43 ]
  %58 = load i32, ptr %15, align 8, !tbaa !103
  %59 = getelementptr inbounds i8, ptr %57, i64 %48
  %60 = sub nsw i64 %56, %48
  %61 = tail call i64 @read(i32 noundef %58, ptr noundef nonnull %59, i64 noundef %60) #20
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %43, label %63, !prof !94, !llvm.loop !219

63:                                               ; preds = %55, %50, %36
  %64 = phi i64 [ %37, %36 ], [ %56, %55 ], [ %46, %50 ]
  %65 = phi ptr [ %39, %36 ], [ %57, %55 ], [ %45, %50 ]
  %66 = phi i64 [ %41, %36 ], [ %61, %55 ], [ %44, %50 ]
  %67 = phi i64 [ 0, %36 ], [ %48, %50 ], [ %48, %55 ]
  %68 = icmp slt i64 %66, 0
  br i1 %68, label %69, label %73, !prof !78

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !115
  %72 = tail call zeroext i8 @cpp_errno(ptr noundef %0, i32 noundef 3, ptr noundef %71) #20
  br label %87

73:                                               ; preds = %63
  %74 = icmp eq i64 %67, %64
  %75 = or i1 %32, %74
  br i1 %75, label %80, label %76, !prof !94

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !115
  %79 = tail call zeroext i8 (ptr, i32, ptr, ...) @cpp_error(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef %78) #20
  br label %80

80:                                               ; preds = %76, %73
  %81 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 53, i32 39
  %82 = load ptr, ptr %81, align 8, !tbaa !220
  %83 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 6
  %84 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 9, i32 8
  %85 = tail call ptr @_cpp_convert_input(ptr noundef %0, ptr noundef %82, ptr noundef %65, i64 noundef %64, i64 noundef %67, ptr noundef nonnull %83, ptr noundef nonnull %84) #20
  %86 = getelementptr inbounds %struct._cpp_file, ptr %1, i64 0, i32 5
  store ptr %85, ptr %86, align 8, !tbaa !166
  store i8 1, ptr %3, align 1, !tbaa !171
  br label %87

87:                                               ; preds = %27, %69, %80
  %88 = phi i8 [ 1, %27 ], [ 1, %69 ], [ 0, %80 ]
  store i8 %88, ptr %7, align 1, !tbaa !202
  %89 = load i32, ptr %15, align 8, !tbaa !103
  %90 = tail call i32 @close(i32 noundef %89) #20
  store i32 -1, ptr %15, align 8, !tbaa !103
  %91 = load i8, ptr %7, align 1, !tbaa !202
  %92 = icmp eq i8 %91, 0
  %93 = zext i1 %92 to i8
  br label %94

94:                                               ; preds = %6, %10, %2, %87, %21
  %95 = phi i8 [ %93, %87 ], [ 0, %21 ], [ 1, %2 ], [ 0, %10 ], [ 0, %6 ]
  ret i8 %95
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal fastcc void @destroy_cpp_file(ptr nocapture noundef %0) unnamed_addr #10 !prof !64 {
  %2 = getelementptr inbounds %struct._cpp_file, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !196
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #20
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8, !tbaa !105
  tail call void @free(ptr noundef %7) #20
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

declare zeroext i8 @cpp_errno(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_cpp_convert_input(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lbasename(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!63}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!35 = !{ptr @_cpp_find_file, ptr @htab_hash_string, i64 2}
!36 = !{ptr @_cpp_find_file, ptr @htab_find_slot_with_hash, i64 1}
!37 = !{ptr @_cpp_find_file, ptr @xcalloc, i64 1}
!38 = !{ptr @_cpp_find_file, ptr @xstrdup, i64 1}
!39 = !{ptr @_cpp_find_file, ptr @append_file_to_dir, i64 1}
!40 = !{ptr @_cpp_find_file, ptr @htab_find_with_hash, i64 1}
!41 = !{ptr @_cpp_find_file, ptr @strlen, i64 1}
!42 = !{ptr @_cpp_find_file, ptr @xmalloc, i64 1}
!43 = !{ptr @_cpp_find_file, ptr @stat, i64 1}
!44 = !{ptr @_cpp_find_file, ptr @free, i64 1}
!45 = !{ptr @_cpp_find_file, ptr @open_file, i64 1}
!46 = !{ptr @_cpp_stack_file, ptr @read_file, i64 1}
!47 = !{ptr @_cpp_stack_file, ptr @cpp_push_buffer, i64 1}
!48 = !{ptr @_cpp_stack_file, ptr @_cpp_do_file_change, i64 1}
!49 = !{ptr @_cpp_init_files, ptr @htab_create_alloc, i64 3}
!50 = !{ptr @_cpp_init_files, ptr @xmalloc, i64 1}
!51 = !{ptr @_cpp_init_files, ptr @_obstack_begin, i64 1}
!52 = !{ptr @cpp_change_file, ptr @_cpp_do_file_change, i64 1}
!53 = !{ptr @_cpp_pop_file_buffer, ptr @free, i64 1}
!54 = !{ptr @cpp_set_include_chains, ptr @strlen, i64 1}
!55 = !{ptr @open_file, ptr @open, i64 1}
!56 = !{ptr @open_file, ptr @fstat, i64 1}
!57 = !{ptr @append_file_to_dir, ptr @strlen, i64 1}
!58 = !{ptr @append_file_to_dir, ptr @xmalloc, i64 1}
!59 = !{ptr @read_file, ptr @xmalloc, i64 1}
!60 = !{ptr @read_file, ptr @read, i64 1}
!61 = !{ptr @read_file, ptr @_cpp_convert_input, i64 1}
!62 = !{ptr @read_file, ptr @close, i64 1}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !67, i64 0}
!71 = !{!"function_entry_count", i64 1}
!72 = !{!73, !70, i64 220}
!73 = !{!"_cpp_file", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !74, i64 72, !70, i64 216, !70, i64 220, !77, i64 224, !67, i64 226, !67, i64 227, !67, i64 228, !67, i64 229}
!74 = !{!"stat", !75, i64 0, !75, i64 8, !75, i64 16, !70, i64 24, !70, i64 28, !70, i64 32, !70, i64 36, !75, i64 40, !75, i64 48, !75, i64 56, !75, i64 64, !76, i64 72, !76, i64 88, !76, i64 104, !67, i64 120}
!75 = !{!"long", !67, i64 0}
!76 = !{!"timespec", !75, i64 0, !75, i64 8}
!77 = !{!"short", !67, i64 0}
!78 = !{!"branch_weights", i32 0, i32 1}
!79 = !{!80, !66, i64 280}
!80 = !{!"cpp_reader", !66, i64 0, !66, i64 8, !81, i64 16, !66, i64 40, !70, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !82, i64 80, !66, i64 136, !66, i64 144, !83, i64 152, !70, i64 176, !67, i64 180, !66, i64 184, !66, i64 192, !84, i64 200, !66, i64 264, !66, i64 272, !66, i64 280, !66, i64 288, !66, i64 296, !66, i64 304, !85, i64 312, !67, i64 400, !67, i64 401, !66, i64 408, !66, i64 416, !67, i64 424, !66, i64 432, !86, i64 440, !66, i64 472, !70, i64 480, !70, i64 484, !66, i64 488, !70, i64 496, !87, i64 504, !87, i64 528, !87, i64 552, !87, i64 576, !87, i64 600, !66, i64 624, !66, i64 632, !83, i64 640, !83, i64 664, !66, i64 688, !85, i64 696, !85, i64 784, !66, i64 872, !88, i64 880, !66, i64 1016, !66, i64 1024, !66, i64 1032, !89, i64 1040, !91, i64 1168, !67, i64 1200, !92, i64 1208, !66, i64 1240, !66, i64 1248, !66, i64 1256, !66, i64 1264, !70, i64 1272, !93, i64 1280, !66, i64 1296}
!81 = !{!"lexer_state", !67, i64 0, !67, i64 1, !67, i64 2, !67, i64 3, !67, i64 4, !67, i64 5, !67, i64 6, !67, i64 7, !67, i64 8, !67, i64 9, !67, i64 10, !70, i64 12, !67, i64 16, !67, i64 17}
!82 = !{!"cpp_context", !66, i64 0, !66, i64 8, !67, i64 16, !66, i64 32, !66, i64 40, !67, i64 48}
!83 = !{!"cpp_token", !70, i64 0, !70, i64 4, !77, i64 6, !67, i64 8}
!84 = !{!"cpp_dir", !66, i64 0, !66, i64 8, !70, i64 16, !67, i64 20, !67, i64 21, !66, i64 24, !66, i64 32, !66, i64 40, !75, i64 48, !75, i64 56}
!85 = !{!"obstack", !75, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !75, i64 40, !70, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !70, i64 80, !70, i64 80, !70, i64 80}
!86 = !{!"tokenrun", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24}
!87 = !{!"cset_converter", !66, i64 0, !66, i64 8, !70, i64 16}
!88 = !{!"cpp_callbacks", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !66, i64 96, !66, i64 104, !66, i64 112, !66, i64 120, !66, i64 128}
!89 = !{!"cpp_options", !70, i64 0, !70, i64 4, !67, i64 8, !67, i64 9, !67, i64 10, !67, i64 11, !67, i64 12, !67, i64 13, !67, i64 14, !67, i64 15, !67, i64 16, !67, i64 17, !67, i64 18, !67, i64 19, !67, i64 20, !67, i64 21, !67, i64 22, !67, i64 23, !67, i64 24, !67, i64 25, !67, i64 26, !67, i64 27, !67, i64 28, !67, i64 29, !67, i64 30, !67, i64 31, !67, i64 32, !67, i64 33, !67, i64 34, !67, i64 35, !67, i64 36, !67, i64 37, !67, i64 38, !67, i64 39, !67, i64 40, !67, i64 41, !67, i64 42, !66, i64 48, !66, i64 56, !66, i64 64, !70, i64 72, !67, i64 76, !67, i64 77, !90, i64 80, !75, i64 88, !75, i64 96, !75, i64 104, !75, i64 112, !67, i64 120, !67, i64 121, !67, i64 122, !67, i64 123, !67, i64 124}
!90 = !{!"", !70, i64 0, !67, i64 4, !67, i64 5, !67, i64 6, !67, i64 7}
!91 = !{!"spec_nodes", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24}
!92 = !{!"", !66, i64 0, !66, i64 8, !66, i64 16, !70, i64 24}
!93 = !{!"", !66, i64 0, !70, i64 8, !70, i64 12}
!94 = !{!"branch_weights", i32 1, i32 0}
!95 = !{!96, !66, i64 8}
!96 = !{!"file_hash_entry", !66, i64 0, !66, i64 8, !70, i64 16, !67, i64 24}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!67, !67, i64 0}
!101 = !{!80, !66, i64 0}
!102 = !{!73, !67, i64 228}
!103 = !{!73, !70, i64 216}
!104 = !{!73, !66, i64 64}
!105 = !{!73, !66, i64 0}
!106 = !{!80, !67, i64 1069}
!107 = !{!84, !66, i64 32}
!108 = distinct !{!108, !98, !99}
!109 = !{!84, !70, i64 16}
!110 = !{!84, !66, i64 8}
!111 = !{!84, !67, i64 20}
!112 = distinct !{!112, !99}
!113 = !{!84, !66, i64 40}
!114 = !{!80, !66, i64 304}
!115 = !{!73, !66, i64 8}
!116 = !{!80, !66, i64 944}
!117 = !{!80, !66, i64 264}
!118 = !{!73, !66, i64 32}
!119 = !{!"VP", i32 1, i64 1, i64 7, i64 1}
!120 = !{!74, !70, i64 24}
!121 = !{i8 0, i8 2}
!122 = distinct !{!122, !98, !99}
!123 = !{!73, !66, i64 16}
!124 = !{!80, !75, i64 352}
!125 = !{!80, !66, i64 336}
!126 = !{!80, !66, i64 344}
!127 = !{!80, !66, i64 328}
!128 = !{!80, !70, i64 360}
!129 = !{!80, !66, i64 320}
!130 = !{!84, !66, i64 0}
!131 = !{!80, !66, i64 960}
!132 = !{!89, !67, i64 76}
!133 = !{!80, !66, i64 192}
!134 = !{!80, !66, i64 184}
!135 = distinct !{!135, !98, !99}
!136 = !{!80, !66, i64 296}
!137 = !{!138, !70, i64 0}
!138 = !{!"file_hash_entry_pool", !70, i64 0, !66, i64 8, !67, i64 16}
!139 = !{!138, !66, i64 8}
!140 = !{!96, !66, i64 0}
!141 = !{!80, !66, i64 40}
!142 = !{!143, !70, i64 32}
!143 = !{!"line_maps", !66, i64 0, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20, !70, i64 24, !67, i64 28, !70, i64 32, !70, i64 36, !70, i64 40, !66, i64 48}
!144 = !{!96, !70, i64 16}
!145 = !{!143, !70, i64 36}
!146 = !{!147, !67, i64 98}
!147 = !{!"cpp_buffer", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !70, i64 48, !70, i64 52, !70, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !66, i64 88, !67, i64 96, !70, i64 97, !70, i64 97, !70, i64 97, !67, i64 98, !84, i64 104, !87, i64 168}
!148 = !{!80, !70, i64 1120}
!149 = !{!80, !67, i64 1124}
!150 = !{!80, !66, i64 688}
!151 = !{!80, !67, i64 1127}
!152 = !{!73, !67, i64 226}
!153 = !{!80, !67, i64 401}
!154 = !{!73, !77, i64 224}
!155 = !{!73, !66, i64 56}
!156 = !{!80, !66, i64 952}
!157 = !{!158, !67, i64 8}
!158 = !{!"pchf_data", !75, i64 0, !67, i64 8, !67, i64 16}
!159 = !{!73, !75, i64 120}
!160 = !{!161, !75, i64 0}
!161 = !{!"pchf_compare_data", !75, i64 0, !67, i64 8, !67, i64 24, !67, i64 25, !66, i64 32}
!162 = !{!161, !67, i64 24}
!163 = !{!161, !66, i64 32}
!164 = !{!161, !67, i64 25}
!165 = !{!158, !75, i64 0}
!166 = !{!73, !66, i64 40}
!167 = !{!168, !67, i64 24}
!168 = !{!"pchf_entry", !75, i64 0, !67, i64 8, !67, i64 24}
!169 = distinct !{!169, !98, !99}
!170 = !{!73, !75, i64 160}
!171 = !{!73, !67, i64 229}
!172 = distinct !{!172, !98, !99}
!173 = !{!80, !67, i64 1126}
!174 = !{!80, !67, i64 1078}
!175 = !{!80, !67, i64 1164}
!176 = !{!147, !66, i64 72}
!177 = !{!80, !67, i64 424}
!178 = !{!80, !66, i64 408}
!179 = !{!80, !67, i64 400}
!180 = !{!73, !66, i64 24}
!181 = distinct !{!181, !98, !99}
!182 = distinct !{!182, !98, !99}
!183 = !{!80, !66, i64 288}
!184 = distinct !{!184, !98, !99}
!185 = distinct !{!185, !98, !99}
!186 = !{!143, !66, i64 0}
!187 = !{!143, !70, i64 12}
!188 = !{!189, !66, i64 0}
!189 = !{!"line_map", !66, i64 0, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20, !67, i64 21, !70, i64 22}
!190 = !{!189, !70, i64 12}
!191 = !{!189, !70, i64 8}
!192 = !{!193, !66, i64 0}
!193 = !{!"report_missing_guard_data", !66, i64 0, !75, i64 8}
!194 = !{!193, !75, i64 8}
!195 = distinct !{!195, !98, !99}
!196 = !{!73, !66, i64 48}
!197 = !{!"branch_weights", i32 1, i32 127}
!198 = !{!"branch_weights", i32 127, i32 1}
!199 = distinct !{!199, !98, !99}
!200 = !{!147, !66, i64 64}
!201 = distinct !{!201, !98, !99}
!202 = !{!73, !67, i64 227}
!203 = !{!168, !75, i64 0}
!204 = distinct !{!204, !98, !99}
!205 = !{!"cpp_files.c;open_file"}
!206 = !{!73, !70, i64 96}
!207 = !{!"cpp_files.c;append_file_to_dir"}
!208 = !{!"VP", i32 1, i64 1, i64 0, i64 1}
!209 = !{!"VP", i32 1, i64 1, i64 8, i64 1}
!210 = !{!77, !77, i64 0}
!211 = distinct !{!211, !98, !99}
!212 = distinct !{!212, !98, !99}
!213 = distinct !{!213, !98, !99}
!214 = distinct !{!214, !98, !99}
!215 = !{!80, !67, i64 1057}
!216 = !{!143, !70, i64 24}
!217 = distinct !{!217, !98, !99}
!218 = !{!"cpp_files.c;read_file"}
!219 = distinct !{!219, !98, !99}
!220 = !{!80, !66, i64 1104}
