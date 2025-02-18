; ModuleID = 'cpp_directives-only.c'
source_filename = "cpp_directives-only.c"
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
%struct._cpp_dir_only_callbacks = type { ptr, ptr }
%struct.cpp_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }

@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #3
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
  %5 = tail call ptr @__ctype_toupper_loc() #3
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

; Function Attrs: cold nounwind uwtable
define dso_local void @_cpp_preprocess_dir_only(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %6 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %7 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %8 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %9 = getelementptr inbounds %struct._cpp_dir_only_callbacks, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %11 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  br label %12

12:                                               ; preds = %125, %2
  %13 = load ptr, ptr %0, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %13, i64 0, i32 7
  store i32 0, ptr %14, align 4, !tbaa !58
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %13, i64 0, i32 6
  store i32 0, ptr %15, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.cpp_buffer, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.cpp_buffer, ptr %13, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !62
  store ptr %17, ptr %13, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.cpp_buffer, ptr %13, i64 0, i32 13
  store i8 0, ptr %19, align 8, !tbaa !64
  %20 = load ptr, ptr %3, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.line_maps, ptr %20, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !66
  %23 = getelementptr inbounds %struct.cpp_buffer, ptr %13, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = icmp ult ptr %17, %24
  br i1 %25, label %26, label %246

26:                                               ; preds = %12, %234
  %27 = phi i32 [ %244, %234 ], [ 1, %12 ]
  %28 = phi ptr [ %242, %234 ], [ %17, %12 ]
  %29 = phi ptr [ %240, %234 ], [ %17, %12 ]
  %30 = phi i32 [ %239, %234 ], [ 10, %12 ]
  %31 = phi i32 [ %237, %234 ], [ 0, %12 ]
  %32 = phi i32 [ %243, %234 ], [ 1, %12 ]
  %33 = phi i32 [ %235, %234 ], [ %22, %12 ]
  %34 = load i8, ptr %28, align 1, !tbaa !69
  %35 = zext i8 %34 to i32
  %36 = icmp eq i8 %34, 92
  br i1 %36, label %37, label %83

37:                                               ; preds = %26, %37
  %38 = phi ptr [ %39, %37 ], [ %28, %26 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !69
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !70
  %44 = and i16 %43, 2048
  %45 = icmp ne i16 %44, 0
  %46 = icmp ult ptr %39, %24
  %47 = and i1 %46, %45
  br i1 %47, label %37, label %48, !llvm.loop !71

48:                                               ; preds = %37
  %49 = icmp eq i8 %40, 13
  %50 = getelementptr inbounds i8, ptr %38, i64 2
  %51 = select i1 %49, ptr %50, ptr %39
  %52 = load i8, ptr %51, align 1, !tbaa !69
  %53 = icmp ne i8 %52, 10
  %54 = icmp uge ptr %51, %24
  %55 = or i1 %54, %53
  br i1 %55, label %78, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %3, align 8, !tbaa !65
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !75
  %61 = add i32 %60, -1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.line_maps, ptr %57, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !66
  %65 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !76
  %67 = sub i32 %64, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 6
  %69 = load i8, ptr %68, align 2
  %70 = zext nneg i8 %69 to i32
  %71 = lshr i32 %67, %70
  %72 = getelementptr inbounds %struct.line_map, ptr %58, i64 %62, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !78
  %74 = add i32 %73, 1
  %75 = add i32 %74, %71
  %76 = tail call i32 @linemap_line_start(ptr noundef nonnull %57, i32 noundef %75, i32 noundef 0) #3
  %77 = add i32 %31, 1
  br label %78

78:                                               ; preds = %48, %56
  %79 = phi i32 [ 0, %56 ], [ %32, %48 ]
  %80 = phi i32 [ %77, %56 ], [ %31, %48 ]
  %81 = phi i32 [ %30, %56 ], [ 92, %48 ]
  %82 = phi ptr [ %51, %56 ], [ %28, %48 ]
  br i1 %55, label %83, label %234

83:                                               ; preds = %78, %26
  %84 = phi i32 [ %79, %78 ], [ %32, %26 ]
  %85 = phi i32 [ %80, %78 ], [ %31, %26 ]
  %86 = phi i32 [ %81, %78 ], [ %35, %26 ]
  %87 = phi ptr [ %82, %78 ], [ %28, %26 ]
  %88 = icmp eq i32 %30, 35
  %89 = and i32 %27, 30
  %90 = icmp eq i32 %89, 0
  %91 = and i1 %88, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %83
  %93 = icmp eq i32 %86, 35
  %94 = and i32 %27, 1
  %95 = icmp eq i32 %94, 0
  %96 = or i1 %95, %93
  br i1 %96, label %132, label %97

97:                                               ; preds = %92
  %98 = load i8, ptr %8, align 2, !tbaa !79
  %99 = icmp ne i8 %98, 0
  %100 = icmp eq ptr %29, %17
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %1, align 8, !tbaa !80
  %104 = ptrtoint ptr %29 to i64
  %105 = ptrtoint ptr %17 to i64
  %106 = sub i64 %104, %105
  tail call void %103(i32 noundef %85, ptr noundef %17, i64 noundef %106) #3
  br label %107

107:                                              ; preds = %102, %97
  store ptr %87, ptr %16, align 8, !tbaa !61
  store i8 1, ptr %19, align 8, !tbaa !64
  %108 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #3
  %109 = add nsw i32 %84, -1
  %110 = load ptr, ptr %18, align 8, !tbaa !62
  %111 = sext i32 %109 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, ptr %110, i64 %112
  store ptr %113, ptr %18, align 8, !tbaa !62
  %114 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef 0) #3
  %115 = load ptr, ptr %3, align 8, !tbaa !65
  %116 = getelementptr inbounds %struct.line_maps, ptr %115, i64 0, i32 8
  %117 = load i32, ptr %116, align 4, !tbaa !66
  %118 = getelementptr inbounds %struct.line_maps, ptr %115, i64 0, i32 7
  store i32 %117, ptr %118, align 8, !tbaa !82
  %119 = load ptr, ptr %0, align 8, !tbaa !41
  %120 = getelementptr inbounds %struct.cpp_buffer, ptr %119, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  %122 = getelementptr inbounds %struct.cpp_buffer, ptr %119, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !68
  %124 = icmp ult ptr %121, %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %107, %126, %294
  br label %12

126:                                              ; preds = %107
  %127 = load ptr, ptr %9, align 8, !tbaa !83
  tail call void %127(i32 noundef %117) #3
  br label %125

128:                                              ; preds = %83
  %129 = icmp eq i32 %30, 47
  %130 = and i1 %129, %90
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  switch i32 %86, label %132 [
    i32 47, label %134
    i32 42, label %134
  ]

132:                                              ; preds = %131, %92
  %133 = and i32 %27, -32
  store i8 0, ptr %11, align 8, !tbaa !84
  br label %134

134:                                              ; preds = %132, %131, %128, %131
  %135 = phi i32 [ %27, %128 ], [ %27, %131 ], [ %27, %131 ], [ %133, %132 ]
  switch i32 %86, label %229 [
    i32 47, label %136
    i32 42, label %166
    i32 39, label %175
    i32 34, label %175
    i32 92, label %191
    i32 10, label %201
    i32 35, label %228
    i32 32, label %234
    i32 9, label %234
    i32 12, label %234
    i32 11, label %234
    i32 0, label %234
  ]

136:                                              ; preds = %134
  %137 = and i32 %135, 8
  %138 = icmp ne i32 %137, 0
  %139 = icmp eq i32 %30, 42
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = and i32 %135, -9
  br label %234

143:                                              ; preds = %136
  %144 = and i32 %135, 30
  %145 = icmp eq i32 %144, 0
  %146 = icmp eq i32 %30, 47
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = or i32 %135, 16
  br label %234

150:                                              ; preds = %143
  br i1 %145, label %151, label %234

151:                                              ; preds = %150
  %152 = load ptr, ptr %3, align 8, !tbaa !65
  %153 = getelementptr inbounds %struct.line_maps, ptr %152, i64 0, i32 9
  %154 = load i32, ptr %153, align 8, !tbaa !85
  %155 = icmp ult i32 %84, %154
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = tail call i32 @linemap_position_for_column(ptr noundef %152, i32 noundef %84) #3
  br label %234

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.line_maps, ptr %152, i64 0, i32 8
  %160 = load i32, ptr %159, align 4, !tbaa !66
  %161 = add i32 %160, %84
  %162 = getelementptr inbounds %struct.line_maps, ptr %152, i64 0, i32 7
  %163 = load i32, ptr %162, align 8, !tbaa !82
  %164 = icmp ult i32 %161, %163
  br i1 %164, label %234, label %165

165:                                              ; preds = %158
  store i32 %161, ptr %162, align 8, !tbaa !82
  br label %234

166:                                              ; preds = %134
  %167 = and i32 %135, 30
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %234

169:                                              ; preds = %166
  %170 = icmp eq i32 %30, 47
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = or disjoint i32 %135, 8
  br label %234

173:                                              ; preds = %169
  %174 = and i32 %135, -32
  store i8 0, ptr %6, align 8, !tbaa !84
  br label %234

175:                                              ; preds = %134, %134
  %176 = icmp eq i32 %86, 34
  %177 = select i1 %176, i32 2, i32 4
  %178 = and i32 %135, 30
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = and i32 %135, -32
  %182 = or disjoint i32 %181, %177
  store i8 0, ptr %5, align 8, !tbaa !84
  br label %234

183:                                              ; preds = %175
  %184 = and i32 %135, %177
  %185 = icmp ne i32 %184, 0
  %186 = icmp ne i32 %30, 92
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %187, label %188, label %234

188:                                              ; preds = %183
  %189 = xor i32 %177, -1
  %190 = and i32 %135, %189
  br label %234

191:                                              ; preds = %134
  %192 = and i32 %135, 6
  %193 = icmp ne i32 %192, 0
  %194 = icmp eq i32 %30, 92
  %195 = select i1 %193, i1 %194, i1 false
  %196 = select i1 %195, i32 0, i32 92
  %197 = and i32 %135, 30
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %234

199:                                              ; preds = %191
  %200 = and i32 %135, -32
  store i8 0, ptr %4, align 8, !tbaa !84
  br label %234

201:                                              ; preds = %134
  %202 = load ptr, ptr %3, align 8, !tbaa !65
  %203 = load ptr, ptr %202, align 8, !tbaa !74
  %204 = getelementptr inbounds %struct.line_maps, ptr %202, i64 0, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !75
  %206 = add i32 %205, -1
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.line_maps, ptr %202, i64 0, i32 8
  %209 = load i32, ptr %208, align 4, !tbaa !66
  %210 = getelementptr inbounds %struct.line_map, ptr %203, i64 %207, i32 2
  %211 = load i32, ptr %210, align 4, !tbaa !76
  %212 = sub i32 %209, %211
  %213 = getelementptr inbounds %struct.line_map, ptr %203, i64 %207, i32 6
  %214 = load i8, ptr %213, align 2
  %215 = zext nneg i8 %214 to i32
  %216 = lshr i32 %212, %215
  %217 = getelementptr inbounds %struct.line_map, ptr %203, i64 %207, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !78
  %219 = add i32 %218, 1
  %220 = add i32 %219, %216
  %221 = tail call i32 @linemap_line_start(ptr noundef nonnull %202, i32 noundef %220, i32 noundef 0) #3
  %222 = add i32 %85, 1
  %223 = and i32 %135, -23
  %224 = lshr i32 %135, 3
  %225 = and i32 %224, 1
  %226 = xor i32 %225, 1
  %227 = or i32 %226, %223
  br label %234

228:                                              ; preds = %134
  br label %234

229:                                              ; preds = %134
  %230 = and i32 %135, 30
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = and i32 %135, -32
  store i8 0, ptr %7, align 8, !tbaa !84
  br label %234

234:                                              ; preds = %134, %134, %134, %134, %201, %180, %188, %183, %156, %165, %158, %78, %228, %148, %150, %141, %171, %173, %166, %199, %191, %134, %232, %229
  %235 = phi i32 [ %33, %78 ], [ %33, %229 ], [ %33, %232 ], [ %33, %134 ], [ %33, %228 ], [ %33, %191 ], [ %33, %199 ], [ %33, %166 ], [ %33, %171 ], [ %33, %173 ], [ %33, %141 ], [ %33, %148 ], [ %33, %150 ], [ %157, %156 ], [ %161, %165 ], [ %161, %158 ], [ %33, %183 ], [ %33, %188 ], [ %33, %180 ], [ %33, %201 ], [ %33, %134 ], [ %33, %134 ], [ %33, %134 ], [ %33, %134 ]
  %236 = phi i32 [ %79, %78 ], [ %84, %229 ], [ %84, %232 ], [ %84, %134 ], [ %84, %228 ], [ %84, %191 ], [ %84, %199 ], [ %84, %166 ], [ %84, %171 ], [ %84, %173 ], [ %84, %141 ], [ %84, %148 ], [ %84, %150 ], [ %84, %156 ], [ %84, %165 ], [ %84, %158 ], [ %84, %183 ], [ %84, %188 ], [ %84, %180 ], [ 0, %201 ], [ %84, %134 ], [ %84, %134 ], [ %84, %134 ], [ %84, %134 ]
  %237 = phi i32 [ %80, %78 ], [ %85, %229 ], [ %85, %232 ], [ %85, %134 ], [ %85, %228 ], [ %85, %191 ], [ %85, %199 ], [ %85, %166 ], [ %85, %171 ], [ %85, %173 ], [ %85, %141 ], [ %85, %148 ], [ %85, %150 ], [ %85, %156 ], [ %85, %165 ], [ %85, %158 ], [ %85, %183 ], [ %85, %188 ], [ %85, %180 ], [ %222, %201 ], [ %85, %134 ], [ %85, %134 ], [ %85, %134 ], [ %85, %134 ]
  %238 = phi i32 [ %27, %78 ], [ %135, %229 ], [ %233, %232 ], [ %135, %134 ], [ %135, %228 ], [ %135, %191 ], [ %200, %199 ], [ %135, %166 ], [ %172, %171 ], [ %174, %173 ], [ %142, %141 ], [ %149, %148 ], [ %135, %150 ], [ %135, %156 ], [ %135, %165 ], [ %135, %158 ], [ %135, %183 ], [ %190, %188 ], [ %182, %180 ], [ %227, %201 ], [ %135, %134 ], [ %135, %134 ], [ %135, %134 ], [ %135, %134 ]
  %239 = phi i32 [ %81, %78 ], [ %86, %229 ], [ %86, %232 ], [ %86, %134 ], [ 35, %228 ], [ %196, %191 ], [ %196, %199 ], [ 42, %166 ], [ 42, %171 ], [ 42, %173 ], [ 0, %141 ], [ 47, %148 ], [ 47, %150 ], [ 47, %156 ], [ 47, %165 ], [ 47, %158 ], [ %86, %183 ], [ %86, %188 ], [ %86, %180 ], [ 10, %201 ], [ %86, %134 ], [ %86, %134 ], [ %86, %134 ], [ %86, %134 ]
  %240 = phi ptr [ %29, %78 ], [ %29, %229 ], [ %29, %232 ], [ %29, %134 ], [ %87, %228 ], [ %29, %191 ], [ %29, %199 ], [ %29, %166 ], [ %29, %171 ], [ %29, %173 ], [ %29, %141 ], [ %29, %148 ], [ %29, %150 ], [ %29, %156 ], [ %29, %165 ], [ %29, %158 ], [ %29, %183 ], [ %29, %188 ], [ %29, %180 ], [ %29, %201 ], [ %29, %134 ], [ %29, %134 ], [ %29, %134 ], [ %29, %134 ]
  %241 = phi ptr [ %82, %78 ], [ %87, %229 ], [ %87, %232 ], [ %87, %134 ], [ %87, %228 ], [ %87, %191 ], [ %87, %199 ], [ %87, %166 ], [ %87, %171 ], [ %87, %173 ], [ %87, %141 ], [ %87, %148 ], [ %87, %150 ], [ %87, %156 ], [ %87, %165 ], [ %87, %158 ], [ %87, %183 ], [ %87, %188 ], [ %87, %180 ], [ %87, %201 ], [ %87, %134 ], [ %87, %134 ], [ %87, %134 ], [ %87, %134 ]
  %242 = getelementptr inbounds i8, ptr %241, i64 1
  %243 = add nsw i32 %236, 1
  %244 = freeze i32 %238
  %245 = icmp ult ptr %242, %24
  br i1 %245, label %26, label %246, !llvm.loop !86

246:                                              ; preds = %234, %12
  %247 = phi i32 [ %22, %12 ], [ %235, %234 ]
  %248 = phi i32 [ 0, %12 ], [ %237, %234 ]
  %249 = phi ptr [ %17, %12 ], [ %242, %234 ]
  %250 = phi i32 [ 1, %12 ], [ %244, %234 ]
  %251 = and i32 %250, 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %246
  %254 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %247, i32 noundef 0, ptr noundef nonnull @.str) #3
  br label %255

