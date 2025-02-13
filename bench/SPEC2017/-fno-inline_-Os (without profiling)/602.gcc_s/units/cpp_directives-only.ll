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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_cpp_preprocess_dir_only(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 28
  %5 = getelementptr inbounds %struct.cpp_reader, ptr %0, i64 0, i32 2, i32 2
  %6 = getelementptr inbounds %struct._cpp_dir_only_callbacks, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %113, %2
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !27
  %10 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 6
  store i32 0, ptr %10, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !31
  store ptr %12, ptr %8, align 8, !tbaa !32
  %14 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 13
  store i8 0, ptr %14, align 8, !tbaa !33
  %15 = getelementptr inbounds %struct.cpp_buffer, ptr %8, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp ult ptr %12, %16
  br i1 %17, label %18, label %279

18:                                               ; preds = %7
  %19 = load ptr, ptr %3, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.line_maps, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !36
  br label %22

22:                                               ; preds = %18, %224
  %23 = phi i32 [ %234, %224 ], [ 1, %18 ]
  %24 = phi ptr [ %232, %224 ], [ %12, %18 ]
  %25 = phi ptr [ %230, %224 ], [ %12, %18 ]
  %26 = phi i32 [ %229, %224 ], [ 10, %18 ]
  %27 = phi i32 [ %227, %224 ], [ 0, %18 ]
  %28 = phi i32 [ %233, %224 ], [ 1, %18 ]
  %29 = phi i32 [ %225, %224 ], [ %21, %18 ]
  %30 = load i8, ptr %24, align 1, !tbaa !38
  %31 = zext i8 %30 to i32
  %32 = icmp eq i8 %30, 92
  br i1 %32, label %33, label %74

33:                                               ; preds = %22, %33
  %34 = phi ptr [ %35, %33 ], [ %24, %22 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !38
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !39
  %40 = and i16 %39, 2048
  %41 = icmp ne i16 %40, 0
  %42 = icmp ult ptr %35, %16
  %43 = and i1 %42, %41
  br i1 %43, label %33, label %44, !llvm.loop !40

44:                                               ; preds = %33
  %45 = icmp eq i8 %36, 13
  %46 = getelementptr inbounds i8, ptr %34, i64 2
  %47 = select i1 %45, ptr %46, ptr %35
  %48 = load i8, ptr %47, align 1, !tbaa !38
  %49 = icmp eq i8 %48, 10
  %50 = icmp ult ptr %47, %16
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %74

52:                                               ; preds = %44
  %53 = load ptr, ptr %3, align 8, !tbaa !35
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.line_maps, ptr %53, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !43
  %57 = add i32 %56, -1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.line_maps, ptr %53, i64 0, i32 8
  %60 = load i32, ptr %59, align 4, !tbaa !36
  %61 = getelementptr inbounds %struct.line_map, ptr %54, i64 %58, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !44
  %63 = sub i32 %60, %62
  %64 = getelementptr inbounds %struct.line_map, ptr %54, i64 %58, i32 6
  %65 = load i8, ptr %64, align 2
  %66 = zext nneg i8 %65 to i32
  %67 = lshr i32 %63, %66
  %68 = getelementptr inbounds %struct.line_map, ptr %54, i64 %58, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !46
  %70 = add i32 %69, 1
  %71 = add i32 %70, %67
  %72 = tail call i32 @linemap_line_start(ptr noundef nonnull %53, i32 noundef %71, i32 noundef 0) #2
  %73 = add i32 %27, 1
  br label %224

74:                                               ; preds = %44, %22
  %75 = phi i32 [ %31, %22 ], [ 92, %44 ]
  %76 = icmp eq i32 %26, 35
  %77 = and i32 %23, 30
  %78 = icmp eq i32 %77, 0
  %79 = and i1 %76, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %74
  %81 = icmp eq i32 %75, 35
  %82 = and i32 %23, 1
  %83 = icmp eq i32 %82, 0
  %84 = or i1 %83, %81
  br i1 %84, label %121, label %85

85:                                               ; preds = %80
  %86 = load i8, ptr %5, align 2, !tbaa !47
  %87 = icmp ne i8 %86, 0
  %88 = icmp eq ptr %25, %12
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %1, align 8, !tbaa !48
  %92 = ptrtoint ptr %25 to i64
  %93 = ptrtoint ptr %12 to i64
  %94 = sub i64 %92, %93
  tail call void %91(i32 noundef %27, ptr noundef %12, i64 noundef %94) #2
  br label %95

95:                                               ; preds = %90, %85
  store ptr %24, ptr %11, align 8, !tbaa !30
  store i8 1, ptr %14, align 8, !tbaa !33
  %96 = tail call zeroext i8 @_cpp_get_fresh_line(ptr noundef nonnull %0) #2
  %97 = add nsw i32 %28, -1
  %98 = load ptr, ptr %13, align 8, !tbaa !31
  %99 = sext i32 %97 to i64
  %100 = sub nsw i64 0, %99
  %101 = getelementptr inbounds i8, ptr %98, i64 %100
  store ptr %101, ptr %13, align 8, !tbaa !31
  %102 = tail call i32 @_cpp_handle_directive(ptr noundef nonnull %0, i32 noundef 0) #2
  %103 = load ptr, ptr %3, align 8, !tbaa !35
  %104 = getelementptr inbounds %struct.line_maps, ptr %103, i64 0, i32 8
  %105 = load i32, ptr %104, align 4, !tbaa !36
  %106 = getelementptr inbounds %struct.line_maps, ptr %103, i64 0, i32 7
  store i32 %105, ptr %106, align 8, !tbaa !50
  %107 = load ptr, ptr %0, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct.cpp_buffer, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !30
  %110 = getelementptr inbounds %struct.cpp_buffer, ptr %107, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !34
  %112 = icmp ult ptr %109, %111
  br i1 %112, label %114, label %113

113:                                              ; preds = %95, %114, %279
  br label %7

114:                                              ; preds = %95
  %115 = load ptr, ptr %6, align 8, !tbaa !51
  tail call void %115(i32 noundef %105) #2
  br label %113

116:                                              ; preds = %74
  %117 = icmp eq i32 %26, 47
  %118 = and i1 %117, %78
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = trunc i32 %75 to i8
  switch i8 %120, label %121 [
    i8 47, label %123
    i8 42, label %123
  ]

121:                                              ; preds = %119, %80
  %122 = and i32 %23, -32
  store i8 0, ptr %4, align 8, !tbaa !52
  br label %123

123:                                              ; preds = %121, %116, %119, %119
  %124 = phi i32 [ %23, %119 ], [ %23, %116 ], [ %23, %119 ], [ %122, %121 ]
  %125 = trunc i32 %75 to i8
  switch i8 %125, label %219 [
    i8 47, label %126
    i8 42, label %156
    i8 39, label %165
    i8 34, label %165
    i8 92, label %181
    i8 10, label %191
    i8 35, label %218
    i8 32, label %224
    i8 9, label %224
    i8 12, label %224
    i8 11, label %224
    i8 0, label %224
  ]

126:                                              ; preds = %123
  %127 = and i32 %124, 8
  %128 = icmp ne i32 %127, 0
  %129 = icmp eq i32 %26, 42
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = and i32 %124, -9
  br label %224

133:                                              ; preds = %126
  %134 = and i32 %124, 30
  %135 = icmp eq i32 %134, 0
  %136 = icmp eq i32 %26, 47
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = or i32 %124, 16
  br label %224

140:                                              ; preds = %133
  br i1 %135, label %141, label %224

141:                                              ; preds = %140
  %142 = load ptr, ptr %3, align 8, !tbaa !35
  %143 = getelementptr inbounds %struct.line_maps, ptr %142, i64 0, i32 9
  %144 = load i32, ptr %143, align 8, !tbaa !53
  %145 = icmp ult i32 %28, %144
  br i1 %145, label %148, label %146

146:                                              ; preds = %141
  %147 = tail call i32 @linemap_position_for_column(ptr noundef nonnull %142, i32 noundef %28) #2
  br label %224

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.line_maps, ptr %142, i64 0, i32 8
  %150 = load i32, ptr %149, align 4, !tbaa !36
  %151 = add i32 %150, %28
  %152 = getelementptr inbounds %struct.line_maps, ptr %142, i64 0, i32 7
  %153 = load i32, ptr %152, align 8, !tbaa !50
  %154 = icmp ult i32 %151, %153
  br i1 %154, label %224, label %155

155:                                              ; preds = %148
  store i32 %151, ptr %152, align 8, !tbaa !50
  br label %224

156:                                              ; preds = %123
  %157 = and i32 %124, 30
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %224

159:                                              ; preds = %156
  %160 = icmp eq i32 %26, 47
  br i1 %160, label %161, label %163

161:                                              ; preds = %159
  %162 = or disjoint i32 %124, 8
  br label %224

163:                                              ; preds = %159
  %164 = and i32 %124, -32
  store i8 0, ptr %4, align 8, !tbaa !52
  br label %224

165:                                              ; preds = %123, %123
  %166 = icmp eq i32 %75, 34
  %167 = select i1 %166, i32 2, i32 4
  %168 = and i32 %124, 30
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = and i32 %124, -32
  %172 = or disjoint i32 %171, %167
  store i8 0, ptr %4, align 8, !tbaa !52
  br label %224

173:                                              ; preds = %165
  %174 = and i32 %124, %167
  %175 = icmp ne i32 %174, 0
  %176 = icmp ne i32 %26, 92
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %224

178:                                              ; preds = %173
  %179 = xor i32 %167, -1
  %180 = and i32 %124, %179
  br label %224

181:                                              ; preds = %123
  %182 = and i32 %124, 6
  %183 = icmp ne i32 %182, 0
  %184 = icmp eq i32 %26, 92
  %185 = select i1 %183, i1 %184, i1 false
  %186 = select i1 %185, i32 0, i32 92
  %187 = and i32 %124, 30
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %224

189:                                              ; preds = %181
  %190 = and i32 %124, -32
  store i8 0, ptr %4, align 8, !tbaa !52
  br label %224

191:                                              ; preds = %123
  %192 = load ptr, ptr %3, align 8, !tbaa !35
  %193 = load ptr, ptr %192, align 8, !tbaa !42
  %194 = getelementptr inbounds %struct.line_maps, ptr %192, i64 0, i32 2
  %195 = load i32, ptr %194, align 4, !tbaa !43
  %196 = add i32 %195, -1
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.line_maps, ptr %192, i64 0, i32 8
  %199 = load i32, ptr %198, align 4, !tbaa !36
  %200 = getelementptr inbounds %struct.line_map, ptr %193, i64 %197, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !44
  %202 = sub i32 %199, %201
  %203 = getelementptr inbounds %struct.line_map, ptr %193, i64 %197, i32 6
  %204 = load i8, ptr %203, align 2
  %205 = zext nneg i8 %204 to i32
  %206 = lshr i32 %202, %205
  %207 = getelementptr inbounds %struct.line_map, ptr %193, i64 %197, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !46
  %209 = add i32 %208, 1
  %210 = add i32 %209, %206
  %211 = tail call i32 @linemap_line_start(ptr noundef nonnull %192, i32 noundef %210, i32 noundef 0) #2
  %212 = add i32 %27, 1
  %213 = and i32 %124, -23
  %214 = lshr i32 %124, 3
  %215 = and i32 %214, 1
  %216 = xor i32 %215, 1
  %217 = or i32 %216, %213
  br label %224

218:                                              ; preds = %123
  br label %224

219:                                              ; preds = %123
  %220 = and i32 %124, 30
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = and i32 %124, -32
  store i8 0, ptr %4, align 8, !tbaa !52
  br label %224

224:                                              ; preds = %52, %191, %170, %178, %173, %146, %155, %148, %218, %138, %140, %131, %161, %163, %156, %189, %181, %123, %123, %123, %123, %123, %222, %219
  %225 = phi i32 [ %29, %52 ], [ %29, %219 ], [ %29, %222 ], [ %29, %123 ], [ %29, %123 ], [ %29, %123 ], [ %29, %123 ], [ %29, %123 ], [ %29, %218 ], [ %29, %181 ], [ %29, %189 ], [ %29, %156 ], [ %29, %161 ], [ %29, %163 ], [ %29, %131 ], [ %29, %138 ], [ %29, %140 ], [ %147, %146 ], [ %151, %155 ], [ %151, %148 ], [ %29, %173 ], [ %29, %178 ], [ %29, %170 ], [ %29, %191 ]
  %226 = phi i32 [ 0, %52 ], [ %28, %219 ], [ %28, %222 ], [ %28, %123 ], [ %28, %123 ], [ %28, %123 ], [ %28, %123 ], [ %28, %123 ], [ %28, %218 ], [ %28, %181 ], [ %28, %189 ], [ %28, %156 ], [ %28, %161 ], [ %28, %163 ], [ %28, %131 ], [ %28, %138 ], [ %28, %140 ], [ %28, %146 ], [ %28, %155 ], [ %28, %148 ], [ %28, %173 ], [ %28, %178 ], [ %28, %170 ], [ 0, %191 ]
  %227 = phi i32 [ %73, %52 ], [ %27, %219 ], [ %27, %222 ], [ %27, %123 ], [ %27, %123 ], [ %27, %123 ], [ %27, %123 ], [ %27, %123 ], [ %27, %218 ], [ %27, %181 ], [ %27, %189 ], [ %27, %156 ], [ %27, %161 ], [ %27, %163 ], [ %27, %131 ], [ %27, %138 ], [ %27, %140 ], [ %27, %146 ], [ %27, %155 ], [ %27, %148 ], [ %27, %173 ], [ %27, %178 ], [ %27, %170 ], [ %212, %191 ]
  %228 = phi i32 [ %23, %52 ], [ %124, %219 ], [ %223, %222 ], [ %124, %123 ], [ %124, %123 ], [ %124, %123 ], [ %124, %123 ], [ %124, %123 ], [ %124, %218 ], [ %124, %181 ], [ %190, %189 ], [ %124, %156 ], [ %162, %161 ], [ %164, %163 ], [ %132, %131 ], [ %139, %138 ], [ %124, %140 ], [ %124, %146 ], [ %124, %155 ], [ %124, %148 ], [ %124, %173 ], [ %180, %178 ], [ %172, %170 ], [ %217, %191 ]
  %229 = phi i32 [ %26, %52 ], [ %75, %219 ], [ %75, %222 ], [ %75, %123 ], [ %75, %123 ], [ %75, %123 ], [ %75, %123 ], [ %75, %123 ], [ 35, %218 ], [ %186, %181 ], [ %186, %189 ], [ 42, %156 ], [ 42, %161 ], [ 42, %163 ], [ 0, %131 ], [ 47, %138 ], [ 47, %140 ], [ 47, %146 ], [ 47, %155 ], [ 47, %148 ], [ %75, %173 ], [ %75, %178 ], [ %75, %170 ], [ 10, %191 ]
  %230 = phi ptr [ %25, %52 ], [ %25, %219 ], [ %25, %222 ], [ %25, %123 ], [ %25, %123 ], [ %25, %123 ], [ %25, %123 ], [ %25, %123 ], [ %24, %218 ], [ %25, %181 ], [ %25, %189 ], [ %25, %156 ], [ %25, %161 ], [ %25, %163 ], [ %25, %131 ], [ %25, %138 ], [ %25, %140 ], [ %25, %146 ], [ %25, %155 ], [ %25, %148 ], [ %25, %173 ], [ %25, %178 ], [ %25, %170 ], [ %25, %191 ]
  %231 = phi ptr [ %47, %52 ], [ %24, %219 ], [ %24, %222 ], [ %24, %123 ], [ %24, %123 ], [ %24, %123 ], [ %24, %123 ], [ %24, %123 ], [ %24, %218 ], [ %24, %181 ], [ %24, %189 ], [ %24, %156 ], [ %24, %161 ], [ %24, %163 ], [ %24, %131 ], [ %24, %138 ], [ %24, %140 ], [ %24, %146 ], [ %24, %155 ], [ %24, %148 ], [ %24, %173 ], [ %24, %178 ], [ %24, %170 ], [ %24, %191 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  %233 = add nsw i32 %226, 1
  %234 = freeze i32 %228
  %235 = icmp ult ptr %232, %16
  br i1 %235, label %22, label %236, !llvm.loop !54

236:                                              ; preds = %224
  %237 = and i32 %234, 8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %236
  %240 = tail call zeroext i8 (ptr, i32, i32, i32, ptr, ...) @cpp_error_with_line(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %225, i32 noundef 0, ptr noundef nonnull @.str) #2
  br label %241

241:                                              ; preds = %239, %236
  %242 = load i8, ptr %5, align 2, !tbaa !47
  %243 = icmp ne i8 %242, 0
  %244 = icmp eq ptr %232, %12
  %245 = or i1 %243, %244
  br i1 %245, label %279, label %246

246:                                              ; preds = %241
  %247 = load i8, ptr %231, align 1, !tbaa !38
  %248 = icmp eq i8 %247, 10
  br i1 %248, label %272, label %249

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %231, i64 2
  %251 = load ptr, ptr %3, align 8, !tbaa !35
  %252 = load ptr, ptr %251, align 8, !tbaa !42
  %253 = getelementptr inbounds %struct.line_maps, ptr %251, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !43
  %255 = add i32 %254, -1
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.line_maps, ptr %251, i64 0, i32 8
  %258 = load i32, ptr %257, align 4, !tbaa !36
  %259 = getelementptr inbounds %struct.line_map, ptr %252, i64 %256, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !44
  %261 = sub i32 %258, %260
  %262 = getelementptr inbounds %struct.line_map, ptr %252, i64 %256, i32 6
  %263 = load i8, ptr %262, align 2
  %264 = zext nneg i8 %263 to i32
  %265 = lshr i32 %261, %264
  %266 = getelementptr inbounds %struct.line_map, ptr %252, i64 %256, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !46
  %268 = add i32 %267, 1
  %269 = add i32 %268, %265
  %270 = tail call i32 @linemap_line_start(ptr noundef nonnull %251, i32 noundef %269, i32 noundef 0) #2
  %271 = add i32 %227, 1
  br label %272

272:                                              ; preds = %249, %246
  %273 = phi i32 [ %271, %249 ], [ %227, %246 ]
  %274 = phi ptr [ %250, %249 ], [ %232, %246 ]
  %275 = load ptr, ptr %1, align 8, !tbaa !48
  %276 = ptrtoint ptr %274 to i64
  %277 = ptrtoint ptr %12 to i64
  %278 = sub i64 %276, %277
  tail call void %275(i32 noundef %273, ptr noundef %12, i64 noundef %278) #2
  br label %279

279:                                              ; preds = %7, %272, %241
  tail call void @_cpp_pop_buffer(ptr noundef nonnull %0) #2
  %280 = load ptr, ptr %0, align 8, !tbaa !6
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %113

282:                                              ; preds = %279
  ret void
}

; Function Attrs: optsize
declare i32 @linemap_line_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @_cpp_get_fresh_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @_cpp_handle_directive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @linemap_position_for_column(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @cpp_error_with_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_cpp_pop_buffer(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

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
!27 = !{!28, !12, i64 52}
!28 = !{!"cpp_buffer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !9, i64 96, !12, i64 97, !12, i64 97, !12, i64 97, !9, i64 98, !16, i64 104, !20, i64 168}
!29 = !{!28, !12, i64 48}
!30 = !{!28, !8, i64 16}
!31 = !{!28, !8, i64 8}
!32 = !{!28, !8, i64 0}
!33 = !{!28, !9, i64 96}
!34 = !{!28, !8, i64 32}
!35 = !{!7, !8, i64 40}
!36 = !{!37, !12, i64 36}
!37 = !{!"line_maps", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !9, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 48}
!38 = !{!9, !9, i64 0}
!39 = !{!15, !15, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!37, !8, i64 0}
!43 = !{!37, !12, i64 12}
!44 = !{!45, !12, i64 12}
!45 = !{!"line_map", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !9, i64 21, !12, i64 22}
!46 = !{!45, !12, i64 8}
!47 = !{!7, !9, i64 18}
!48 = !{!49, !8, i64 0}
!49 = !{!"_cpp_dir_only_callbacks", !8, i64 0, !8, i64 8}
!50 = !{!37, !12, i64 32}
!51 = !{!49, !8, i64 8}
!52 = !{!7, !9, i64 424}
!53 = !{!37, !12, i64 40}
!54 = distinct !{!54, !41}