255:                                              ; preds = %253, %246
  %256 = load i8, ptr %10, align 2, !tbaa !79
  %257 = icmp ne i8 %256, 0
  %258 = icmp eq ptr %249, %17
  %259 = or i1 %257, %258
  br i1 %259, label %294, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds i8, ptr %249, i64 -1
  %262 = load i8, ptr %261, align 1, !tbaa !69
  %263 = icmp eq i8 %262, 10
  br i1 %263, label %287, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds i8, ptr %249, i64 1
  %266 = load ptr, ptr %3, align 8, !tbaa !65
  %267 = load ptr, ptr %266, align 8, !tbaa !74
  %268 = getelementptr inbounds %struct.line_maps, ptr %266, i64 0, i32 2
  %269 = load i32, ptr %268, align 4, !tbaa !75
  %270 = add i32 %269, -1
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.line_maps, ptr %266, i64 0, i32 8
  %273 = load i32, ptr %272, align 4, !tbaa !66
  %274 = getelementptr inbounds %struct.line_map, ptr %267, i64 %271, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !76
  %276 = sub i32 %273, %275
  %277 = getelementptr inbounds %struct.line_map, ptr %267, i64 %271, i32 6
  %278 = load i8, ptr %277, align 2
  %279 = zext nneg i8 %278 to i32
  %280 = lshr i32 %276, %279
  %281 = getelementptr inbounds %struct.line_map, ptr %267, i64 %271, i32 1
  %282 = load i32, ptr %281, align 8, !tbaa !78
  %283 = add i32 %282, 1
  %284 = add i32 %283, %280
  %285 = tail call i32 @linemap_line_start(ptr noundef nonnull %266, i32 noundef %284, i32 noundef 0) #3
  %286 = add i32 %248, 1
  br label %287

287:                                              ; preds = %264, %260
  %288 = phi i32 [ %286, %264 ], [ %248, %260 ]
  %289 = phi ptr [ %265, %264 ], [ %249, %260 ]
  %290 = load ptr, ptr %1, align 8, !tbaa !80
  %291 = ptrtoint ptr %289 to i64
  %292 = ptrtoint ptr %17 to i64
  %293 = sub i64 %291, %292
  tail call void %290(i32 noundef %288, ptr noundef %17, i64 noundef %293) #3
  br label %294

294:                                              ; preds = %287, %255
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #3
  %295 = load ptr, ptr %0, align 8, !tbaa !41
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %125

297:                                              ; preds = %294
  ret void
}

declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @_cpp_get_fresh_line(ptr noundef) local_unnamed_addr #1

declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @linemap_position_for_column(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!58 = !{!59, !40, i64 52}
!59 = !{!"cpp_buffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !40, i64 97, !40, i64 97, !40, i64 97, !37, i64 98, !47, i64 104, !51, i64 168}
!60 = !{!59, !40, i64 48}
!61 = !{!59, !36, i64 16}
!62 = !{!59, !36, i64 8}
!63 = !{!59, !36, i64 0}
!64 = !{!59, !37, i64 96}
!65 = !{!42, !36, i64 40}
!66 = !{!67, !40, i64 36}
!67 = !{!"line_maps", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 48}
!68 = !{!59, !36, i64 32}
!69 = !{!37, !37, i64 0}
!70 = !{!46, !46, i64 0}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!67, !36, i64 0}
!75 = !{!67, !40, i64 12}
!76 = !{!77, !40, i64 12}
!77 = !{!"line_map", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 21, !40, i64 22}
!78 = !{!77, !40, i64 8}
!79 = !{!42, !37, i64 18}
!80 = !{!81, !36, i64 0}
!81 = !{!"_cpp_dir_only_callbacks", !36, i64 0, !36, i64 8}
!82 = !{!67, !40, i64 32}
!83 = !{!81, !36, i64 8}
!84 = !{!42, !37, i64 424}
!85 = !{!67, !40, i64 40}
!86 = distinct !{!86, !72, !73}
