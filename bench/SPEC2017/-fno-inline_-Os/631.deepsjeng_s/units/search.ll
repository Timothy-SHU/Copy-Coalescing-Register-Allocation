; ModuleID = 'search.cpp'
source_filename = "search.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.scoreboard_t = type { i32, i32, [8 x %struct.anon.0], [8 x i32], [8 x %struct.state_t] }
%struct.anon.0 = type { i32, i32, i32 }
%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.anon = type { i32, i32, i32, i32 }

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

@history_h = dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]] zeroinitializer, align 16
@history_hit = dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]] zeroinitializer, align 16
@history_tot = dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]] zeroinitializer, align 16
@gamestate = external global %struct.gamestate_t, align 8
@contempt = external local_unnamed_addr global i32, align 4
@material = external local_unnamed_addr constant [14 x i32], align 16
@time_check_log = external local_unnamed_addr global i32, align 4
@_ZL8rc_index = internal unnamed_addr constant [14 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 2, i32 2, i32 0], align 16
@uci_multipv = external local_unnamed_addr global i32, align 4
@root_scores = external local_unnamed_addr global [240 x i32], align 16
@uci_limitstrength = external local_unnamed_addr global i32, align 4
@uci_elo = external local_unnamed_addr global i32, align 4
@_ZZ11search_rootP7state_tiiiE7changes = internal unnamed_addr global i32 0, align 4
@_ZZ11search_rootP7state_tiiiE5bmove = internal unnamed_addr global i32 0, align 4
@multipv_scores = external local_unnamed_addr global [240 x i32], align 16
@uci_mode = external local_unnamed_addr global i32, align 4
@uci_showrefutations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"info refutation %s \00", align 1
@is_pondering = external local_unnamed_addr global i32, align 4
@scoreboard = external local_unnamed_addr global %struct.scoreboard_t, align 8
@_ZZ5thinkP11gamestate_tP7state_tE15lastsearchscore = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"info depth 1 time 0 nodes 1 score cp %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bestmove %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Opening phase.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Middlegame phase.\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Endgame phase.\0A\00", align 1
@is_analyzing = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Time for move : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"info string Time for move: %ds, early break: %ds\0A\00", align 1
@.str.8 = private unnamed_addr constant [85 x i8] c"info string Nonsense in temp_move, time_failure %d failed %d time_exit %d result %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"bestmove 0000\0A\00", align 1
@buffered_count = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"bestmove %s ponder %s\0A\00", align 1
@reltable._Z5thinkP11gamestate_tP7state_t = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable._Z5thinkP11gamestate_tP7state_t to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable._Z5thinkP11gamestate_tP7state_t to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._Z5thinkP11gamestate_tP7state_t to i64)) to i32)], align 4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !132 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [240 x i32], align 16
  %11 = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %11) #13
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %13 = load <2 x i64>, ptr %12, align 8, !tbaa !133
  %14 = add <2 x i64> %13, <i64 1, i64 1>
  store <2 x i64> %14, ptr %12, align 8, !tbaa !133
  %15 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !137
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %18 = load i32, ptr %17, align 8, !tbaa !140
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %21, !prof !141

20:                                               ; preds = %5
  store i32 %16, ptr %17, align 8, !tbaa !140
  br label %21

21:                                               ; preds = %20, %5
  %22 = tail call fastcc noundef i32 @_ZL17search_time_checkP7state_t(ptr noundef nonnull %0) #14, !range !142
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %325, !prof !143

24:                                               ; preds = %21
  %25 = tail call noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef nonnull %0) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !144

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %29 = load i32, ptr %28, align 4, !tbaa !145
  %30 = icmp sgt i32 %29, 99
  br i1 %30, label %31, label %39, !prof !146

31:                                               ; preds = %27, %24
  %32 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 3), align 4, !tbaa !147
  %33 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %34 = load i32, ptr %33, align 4, !tbaa !149
  %35 = icmp eq i32 %32, %34
  %36 = load i32, ptr @contempt, align 4
  %37 = sub nsw i32 0, %36
  %38 = select i1 %35, i32 %36, i32 %37, !prof !150
  br label %325

39:                                               ; preds = %27
  %40 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %9, i32 noundef 0) #14
  switch i32 %40, label %50 [
    i32 3, label %41
    i32 1, label %43
    i32 2, label %46
    i32 4, label %49
  ], !prof !151

41:                                               ; preds = %39
  %42 = load i32, ptr %8, align 4, !tbaa !152
  br label %325

43:                                               ; preds = %39
  %44 = load i32, ptr %8, align 4, !tbaa !152
  %45 = icmp sgt i32 %44, %1
  br i1 %45, label %50, label %325, !prof !153

46:                                               ; preds = %39
  %47 = load i32, ptr %8, align 4, !tbaa !152
  %48 = icmp slt i32 %47, %2
  br i1 %48, label %50, label %325, !prof !154

49:                                               ; preds = %39
  store i32 65535, ptr %7, align 4, !tbaa !152
  br label %50

50:                                               ; preds = %46, %43, %39, %49
  %51 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %52 = shl nsw i32 %51, 1
  %53 = icmp slt i32 %52, %4
  br i1 %53, label %57, label %54, !prof !156

54:                                               ; preds = %50
  %55 = load i32, ptr %15, align 8, !tbaa !137
  %56 = icmp sgt i32 %55, 60
  br i1 %56, label %57, label %59, !prof !157

57:                                               ; preds = %54, %50
  %58 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #14
  br label %325

59:                                               ; preds = %54
  %60 = sext i32 %55 to i64
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !152
  %63 = call noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef nonnull %0) #14
  %64 = add nsw i32 %63, 50
  %65 = icmp ne i32 %62, 0
  br i1 %65, label %141, label %66, !prof !158

66:                                               ; preds = %59
  %67 = icmp slt i32 %63, %2
  br i1 %67, label %70, label %68, !prof !159

68:                                               ; preds = %66
  %69 = load i32, ptr %7, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %63, i32 noundef %1, i32 noundef %2, i32 noundef %69, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %325

70:                                               ; preds = %66
  %71 = icmp sgt i32 %63, %1
  br i1 %71, label %135, label %72, !prof !160

72:                                               ; preds = %70
  %73 = add nsw i32 %63, 985
  %74 = icmp sgt i32 %73, %1
  br i1 %74, label %77, label %75, !prof !161

75:                                               ; preds = %72
  %76 = load i32, ptr %7, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %73, i32 noundef %1, i32 noundef %2, i32 noundef %76, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %325

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %79 = load i32, ptr %78, align 4, !tbaa !149
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %108, label %81, !prof !162

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %83 = load i32, ptr %82, align 4, !tbaa !152
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %135, !prof !163

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %87 = load i32, ptr %86, align 4, !tbaa !152
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %103, !prof !164

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %91 = load i32, ptr %90, align 4, !tbaa !152
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100, !prof !165

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %95 = load i32, ptr %94, align 4, !tbaa !152
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100, !prof !166

97:                                               ; preds = %93
  %98 = add nsw i32 %63, 135
  %99 = icmp sgt i32 %98, %1
  br i1 %99, label %135, label %325, !prof !167

100:                                              ; preds = %93, %89
  %101 = add nsw i32 %63, 380
  %102 = icmp sgt i32 %101, %1
  br i1 %102, label %135, label %325, !prof !168

103:                                              ; preds = %85
  %104 = add nsw i32 %63, 540
  %105 = icmp sgt i32 %104, %1
  br i1 %105, label %135, label %106, !prof !169

106:                                              ; preds = %103
  %107 = load i32, ptr %7, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %104, i32 noundef %1, i32 noundef %2, i32 noundef %107, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %325

108:                                              ; preds = %77
  %109 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %110 = load i32, ptr %109, align 4, !tbaa !152
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135, !prof !170

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %114 = load i32, ptr %113, align 4, !tbaa !152
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %130, !prof !171

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %118 = load i32, ptr %117, align 4, !tbaa !152
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %127, !prof !172

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %122 = load i32, ptr %121, align 4, !tbaa !152
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127, !prof !173

124:                                              ; preds = %120
  %125 = add nsw i32 %63, 135
  %126 = icmp sgt i32 %125, %1
  br i1 %126, label %135, label %325, !prof !174

127:                                              ; preds = %120, %116
  %128 = add nsw i32 %63, 380
  %129 = icmp sgt i32 %128, %1
  br i1 %129, label %135, label %325, !prof !175

130:                                              ; preds = %112
  %131 = add nsw i32 %63, 540
  %132 = icmp sgt i32 %131, %1
  br i1 %132, label %135, label %133, !prof !176

133:                                              ; preds = %130
  %134 = load i32, ptr %7, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %131, i32 noundef %1, i32 noundef %2, i32 noundef %134, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %325

135:                                              ; preds = %108, %130, %124, %127, %81, %103, %97, %100, %70
  %136 = phi i32 [ %63, %70 ], [ %1, %100 ], [ %1, %97 ], [ %1, %103 ], [ %1, %81 ], [ %1, %127 ], [ %1, %124 ], [ %1, %130 ], [ %1, %108 ]
  %137 = sub nsw i32 %136, %64
  %138 = load i32, ptr %7, align 4, !tbaa !152
  %139 = icmp sgt i32 %3, -6
  %140 = call noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef nonnull %0, ptr noundef nonnull %10) #14
  br label %144

141:                                              ; preds = %59
  %142 = load i32, ptr %7, align 4, !tbaa !152
  %143 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %62) #14
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi i32 [ %138, %135 ], [ %142, %141 ]
  %146 = phi i32 [ %137, %135 ], [ 0, %141 ]
  %147 = phi i32 [ %136, %135 ], [ %1, %141 ]
  %148 = phi i1 [ %139, %135 ], [ false, %141 ]
  %149 = phi i32 [ %140, %135 ], [ %143, %141 ]
  %150 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %151 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %152 = sub nsw i32 0, %2
  br label %153

153:                                              ; preds = %309, %144
  %154 = phi i32 [ %145, %144 ], [ %304, %309 ]
  %155 = phi i32 [ 1, %144 ], [ %305, %309 ]
  %156 = phi i32 [ -32000, %144 ], [ %306, %309 ]
  %157 = phi i1 [ false, %144 ], [ %308, %309 ]
  %158 = phi i1 [ false, %144 ], [ %310, %309 ]
  %159 = phi i1 [ true, %144 ], [ false, %309 ]
  %160 = phi i32 [ %149, %144 ], [ %168, %309 ]
  %161 = phi i32 [ %147, %144 ], [ %307, %309 ]
  br i1 %157, label %162, label %164, !prof !177

162:                                              ; preds = %153
  %163 = call noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef %0, ptr noundef nonnull %10) #14
  br label %167

164:                                              ; preds = %153
  br i1 %158, label %165, label %167, !prof !178

165:                                              ; preds = %164
  %166 = call noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef %0, ptr noundef nonnull %10) #14
  br label %167

167:                                              ; preds = %164, %165, %162
  %168 = phi i32 [ %163, %162 ], [ %166, %165 ], [ %160, %164 ]
  %169 = load i32, ptr %7, align 4, !tbaa !152
  call fastcc void @_ZL16fast_order_movesP7state_tPiS1_ij(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %168, i32 noundef %169) #14
  store i32 -1, ptr %6, align 4, !tbaa !152
  %170 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef %168) #14, !range !142
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %303, label %172, !prof !179

172:                                              ; preds = %167
  %173 = or i1 %157, %158
  br label %174

174:                                              ; preds = %172, %298
  %175 = phi i32 [ %161, %172 ], [ %300, %298 ]
  %176 = phi i32 [ %156, %172 ], [ %285, %298 ]
  %177 = phi i32 [ %155, %172 ], [ %284, %298 ]
  %178 = phi i32 [ %154, %172 ], [ %299, %298 ]
  br i1 %65, label %179, label %181, !prof !180

179:                                              ; preds = %174
  %180 = load i32, ptr %6, align 4, !tbaa !152
  br label %243

181:                                              ; preds = %174, %212
  br i1 %159, label %182, label %197, !prof !181

182:                                              ; preds = %181
  %183 = load i32, ptr %6, align 4, !tbaa !152
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [240 x i32], ptr %10, i64 0, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !152
  %187 = lshr i32 %186, 19
  %188 = and i32 %187, 15
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !152
  %192 = call i32 @llvm.abs.i32(i32 %191, i1 true)
  %193 = icmp sle i32 %192, %146
  %194 = and i32 %186, 61440
  %195 = icmp eq i32 %194, 0
  %196 = and i1 %195, %193
  br i1 %196, label %303, label %197, !prof !182

197:                                              ; preds = %182, %181
  %198 = load i32, ptr %6, align 4, !tbaa !152
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [240 x i32], ptr %10, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !152
  %202 = lshr i32 %201, 19
  %203 = and i32 %202, 15
  br i1 %173, label %204, label %219, !prof !183

204:                                              ; preds = %197
  %205 = icmp eq i32 %203, 13
  br i1 %205, label %215, label %206, !prof !184

206:                                              ; preds = %204
  %207 = zext nneg i32 %203 to i64
  %208 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !152
  %210 = call i32 @llvm.abs.i32(i32 %209, i1 true)
  %211 = icmp sgt i32 %210, %146
  br i1 %211, label %212, label %215, !prof !185

212:                                              ; preds = %206, %216, %234
  %213 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef %168) #14, !range !142
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %303, label %181, !prof !186, !llvm.loop !187

215:                                              ; preds = %206, %204
  br i1 %158, label %216, label %234, !prof !189

216:                                              ; preds = %215
  %217 = call fastcc noundef i32 @_ZL15history_pre_cutP7state_tii(ptr noundef %0, i32 noundef %201, i32 noundef 1) #14, !range !142
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %234, label %212, !prof !190

219:                                              ; preds = %197
  %220 = zext nneg i32 %203 to i64
  %221 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !152
  %223 = call i32 @llvm.abs.i32(i32 %222, i1 true)
  %224 = lshr i32 %201, 6
  %225 = and i32 %224, 63
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !152
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !152
  %232 = call i32 @llvm.abs.i32(i32 %231, i1 true)
  %233 = icmp ult i32 %223, %232
  br i1 %233, label %234, label %243, !prof !191

234:                                              ; preds = %215, %216, %219
  %235 = load i32, ptr %150, align 4, !tbaa !149
  %236 = icmp eq i32 %235, 0
  %237 = zext i1 %236 to i32
  %238 = lshr i32 %201, 6
  %239 = and i32 %238, 63
  %240 = and i32 %201, 63
  %241 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %237, i32 noundef %239, i32 noundef %240, i32 noundef 0) #14
  %242 = icmp slt i32 %241, -50
  br i1 %242, label %212, label %243, !prof !192

243:                                              ; preds = %234, %219, %179
  %244 = phi i32 [ %180, %179 ], [ %198, %219 ], [ %198, %234 ]
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [240 x i32], ptr %10, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !152
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %247) #14
  %248 = load i32, ptr %246, align 4, !tbaa !152
  %249 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %248) #14
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %283, !prof !193

251:                                              ; preds = %243
  %252 = load i64, ptr %151, align 8, !tbaa !194
  %253 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !195
  %254 = load i32, ptr %15, align 8, !tbaa !137
  %255 = add i32 %254, -1
  %256 = add i32 %255, %253
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %257
  store i64 %252, ptr %258, align 8, !tbaa !133
  %259 = load i32, ptr %246, align 4, !tbaa !152
  %260 = sext i32 %255 to i64
  %261 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %260
  store i32 %259, ptr %261, align 4, !tbaa !152
  %262 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #14
  %263 = load i32, ptr %15, align 8, !tbaa !137
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %264
  store i32 %262, ptr %265, align 4, !tbaa !152
  %266 = sub i32 60, %175
  %267 = icmp ne i32 %262, 0
  %268 = zext i1 %267 to i32
  %269 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %152, i32 noundef %266, i32 noundef %268) #14
  %270 = sub nsw i32 0, %269
  %271 = icmp sge i32 %175, %270
  %272 = select i1 %158, i1 %271, i1 false
  br i1 %272, label %283, label %273, !prof !196

273:                                              ; preds = %251
  %274 = add nsw i32 %4, 1
  %275 = sub nsw i32 0, %175
  %276 = or i32 %262, %62
  %277 = icmp eq i32 %276, 0
  %278 = select i1 %277, i32 -8, i32 -1
  %279 = select i1 %158, i32 0, i32 %278, !prof !197
  %280 = add nsw i32 %279, %3
  %281 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %152, i32 noundef %275, i32 noundef %280, i32 noundef %274) #14
  %282 = sub nsw i32 0, %281
  br label %283

283:                                              ; preds = %273, %251, %243
  %284 = phi i32 [ %177, %243 ], [ 0, %251 ], [ 0, %273 ]
  %285 = phi i32 [ %176, %243 ], [ %176, %251 ], [ %282, %273 ]
  %286 = load i32, ptr %246, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %286) #14
  %287 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %325, !prof !199

289:                                              ; preds = %283
  %290 = icmp sgt i32 %285, %175
  %291 = and i1 %250, %290
  br i1 %291, label %292, label %298, !prof !200

292:                                              ; preds = %289
  %293 = load i32, ptr %246, align 4, !tbaa !152
  %294 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %293) #14
  %295 = zext i16 %294 to i32
  %296 = icmp slt i32 %285, %2
  br i1 %296, label %298, label %297, !prof !201

297:                                              ; preds = %292
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %285, i32 noundef %1, i32 noundef %2, i32 noundef %295, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %325

298:                                              ; preds = %292, %289
  %299 = phi i32 [ %178, %289 ], [ %295, %292 ]
  %300 = phi i32 [ %175, %289 ], [ %285, %292 ]
  %301 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef %168) #14, !range !142
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %174, !prof !202, !llvm.loop !187

303:                                              ; preds = %298, %212, %182, %167
  %304 = phi i32 [ %154, %167 ], [ %178, %182 ], [ %178, %212 ], [ %299, %298 ]
  %305 = phi i32 [ %155, %167 ], [ %177, %182 ], [ %177, %212 ], [ %284, %298 ]
  %306 = phi i32 [ %156, %167 ], [ %176, %182 ], [ %176, %212 ], [ %285, %298 ]
  %307 = phi i32 [ %161, %167 ], [ %175, %182 ], [ %175, %212 ], [ %300, %298 ]
  %308 = and i1 %148, %159
  br i1 %308, label %309, label %311, !prof !203

309:                                              ; preds = %303, %311
  %310 = xor i1 %308, true
  br label %153

311:                                              ; preds = %303
  %312 = icmp sgt i32 %3, -1
  %313 = and i1 %312, %157
  %314 = and i1 %148, %313
  %315 = icmp sgt i32 %64, %307
  %316 = select i1 %314, i1 %315, i1 false
  br i1 %316, label %309, label %317, !prof !204

317:                                              ; preds = %311
  %318 = icmp ne i32 %305, 0
  %319 = and i1 %65, %318
  br i1 %319, label %320, label %323, !prof !205

320:                                              ; preds = %317
  %321 = load i32, ptr %15, align 8, !tbaa !137
  %322 = add nsw i32 %321, -32000
  br label %323

323:                                              ; preds = %320, %317
  %324 = phi i32 [ %322, %320 ], [ %307, %317 ]
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %324, i32 noundef %1, i32 noundef %2, i32 noundef %304, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %325

325:                                              ; preds = %283, %127, %124, %100, %97, %133, %106, %46, %43, %21, %323, %297, %75, %68, %57, %41, %31
  %326 = phi i32 [ %38, %31 ], [ %58, %57 ], [ %285, %297 ], [ %324, %323 ], [ %63, %68 ], [ %73, %75 ], [ %42, %41 ], [ 0, %21 ], [ %44, %43 ], [ %47, %46 ], [ %128, %127 ], [ %125, %124 ], [ %101, %100 ], [ %98, %97 ], [ %131, %133 ], [ %104, %106 ], [ 0, %283 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %326
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZL17search_time_checkP7state_t(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !206 !PGOFuncName !207 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %9 = load i64, ptr %8, align 8, !tbaa !208
  %10 = load i32, ptr @time_check_log, align 4, !tbaa !152
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  %13 = zext nneg i32 %12 to i64
  %14 = and i64 %9, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %100, !prof !209

16:                                               ; preds = %1
  %17 = tail call noundef i32 @_Z9interruptv() #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !210

19:                                               ; preds = %16
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  br label %100

20:                                               ; preds = %16
  %21 = tail call noundef i32 @_Z5rtimev() #14
  %22 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !211
  %23 = tail call noundef i32 @_Z9rdifftimeii(i32 noundef %21, i32 noundef %22) #14
  %24 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %100, label %26, !prof !210

26:                                               ; preds = %20
  %27 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %100

29:                                               ; preds = %26
  %30 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  %31 = icmp eq i32 %30, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %32 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4
  %33 = icmp ne i32 %32, 2
  %34 = select i1 %31, i1 %33, i1 false
  %35 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %70

38:                                               ; preds = %29
  %39 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !214
  %40 = mul nsw i32 %24, 7
  store i32 %40, ptr %2, align 4, !tbaa !152
  store i32 1000, ptr %3, align 4, !tbaa !152
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %42 = load i32, ptr %41, align 4, !tbaa !152
  %43 = icmp sgt i32 %39, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %44 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4
  br i1 %43, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4
  br label %71

47:                                               ; preds = %38
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  %51 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %53 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  %54 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %55 = add nsw i32 %54, %53
  store i32 %55, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  br label %56

56:                                               ; preds = %49, %47
  %57 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  %58 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %59 = add nsw i32 %58, %57
  store i32 %59, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %60 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  %61 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %62 = add nsw i32 %61, %60
  store i32 %62, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %63 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  %64 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %65 = add nsw i32 %64, %63
  store i32 %65, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %66 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !214
  %67 = add nsw i32 %66, -50
  store i32 %67, ptr %4, align 4, !tbaa !152
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %69 = load i32, ptr %68, align 4, !tbaa !152
  store i32 %69, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  store i32 2, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !215
  br label %100

70:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %71

71:                                               ; preds = %45, %70
  %72 = phi i32 [ %35, %70 ], [ %46, %45 ]
  %73 = phi i32 [ %32, %70 ], [ %44, %45 ]
  %74 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !216
  %75 = icmp eq i32 %74, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  %76 = icmp eq i32 %73, 0
  %77 = select i1 %75, i1 %76, i1 false
  %78 = icmp eq i32 %72, 0
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %98

80:                                               ; preds = %71
  %81 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !214
  %82 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %83 = mul nsw i32 %82, 6
  store i32 %83, ptr %5, align 4, !tbaa !152
  store i32 1000, ptr %6, align 4, !tbaa !152
  %84 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #14
  %85 = load i32, ptr %84, align 4, !tbaa !152
  %86 = icmp sgt i32 %81, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !215
  %88 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  %89 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %90 = add nsw i32 %89, %88
  store i32 %90, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %91 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  %92 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %93 = add nsw i32 %92, %91
  store i32 %93, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  %94 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !214
  %95 = add nsw i32 %94, -50
  store i32 %95, ptr %7, align 4, !tbaa !152
  %96 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), ptr noundef nonnull align 4 dereferenceable(4) %7) #14
  %97 = load i32, ptr %96, align 4, !tbaa !152
  store i32 %97, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %100

98:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %99

99:                                               ; preds = %98, %80
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  br label %100

100:                                              ; preds = %1, %20, %26, %87, %56, %99, %19
  %101 = phi i32 [ 1, %19 ], [ 1, %99 ], [ 0, %56 ], [ 0, %87 ], [ 0, %26 ], [ 0, %20 ], [ 0, %1 ]
  ret i32 %101
}

; Function Attrs: optsize
declare noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z4evalP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z7StoreTTP7state_tiiijiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL16fast_order_movesP7state_tPiS1_ij(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !217 !PGOFuncName !218 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %87, !prof !219

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %7, %82
  %11 = phi i64 [ 0, %7 ], [ %85, %82 ]
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !152
  %14 = lshr i32 %13, 6
  %15 = and i32 %14, 63
  %16 = and i32 %13, 63
  %17 = lshr i32 %13, 19
  %18 = and i32 %17, 15
  %19 = lshr i32 %13, 12
  %20 = and i32 %19, 15
  %21 = tail call noundef zeroext i16 @_Z12compact_movei(i32 noundef %13) #14
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %22, %4
  br i1 %23, label %82, label %24, !prof !220

24:                                               ; preds = %10
  %25 = icmp eq i32 %18, 13
  br i1 %25, label %41, label %26, !prof !221

26:                                               ; preds = %24
  %27 = zext nneg i32 %18 to i64
  %28 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !152
  %30 = tail call i32 @llvm.abs.i32(i32 %29, i1 true)
  %31 = shl nsw i32 %30, 12
  %32 = add nuw nsw i32 %31, 10000000
  %33 = zext nneg i32 %15 to i64
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !152
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !152
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = sub nsw i32 %32, %39
  br label %82

41:                                               ; preds = %24
  %42 = icmp eq i32 %20, 0
  br i1 %42, label %49, label %43, !prof !222

43:                                               ; preds = %41
  %44 = zext nneg i32 %20 to i64
  %45 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !152
  %47 = tail call i32 @llvm.abs.i32(i32 %46, i1 true)
  %48 = add nuw nsw i32 %47, 9000000
  br label %82

49:                                               ; preds = %41
  %50 = load i32, ptr %12, align 4, !tbaa !152
  %51 = load i32, ptr %8, align 8, !tbaa !137
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %52
  %54 = load i32, ptr %53, align 8, !tbaa !223
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %82, label %56, !prof !225

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %52, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !226
  %59 = icmp eq i32 %50, %58
  br i1 %59, label %82, label %60, !prof !227

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %52, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !228
  %63 = icmp eq i32 %50, %62
  br i1 %63, label %82, label %64, !prof !229

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %52, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !230
  %67 = icmp eq i32 %50, %66
  br i1 %67, label %82, label %68, !prof !231

68:                                               ; preds = %64
  %69 = zext nneg i32 %15 to i64
  %70 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !152
  %72 = add nsw i32 %71, -1
  %73 = load i32, ptr %0, align 8, !tbaa !232
  %74 = sext i32 %73 to i64
  %75 = sext i32 %72 to i64
  %76 = zext nneg i32 %16 to i64
  %77 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %74, i64 %75, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !152
  %79 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %74, i64 %75, i64 %69
  %80 = load i32, ptr %79, align 4, !tbaa !152
  %81 = sub nsw i32 %78, %80
  br label %82

82:                                               ; preds = %64, %60, %56, %49, %10, %43, %68, %26
  %83 = phi i32 [ %48, %43 ], [ %81, %68 ], [ %40, %26 ], [ 128000000, %10 ], [ 8000000, %49 ], [ 7000000, %56 ], [ 6000000, %60 ], [ 5000000, %64 ]
  %84 = getelementptr inbounds i32, ptr %2, i64 %11
  store i32 %83, ptr %84, align 4, !tbaa !152
  %85 = add nuw nsw i64 %11, 1
  %86 = icmp eq i64 %85, %9
  br i1 %86, label %87, label %10, !prof !233, !llvm.loop !234

87:                                               ; preds = %82, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #3 !prof !235 !PGOFuncName !236 {
  %5 = load i32, ptr %0, align 4, !tbaa !152
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %0, align 4, !tbaa !152
  %7 = icmp slt i32 %5, 9
  %8 = icmp slt i32 %6, %3
  br i1 %7, label %9, label %26, !prof !237

9:                                                ; preds = %4
  br i1 %8, label %10, label %40, !prof !238

10:                                               ; preds = %9
  %11 = sext i32 %5 to i64
  %12 = add nsw i64 %11, 1
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ %12, %10 ], [ %23, %13 ]
  %15 = phi i32 [ undef, %10 ], [ %22, %13 ]
  %16 = phi i32 [ -1000000, %10 ], [ %20, %13 ]
  %17 = getelementptr inbounds i32, ptr %1, i64 %14
  %18 = load i32, ptr %17, align 4, !tbaa !152
  %19 = icmp sgt i32 %18, %16
  %20 = tail call i32 @llvm.smax.i32(i32 %18, i32 %16)
  %21 = trunc i64 %14 to i32
  %22 = select i1 %19, i32 %21, i32 %15, !prof !239
  %23 = add nsw i64 %14, 1
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %28, label %13, !prof !240, !llvm.loop !241

26:                                               ; preds = %4
  %27 = zext i1 %8 to i32
  br label %40

28:                                               ; preds = %13
  %29 = icmp sgt i32 %20, -1000000
  br i1 %29, label %30, label %40, !prof !242

30:                                               ; preds = %28
  %31 = sext i32 %22 to i64
  %32 = sext i32 %6 to i64
  %33 = getelementptr inbounds i32, ptr %1, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !152
  %35 = getelementptr inbounds i32, ptr %1, i64 %31
  store i32 %34, ptr %35, align 4, !tbaa !152
  store i32 %20, ptr %33, align 4, !tbaa !152
  %36 = getelementptr inbounds i32, ptr %2, i64 %32
  %37 = load i32, ptr %36, align 4, !tbaa !152
  %38 = getelementptr inbounds i32, ptr %2, i64 %31
  %39 = load i32, ptr %38, align 4, !tbaa !152
  store i32 %39, ptr %36, align 4, !tbaa !152
  store i32 %37, ptr %38, align 4, !tbaa !152
  br label %40

40:                                               ; preds = %9, %26, %28, %30
  %41 = phi i32 [ 1, %30 ], [ 0, %28 ], [ %27, %26 ], [ 0, %9 ]
  ret i32 %41
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @_ZL15history_pre_cutP7state_tii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !prof !243 !PGOFuncName !244 {
  %4 = lshr i32 %1, 6
  %5 = and i32 %4, 63
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !152
  %9 = add nsw i32 %8, -1
  %10 = and i32 %1, 63
  %11 = load i32, ptr %0, align 8, !tbaa !232
  %12 = sext i32 %11 to i64
  %13 = sext i32 %9 to i64
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %12, i64 %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !152
  %17 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %12, i64 %13, i64 %14
  %18 = load i32, ptr %17, align 4, !tbaa !152
  %19 = sub nsw i32 %18, %16
  %20 = mul nsw i32 %16, %2
  %21 = icmp slt i32 %20, %19
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: optsize
declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z4makeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z11check_legalP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z8in_checkP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z6unmakeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i16 @_Z12compact_movei(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z9interruptv() local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z9rdifftimeii(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z5rtimev() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat !prof !245 {
  %3 = load i32, ptr %0, align 4, !tbaa !152
  %4 = load i32, ptr %1, align 4, !tbaa !152
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: optsize
declare noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat !prof !246 {
  %3 = load i32, ptr %1, align 4, !tbaa !152
  %4 = load i32, ptr %0, align 4, !tbaa !152
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !247
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !248 {
  %7 = alloca [240 x i32], align 16
  %8 = alloca [240 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [240 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %16) #13
  %19 = icmp slt i32 %3, 1
  br i1 %19, label %24, label %20, !prof !249

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %22 = load i32, ptr %21, align 8, !tbaa !137
  %23 = icmp sgt i32 %22, 59
  br i1 %23, label %24, label %26, !prof !250

24:                                               ; preds = %20, %6
  %25 = tail call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0) #14
  br label %895

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %28 = load i64, ptr %27, align 8, !tbaa !208
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !208
  %30 = tail call fastcc noundef i32 @_ZL17search_time_checkP7state_t(ptr noundef nonnull %0) #14, !range !142
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %895, !prof !251

32:                                               ; preds = %26
  %33 = tail call noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef nonnull %0) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39, !prof !252

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %37 = load i32, ptr %36, align 4, !tbaa !145
  %38 = icmp sgt i32 %37, 99
  br i1 %38, label %39, label %47, !prof !253

39:                                               ; preds = %35, %32
  %40 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 3), align 4, !tbaa !147
  %41 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !149
  %43 = icmp eq i32 %40, %42
  %44 = load i32, ptr @contempt, align 4
  %45 = sub nsw i32 0, %44
  %46 = select i1 %43, i32 %44, i32 %45, !prof !254
  br label %895

47:                                               ; preds = %35
  %48 = load i32, ptr %21, align 8, !tbaa !137
  %49 = add nsw i32 %48, -32000
  %50 = icmp sgt i32 %49, %1
  br i1 %50, label %51, label %53, !prof !255

51:                                               ; preds = %47
  %52 = icmp slt i32 %49, %2
  br i1 %52, label %53, label %895, !prof !256

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %49, %51 ], [ %1, %47 ]
  %55 = sub i32 31999, %48
  %56 = icmp slt i32 %55, %2
  br i1 %56, label %57, label %59, !prof !257

57:                                               ; preds = %53
  %58 = icmp sgt i32 %55, %54
  br i1 %58, label %59, label %895, !prof !258

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %55, %57 ], [ %2, %53 ]
  %61 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %54, i32 noundef %60, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %3) #14
  switch i32 %61, label %75 [
    i32 3, label %62
    i32 1, label %64
    i32 2, label %67
    i32 0, label %70
    i32 4, label %74
  ], !prof !259

62:                                               ; preds = %59
  %63 = load i32, ptr %10, align 4, !tbaa !152
  br label %895

64:                                               ; preds = %59
  %65 = load i32, ptr %10, align 4, !tbaa !152
  %66 = icmp sgt i32 %65, %54
  br i1 %66, label %75, label %895, !prof !260

67:                                               ; preds = %59
  %68 = load i32, ptr %10, align 4, !tbaa !152
  %69 = icmp slt i32 %68, %60
  br i1 %69, label %75, label %895, !prof !261

70:                                               ; preds = %59
  %71 = load i32, ptr %10, align 4, !tbaa !152
  %72 = icmp slt i32 %71, %60
  %73 = select i1 %72, i32 %5, i32 1, !prof !262
  br label %75

74:                                               ; preds = %59
  store i32 65535, ptr %13, align 4, !tbaa !152
  store i32 0, ptr %11, align 4, !tbaa !152
  store i32 0, ptr %14, align 4, !tbaa !152
  store i32 0, ptr %15, align 4, !tbaa !152
  br label %75

75:                                               ; preds = %70, %67, %64, %59, %74
  %76 = phi i32 [ %5, %59 ], [ %5, %74 ], [ 0, %64 ], [ 1, %67 ], [ %73, %70 ]
  %77 = load i32, ptr %21, align 8, !tbaa !137
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !152
  %81 = call noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef nonnull %0) #14
  %82 = icmp ne i32 %80, 0
  %83 = xor i1 %82, true
  %84 = add nsw i32 %54, 1
  %85 = icmp eq i32 %60, %84
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %111, !prof !263

87:                                               ; preds = %75
  %88 = icmp ult i32 %3, 5
  br i1 %88, label %89, label %101, !prof !264

89:                                               ; preds = %87
  %90 = add nsw i32 %81, -75
  %91 = icmp slt i32 %90, %60
  br i1 %91, label %97, label %92, !prof !265

92:                                               ; preds = %89
  %93 = load i32, ptr %13, align 4, !tbaa !152
  %94 = load i32, ptr %11, align 4, !tbaa !152
  %95 = load i32, ptr %14, align 4, !tbaa !152
  %96 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %90, i32 noundef %54, i32 noundef %60, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef %3) #14
  br label %895

97:                                               ; preds = %89
  %98 = icmp slt i32 %81, %60
  br i1 %98, label %99, label %111, !prof !266

99:                                               ; preds = %97
  %100 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %60, i32 noundef 0, i32 noundef 0) #14
  br label %895

101:                                              ; preds = %87
  %102 = icmp ult i32 %3, 9
  br i1 %102, label %103, label %111, !prof !267

103:                                              ; preds = %101
  %104 = add nsw i32 %81, -125
  %105 = icmp slt i32 %104, %60
  br i1 %105, label %111, label %106, !prof !268

106:                                              ; preds = %103
  %107 = load i32, ptr %13, align 4, !tbaa !152
  %108 = load i32, ptr %11, align 4, !tbaa !152
  %109 = load i32, ptr %14, align 4, !tbaa !152
  %110 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %104, i32 noundef %54, i32 noundef %60, i32 noundef %107, i32 noundef %108, i32 noundef %109, i32 noundef %110, i32 noundef %3) #14
  br label %895

111:                                              ; preds = %97, %103, %101, %75
  %112 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %113 = load i32, ptr %112, align 4, !tbaa !152
  %114 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %115 = load i32, ptr %114, align 4, !tbaa !152
  %116 = add nsw i32 %115, %113
  %117 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %118 = load i32, ptr %117, align 4, !tbaa !152
  %119 = add nsw i32 %116, %118
  %120 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %121 = load i32, ptr %120, align 4, !tbaa !152
  %122 = add nsw i32 %119, %121
  %123 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %124 = load i32, ptr %123, align 8, !tbaa !152
  %125 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %126 = load i32, ptr %125, align 8, !tbaa !152
  %127 = add nsw i32 %126, %124
  %128 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %129 = load i32, ptr %128, align 8, !tbaa !152
  %130 = add nsw i32 %127, %129
  %131 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %132 = load i32, ptr %131, align 8, !tbaa !152
  %133 = add nsw i32 %130, %132
  store i32 0, ptr %11, align 4, !tbaa !152
  %134 = icmp eq i32 %4, 0
  br i1 %134, label %135, label %222, !prof !269

135:                                              ; preds = %111
  %136 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %137 = load i32, ptr %136, align 4, !tbaa !149
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 %133, i32 %122, !prof !270
  %140 = icmp eq i32 %139, 0
  %141 = or i1 %82, %140
  %142 = load i32, ptr %12, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %141, true
  %145 = select i1 %144, i1 %143, i1 false
  %146 = icmp ugt i32 %3, 4
  %147 = and i1 %146, %85
  %148 = select i1 %145, i1 %147, i1 false
  br i1 %148, label %149, label %222, !prof !271

149:                                              ; preds = %135
  %150 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !272
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %172, !prof !273

152:                                              ; preds = %149
  %153 = icmp ult i32 %3, 25
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = add nsw i32 %60, -1
  %156 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %155, i32 noundef %60, i32 noundef 0, i32 noundef 0) #14
  br label %161

157:                                              ; preds = %152
  %158 = add nsw i32 %3, -24
  %159 = add nsw i32 %60, -1
  %160 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %159, i32 noundef %60, i32 noundef %158, i32 noundef 1, i32 noundef %76) #14
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i32 [ %156, %154 ], [ %160, %157 ]
  %163 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %895

165:                                              ; preds = %161
  %166 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !272
  %167 = icmp eq i32 %166, 2
  %168 = icmp slt i32 %162, %60
  %169 = and i1 %168, %167
  br i1 %169, label %240, label %170, !prof !274

170:                                              ; preds = %165
  %171 = load i32, ptr %136, align 4, !tbaa !149
  br label %172

172:                                              ; preds = %170, %149
  %173 = phi i32 [ %171, %170 ], [ %137, %149 ]
  %174 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %175 = load i32, ptr %174, align 8, !tbaa !275
  store i32 0, ptr %174, align 8, !tbaa !275
  %176 = xor i32 %173, 1
  store i32 %176, ptr %136, align 4, !tbaa !149
  %177 = load <2 x i32>, ptr %21, align 8, !tbaa !152
  %178 = add nsw <2 x i32> %177, <i32 1, i32 1>
  store <2 x i32> %178, ptr %21, align 8, !tbaa !152
  %179 = extractelement <2 x i32> %177, i64 0
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %180
  store i32 0, ptr %181, align 4, !tbaa !152
  %182 = load i32, ptr %21, align 8, !tbaa !137
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %183
  store i32 0, ptr %184, align 4, !tbaa !152
  %185 = load i32, ptr %21, align 8, !tbaa !137
  %186 = add nsw i32 %185, -1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !152
  %190 = sext i32 %185 to i64
  %191 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %190
  store i32 %189, ptr %191, align 4, !tbaa !152
  %192 = icmp ult i32 %3, 17
  br i1 %192, label %193, label %197, !prof !276

193:                                              ; preds = %172
  %194 = sub nsw i32 0, %60
  %195 = sub i32 1, %60
  %196 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %194, i32 noundef %195, i32 noundef 0, i32 noundef 0) #14
  br label %204

197:                                              ; preds = %172
  %198 = add nsw i32 %3, -16
  %199 = sub nsw i32 0, %60
  %200 = sub i32 1, %60
  %201 = icmp eq i32 %76, 0
  %202 = zext i1 %201 to i32
  %203 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %199, i32 noundef %200, i32 noundef %198, i32 noundef 1, i32 noundef %202) #14
  br label %204

204:                                              ; preds = %197, %193
  %205 = phi i32 [ %196, %193 ], [ %203, %197 ]
  %206 = sub nsw i32 0, %205
  %207 = load <2 x i32>, ptr %21, align 8, !tbaa !152
  %208 = add nsw <2 x i32> %207, <i32 -1, i32 -1>
  store <2 x i32> %208, ptr %21, align 8, !tbaa !152
  %209 = load i32, ptr %136, align 4, !tbaa !149
  %210 = xor i32 %209, 1
  store i32 %210, ptr %136, align 4, !tbaa !149
  store i32 %175, ptr %174, align 8, !tbaa !275
  %211 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %895, !prof !277

213:                                              ; preds = %204
  %214 = icmp sgt i32 %60, %206
  br i1 %214, label %219, label %215, !prof !278

215:                                              ; preds = %213
  %216 = load i32, ptr %13, align 4, !tbaa !152
  %217 = load i32, ptr %11, align 4, !tbaa !152
  %218 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %206, i32 noundef %54, i32 noundef %60, i32 noundef %216, i32 noundef %217, i32 noundef 0, i32 noundef %218, i32 noundef %3) #14
  br label %895

219:                                              ; preds = %213
  %220 = icmp sgt i32 %205, 31400
  br i1 %220, label %221, label %240, !prof !279

221:                                              ; preds = %219
  store i32 1, ptr %11, align 4, !tbaa !152
  br label %240

222:                                              ; preds = %135, %111
  %223 = icmp ult i32 %3, 13
  %224 = and i1 %223, %85
  %225 = add nsw i32 %60, -300
  %226 = icmp slt i32 %81, %225
  %227 = select i1 %224, i1 %226, i1 false
  br i1 %227, label %228, label %239, !prof !280

228:                                              ; preds = %222
  %229 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %60, i32 noundef 0, i32 noundef 0) #14
  %230 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %895, !prof !281

232:                                              ; preds = %228
  %233 = icmp sgt i32 %229, %54
  br i1 %233, label %239, label %234, !prof !282

234:                                              ; preds = %232
  %235 = load i32, ptr %13, align 4, !tbaa !152
  %236 = load i32, ptr %11, align 4, !tbaa !152
  %237 = load i32, ptr %14, align 4, !tbaa !152
  %238 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %54, i32 noundef %60, i32 noundef %235, i32 noundef %236, i32 noundef %237, i32 noundef %238, i32 noundef %3) #14
  br label %895

239:                                              ; preds = %232, %222
  br i1 %82, label %242, label %240, !prof !283

240:                                              ; preds = %165, %221, %219, %239
  %241 = call noundef i32 @_Z3genP7state_tPi(ptr noundef nonnull %0, ptr noundef nonnull %7) #14
  br label %264

242:                                              ; preds = %239
  %243 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %80) #14
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %264, label %245, !prof !284

245:                                              ; preds = %242
  %246 = icmp sgt i32 %243, 0
  br i1 %246, label %247, label %264, !prof !285

247:                                              ; preds = %245
  %248 = zext nneg i32 %243 to i64
  br label %249

249:                                              ; preds = %247, %249
  %250 = phi i64 [ 0, %247 ], [ %260, %249 ]
  %251 = phi i32 [ 0, %247 ], [ %258, %249 ]
  %252 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %250
  %253 = load i32, ptr %252, align 4, !tbaa !152
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %253) #14
  %254 = load i32, ptr %252, align 4, !tbaa !152
  %255 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %254) #14
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i32
  %258 = add nuw nsw i32 %251, %257
  %259 = load i32, ptr %252, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %259) #14
  %260 = add nuw nsw i64 %250, 1
  %261 = icmp ult i64 %260, %248
  %262 = icmp ult i32 %258, 2
  %263 = select i1 %261, i1 %262, i1 false, !prof !286
  br i1 %263, label %249, label %264, !prof !287, !llvm.loop !288

264:                                              ; preds = %249, %245, %240, %242
  %265 = phi i32 [ 0, %242 ], [ %241, %240 ], [ %243, %245 ], [ %243, %249 ]
  %266 = phi i32 [ 0, %242 ], [ %241, %240 ], [ 0, %245 ], [ %258, %249 ]
  %267 = load i32, ptr %13, align 4, !tbaa !152
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %265, i32 noundef %267) #14
  %268 = icmp sgt i32 %3, 19
  %269 = xor i1 %268, true
  %270 = select i1 %269, i1 true, i1 %85
  br i1 %270, label %313, label %271, !prof !289

271:                                              ; preds = %264
  %272 = load i32, ptr %13, align 4, !tbaa !152
  %273 = icmp eq i32 %272, 65535
  br i1 %273, label %274, label %313, !prof !290

274:                                              ; preds = %271
  %275 = icmp sgt i32 %265, 0
  br i1 %275, label %277, label %276, !prof !291

276:                                              ; preds = %274
  store i32 0, ptr %9, align 4, !tbaa !152
  br label %305

277:                                              ; preds = %274
  %278 = zext nneg i32 %265 to i64
  br label %279

279:                                              ; preds = %277, %299
  %280 = phi i64 [ 0, %277 ], [ %301, %299 ]
  %281 = phi i32 [ 0, %277 ], [ %300, %299 ]
  %282 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %280
  %283 = load i32, ptr %282, align 4, !tbaa !152
  %284 = lshr i32 %283, 19
  %285 = and i32 %284, 15
  %286 = icmp eq i32 %285, 13
  br i1 %286, label %299, label %287, !prof !292

287:                                              ; preds = %279
  %288 = lshr i32 %283, 6
  %289 = and i32 %288, 63
  %290 = zext nneg i32 %289 to i64
  %291 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !152
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !152
  %296 = call i32 @llvm.abs.i32(i32 %295, i1 true)
  %297 = icmp ugt i32 %285, %296
  br i1 %297, label %298, label %299, !prof !293

298:                                              ; preds = %287
  br label %299

299:                                              ; preds = %279, %287, %298
  %300 = phi i32 [ 1, %298 ], [ %281, %287 ], [ %281, %279 ]
  %301 = add nuw nsw i64 %280, 1
  %302 = icmp eq i64 %301, %278
  br i1 %302, label %303, label %279, !prof !294, !llvm.loop !295

303:                                              ; preds = %299
  %304 = icmp eq i32 %300, 0
  br i1 %304, label %305, label %313, !prof !296

305:                                              ; preds = %276, %303
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  %306 = lshr i32 %3, 1
  %307 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %54, i32 noundef %60, i32 noundef %306, i32 noundef 0, i32 noundef %76) #14
  %308 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef nonnull %17, i32 noundef 0) #14
  %309 = icmp eq i32 %308, 4
  %310 = load i32, ptr %13, align 4
  %311 = load i32, ptr %18, align 4
  %312 = select i1 %309, i32 %310, i32 %311
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %265, i32 noundef %312) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  br label %313

313:                                              ; preds = %303, %305, %271, %264
  %314 = load i32, ptr %11, align 4
  %315 = icmp eq i32 %314, 0
  %316 = select i1 %83, i1 %315, i1 false
  %317 = icmp sgt i32 %3, 15
  %318 = and i1 %317, %316
  %319 = icmp sgt i32 %266, 8
  %320 = select i1 %318, i1 %319, i1 false
  br i1 %320, label %321, label %417, !prof !297

321:                                              ; preds = %313
  %322 = load i32, ptr %21, align 8, !tbaa !137
  %323 = add nsw i32 %322, -1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !152
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %417, !prof !298

328:                                              ; preds = %321
  %329 = icmp slt i32 %322, 3
  br i1 %329, label %344, label %330, !prof !299

330:                                              ; preds = %328
  %331 = add nsw i32 %322, -2
  %332 = zext nneg i32 %331 to i64
  %333 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !152
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %417, !prof !300

336:                                              ; preds = %330
  %337 = icmp eq i32 %322, 3
  br i1 %337, label %344, label %338, !prof !301

338:                                              ; preds = %336
  %339 = add nsw i32 %322, -3
  %340 = zext nneg i32 %339 to i64
  %341 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %340
  %342 = load i32, ptr %341, align 4, !tbaa !152
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %417, !prof !302

344:                                              ; preds = %328, %338, %336
  store i32 -1, ptr %9, align 4, !tbaa !152
  %345 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %265) #14, !range !142
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %417, label %347, !prof !303

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %349 = sub nsw i32 0, %60
  %350 = sub i32 50, %54
  %351 = icmp ugt i32 %3, 16
  %352 = icmp ult i32 %3, 17
  %353 = add nsw i32 %3, -16
  %354 = sub i32 1, %60
  %355 = icmp eq i32 %76, 0
  %356 = zext i1 %355 to i32
  br label %357

357:                                              ; preds = %347, %405
  %358 = phi i32 [ 0, %347 ], [ %406, %405 ]
  %359 = phi i32 [ 0, %347 ], [ %361, %405 ]
  %360 = phi i32 [ -32000, %347 ], [ %396, %405 ]
  %361 = add nuw nsw i32 %359, 1
  %362 = load i32, ptr %9, align 4, !tbaa !152
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !152
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %365) #14
  %366 = load i32, ptr %364, align 4, !tbaa !152
  %367 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %366) #14
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %395, !prof !304

369:                                              ; preds = %357
  %370 = load i64, ptr %348, align 8, !tbaa !194
  %371 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !195
  %372 = load i32, ptr %21, align 8, !tbaa !137
  %373 = add i32 %372, -1
  %374 = add i32 %373, %371
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %375
  store i64 %370, ptr %376, align 8, !tbaa !133
  %377 = load i32, ptr %364, align 4, !tbaa !152
  %378 = sext i32 %373 to i64
  %379 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %378
  store i32 %377, ptr %379, align 4, !tbaa !152
  %380 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #14
  %381 = load i32, ptr %21, align 8, !tbaa !137
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %382
  store i32 %380, ptr %383, align 4, !tbaa !152
  %384 = icmp ne i32 %380, 0
  %385 = or i1 %351, %384
  %386 = zext i1 %385 to i32
  %387 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %349, i32 noundef %350, i32 noundef %386) #14
  br i1 %352, label %388, label %390, !prof !305

388:                                              ; preds = %369
  %389 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %349, i32 noundef %354, i32 noundef 0, i32 noundef 0) #14
  br label %392

390:                                              ; preds = %369
  %391 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %349, i32 noundef %354, i32 noundef %353, i32 noundef 0, i32 noundef %356) #14
  br label %392

392:                                              ; preds = %390, %388
  %393 = phi i32 [ %389, %388 ], [ %391, %390 ]
  %394 = sub nsw i32 0, %393
  br label %395

395:                                              ; preds = %392, %357
  %396 = phi i32 [ %394, %392 ], [ %360, %357 ]
  %397 = load i32, ptr %364, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %397) #14
  %398 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %415, !prof !306

400:                                              ; preds = %395
  %401 = icmp sge i32 %396, %60
  %402 = and i1 %368, %401
  br i1 %402, label %403, label %405, !prof !307

403:                                              ; preds = %400
  %404 = icmp sgt i32 %358, 0
  br i1 %404, label %411, label %405, !prof !308

405:                                              ; preds = %400, %403
  %406 = phi i32 [ 1, %403 ], [ %358, %400 ]
  %407 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %265) #14, !range !142
  %408 = icmp ne i32 %407, 0
  %409 = icmp ult i32 %359, 2
  %410 = select i1 %408, i1 %409, i1 false, !prof !309
  br i1 %410, label %357, label %415, !prof !310, !llvm.loop !311

411:                                              ; preds = %403
  %412 = load i32, ptr %13, align 4, !tbaa !152
  %413 = load i32, ptr %11, align 4, !tbaa !152
  %414 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %60, i32 noundef %54, i32 noundef %60, i32 noundef %412, i32 noundef %413, i32 noundef 0, i32 noundef %414, i32 noundef %3) #14
  br label %895

415:                                              ; preds = %405, %395
  %416 = load i32, ptr %11, align 4
  br label %417

417:                                              ; preds = %415, %344, %338, %330, %321, %313
  %418 = phi i32 [ 0, %321 ], [ 0, %338 ], [ 0, %330 ], [ %314, %313 ], [ 0, %344 ], [ %416, %415 ]
  %419 = phi i32 [ -32000, %321 ], [ -32000, %338 ], [ -32000, %330 ], [ -32000, %313 ], [ -32000, %344 ], [ %396, %415 ]
  %420 = load i32, ptr %14, align 4, !tbaa !152
  %421 = icmp eq i32 %420, 0
  %422 = load i32, ptr %15, align 4
  %423 = icmp eq i32 %422, 0
  %424 = select i1 %421, i1 %423, i1 false
  %425 = icmp eq i32 %418, 0
  %426 = select i1 %424, i1 %425, i1 false
  %427 = and i1 %268, %426
  %428 = icmp sgt i32 %266, 1
  %429 = select i1 %427, i1 %428, i1 false
  %430 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4
  %431 = icmp ne i32 %430, 2
  %432 = select i1 %429, i1 %431, i1 false
  br i1 %432, label %433, label %508, !prof !312

433:                                              ; preds = %417
  %434 = add nsw i32 %3, -24
  %435 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %54, i32 noundef %60, i32 noundef %434, i32 noundef 0, i32 noundef %76) #14
  %436 = icmp sgt i32 %435, %54
  br i1 %436, label %437, label %508, !prof !313

437:                                              ; preds = %433
  store i32 -1, ptr %9, align 4, !tbaa !152
  %438 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %265) #14, !range !142
  %439 = icmp ne i32 %438, 0
  %440 = load i32, ptr %14, align 4
  %441 = icmp slt i32 %440, 2
  %442 = select i1 %439, i1 %441, i1 false
  br i1 %442, label %443, label %508, !prof !314

443:                                              ; preds = %437
  %444 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %445 = add nsw i32 %3, -16
  %446 = sub i32 50, %54
  %447 = sub nsw i32 0, %60
  %448 = sub nsw i32 49, %54
  %449 = add nsw i32 %54, -50
  br label %450

450:                                              ; preds = %443, %496
  %451 = phi i32 [ 0, %443 ], [ %499, %496 ]
  %452 = phi i32 [ %419, %443 ], [ %498, %496 ]
  %453 = phi i32 [ 1, %443 ], [ %497, %496 ]
  %454 = load i32, ptr %9, align 4, !tbaa !152
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !152
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %457) #14
  %458 = load i32, ptr %456, align 4, !tbaa !152
  %459 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %458) #14
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %496, label %461, !prof !315

461:                                              ; preds = %450
  %462 = load i64, ptr %444, align 8, !tbaa !194
  %463 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !195
  %464 = load i32, ptr %21, align 8, !tbaa !137
  %465 = add i32 %464, -1
  %466 = add i32 %465, %463
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %467
  store i64 %462, ptr %468, align 8, !tbaa !133
  %469 = load i32, ptr %456, align 4, !tbaa !152
  %470 = sext i32 %465 to i64
  %471 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %470
  store i32 %469, ptr %471, align 4, !tbaa !152
  %472 = add nsw i32 %451, 1
  %473 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #14
  %474 = load i32, ptr %21, align 8, !tbaa !137
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %475
  store i32 %473, ptr %476, align 4, !tbaa !152
  %477 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %447, i32 noundef %446, i32 noundef 1) #14
  %478 = icmp eq i32 %453, 0
  br i1 %478, label %490, label %479, !prof !316

479:                                              ; preds = %461
  %480 = sub nsw i32 0, %54
  %481 = xor i32 %54, -1
  %482 = icmp eq i32 %76, 0
  %483 = zext i1 %482 to i32
  %484 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %481, i32 noundef %480, i32 noundef %445, i32 noundef 0, i32 noundef %483) #14
  %485 = sub nsw i32 0, %484
  %486 = icmp slt i32 %54, %485
  br i1 %486, label %487, label %488, !prof !317

487:                                              ; preds = %479
  store i32 1, ptr %14, align 4, !tbaa !152
  br label %496

488:                                              ; preds = %479
  store i32 0, ptr %14, align 4, !tbaa !152
  %489 = add nsw i32 %451, 11
  br label %496

490:                                              ; preds = %461
  %491 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %448, i32 noundef %446, i32 noundef %445, i32 noundef 0, i32 noundef 0) #14
  %492 = sub nsw i32 0, %491
  %493 = icmp slt i32 %449, %492
  br i1 %493, label %494, label %496, !prof !318

494:                                              ; preds = %490
  store i32 0, ptr %14, align 4, !tbaa !152
  %495 = add nsw i32 %451, 11
  br label %496

496:                                              ; preds = %488, %487, %494, %490, %450
  %497 = phi i32 [ %453, %450 ], [ 0, %490 ], [ 0, %494 ], [ 0, %487 ], [ 0, %488 ]
  %498 = phi i32 [ %452, %450 ], [ %492, %490 ], [ %492, %494 ], [ %485, %487 ], [ %485, %488 ]
  %499 = phi i32 [ %451, %450 ], [ %472, %490 ], [ %495, %494 ], [ %472, %487 ], [ %489, %488 ]
  %500 = load i32, ptr %456, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %500) #14
  %501 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %265) #14, !range !142
  %502 = icmp ne i32 %501, 0
  %503 = load i32, ptr %14, align 4
  %504 = icmp slt i32 %503, 2
  %505 = select i1 %502, i1 %504, i1 false
  %506 = icmp slt i32 %499, 3
  %507 = select i1 %505, i1 %506, i1 false
  br i1 %507, label %450, label %508, !prof !319, !llvm.loop !320

508:                                              ; preds = %496, %437, %433, %417
  %509 = phi i32 [ %419, %417 ], [ %419, %433 ], [ %419, %437 ], [ %498, %496 ]
  br i1 %85, label %515, label %510, !prof !321

510:                                              ; preds = %508
  %511 = load i32, ptr %21, align 8, !tbaa !137
  %512 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %513 = shl nsw i32 %512, 1
  %514 = icmp sle i32 %511, %513
  br label %515

515:                                              ; preds = %510, %508
  %516 = phi i1 [ false, %508 ], [ %514, %510 ]
  store i32 -1, ptr %9, align 4, !tbaa !152
  %517 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %265) #14, !range !142
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %862, label %519, !prof !322

519:                                              ; preds = %515
  %520 = icmp eq i32 %266, 1
  %521 = select i1 %82, i1 %520, i1 false
  %522 = select i1 %521, i32 4, i32 0
  %523 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %524 = add nsw i32 %133, %122
  %525 = icmp eq i32 %524, 1
  %526 = lshr i32 %3, 2
  %527 = add nuw nsw i32 %526, 1
  %528 = icmp slt i32 %3, 25
  %529 = icmp slt i32 %3, 9
  %530 = icmp ult i32 %3, 13
  %531 = add nsw i32 %81, 100
  %532 = add nsw i32 %81, 300
  %533 = add nsw i32 %81, 75
  %534 = add nsw i32 %81, 200
  %535 = sub nsw i32 0, %60
  %536 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %537 = icmp sgt i32 %3, 4
  br label %538

538:                                              ; preds = %519, %851
  %539 = phi i32 [ %54, %519 ], [ %857, %851 ]
  %540 = phi i32 [ %509, %519 ], [ %856, %851 ]
  %541 = phi i32 [ 1, %519 ], [ %855, %851 ]
  %542 = phi i32 [ -32000, %519 ], [ %854, %851 ]
  %543 = phi i32 [ 1, %519 ], [ %853, %851 ]
  %544 = phi i32 [ 1, %519 ], [ %852, %851 ]
  %545 = icmp sle i32 %544, %527
  %546 = add nsw i32 %539, 1
  %547 = icmp eq i32 %60, %546
  br label %548

548:                                              ; preds = %538, %654
  %549 = phi i32 [ %541, %538 ], [ 0, %654 ]
  %550 = load i32, ptr %21, align 8, !tbaa !137
  %551 = icmp slt i32 %550, 60
  %552 = load i32, ptr %9, align 4, !tbaa !152
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %553
  %555 = load i32, ptr %554, align 4, !tbaa !152
  br i1 %551, label %556, label %638, !prof !323

556:                                              ; preds = %548
  %557 = lshr i32 %555, 6
  %558 = and i32 %557, 63
  %559 = zext nneg i32 %558 to i64
  %560 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !152
  %562 = add nsw i32 %561, 1
  %563 = and i32 %562, -2
  %564 = icmp eq i32 %563, 2
  br i1 %564, label %565, label %574, !prof !324

565:                                              ; preds = %556
  %566 = lshr i32 %555, 3
  %567 = and i32 %566, 7
  switch i32 %567, label %568 [
    i32 1, label %571
    i32 6, label %571
  ], !prof !325

568:                                              ; preds = %565
  %569 = and i32 %555, 61440
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %574, label %571, !prof !326

571:                                              ; preds = %565, %565, %568
  br i1 %516, label %572, label %574, !prof !327

572:                                              ; preds = %571
  %573 = or disjoint i32 %522, 2
  br label %574

574:                                              ; preds = %571, %572, %568, %556
  %575 = phi i32 [ %573, %572 ], [ %522, %568 ], [ %522, %556 ], [ %522, %571 ]
  %576 = lshr i32 %555, 19
  %577 = and i32 %576, 15
  %578 = icmp eq i32 %577, 13
  br i1 %578, label %612, label %579, !prof !328

579:                                              ; preds = %574
  %580 = add nsw i32 %550, -1
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %581
  %583 = load i32, ptr %582, align 4, !tbaa !152
  %584 = lshr i32 %583, 19
  %585 = and i32 %584, 15
  %586 = icmp eq i32 %585, 13
  br i1 %586, label %612, label %587, !prof !329

587:                                              ; preds = %579
  %588 = zext nneg i32 %577 to i64
  %589 = getelementptr inbounds [14 x i32], ptr @_ZL8rc_index, i64 0, i64 %588
  %590 = load i32, ptr %589, align 4, !tbaa !152
  %591 = zext nneg i32 %585 to i64
  %592 = getelementptr inbounds [14 x i32], ptr @_ZL8rc_index, i64 0, i64 %591
  %593 = load i32, ptr %592, align 4, !tbaa !152
  %594 = icmp eq i32 %590, %593
  br i1 %594, label %595, label %612, !prof !330

595:                                              ; preds = %587
  %596 = and i32 %555, 63
  %597 = and i32 %583, 63
  %598 = icmp eq i32 %596, %597
  br i1 %598, label %599, label %612, !prof !331

599:                                              ; preds = %595
  %600 = load i32, ptr %523, align 4, !tbaa !149
  %601 = icmp eq i32 %600, 0
  %602 = zext i1 %601 to i32
  %603 = lshr i32 %555, 12
  %604 = and i32 %603, 15
  %605 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %0, i32 noundef %602, i32 noundef %558, i32 noundef %596, i32 noundef %604) #14
  %606 = icmp sgt i32 %605, 0
  br i1 %606, label %607, label %612, !prof !332

607:                                              ; preds = %599
  br i1 %516, label %608, label %610, !prof !333

608:                                              ; preds = %607
  %609 = add nuw nsw i32 %575, 3
  br label %612

610:                                              ; preds = %607
  %611 = add nuw nsw i32 %575, 1
  br label %612

612:                                              ; preds = %599, %610, %608, %595, %587, %579, %574
  %613 = phi i32 [ %575, %595 ], [ %575, %587 ], [ %575, %579 ], [ %575, %574 ], [ %609, %608 ], [ %611, %610 ], [ %575, %599 ]
  %614 = load i32, ptr %14, align 4
  %615 = icmp eq i32 %614, 1
  br i1 %615, label %616, label %627, !prof !334

616:                                              ; preds = %612
  %617 = icmp ne i32 %543, 0
  %618 = icmp ne i32 %613, 0
  %619 = select i1 %618, i1 %617, i1 false
  br i1 %619, label %620, label %621, !prof !335

620:                                              ; preds = %616
  store i32 1, ptr %15, align 4, !tbaa !152
  br label %627

621:                                              ; preds = %616
  %622 = icmp eq i32 %613, 0
  br i1 %622, label %623, label %627, !prof !336

623:                                              ; preds = %621
  %624 = icmp eq i32 %543, 0
  br i1 %624, label %630, label %625, !prof !337

625:                                              ; preds = %623
  %626 = select i1 %516, i32 3, i32 1
  store i32 0, ptr %15, align 4, !tbaa !152
  br label %630

627:                                              ; preds = %612, %621, %620
  %628 = icmp ugt i32 %613, 4
  br i1 %628, label %629, label %630, !prof !338

629:                                              ; preds = %627
  br label %630

630:                                              ; preds = %625, %623, %629, %627
  %631 = phi i32 [ 4, %629 ], [ %613, %627 ], [ %626, %625 ], [ 0, %623 ]
  %632 = load i32, ptr %554, align 4, !tbaa !152
  %633 = lshr i32 %632, 19
  %634 = and i32 %633, 15
  switch i32 %634, label %635 [
    i32 13, label %638
    i32 1, label %638
    i32 2, label %638
  ], !prof !339

635:                                              ; preds = %630
  br i1 %525, label %636, label %638, !prof !340

636:                                              ; preds = %635
  %637 = add nuw nsw i32 %631, 4
  br label %638

638:                                              ; preds = %548, %630, %630, %630, %636, %635
  %639 = phi i32 [ %632, %630 ], [ %632, %630 ], [ %632, %630 ], [ %632, %636 ], [ %632, %635 ], [ %555, %548 ]
  %640 = phi i32 [ %631, %630 ], [ %631, %630 ], [ %631, %630 ], [ %637, %636 ], [ %631, %635 ], [ 0, %548 ]
  %641 = and i32 %639, 7864320
  %642 = icmp ne i32 %641, 6815744
  %643 = select i1 %642, i1 true, i1 %545
  br i1 %643, label %660, label %644, !prof !341

644:                                              ; preds = %638
  %645 = call fastcc noundef i32 @_ZL15history_pre_cutP7state_tii(ptr noundef nonnull %0, i32 noundef %639, i32 noundef %527) #14, !range !142
  %646 = icmp ne i32 %645, 0
  %647 = and i1 %528, %646
  %648 = icmp eq i32 %640, 0
  %649 = select i1 %647, i1 %648, i1 false
  %650 = select i1 %649, i1 %547, i1 false
  %651 = and i32 %639, 61440
  %652 = icmp eq i32 %651, 0
  %653 = and i1 %652, %650
  br i1 %653, label %654, label %662, !prof !342

654:                                              ; preds = %644
  %655 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %265) #14, !range !142
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %548, !prof !343, !llvm.loop !344

657:                                              ; preds = %654
  %658 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %659 = icmp eq i32 %658, 0
  br label %883

660:                                              ; preds = %638
  %661 = select i1 %642, i32 %549, i32 %541, !prof !345
  br label %662

662:                                              ; preds = %644, %660
  %663 = phi i32 [ %661, %660 ], [ %549, %644 ]
  %664 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %553
  br i1 %529, label %665, label %668, !prof !346

665:                                              ; preds = %662
  %666 = icmp slt i32 %533, %539
  %667 = icmp slt i32 %534, %539
  br label %672

668:                                              ; preds = %662
  br i1 %530, label %669, label %672, !prof !347

669:                                              ; preds = %668
  %670 = icmp slt i32 %531, %539
  %671 = icmp slt i32 %532, %539
  br label %672

672:                                              ; preds = %669, %665, %668
  %673 = phi i1 [ false, %668 ], [ %666, %665 ], [ %670, %669 ]
  %674 = phi i1 [ false, %668 ], [ %667, %665 ], [ %671, %669 ]
  br i1 %642, label %675, label %686, !prof !348

675:                                              ; preds = %672
  %676 = load i32, ptr %523, align 4, !tbaa !149
  %677 = icmp eq i32 %676, 0
  %678 = zext i1 %677 to i32
  %679 = lshr i32 %639, 6
  %680 = and i32 %679, 63
  %681 = and i32 %639, 63
  %682 = lshr i32 %639, 12
  %683 = and i32 %682, 15
  %684 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %0, i32 noundef %678, i32 noundef %680, i32 noundef %681, i32 noundef %683) #14
  %685 = load i32, ptr %664, align 4, !tbaa !152
  br label %686

686:                                              ; preds = %672, %675
  %687 = phi i32 [ %685, %675 ], [ %639, %672 ]
  %688 = phi i32 [ %684, %675 ], [ -1000000, %672 ]
  call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %687) #14
  %689 = load i32, ptr %664, align 4, !tbaa !152
  %690 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef nonnull %0, i32 noundef %689) #14
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %810, label %692, !prof !349

692:                                              ; preds = %686
  %693 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %0) #14
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %700, !prof !350

695:                                              ; preds = %692
  br i1 %516, label %696, label %698, !prof !351

696:                                              ; preds = %695
  %697 = add nuw nsw i32 %640, 4
  br label %700

698:                                              ; preds = %695
  %699 = add nuw nsw i32 %640, 2
  br label %700

700:                                              ; preds = %696, %698, %692
  %701 = phi i32 [ %697, %696 ], [ %699, %698 ], [ %640, %692 ]
  %702 = or i32 %693, %80
  %703 = icmp eq i32 %702, 0
  %704 = select i1 %703, i1 %547, i1 false
  br i1 %704, label %705, label %721, !prof !352

705:                                              ; preds = %700
  %706 = icmp slt i32 %688, 86
  %707 = and i1 %674, %706
  br i1 %707, label %708, label %713, !prof !353

708:                                              ; preds = %705
  %709 = load i32, ptr %664, align 4, !tbaa !152
  %710 = and i32 %709, 61440
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %713, !prof !354

712:                                              ; preds = %708
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %709) #14
  br label %851, !llvm.loop !344

713:                                              ; preds = %708, %705
  %714 = icmp slt i32 %688, -50
  %715 = and i1 %673, %714
  br i1 %715, label %716, label %721, !prof !355

716:                                              ; preds = %713
  %717 = load i32, ptr %664, align 4, !tbaa !152
  %718 = and i32 %717, 61440
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %721, !prof !356

720:                                              ; preds = %716
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %717) #14
  br label %851, !llvm.loop !344

721:                                              ; preds = %713, %716, %700
  %722 = add nsw i32 %701, %3
  %723 = sub nsw i32 0, %539
  %724 = sub i32 130, %539
  %725 = icmp sgt i32 %722, 4
  %726 = or i1 %694, %725
  %727 = zext i1 %726 to i32
  %728 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef nonnull %0, i32 noundef %535, i32 noundef %724, i32 noundef %727) #14
  %729 = load i32, ptr %21, align 8, !tbaa !137
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %730
  store i32 %693, ptr %731, align 4, !tbaa !152
  %732 = load i64, ptr %536, align 8, !tbaa !194
  %733 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !195
  %734 = load i32, ptr %21, align 8, !tbaa !137
  %735 = add i32 %734, -1
  %736 = add i32 %735, %733
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %737
  store i64 %732, ptr %738, align 8, !tbaa !133
  %739 = load i32, ptr %664, align 4, !tbaa !152
  %740 = sext i32 %735 to i64
  %741 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %740
  store i32 %739, ptr %741, align 4, !tbaa !152
  %742 = icmp sgt i32 %544, 3
  %743 = select i1 %537, i1 %742, i1 false
  br i1 %743, label %744, label %759, !prof !357

744:                                              ; preds = %721
  %745 = or i32 %701, %693
  %746 = icmp eq i32 %745, 0
  %747 = select i1 %547, i1 %746, i1 false
  %748 = icmp slt i32 %688, -50
  %749 = and i1 %748, %747
  br i1 %749, label %750, label %759, !prof !358

750:                                              ; preds = %744
  %751 = call fastcc noundef i32 @_ZL13history_scoreP7state_ti(ptr noundef nonnull %0, i32 noundef %739) #14
  %752 = icmp slt i32 %751, 80
  %753 = and i32 %739, 61440
  %754 = icmp eq i32 %753, 0
  %755 = select i1 %752, i1 %754, i1 false
  br i1 %755, label %756, label %759, !prof !359

756:                                              ; preds = %750
  %757 = add nsw i32 %701, -4
  %758 = add nsw i32 %757, %3
  br label %759

759:                                              ; preds = %756, %750, %744, %721
  %760 = phi i1 [ true, %756 ], [ false, %750 ], [ false, %744 ], [ false, %721 ]
  %761 = phi i32 [ 4, %756 ], [ 0, %750 ], [ 0, %744 ], [ 0, %721 ]
  %762 = phi i32 [ %757, %756 ], [ %701, %750 ], [ %701, %744 ], [ %701, %721 ]
  %763 = phi i32 [ %758, %756 ], [ %722, %750 ], [ %722, %744 ], [ %722, %721 ]
  %764 = add nsw i32 %763, -4
  %765 = icmp eq i32 %543, 1
  %766 = icmp slt i32 %763, 5
  br i1 %765, label %767, label %776, !prof !360

767:                                              ; preds = %759
  br i1 %766, label %768, label %771, !prof !361

768:                                              ; preds = %767
  %769 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %535, i32 noundef %723, i32 noundef 0, i32 noundef 0) #14
  %770 = sub nsw i32 0, %769
  br label %807

771:                                              ; preds = %767
  %772 = icmp eq i32 %76, 0
  %773 = zext i1 %772 to i32
  %774 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %535, i32 noundef %723, i32 noundef %764, i32 noundef 0, i32 noundef %773) #14
  %775 = sub nsw i32 0, %774
  br label %807

776:                                              ; preds = %759
  %777 = xor i32 %539, -1
  br i1 %766, label %778, label %780, !prof !362

778:                                              ; preds = %776
  %779 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %777, i32 noundef %723, i32 noundef 0, i32 noundef 0) #14
  br label %782

780:                                              ; preds = %776
  %781 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %777, i32 noundef %723, i32 noundef %764, i32 noundef 0, i32 noundef 1) #14
  br label %782

782:                                              ; preds = %780, %778
  %783 = phi i32 [ %779, %778 ], [ %781, %780 ]
  %784 = sub nsw i32 0, %783
  %785 = icmp slt i32 %542, %784
  %786 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %787 = icmp eq i32 %786, 0
  %788 = select i1 %785, i1 %787, i1 false
  %789 = icmp slt i32 %539, %784
  %790 = select i1 %788, i1 %789, i1 false
  %791 = icmp sgt i32 %60, %784
  %792 = or i1 %760, %791
  %793 = and i1 %792, %790
  br i1 %793, label %794, label %807, !prof !363

794:                                              ; preds = %782
  %795 = select i1 %760, i32 %761, i32 0, !prof !364
  %796 = add nuw i32 %795, %3
  %797 = add i32 %796, %762
  %798 = icmp slt i32 %797, 5
  br i1 %798, label %799, label %802, !prof !365

799:                                              ; preds = %794
  %800 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef nonnull %0, i32 noundef %535, i32 noundef %723, i32 noundef 0, i32 noundef 0) #14
  %801 = sub nsw i32 0, %800
  br label %807

802:                                              ; preds = %794
  %803 = add nsw i32 %797, -4
  %804 = zext i1 %760 to i32
  %805 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %535, i32 noundef %723, i32 noundef %803, i32 noundef 0, i32 noundef %804) #14
  %806 = sub nsw i32 0, %805
  br label %807

807:                                              ; preds = %782, %802, %799, %768, %771
  %808 = phi i32 [ %770, %768 ], [ %775, %771 ], [ %784, %782 ], [ %801, %799 ], [ %806, %802 ]
  %809 = call i32 @llvm.smax.i32(i32 %808, i32 %542)
  br label %810

810:                                              ; preds = %807, %686
  %811 = phi i32 [ %809, %807 ], [ %542, %686 ]
  %812 = phi i32 [ 0, %807 ], [ %663, %686 ]
  %813 = phi i32 [ %808, %807 ], [ %540, %686 ]
  %814 = load i32, ptr %664, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %814) #14
  %815 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %817, label %895, !prof !366

817:                                              ; preds = %810
  br i1 %691, label %851, label %818, !prof !367

818:                                              ; preds = %817
  %819 = icmp sgt i32 %813, %539
  br i1 %819, label %820, label %844, !prof !368

820:                                              ; preds = %818
  %821 = icmp slt i32 %813, %60
  %822 = load i32, ptr %664, align 4, !tbaa !152
  br i1 %821, label %841, label %823, !prof !369

823:                                              ; preds = %820
  call fastcc void @_ZL12history_goodP7state_tii(ptr noundef nonnull %0, i32 noundef %822, i32 noundef %3) #14
  %824 = icmp sgt i32 %544, 1
  br i1 %824, label %825, label %834, !prof !370

825:                                              ; preds = %823
  %826 = add nsw i32 %544, -1
  %827 = zext nneg i32 %826 to i64
  br label %828

828:                                              ; preds = %825, %828
  %829 = phi i64 [ 0, %825 ], [ %832, %828 ]
  %830 = getelementptr inbounds [240 x i32], ptr %16, i64 0, i64 %829
  %831 = load i32, ptr %830, align 4, !tbaa !152
  call fastcc void @_ZL11history_badP7state_tii(ptr noundef %0, i32 noundef %831, i32 noundef %3) #14
  %832 = add nuw nsw i64 %829, 1
  %833 = icmp eq i64 %832, %827
  br i1 %833, label %834, label %828, !prof !371, !llvm.loop !372

834:                                              ; preds = %828, %823
  %835 = load i32, ptr %664, align 4, !tbaa !152
  %836 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %835) #14
  %837 = zext i16 %836 to i32
  %838 = load i32, ptr %11, align 4, !tbaa !152
  %839 = load i32, ptr %14, align 4, !tbaa !152
  %840 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %813, i32 noundef %54, i32 noundef %60, i32 noundef %837, i32 noundef %838, i32 noundef %839, i32 noundef %840, i32 noundef %3) #14
  br label %895

841:                                              ; preds = %820
  %842 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %822) #14
  %843 = zext i16 %842 to i32
  store i32 %843, ptr %13, align 4, !tbaa !152
  br label %844

844:                                              ; preds = %841, %818
  %845 = phi i32 [ %813, %841 ], [ %539, %818 ]
  %846 = load i32, ptr %664, align 4, !tbaa !152
  %847 = add nsw i32 %544, -1
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [240 x i32], ptr %16, i64 0, i64 %848
  store i32 %846, ptr %849, align 4, !tbaa !152
  %850 = add nsw i32 %544, 1
  br label %851

851:                                              ; preds = %817, %844, %720, %712
  %852 = phi i32 [ %544, %720 ], [ %544, %712 ], [ %850, %844 ], [ %544, %817 ]
  %853 = phi i32 [ %543, %720 ], [ %543, %712 ], [ 0, %844 ], [ %543, %817 ]
  %854 = phi i32 [ %539, %720 ], [ %539, %712 ], [ %811, %844 ], [ %811, %817 ]
  %855 = phi i32 [ 0, %720 ], [ 0, %712 ], [ %812, %844 ], [ %812, %817 ]
  %856 = phi i32 [ %540, %720 ], [ %540, %712 ], [ %813, %844 ], [ %813, %817 ]
  %857 = phi i32 [ %539, %720 ], [ %539, %712 ], [ %845, %844 ], [ %539, %817 ]
  %858 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef %265) #14, !range !142
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %538, !prof !373

860:                                              ; preds = %851
  %861 = icmp ne i32 %855, 0
  br label %862

862:                                              ; preds = %860, %515
  %863 = phi i32 [ -32000, %515 ], [ %854, %860 ]
  %864 = phi i1 [ true, %515 ], [ %861, %860 ]
  %865 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %866 = icmp eq i32 %865, 0
  %867 = select i1 %864, i1 %866, i1 false
  br i1 %867, label %868, label %883, !prof !374

868:                                              ; preds = %862
  %869 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0) #14
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %879, label %871, !prof !375

871:                                              ; preds = %868
  %872 = load i32, ptr %21, align 8, !tbaa !137
  %873 = add nsw i32 %872, -32000
  %874 = load i32, ptr %11, align 4, !tbaa !152
  %875 = load i32, ptr %14, align 4, !tbaa !152
  %876 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %873, i32 noundef %54, i32 noundef %60, i32 noundef 0, i32 noundef %874, i32 noundef %875, i32 noundef %876, i32 noundef %3) #14
  %877 = load i32, ptr %21, align 8, !tbaa !137
  %878 = add nsw i32 %877, -32000
  br label %895

879:                                              ; preds = %868
  %880 = load i32, ptr %11, align 4, !tbaa !152
  %881 = load i32, ptr %14, align 4, !tbaa !152
  %882 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef 0, i32 noundef %54, i32 noundef %60, i32 noundef 0, i32 noundef %880, i32 noundef %881, i32 noundef %882, i32 noundef %3) #14
  br label %895

883:                                              ; preds = %657, %862
  %884 = phi i1 [ %659, %657 ], [ %866, %862 ]
  %885 = phi i32 [ %542, %657 ], [ %863, %862 ]
  %886 = load i32, ptr %36, align 4, !tbaa !145
  %887 = icmp slt i32 %886, 99
  %888 = select i1 %887, i1 %884, i1 false
  %889 = select i1 %887, i32 %885, i32 0, !prof !376
  br i1 %888, label %890, label %895, !prof !377

890:                                              ; preds = %883
  %891 = load i32, ptr %13, align 4, !tbaa !152
  %892 = load i32, ptr %11, align 4, !tbaa !152
  %893 = load i32, ptr %14, align 4, !tbaa !152
  %894 = load i32, ptr %15, align 4, !tbaa !152
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %885, i32 noundef %54, i32 noundef %60, i32 noundef %891, i32 noundef %892, i32 noundef %893, i32 noundef %894, i32 noundef %3) #14
  br label %895

895:                                              ; preds = %810, %834, %228, %234, %411, %215, %204, %883, %92, %99, %106, %161, %871, %879, %890, %67, %64, %57, %51, %26, %62, %39, %24
  %896 = phi i32 [ %25, %24 ], [ %46, %39 ], [ %63, %62 ], [ 0, %26 ], [ %49, %51 ], [ %55, %57 ], [ %65, %64 ], [ %68, %67 ], [ %60, %411 ], [ 0, %161 ], [ %81, %92 ], [ %100, %99 ], [ %81, %106 ], [ %878, %871 ], [ 0, %879 ], [ %889, %883 ], [ %885, %890 ], [ %206, %215 ], [ 0, %204 ], [ 0, %228 ], [ %54, %234 ], [ %813, %834 ], [ 0, %810 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %7) #13
  ret i32 %896
}

; Function Attrs: optsize
declare noundef i32 @_Z3genP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !378 !PGOFuncName !379 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %130, !prof !380

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %127
  %12 = phi i64 [ 0, %7 ], [ %128, %127 ]
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !152
  %15 = lshr i32 %14, 6
  %16 = and i32 %15, 63
  %17 = and i32 %14, 63
  %18 = lshr i32 %14, 12
  %19 = and i32 %18, 15
  %20 = lshr i32 %14, 19
  %21 = and i32 %20, 15
  %22 = load i32, ptr @uci_multipv, align 4, !tbaa !152
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %35, !prof !381

24:                                               ; preds = %11
  %25 = load i32, ptr %8, align 8, !tbaa !137
  %26 = icmp eq i32 %25, 1
  %27 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %28 = icmp sgt i32 %27, 2
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = getelementptr inbounds [240 x i32], ptr @root_scores, i64 0, i64 %12
  %32 = load i32, ptr %31, align 4, !tbaa !152
  %33 = add nsw i32 %32, 100000
  %34 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %33, ptr %34, align 4, !tbaa !152
  br label %127

35:                                               ; preds = %24, %11
  %36 = load i32, ptr @uci_limitstrength, align 4, !tbaa !152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38, !prof !382

38:                                               ; preds = %35
  %39 = load i32, ptr %8, align 8, !tbaa !137
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = getelementptr inbounds i32, ptr %2, i64 %12
  %43 = tail call fastcc noundef i32 @_ZL12make_blunderP7state_tiPii(ptr noundef nonnull %0, i32 noundef %14, ptr noundef %42, i32 noundef %3) #14, !range !142
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, ptr %13, align 4, !tbaa !152
  br label %48

47:                                               ; preds = %41
  store i32 -1000000, ptr %42, align 4, !tbaa !152
  br label %127

48:                                               ; preds = %45, %38, %35
  %49 = phi i32 [ %46, %45 ], [ %14, %38 ], [ %14, %35 ]
  %50 = tail call noundef zeroext i16 @_Z12compact_movei(i32 noundef %49) #14
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %51, %4
  br i1 %52, label %53, label %55, !prof !383

53:                                               ; preds = %48
  %54 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 128000000, ptr %54, align 4, !tbaa !152
  br label %127

55:                                               ; preds = %48
  %56 = icmp ne i32 %21, 13
  %57 = icmp ne i32 %19, 0
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %85, !prof !384

59:                                               ; preds = %55
  %60 = zext nneg i32 %21 to i64
  %61 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !152
  %63 = tail call i32 @llvm.abs.i32(i32 %62, i1 true)
  %64 = zext nneg i32 %16 to i64
  %65 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !152
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !152
  %70 = tail call i32 @llvm.abs.i32(i32 %69, i1 true)
  %71 = sub nsw i32 %63, %70
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %79, label %73, !prof !385

73:                                               ; preds = %59
  %74 = load i32, ptr %9, align 4, !tbaa !149
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = tail call noundef i32 @_Z3seeP7state_tiiii(ptr noundef nonnull %0, i32 noundef %76, i32 noundef %16, i32 noundef %17, i32 noundef %19) #14
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %83, !prof !386

79:                                               ; preds = %59, %73
  %80 = phi i32 [ %77, %73 ], [ %71, %59 ]
  %81 = add nuw nsw i32 %80, 10000000
  %82 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %81, ptr %82, align 4, !tbaa !152
  br label %127

83:                                               ; preds = %73
  %84 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %77, ptr %84, align 4, !tbaa !152
  br label %127

85:                                               ; preds = %55
  %86 = load i32, ptr %13, align 4, !tbaa !152
  %87 = load i32, ptr %8, align 8, !tbaa !137
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %88
  %90 = load i32, ptr %89, align 8, !tbaa !223
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %94, !prof !387

92:                                               ; preds = %85
  %93 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 8000000, ptr %93, align 4, !tbaa !152
  br label %127

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %88, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !226
  %97 = icmp eq i32 %86, %96
  br i1 %97, label %98, label %100, !prof !388

98:                                               ; preds = %94
  %99 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 7000000, ptr %99, align 4, !tbaa !152
  br label %127

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %88, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !228
  %103 = icmp eq i32 %86, %102
  br i1 %103, label %104, label %106, !prof !389

104:                                              ; preds = %100
  %105 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 6000000, ptr %105, align 4, !tbaa !152
  br label %127

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %88, i32 3
  %108 = load i32, ptr %107, align 4, !tbaa !230
  %109 = icmp eq i32 %86, %108
  br i1 %109, label %110, label %112, !prof !390

110:                                              ; preds = %106
  %111 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 5000000, ptr %111, align 4, !tbaa !152
  br label %127

112:                                              ; preds = %106
  %113 = zext nneg i32 %16 to i64
  %114 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !152
  %116 = add nsw i32 %115, -1
  %117 = load i32, ptr %0, align 8, !tbaa !232
  %118 = sext i32 %117 to i64
  %119 = sext i32 %116 to i64
  %120 = zext nneg i32 %17 to i64
  %121 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %118, i64 %119, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !152
  %123 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %118, i64 %119, i64 %113
  %124 = load i32, ptr %123, align 4, !tbaa !152
  %125 = sub nsw i32 %122, %124
  %126 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %125, ptr %126, align 4, !tbaa !152
  br label %127

127:                                              ; preds = %53, %92, %104, %112, %110, %98, %79, %83, %47, %30
  %128 = add nuw nsw i64 %12, 1
  %129 = icmp eq i64 %128, %10
  br i1 %129, label %130, label %11, !prof !391, !llvm.loop !392

130:                                              ; preds = %127, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @_ZL13history_scoreP7state_ti(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !393 !PGOFuncName !394 {
  %3 = and i32 %1, 63
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !152
  %7 = add nsw i32 %6, -1
  %8 = load i32, ptr %0, align 8, !tbaa !232
  %9 = sext i32 %8 to i64
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %9, i64 %10, i64 %4
  %12 = load i32, ptr %11, align 4, !tbaa !152
  %13 = shl i32 %12, 7
  %14 = add i32 %13, 128
  %15 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %9, i64 %10, i64 %4
  %16 = load i32, ptr %15, align 4, !tbaa !152
  %17 = add nsw i32 %16, 1
  %18 = sdiv i32 %14, %17
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL12history_goodP7state_tii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !prof !395 !PGOFuncName !396 {
  %4 = and i32 %1, 7925760
  %5 = icmp eq i32 %4, 6815744
  br i1 %5, label %6, label %101, !prof !397

6:                                                ; preds = %3
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 63
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !152
  %12 = add nsw i32 %11, -1
  %13 = and i32 %1, 63
  %14 = add nsw i32 %2, 3
  %15 = sdiv i32 %14, 4
  %16 = load i32, ptr %0, align 8, !tbaa !232
  %17 = sext i32 %16 to i64
  %18 = sext i32 %12 to i64
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %17, i64 %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !152
  %22 = add nsw i32 %21, %15
  store i32 %22, ptr %20, align 4, !tbaa !152
  %23 = load i32, ptr %0, align 8, !tbaa !232
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %24, i64 %18, i64 %19
  %26 = load i32, ptr %25, align 4, !tbaa !152
  %27 = add nsw i32 %26, %15
  store i32 %27, ptr %25, align 4, !tbaa !152
  %28 = load i32, ptr %0, align 8, !tbaa !232
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %29, i64 %18, i64 %19
  %31 = load i32, ptr %30, align 4, !tbaa !152
  %32 = icmp sgt i32 %31, 16384
  br i1 %32, label %33, label %57, !prof !398

33:                                               ; preds = %6, %51
  %34 = phi i64 [ %52, %51 ], [ 0, %6 ]
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %49, %35 ]
  %37 = load i32, ptr %0, align 8, !tbaa !232
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %38, i64 %34, i64 %36
  %40 = load i32, ptr %39, align 4, !tbaa !152
  %41 = add nsw i32 %40, 1
  %42 = ashr i32 %41, 1
  store i32 %42, ptr %39, align 4, !tbaa !152
  %43 = load i32, ptr %0, align 8, !tbaa !232
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %44, i64 %34, i64 %36
  %46 = load i32, ptr %45, align 4, !tbaa !152
  %47 = add nsw i32 %46, 1
  %48 = ashr i32 %47, 1
  store i32 %48, ptr %45, align 4, !tbaa !152
  %49 = add nuw nsw i64 %36, 1
  %50 = icmp eq i64 %49, 64
  br i1 %50, label %51, label %35, !prof !399, !llvm.loop !400

51:                                               ; preds = %35
  %52 = add nuw nsw i64 %34, 1
  %53 = icmp eq i64 %52, 12
  br i1 %53, label %54, label %33, !prof !401, !llvm.loop !402

54:                                               ; preds = %51
  %55 = load i32, ptr %0, align 8, !tbaa !232
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %54, %6
  %58 = phi i64 [ %56, %54 ], [ %29, %6 ]
  %59 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %58, i64 %18, i64 %19
  %60 = load i32, ptr %59, align 4, !tbaa !152
  %61 = add nsw i32 %60, %15
  store i32 %61, ptr %59, align 4, !tbaa !152
  %62 = load i32, ptr %0, align 8, !tbaa !232
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %63, i64 %18, i64 %19
  %65 = load i32, ptr %64, align 4, !tbaa !152
  %66 = icmp sgt i32 %65, 500000
  br i1 %66, label %67, label %82, !prof !403

67:                                               ; preds = %57, %79
  %68 = phi i64 [ %80, %79 ], [ 0, %57 ]
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %77, %69 ]
  %71 = load i32, ptr %0, align 8, !tbaa !232
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %72, i64 %68, i64 %70
  %74 = load i32, ptr %73, align 4, !tbaa !152
  %75 = add nsw i32 %74, 1
  %76 = ashr i32 %75, 1
  store i32 %76, ptr %73, align 4, !tbaa !152
  %77 = add nuw nsw i64 %70, 1
  %78 = icmp eq i64 %77, 64
  br i1 %78, label %79, label %69, !llvm.loop !404

79:                                               ; preds = %69
  %80 = add nuw nsw i64 %68, 1
  %81 = icmp eq i64 %80, 12
  br i1 %81, label %82, label %67, !llvm.loop !405

82:                                               ; preds = %79, %57
  %83 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %84 = load i32, ptr %83, align 8, !tbaa !137
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %85
  %87 = load i32, ptr %86, align 8, !tbaa !223
  %88 = icmp eq i32 %87, %1
  br i1 %88, label %101, label %89, !prof !406

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %85, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !226
  %92 = icmp eq i32 %91, %1
  br i1 %92, label %100, label %93, !prof !407

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %85, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !228
  %96 = icmp eq i32 %95, %1
  br i1 %96, label %99, label %97, !prof !408

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %85, i32 3
  store i32 %95, ptr %98, align 4, !tbaa !230
  br label %99

99:                                               ; preds = %97, %93
  store i32 %91, ptr %94, align 8, !tbaa !228
  br label %100

100:                                              ; preds = %99, %89
  store i32 %87, ptr %90, align 4, !tbaa !226
  store i32 %1, ptr %86, align 8, !tbaa !223
  br label %101

101:                                              ; preds = %82, %100, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL11history_badP7state_tii(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !prof !409 !PGOFuncName !410 {
  %4 = and i32 %1, 7925760
  %5 = icmp eq i32 %4, 6815744
  br i1 %5, label %6, label %49, !prof !411

6:                                                ; preds = %3
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 63
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !152
  %12 = add nsw i32 %11, -1
  %13 = and i32 %1, 63
  %14 = add nuw nsw i32 %2, 3
  %15 = sdiv i32 %14, 4
  %16 = load i32, ptr %0, align 8, !tbaa !232
  %17 = sext i32 %16 to i64
  %18 = sext i32 %12 to i64
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %17, i64 %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !152
  %22 = add nsw i32 %21, %15
  store i32 %22, ptr %20, align 4, !tbaa !152
  %23 = load i32, ptr %0, align 8, !tbaa !232
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %24, i64 %18, i64 %19
  %26 = load i32, ptr %25, align 4, !tbaa !152
  %27 = icmp sgt i32 %26, 16384
  br i1 %27, label %28, label %49, !prof !412

28:                                               ; preds = %6, %46
  %29 = phi i64 [ %47, %46 ], [ 0, %6 ]
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ 0, %28 ], [ %44, %30 ]
  %32 = load i32, ptr %0, align 8, !tbaa !232
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %33, i64 %29, i64 %31
  %35 = load i32, ptr %34, align 4, !tbaa !152
  %36 = add nsw i32 %35, 1
  %37 = ashr i32 %36, 1
  store i32 %37, ptr %34, align 4, !tbaa !152
  %38 = load i32, ptr %0, align 8, !tbaa !232
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %39, i64 %29, i64 %31
  %41 = load i32, ptr %40, align 4, !tbaa !152
  %42 = add nsw i32 %41, 1
  %43 = ashr i32 %42, 1
  store i32 %43, ptr %40, align 4, !tbaa !152
  %44 = add nuw nsw i64 %31, 1
  %45 = icmp eq i64 %44, 64
  br i1 %45, label %46, label %30, !prof !413, !llvm.loop !414

46:                                               ; preds = %30
  %47 = add nuw nsw i64 %29, 1
  %48 = icmp eq i64 %47, 12
  br i1 %48, label %49, label %28, !prof !415, !llvm.loop !416

49:                                               ; preds = %46, %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZL12make_blunderP7state_tiPii(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 !prof !245 !PGOFuncName !417 {
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !137
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %118

11:                                               ; preds = %4
  %12 = load i32, ptr @uci_elo, align 4, !tbaa !152
  %13 = tail call noundef i32 @_Z14elo_to_blunderi(i32 noundef %12) #14
  %14 = icmp sgt i32 %13, 99
  br i1 %14, label %118, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr @uci_elo, align 4, !tbaa !152
  %17 = tail call noundef i32 @_Z14elo_to_blunderi(i32 noundef %16) #14
  %18 = tail call noundef i32 @_Z8myrandomv() #14
  %19 = urem i32 %18, 200
  %20 = icmp slt i32 %3, 6
  %21 = icmp ult i32 %3, 9
  %22 = select i1 %21, i32 40, i32 100
  %23 = select i1 %20, i32 20, i32 %22
  %24 = sub i32 %23, %17
  %25 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %26 = icmp slt i32 %25, 5
  %27 = add i32 %24, 5
  %28 = sub i32 %27, %25
  %29 = select i1 %26, i32 %28, i32 %24
  %30 = load i32, ptr %5, align 8, !tbaa !137
  %31 = shl nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %33 = load i32, ptr %32, align 4, !tbaa !152
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %35 = load i32, ptr %34, align 4, !tbaa !152
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %37 = load i32, ptr %36, align 4, !tbaa !152
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %39 = load i32, ptr %38, align 4, !tbaa !152
  %40 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %41 = load i32, ptr %40, align 8, !tbaa !152
  %42 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %43 = load i32, ptr %42, align 8, !tbaa !152
  %44 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %45 = load i32, ptr %44, align 8, !tbaa !152
  %46 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %47 = load i32, ptr %46, align 8, !tbaa !152
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !152
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %51 = load i32, ptr %50, align 8, !tbaa !152
  %52 = add i32 %29, %31
  %53 = add i32 %52, %33
  %54 = add i32 %53, %35
  %55 = add i32 %54, %37
  %56 = add i32 %55, %39
  %57 = add i32 %56, %41
  %58 = add i32 %57, %43
  %59 = add i32 %58, %45
  %60 = add i32 %59, %47
  %61 = add i32 %60, %49
  %62 = add i32 %61, %51
  %63 = lshr i32 %1, 19
  %64 = and i32 %63, 15
  %65 = lshr i32 %1, 6
  %66 = and i32 %65, 63
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !152
  %70 = icmp eq i32 %64, %69
  %71 = add nsw i32 %62, -30
  %72 = select i1 %70, i32 %71, i32 %62
  %73 = add i32 %69, -1
  %74 = icmp ult i32 %73, 2
  %75 = add nsw i32 %72, -30
  %76 = select i1 %74, i32 %75, i32 %72
  %77 = icmp eq i32 %64, 13
  %78 = add nsw i32 %76, -10
  %79 = select i1 %77, i32 %76, i32 %78
  %80 = add nsw i32 %64, -9
  %81 = icmp ult i32 %80, 2
  %82 = add nsw i32 %79, -30
  %83 = select i1 %81, i32 %82, i32 %79
  %84 = lshr i32 %1, 12
  %85 = and i32 %84, 15
  switch i32 %85, label %86 [
    i32 0, label %88
    i32 13, label %88
    i32 9, label %88
    i32 10, label %88
  ]

86:                                               ; preds = %15
  %87 = add nsw i32 %83, 40
  br label %88

88:                                               ; preds = %15, %15, %15, %15, %86
  %89 = phi i32 [ %87, %86 ], [ %83, %15 ], [ %83, %15 ], [ %83, %15 ], [ %83, %15 ]
  %90 = and i32 %1, 63
  %91 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %66, i32 noundef %90) #14
  %92 = shl nsw i32 %91, 1
  %93 = add nsw i32 %92, %89
  %94 = load i32, ptr %68, align 4, !tbaa !152
  %95 = add i32 %94, -3
  %96 = icmp ult i32 %95, 2
  %97 = add nsw i32 %93, 20
  %98 = select i1 %96, i32 %97, i32 %93
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %100 = load i32, ptr %99, align 4, !tbaa !149
  %101 = icmp eq i32 %100, 0
  %102 = tail call noundef i32 @_Z4ranki(i32 noundef %66) #14
  %103 = tail call noundef i32 @_Z4ranki(i32 noundef %90) #14
  br i1 %101, label %106, label %104

104:                                              ; preds = %88
  %105 = icmp sgt i32 %102, %103
  br i1 %105, label %108, label %114

106:                                              ; preds = %88
  %107 = icmp slt i32 %102, %103
  br i1 %107, label %108, label %114

108:                                              ; preds = %106, %104
  %109 = tail call noundef i32 @_Z4ranki(i32 noundef %66) #14
  %110 = tail call noundef i32 @_Z4ranki(i32 noundef %90) #14
  %111 = sub nsw i32 %109, %110
  %112 = shl nsw i32 %111, 2
  %113 = add nsw i32 %112, %98
  br label %114

114:                                              ; preds = %108, %106, %104
  %115 = phi i32 [ %98, %104 ], [ %98, %106 ], [ %113, %108 ]
  %116 = icmp slt i32 %115, %19
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i32 -1000000, ptr %2, align 4, !tbaa !152
  br label %118

118:                                              ; preds = %114, %11, %4, %117
  %119 = phi i32 [ 1, %117 ], [ 0, %4 ], [ 0, %11 ], [ 0, %114 ]
  ret i32 %119
}

; Function Attrs: optsize
declare noundef i32 @_Z14elo_to_blunderi(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z8myrandomv() local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z12taxicab_distii(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z14rootmovesearchP7state_tiiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !418 {
  %7 = tail call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #14
  %8 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %7, i32 0, !prof !419
  ret i32 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z11search_rootP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !420 {
  %5 = alloca [240 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [240 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #13
  %11 = load i32, ptr @_ZZ11search_rootP7state_tiiiE5bmove, align 4, !tbaa !152
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  store i32 1, ptr %12, align 8, !tbaa !137
  store i32 -32000, ptr @gamestate, align 8, !tbaa !421
  %13 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !152
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18, !prof !422

16:                                               ; preds = %4
  %17 = add nsw i32 %3, 4
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi i32 [ %17, %16 ], [ %3, %4 ]
  %20 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %8, i32 noundef %19) #14
  %21 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %0) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !423

23:                                               ; preds = %18
  %24 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %0) #14
  %25 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %24) #14
  br label %28

26:                                               ; preds = %18
  %27 = call noundef i32 @_Z3genP7state_tPi(ptr noundef nonnull %0, ptr noundef nonnull %5) #14
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i32 [ %25, %23 ], [ %27, %26 ]
  %30 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !424
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef %29, i32 noundef %30) #14
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ 0, %28 ], [ %35, %31 ]
  %33 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %32
  store <4 x i32> <i32 -32000, i32 -32000, i32 -32000, i32 -32000>, ptr %33, align 16, !tbaa !152
  %34 = getelementptr inbounds [240 x i32], ptr @root_scores, i64 0, i64 %32
  store <4 x i32> <i32 -32000, i32 -32000, i32 -32000, i32 -32000>, ptr %34, align 16, !tbaa !152
  %35 = add nuw i64 %32, 4
  %36 = icmp eq i64 %35, 240
  br i1 %36, label %37, label %31, !prof !425, !llvm.loop !426

37:                                               ; preds = %31
  %38 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1) #14
  store i32 -1, ptr %6, align 4, !tbaa !152
  %39 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %29) #14, !range !142
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %295, label %41, !prof !429

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %44 = sub nsw i32 0, %2
  %45 = add i32 %19, -4
  br label %46

46:                                               ; preds = %41, %287
  %47 = phi i32 [ %11, %41 ], [ %290, %287 ]
  %48 = phi i32 [ 0, %41 ], [ %249, %287 ]
  %49 = phi i32 [ -32000, %41 ], [ %248, %287 ]
  %50 = phi i32 [ %1, %41 ], [ %289, %287 ]
  %51 = phi i32 [ 1, %41 ], [ %288, %287 ]
  %52 = phi i32 [ 1, %41 ], [ %247, %287 ]
  %53 = load i32, ptr %6, align 4, !tbaa !152
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %56) #14
  %57 = load i64, ptr %42, align 8, !tbaa !194
  %58 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !195
  %59 = load i32, ptr %12, align 8, !tbaa !137
  %60 = add i32 %59, -1
  %61 = add i32 %60, %58
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %62
  store i64 %57, ptr %63, align 8, !tbaa !133
  %64 = load i32, ptr %55, align 4, !tbaa !152
  %65 = sext i32 %60 to i64
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %65
  store i32 %64, ptr %66, align 4, !tbaa !152
  %67 = load i64, ptr %43, align 8, !tbaa !208
  %68 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %64) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %246, label %70, !prof !430

70:                                               ; preds = %46
  %71 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %71) #14
  %72 = add nsw i32 %48, 1
  %73 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %74 = icmp eq i32 %73, 0
  %75 = load i32, ptr %55, align 4, !tbaa !152
  br i1 %74, label %76, label %77, !prof !431

76:                                               ; preds = %70
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef nonnull %0, i32 noundef %75, ptr noundef nonnull %10) #14
  br label %78

77:                                               ; preds = %70
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef nonnull %0, i32 noundef %75, ptr noundef nonnull %10) #14
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z4makeP7state_ti(ptr noundef nonnull %0, i32 noundef %79) #14
  %80 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %0) #14
  %81 = load i32, ptr %12, align 8, !tbaa !137
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %82
  store i32 %80, ptr %83, align 4, !tbaa !152
  %84 = sub nsw i32 0, %50
  %85 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef nonnull %0, i32 noundef %44, i32 noundef %84, i32 noundef 1) #14
  %86 = load i32, ptr %12, align 8, !tbaa !137
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !152
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %131, !prof !432

91:                                               ; preds = %78
  %92 = load i32, ptr %55, align 4, !tbaa !152
  %93 = and i32 %92, 63
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !152
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %105, !prof !433

98:                                               ; preds = %91
  %99 = call noundef i32 @_Z4ranki(i32 noundef %93) #14
  %100 = icmp sgt i32 %99, 6
  br i1 %100, label %131, label %101, !prof !434

101:                                              ; preds = %98
  %102 = load i32, ptr %55, align 4, !tbaa !152
  %103 = and i32 %102, 63
  %104 = zext nneg i32 %103 to i64
  br label %105

105:                                              ; preds = %101, %91
  %106 = phi i64 [ %104, %101 ], [ %94, %91 ]
  %107 = phi i32 [ %103, %101 ], [ %93, %91 ]
  %108 = phi i32 [ %102, %101 ], [ %92, %91 ]
  %109 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %106
  %110 = load i32, ptr %109, align 4, !tbaa !152
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %117, !prof !435

112:                                              ; preds = %105
  %113 = call noundef i32 @_Z4ranki(i32 noundef %107) #14
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %131, label %115, !prof !436

115:                                              ; preds = %112
  %116 = load i32, ptr %55, align 4, !tbaa !152
  br label %117

117:                                              ; preds = %115, %105
  %118 = phi i32 [ %116, %115 ], [ %108, %105 ]
  %119 = and i32 %118, 61440
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %131, !prof !437

121:                                              ; preds = %117
  %122 = icmp slt i32 %48, 3
  %123 = select i1 %15, i1 true, i1 %122
  br i1 %123, label %131, label %124, !prof !438

124:                                              ; preds = %121
  %125 = call fastcc noundef i32 @_ZL13history_scoreP7state_ti(ptr noundef nonnull %0, i32 noundef %118) #14
  %126 = icmp slt i32 %125, 80
  br i1 %126, label %127, label %131, !prof !439

127:                                              ; preds = %124
  %128 = and i32 %118, 7864320
  %129 = icmp eq i32 %128, 6815744
  %130 = select i1 %129, i32 -4, i32 0, !prof !440
  br label %131

131:                                              ; preds = %98, %112, %117, %78, %127, %124, %121
  %132 = phi i32 [ 0, %124 ], [ 0, %121 ], [ 0, %127 ], [ 4, %78 ], [ 3, %117 ], [ 3, %112 ], [ 3, %98 ]
  %133 = phi i1 [ false, %124 ], [ false, %121 ], [ %129, %127 ], [ false, %78 ], [ false, %117 ], [ false, %112 ], [ false, %98 ]
  %134 = phi i32 [ 0, %124 ], [ 0, %121 ], [ %130, %127 ], [ 0, %78 ], [ 0, %117 ], [ 0, %112 ], [ 0, %98 ]
  %135 = icmp eq i32 %51, 1
  %136 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %137 = icmp slt i32 %136, 2
  %138 = select i1 %135, i1 true, i1 %137
  %139 = load i32, ptr @uci_multipv, align 4
  %140 = icmp sgt i32 %139, 1
  %141 = select i1 %138, i1 true, i1 %140
  %142 = add i32 %45, %132
  br i1 %141, label %143, label %196, !prof !441

143:                                              ; preds = %131
  %144 = icmp eq i32 %139, 1
  %145 = select i1 %144, i32 %84, i32 1000000, !prof !442
  %146 = call noundef i32 @_Z14rootmovesearchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %44, i32 noundef %145, i32 noundef %142, i32 noundef 0, i32 noundef 0) #14
  %147 = sub nsw i32 0, %146
  %148 = sext i32 %72 to i64
  %149 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %148
  store i32 %147, ptr %149, align 4, !tbaa !152
  %150 = getelementptr inbounds [240 x i32], ptr @root_scores, i64 0, i64 %54
  store i32 %147, ptr %150, align 4, !tbaa !152
  %151 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %231, !prof !442

153:                                              ; preds = %143
  %154 = icmp slt i32 %147, %2
  br i1 %154, label %157, label %155, !prof !443

155:                                              ; preds = %153
  %156 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef nonnull %0, i32 noundef %147, i32 noundef %156, ptr noundef nonnull %10, i32 noundef %72) #14
  br label %180

157:                                              ; preds = %153
  %158 = icmp sge i32 %50, %147
  %159 = icmp ne i32 %51, 0
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %173, !prof !444

161:                                              ; preds = %157
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  %162 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z16post_fl_thinkingP7state_tiiPci(ptr noundef nonnull %0, i32 noundef %147, i32 noundef %162, ptr noundef nonnull %10, i32 noundef %72) #14
  %163 = add i32 %45, %132
  %164 = call noundef i32 @_Z14rootmovesearchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %44, i32 noundef 1000000, i32 noundef %163, i32 noundef 0, i32 noundef 0) #14
  %165 = sub nsw i32 0, %164
  %166 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %167 = icmp eq i32 %166, 0
  %168 = load i32, ptr @uci_multipv, align 4
  %169 = icmp eq i32 %168, 1
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %183, !prof !445

171:                                              ; preds = %161
  %172 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef nonnull %0, i32 noundef %165, i32 noundef %172, ptr noundef nonnull %10, i32 noundef %72) #14
  br label %180

173:                                              ; preds = %157
  %174 = icmp slt i32 %50, %147
  br i1 %174, label %175, label %180, !prof !446

175:                                              ; preds = %173
  %176 = load i32, ptr @uci_multipv, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %183, !prof !447

178:                                              ; preds = %175
  %179 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef nonnull %0, i32 noundef %147, i32 noundef %179, ptr noundef nonnull %10, i32 noundef %72) #14
  br label %180

180:                                              ; preds = %155, %173, %178, %171
  %181 = phi i32 [ %147, %173 ], [ %147, %178 ], [ %165, %171 ], [ %147, %155 ]
  %182 = load i32, ptr @uci_multipv, align 4, !tbaa !152
  br label %183

183:                                              ; preds = %180, %161, %175
  %184 = phi i32 [ %182, %180 ], [ %168, %161 ], [ %176, %175 ]
  %185 = phi i32 [ %181, %180 ], [ %165, %161 ], [ %147, %175 ]
  %186 = icmp sgt i32 %184, 1
  br i1 %186, label %187, label %189, !prof !448

187:                                              ; preds = %183
  %188 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z21post_multipv_thinkingP7state_tiii(ptr noundef nonnull %0, i32 noundef %185, i32 noundef %72, i32 noundef %188) #14
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i32, ptr @gamestate, align 8, !tbaa !421
  %191 = icmp sle i32 %185, %190
  %192 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %193 = icmp ne i32 %192, 0
  %194 = select i1 %191, i1 true, i1 %193
  br i1 %194, label %231, label %195, !prof !449

195:                                              ; preds = %189
  store i32 %185, ptr @gamestate, align 8, !tbaa !421
  br label %231

196:                                              ; preds = %131
  %197 = xor i32 %50, -1
  %198 = add i32 %134, %142
  %199 = call noundef i32 @_Z14rootmovesearchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %197, i32 noundef %84, i32 noundef %198, i32 noundef 0, i32 noundef 1) #14
  %200 = sub nsw i32 0, %199
  %201 = icmp slt i32 %50, %200
  br i1 %201, label %202, label %222, !prof !450

202:                                              ; preds = %196
  %203 = icmp slt i32 %200, %2
  %204 = or i1 %133, %203
  %205 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %208, label %222, !prof !451

208:                                              ; preds = %202
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !216
  %209 = call noundef i32 @_Z14rootmovesearchP7state_tiiiii(ptr noundef nonnull %0, i32 noundef %44, i32 noundef %84, i32 noundef %142, i32 noundef 0, i32 noundef 0) #14
  %210 = sub nsw i32 0, %209
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !216
  %211 = icmp sge i32 %50, %210
  %212 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %213 = icmp ne i32 %212, 0
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %222, label %215, !prof !452

215:                                              ; preds = %208
  store i32 %210, ptr @gamestate, align 8, !tbaa !421
  %216 = load i32, ptr %55, align 4, !tbaa !152
  %217 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %216) #14
  %218 = zext i16 %217 to i32
  store i32 %218, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !424
  %219 = icmp slt i32 %210, %2
  br i1 %219, label %220, label %222, !prof !453

220:                                              ; preds = %215
  %221 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef nonnull %0, i32 noundef %210, i32 noundef %221, ptr noundef nonnull %10, i32 noundef %72) #14
  br label %222

222:                                              ; preds = %208, %220, %215, %202, %196
  %223 = phi i32 [ %200, %202 ], [ %210, %208 ], [ %210, %220 ], [ %210, %215 ], [ %200, %196 ]
  %224 = phi i32 [ %47, %202 ], [ %47, %208 ], [ %216, %220 ], [ %216, %215 ], [ %47, %196 ]
  %225 = icmp slt i32 %223, %2
  br i1 %225, label %231, label %226, !prof !454

226:                                              ; preds = %222
  %227 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231, !prof !455

229:                                              ; preds = %226
  %230 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef nonnull %0, i32 noundef %223, i32 noundef %230, ptr noundef nonnull %10, i32 noundef %72) #14
  br label %231

231:                                              ; preds = %222, %226, %229, %143, %195, %189
  %232 = phi i32 [ %147, %143 ], [ %185, %189 ], [ %185, %195 ], [ %223, %226 ], [ %223, %229 ], [ %223, %222 ]
  %233 = phi i32 [ %47, %143 ], [ %47, %189 ], [ %47, %195 ], [ %224, %226 ], [ %224, %229 ], [ %224, %222 ]
  %234 = load i32, ptr @gamestate, align 8, !tbaa !421
  %235 = icmp sgt i32 %232, %234
  %236 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %237 = icmp eq i32 %236, 0
  br i1 %235, label %238, label %240, !prof !456

238:                                              ; preds = %231
  br i1 %237, label %239, label %241, !prof !457

239:                                              ; preds = %238
  store i32 %232, ptr @gamestate, align 8, !tbaa !421
  br label %246

240:                                              ; preds = %231
  br i1 %237, label %246, label %241, !prof !458

241:                                              ; preds = %238, %240
  %242 = icmp eq i32 %234, -32000
  %243 = icmp ne i32 %52, 0
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4, !tbaa !459
  br label %246

246:                                              ; preds = %239, %240, %241, %245, %46
  %247 = phi i32 [ %52, %46 ], [ 0, %245 ], [ 0, %241 ], [ 0, %240 ], [ 0, %239 ]
  %248 = phi i32 [ %49, %46 ], [ %232, %245 ], [ %232, %241 ], [ %232, %240 ], [ %232, %239 ]
  %249 = phi i32 [ %48, %46 ], [ %72, %245 ], [ %72, %241 ], [ %72, %240 ], [ %72, %239 ]
  %250 = phi i32 [ %47, %46 ], [ %233, %245 ], [ %233, %241 ], [ %233, %240 ], [ %233, %239 ]
  %251 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %265, label %253, !prof !460

253:                                              ; preds = %246
  %254 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %255 = icmp sgt i32 %254, 4
  br i1 %255, label %256, label %265

256:                                              ; preds = %253
  %257 = call noundef i32 @_Z5rtimev() #14
  %258 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !211
  %259 = call noundef i32 @_Z9rdifftimeii(i32 noundef %257, i32 noundef %258) #14
  %260 = icmp sgt i32 %259, 149
  %261 = load i32, ptr @uci_showrefutations, align 4
  %262 = icmp ne i32 %261, 0
  %263 = select i1 %260, i1 %262, i1 false
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str, ptr noundef nonnull %10) #14
  call void @_Z24extract_current_bestlineP7state_t(ptr noundef nonnull %0) #14
  br label %265

265:                                              ; preds = %264, %256, %253, %246
  %266 = load i32, ptr %55, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef nonnull %0, i32 noundef %266) #14
  %267 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %367, !prof !460

269:                                              ; preds = %265
  br i1 %69, label %287, label %270, !prof !430

270:                                              ; preds = %269
  %271 = icmp sgt i32 %248, %50
  br i1 %271, label %272, label %280, !prof !461

272:                                              ; preds = %270
  %273 = load i32, ptr %55, align 4, !tbaa !152
  call fastcc void @_ZL12history_goodP7state_tii(ptr noundef nonnull %0, i32 noundef %273, i32 noundef %19) #14
  %274 = load i32, ptr %55, align 4, !tbaa !152
  store i32 %248, ptr @gamestate, align 8, !tbaa !421
  %275 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %274) #14
  %276 = zext i16 %275 to i32
  store i32 %276, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !424
  %277 = load i32, ptr @gamestate, align 8, !tbaa !421
  %278 = icmp slt i32 %277, %2
  br i1 %278, label %280, label %279, !prof !462

279:                                              ; preds = %272
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %277, i32 noundef %1, i32 noundef %2, i32 noundef %276, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %19) #14
  br label %367

280:                                              ; preds = %272, %270
  %281 = phi i32 [ %248, %272 ], [ %50, %270 ]
  %282 = phi i32 [ %274, %272 ], [ %250, %270 ]
  %283 = icmp eq i32 %51, 0
  br i1 %283, label %287, label %284, !prof !463

284:                                              ; preds = %280
  %285 = load i64, ptr %43, align 8, !tbaa !208
  %286 = sub i64 %285, %67
  store i64 %286, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 18), align 8, !tbaa !464
  br label %287

287:                                              ; preds = %280, %284, %269
  %288 = phi i32 [ 0, %284 ], [ 0, %280 ], [ %51, %269 ]
  %289 = phi i32 [ %281, %284 ], [ %281, %280 ], [ %50, %269 ]
  %290 = phi i32 [ %282, %284 ], [ %282, %280 ], [ %250, %269 ]
  %291 = call fastcc noundef i32 @_ZL15remove_one_fastPiS_S_i(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %29) #14, !range !142
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %46, !prof !465, !llvm.loop !466

293:                                              ; preds = %287
  %294 = icmp eq i32 %247, 0
  br label %295

295:                                              ; preds = %293, %37
  %296 = phi i1 [ false, %37 ], [ %294, %293 ]
  %297 = phi i32 [ %11, %37 ], [ %290, %293 ]
  %298 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %299 = icmp eq i32 %298, 4
  br i1 %299, label %308, label %300, !prof !467

300:                                              ; preds = %295
  %301 = icmp slt i32 %298, 5
  %302 = load i32, ptr @_ZZ11search_rootP7state_tiiiE5bmove, align 4
  %303 = icmp eq i32 %297, %302
  %304 = select i1 %301, i1 true, i1 %303
  br i1 %304, label %310, label %305, !prof !468

305:                                              ; preds = %300
  %306 = load i32, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !152
  %307 = add nsw i32 %306, 1
  br label %308

308:                                              ; preds = %295, %305
  %309 = phi i32 [ %307, %305 ], [ 0, %295 ]
  store i32 %309, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !152
  br label %310

310:                                              ; preds = %308, %300
  %311 = load i64, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 18), align 8, !tbaa !464
  %312 = mul i64 %311, 100
  %313 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %314 = load i64, ptr %313, align 8, !tbaa !208
  %315 = udiv i64 %312, %314
  %316 = icmp ugt i64 %315, 74
  br i1 %316, label %317, label %327, !prof !469

317:                                              ; preds = %310
  %318 = icmp slt i32 %298, 7
  %319 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8
  %320 = icmp eq i32 %319, 99999999
  %321 = select i1 %318, i1 true, i1 %320
  %322 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4
  %323 = icmp ne i32 %322, 0
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %327, label %325, !prof !470

325:                                              ; preds = %317
  %326 = sdiv i32 %319, 2
  store i32 %326, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  br label %327

327:                                              ; preds = %325, %317, %310
  %328 = load i32, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !152
  %329 = icmp sgt i32 %328, 3
  br i1 %329, label %330, label %332, !prof !471

330:                                              ; preds = %327
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !216
  %331 = add nsw i32 %328, -1
  store i32 %331, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !152
  br label %336

332:                                              ; preds = %327
  %333 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !216
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %336, label %335, !prof !472

335:                                              ; preds = %332
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !216
  br label %336

336:                                              ; preds = %332, %335, %330
  store i32 %297, ptr @_ZZ11search_rootP7state_tiiiE5bmove, align 4, !tbaa !152
  br i1 %296, label %353, label %337, !prof !473

337:                                              ; preds = %336
  %338 = load i32, ptr @is_pondering, align 4, !tbaa !152
  %339 = icmp ne i32 %338, 0
  %340 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4
  %341 = icmp ne i32 %340, 0
  %342 = select i1 %339, i1 true, i1 %341
  br i1 %342, label %353, label %343

343:                                              ; preds = %337
  %344 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef nonnull %0) #14
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %352, label %346

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %348 = load i32, ptr %347, align 4, !tbaa !149
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  store i32 2, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !474
  br label %364

351:                                              ; preds = %346
  store i32 3, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !474
  br label %364

352:                                              ; preds = %343
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !474
  br label %364

353:                                              ; preds = %337, %336
  %354 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %355 = load i32, ptr %354, align 4, !tbaa !145
  %356 = icmp sgt i32 %355, 98
  br i1 %356, label %357, label %364, !prof !475

357:                                              ; preds = %353
  %358 = load i32, ptr @is_pondering, align 4, !tbaa !152
  %359 = icmp ne i32 %358, 0
  %360 = load i32, ptr @uci_mode, align 4
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %359, i1 true, i1 %361
  br i1 %362, label %364, label %363

363:                                              ; preds = %357
  store i32 4, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !474
  store i32 0, ptr @gamestate, align 8, !tbaa !421
  br label %364

364:                                              ; preds = %353, %357, %363, %352, %351, %350
  %365 = load i32, ptr @gamestate, align 8, !tbaa !421
  %366 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !424
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef nonnull %0, i32 noundef %365, i32 noundef %1, i32 noundef %2, i32 noundef %366, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %19) #14
  br label %367

367:                                              ; preds = %265, %364, %279
  %368 = phi i32 [ %274, %279 ], [ %297, %364 ], [ %250, %265 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %5) #13
  ret i32 %368
}

; Function Attrs: optsize
declare void @_Z11comp_to_sanP7state_tiPc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z13comp_to_coordP7state_tiPc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z16post_fl_thinkingP7state_tiiPci(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z13post_thinkingP7state_tiiPci(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z21post_multipv_thinkingP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z24extract_current_bestlineP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define dso_local void @_Z21reset_search_countersP7state_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 !prof !476 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  store i32 0, ptr %3, align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  br label %6

4:                                                ; preds = %6
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !215
  ret void

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 0, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.scoreboard_t, ptr @scoreboard, i64 0, i32 4, i64 %7, i32 22
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br i1 %10, label %4, label %6, !prof !477, !llvm.loop !478
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z17reset_search_dataP7state_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !476 {
  %2 = alloca i32, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24576) @history_h, i8 0, i64 24576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24576) @history_hit, i8 0, i64 24576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24576) @history_tot, i8 0, i64 24576, i1 false)
  %3 = getelementptr i8, ptr %0, i64 3056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 0, i64 1024, i1 false), !tbaa !152
  store i64 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 18), align 8, !tbaa !464
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !424
  %4 = load i32, ptr @uci_limitstrength, align 4, !tbaa !152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6, !prof !479

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %7 = load i32, ptr @uci_elo, align 4, !tbaa !152
  %8 = tail call noundef i32 @_Z12elo_to_depthi(i32 noundef %7) #14
  store i32 %8, ptr %2, align 4, !tbaa !152
  %9 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  %10 = load i32, ptr %9, align 4, !tbaa !152
  store i32 %10, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8, !tbaa !480
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare noundef i32 @_Z12elo_to_depthi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z5thinkP11gamestate_tP7state_t(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 !prof !476 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [240 x i32], align 16
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %5) #13
  tail call void @_Z11clear_dp_ttv() #14
  tail call void @_Z17reset_search_dataP7state_t(ptr noundef %1) #14
  tail call void @_Z21reset_search_countersP7state_t(ptr noundef %1) #14
  %7 = tail call noundef i32 @_Z5rtimev() #14
  store i32 %7, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !211
  %8 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  store i32 1, ptr %8, align 8, !tbaa !137
  %9 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %10 = load i64, ptr %9, align 8, !tbaa !194
  %11 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !195
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %12
  store i64 %10, ptr %13, align 8, !tbaa !133
  %14 = tail call noundef i32 @_Z8in_checkP7state_t(ptr noundef %1) #14
  %15 = load i32, ptr %8, align 8, !tbaa !137
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 25, i64 %16
  store i32 %14, ptr %17, align 4, !tbaa !152
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %21, label %19, !prof !479

19:                                               ; preds = %2
  %20 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef %14) #14
  br label %23

21:                                               ; preds = %2
  %22 = call noundef i32 @_Z3genP7state_tPi(ptr noundef nonnull %1, ptr noundef nonnull %5) #14
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %60, !prof !481

26:                                               ; preds = %23
  %27 = zext nneg i32 %24 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %42, %28 ]
  %30 = phi i32 [ 0, %26 ], [ %40, %28 ]
  %31 = phi i32 [ 0, %26 ], [ %38, %28 ]
  %32 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !152
  call void @_Z4makeP7state_ti(ptr noundef %1, i32 noundef %33) #14
  %34 = load i32, ptr %32, align 4, !tbaa !152
  %35 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %1, i32 noundef %34) #14
  %36 = icmp ne i32 %35, 0
  %37 = trunc i64 %29 to i32
  %38 = select i1 %36, i32 %37, i32 %31, !prof !482
  %39 = zext i1 %36 to i32
  %40 = add nuw nsw i32 %30, %39
  %41 = load i32, ptr %32, align 4, !tbaa !152
  call void @_Z6unmakeP7state_ti(ptr noundef %1, i32 noundef %41) #14
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp eq i64 %42, %27
  br i1 %43, label %44, label %28, !prof !483, !llvm.loop !484

44:                                               ; preds = %28
  %45 = load i32, ptr @is_pondering, align 4, !tbaa !152
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i32 %40, 1
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %60, !prof !485

49:                                               ; preds = %44
  %50 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %51 = icmp eq i32 %50, 0
  %52 = sext i32 %38 to i64
  br i1 %51, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %52
  %55 = load i32, ptr %54, align 4, !tbaa !152
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %1, i32 noundef %55, ptr noundef nonnull %3) #14
  %56 = load i32, ptr @_ZZ5thinkP11gamestate_tP7state_tE15lastsearchscore, align 4, !tbaa !152
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.1, i32 noundef %56) #14
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #14
  br label %57

57:                                               ; preds = %49, %53
  %58 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %52
  %59 = load i32, ptr %58, align 4, !tbaa !152
  br label %359

60:                                               ; preds = %23, %44
  call void @_Z11check_phaseP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef %1) #14
  %61 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70, !prof !479

63:                                               ; preds = %60
  %64 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !272
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = zext nneg i32 %64 to i64
  %68 = shl i64 %67, 2
  %69 = call ptr @llvm.load.relative.i64(ptr @reltable._Z5thinkP11gamestate_tP7state_t, i64 %68)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %69) #14
  br label %70

70:                                               ; preds = %63, %66, %60
  %71 = load i32, ptr @is_pondering, align 4, !tbaa !152
  %72 = icmp ne i32 %71, 0
  %73 = load i32, ptr @is_analyzing, align 4
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %85, label %76, !prof !486

76:                                               ; preds = %70
  %77 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4, !tbaa !487
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81, !prof !488

79:                                               ; preds = %76
  %80 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1) #14
  br label %81

81:                                               ; preds = %76, %79
  %82 = phi i32 [ %80, %79 ], [ %77, %76 ]
  store i32 %82, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %83 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %90, !prof !479

85:                                               ; preds = %70
  store i32 99999999, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %86 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98, !prof !479

88:                                               ; preds = %85, %81
  %89 = phi i32 [ 99999999, %85 ], [ %82, %81 ]
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.6, i32 noundef %89) #14
  br label %98

90:                                               ; preds = %81
  %91 = icmp eq i32 %82, 99999999
  br i1 %91, label %98, label %92

92:                                               ; preds = %90
  %93 = sdiv i32 %82, 100
  %94 = sitofp i32 %82 to double
  %95 = fdiv double %94, 2.500000e+00
  %96 = fdiv double %95, 1.000000e+02
  %97 = fptosi double %96 to i32
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.7, i32 noundef %93, i32 noundef %97) #14
  br label %98

98:                                               ; preds = %85, %90, %92, %88
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4, !tbaa !459
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !216
  store i32 0, ptr @gamestate, align 8, !tbaa !421
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 40, ptr %6, align 4, !tbaa !152
  %99 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14)) #14
  %100 = load i32, ptr %99, align 4, !tbaa !152
  %101 = icmp slt i32 %100, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br i1 %101, label %284, label %102, !prof !489

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 24
  br label %104

104:                                              ; preds = %102, %269
  %105 = phi i32 [ 0, %102 ], [ %273, %269 ]
  %106 = phi i32 [ 0, %102 ], [ %272, %269 ]
  %107 = phi i32 [ 0, %102 ], [ %271, %269 ]
  %108 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110, !prof !490

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 28
  %112 = load <2 x i32>, ptr %111, align 4, !tbaa !152
  %113 = lshr <2 x i32> %112, <i32 1, i32 1>
  store <2 x i32> %113, ptr %111, align 4, !tbaa !152
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %116 = load i32, ptr %103, align 8, !tbaa !140
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %119, !prof !491

118:                                              ; preds = %114
  store i32 %115, ptr %103, align 8, !tbaa !140
  br label %119

119:                                              ; preds = %118, %114
  %120 = call noundef i32 @_Z5rtimev() #14
  %121 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !211
  %122 = call noundef i32 @_Z9rdifftimeii(i32 noundef %120, i32 noundef %121) #14
  %123 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  %124 = icmp ne i32 %123, 0
  %125 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8
  %126 = icmp ne i32 %125, 0
  %127 = select i1 %124, i1 true, i1 %126
  br i1 %127, label %128, label %130, !prof !492

128:                                              ; preds = %119
  %129 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  br label %148

130:                                              ; preds = %119
  %131 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !215
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %145, !prof !493

133:                                              ; preds = %130
  %134 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4, !tbaa !487
  %135 = icmp eq i32 %134, 0
  %136 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  br i1 %135, label %137, label %148, !prof !494

137:                                              ; preds = %133
  %138 = sitofp i32 %122 to double
  %139 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %140, 2.500000e+00
  %142 = fcmp olt double %141, %138
  %143 = icmp sgt i32 %136, 2
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %278, label %148

145:                                              ; preds = %130
  %146 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %147 = icmp sgt i32 %146, 2
  br i1 %147, label %278, label %148

148:                                              ; preds = %128, %145, %137, %133
  %149 = phi i32 [ %129, %128 ], [ %146, %145 ], [ %136, %137 ], [ %136, %133 ]
  %150 = add nsw i32 %106, -30
  %151 = add nsw i32 %106, 30
  %152 = shl nsw i32 %149, 2
  %153 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef nonnull %1, i32 noundef %150, i32 noundef %151, i32 noundef %152) #14
  %154 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !474
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %278, !prof !490

156:                                              ; preds = %148
  %157 = load i32, ptr @gamestate, align 8, !tbaa !421
  %158 = icmp sgt i32 %157, %150
  %159 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %160 = icmp ne i32 %159, 0
  %161 = select i1 %158, i1 true, i1 %160
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  store i32 %163, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  br i1 %161, label %179, label %164, !prof !495

164:                                              ; preds = %156
  %165 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %166 = shl nsw i32 %165, 2
  %167 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef nonnull %1, i32 noundef -1000000, i32 noundef %151, i32 noundef %166) #14
  %168 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %201, !prof !496

170:                                              ; preds = %164
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  %171 = load i32, ptr @gamestate, align 8, !tbaa !421
  %172 = icmp slt i32 %171, %151
  br i1 %172, label %201, label %173, !prof !497

173:                                              ; preds = %170
  %174 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %175 = shl nsw i32 %174, 2
  %176 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef nonnull %1, i32 noundef -1000000, i32 noundef 1000000, i32 noundef %175) #14
  %177 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %197, label %201

179:                                              ; preds = %156
  %180 = icmp slt i32 %157, %151
  %181 = select i1 %180, i1 true, i1 %160
  br i1 %181, label %201, label %182, !prof !498

182:                                              ; preds = %179
  %183 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %184 = shl nsw i32 %183, 2
  %185 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef nonnull %1, i32 noundef %150, i32 noundef 1000000, i32 noundef %184) #14
  %186 = load i32, ptr @gamestate, align 8, !tbaa !421
  %187 = icmp sgt i32 %186, %150
  %188 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %187, i1 true, i1 %189
  br i1 %190, label %201, label %191, !prof !499

191:                                              ; preds = %182
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  %192 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %193 = shl nsw i32 %192, 2
  %194 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef nonnull %1, i32 noundef -1000000, i32 noundef 1000000, i32 noundef %193) #14
  %195 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201, !prof !500

197:                                              ; preds = %191, %173
  %198 = phi i32 [ %107, %173 ], [ %153, %191 ]
  %199 = phi i32 [ %176, %173 ], [ %194, %191 ]
  %200 = phi i32 [ %106, %173 ], [ %157, %191 ]
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !213
  br label %201

201:                                              ; preds = %197, %164, %179, %191, %182, %170, %173
  %202 = phi i32 [ %107, %179 ], [ %153, %182 ], [ %153, %191 ], [ %107, %170 ], [ %107, %173 ], [ %107, %164 ], [ %198, %197 ]
  %203 = phi i32 [ %153, %179 ], [ %185, %182 ], [ %194, %191 ], [ %167, %170 ], [ %176, %173 ], [ %167, %164 ], [ %199, %197 ]
  %204 = phi i32 [ %106, %179 ], [ %157, %182 ], [ %157, %191 ], [ %106, %170 ], [ %106, %173 ], [ %106, %164 ], [ %200, %197 ]
  %205 = load i32, ptr @uci_mode, align 4, !tbaa !152
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %213, !prof !490

207:                                              ; preds = %201
  %208 = call noundef i32 @_Z9interruptv() #14
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210, !prof !490

210:                                              ; preds = %207
  %211 = load i32, ptr @is_pondering, align 4, !tbaa !152
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %278

213:                                              ; preds = %207, %210, %201
  %214 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4, !tbaa !459
  %215 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4
  %216 = icmp eq i32 %215, 0
  %217 = or i32 %214, %203
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, i1 %216, i1 false
  br i1 %219, label %220, label %223, !prof !501

220:                                              ; preds = %213
  %221 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %222 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !474
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.8, i32 noundef %214, i32 noundef 0, i32 noundef %221, i32 noundef %222) #14
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.9) #14
  br label %359

223:                                              ; preds = %213
  %224 = icmp eq i32 %214, 0
  br i1 %224, label %225, label %261, !prof !490

225:                                              ; preds = %223
  %226 = load i32, ptr @uci_mode, align 4
  %227 = icmp eq i32 %226, 0
  %228 = load i32, ptr @gamestate, align 8
  %229 = icmp eq i32 %228, -32000
  %230 = select i1 %227, i1 %229, i1 false
  br i1 %230, label %359, label %231, !prof !502

231:                                              ; preds = %225
  %232 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %233 = icmp eq i32 %232, 0
  %234 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %235 = select i1 %233, i32 %234, i32 %105, !prof !490
  %236 = or i32 %232, %226
  %237 = icmp eq i32 %236, 0
  %238 = load i32, ptr @uci_multipv, align 4
  %239 = icmp eq i32 %238, 1
  %240 = select i1 %237, i1 %239, i1 false
  br i1 %240, label %241, label %243, !prof !503

241:                                              ; preds = %231
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef nonnull %1, i32 noundef %228, i32 noundef %203, ptr noundef null, i32 noundef 0) #14
  %242 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  br label %243

243:                                              ; preds = %241, %231
  %244 = phi i32 [ %242, %241 ], [ %234, %231 ]
  %245 = icmp sgt i32 %244, 2
  %246 = icmp sgt i32 %228, 31500
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %248, label %261, !prof !504

248:                                              ; preds = %243
  %249 = load i32, ptr @gamestate, align 8, !tbaa !421
  %250 = sub nsw i32 32000, %249
  %251 = icmp slt i32 %250, %244
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = load i32, ptr @is_pondering, align 4, !tbaa !152
  %254 = icmp eq i32 %253, 0
  %255 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8
  %256 = icmp ne i32 %255, 99999999
  %257 = select i1 %254, i1 true, i1 %256
  %258 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %257, i1 true, i1 %259
  br i1 %260, label %278, label %269, !prof !505

261:                                              ; preds = %243, %248, %223
  %262 = phi i32 [ %202, %223 ], [ %203, %248 ], [ %203, %243 ]
  %263 = phi i32 [ %204, %223 ], [ %228, %248 ], [ %228, %243 ]
  %264 = phi i32 [ %105, %223 ], [ %235, %248 ], [ %235, %243 ]
  %265 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !198
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %278, !prof !490

267:                                              ; preds = %261
  %268 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  br label %269

269:                                              ; preds = %267, %252
  %270 = phi i32 [ %268, %267 ], [ %244, %252 ]
  %271 = phi i32 [ %262, %267 ], [ %203, %252 ]
  %272 = phi i32 [ %263, %267 ], [ %228, %252 ]
  %273 = phi i32 [ %264, %267 ], [ %235, %252 ]
  %274 = add nsw i32 %270, 1
  store i32 %274, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 40, ptr %6, align 4, !tbaa !152
  %275 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14)) #14
  %276 = load i32, ptr %275, align 4, !tbaa !152
  %277 = icmp slt i32 %270, %276
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br i1 %277, label %104, label %278, !prof !506, !llvm.loop !507

278:                                              ; preds = %269, %137, %145, %148, %210, %252, %261
  %279 = phi i32 [ %271, %269 ], [ %107, %137 ], [ %107, %145 ], [ %107, %148 ], [ %202, %210 ], [ %203, %252 ], [ %262, %261 ]
  %280 = phi i32 [ %272, %269 ], [ %106, %137 ], [ %106, %145 ], [ %106, %148 ], [ %204, %210 ], [ %228, %252 ], [ %263, %261 ]
  %281 = phi i32 [ %273, %269 ], [ %105, %137 ], [ %105, %145 ], [ %105, %148 ], [ %105, %210 ], [ %235, %252 ], [ %264, %261 ]
  %282 = icmp sgt i32 %281, 4
  %283 = icmp eq i32 %279, 0
  br i1 %283, label %284, label %285, !prof !508

284:                                              ; preds = %98, %278
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.9) #14
  br label %359

285:                                              ; preds = %278
  %286 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !155
  %287 = icmp slt i32 %286, 32
  %288 = load i32, ptr @is_pondering, align 4
  %289 = icmp eq i32 %288, 0
  %290 = select i1 %287, i1 true, i1 %289
  %291 = load i32, ptr @uci_mode, align 4
  %292 = icmp eq i32 %291, 0
  %293 = select i1 %290, i1 true, i1 %292
  %294 = load i32, ptr @buffered_count, align 4
  %295 = icmp ne i32 %294, 0
  %296 = select i1 %293, i1 true, i1 %295
  br i1 %296, label %308, label %297, !prof !509

297:                                              ; preds = %285
  %298 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !212
  %299 = icmp eq i32 %298, 99999999
  br i1 %299, label %300, label %311

300:                                              ; preds = %297, %300
  %301 = call noundef i32 @_Z9interruptv() #14
  %302 = icmp eq i32 %301, 0
  %303 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8
  %304 = icmp eq i32 %303, 99999999
  %305 = select i1 %302, i1 %304, i1 false
  br i1 %305, label %300, label %306, !llvm.loop !510

306:                                              ; preds = %300
  %307 = load i32, ptr @uci_mode, align 4, !tbaa !152
  br label %308

308:                                              ; preds = %306, %285
  %309 = phi i32 [ %307, %306 ], [ %291, %285 ]
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %316, label %311, !prof !511

311:                                              ; preds = %297, %308
  call void @_Z4makeP7state_ti(ptr noundef %1, i32 noundef %279) #14
  %312 = call noundef i32 @_Z19extract_ponder_moveP7state_t(ptr noundef %1) #14
  call void @_Z6unmakeP7state_ti(ptr noundef %1, i32 noundef %279) #14
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %1, i32 noundef %279, ptr noundef nonnull %3) #14
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %311
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %1, i32 noundef %312, ptr noundef nonnull %4) #14
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  br label %316

315:                                              ; preds = %311
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #14
  br label %316

316:                                              ; preds = %314, %315, %308
  %317 = icmp ne i32 %280, 31998
  %318 = load i32, ptr @is_pondering, align 4
  %319 = icmp ne i32 %318, 0
  %320 = select i1 %317, i1 true, i1 %319
  br i1 %320, label %326, label %321, !prof !512

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  %323 = load i32, ptr %322, align 4, !tbaa !149
  %324 = icmp eq i32 %323, 0
  %325 = select i1 %324, i32 2, i32 3
  store i32 %325, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !474
  br label %326

326:                                              ; preds = %321, %316
  %327 = icmp sgt i32 %122, 20
  br i1 %327, label %328, label %340, !prof !488

328:                                              ; preds = %326
  %329 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 22
  %330 = load i64, ptr %329, align 8, !tbaa !208
  %331 = uitofp i64 %330 to float
  %332 = sitofp i32 %122 to float
  %333 = fdiv float %332, 1.000000e+02
  %334 = fdiv float %331, %333
  %335 = fdiv float %334, 2.000000e+01
  %336 = fptosi float %335 to i32
  %337 = call noundef i32 @_Z4logLi(i32 noundef %336) #14
  %338 = call i32 @llvm.smax.i32(i32 %337, i32 8)
  %339 = call i32 @llvm.umin.i32(i32 %338, i32 17)
  store i32 %339, ptr @time_check_log, align 4
  br label %340

340:                                              ; preds = %328, %326
  %341 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %1) #14
  %342 = load i32, ptr @is_pondering, align 4
  %343 = freeze i32 %342
  %344 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8
  %345 = freeze i32 %344
  %346 = insertelement <4 x i32> poison, i32 %345, i64 0
  %347 = shufflevector <4 x i32> %346, <4 x i32> poison, <4 x i32> zeroinitializer
  %348 = freeze <4 x i32> %347
  %349 = icmp ne i32 %345, 5
  %350 = icmp eq <4 x i32> %348, <i32 2, i32 3, i32 1, i32 4>
  %351 = bitcast <4 x i1> %350 to i4
  %352 = icmp eq i4 %351, 0
  %353 = or i32 %343, %341
  %354 = icmp eq i32 %353, 0
  %355 = and i1 %352, %354
  %356 = and i1 %355, %349
  %357 = select i1 %356, i1 %282, i1 false
  br i1 %357, label %358, label %359, !prof !513

358:                                              ; preds = %340
  store i32 %280, ptr @_ZZ5thinkP11gamestate_tP7state_tE15lastsearchscore, align 4, !tbaa !152
  br label %359

359:                                              ; preds = %225, %340, %358, %284, %220, %57
  %360 = phi i32 [ %59, %57 ], [ 0, %284 ], [ 0, %220 ], [ %279, %358 ], [ %279, %340 ], [ 0, %225 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #13
  ret i32 %360
}

; Function Attrs: optsize
declare void @_Z11clear_dp_ttv() local_unnamed_addr #2

; Function Attrs: optsize
declare void @_Z11check_phaseP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z19extract_ponder_moveP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_Z4logLi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!131}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 146496756232}
!4 = !{!"MaxCount", i64 8721648212}
!5 = !{!"MaxInternalCount", i64 5141736311}
!6 = !{!"MaxFunctionCount", i64 8721648212}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 8721648212, i32 1}
!14 = !{i32 100000, i64 6254650610, i32 2}
!15 = !{i32 200000, i64 3869890121, i32 6}
!16 = !{i32 300000, i64 2709579086, i32 11}
!17 = !{i32 400000, i64 2122664977, i32 16}
!18 = !{i32 500000, i64 1035201207, i32 30}
!19 = !{i32 600000, i64 738030122, i32 46}
!20 = !{i32 700000, i64 447394011, i32 71}
!21 = !{i32 800000, i64 240014260, i32 118}
!22 = !{i32 900000, i64 123608408, i32 197}
!23 = !{i32 950000, i64 77992234, i32 270}
!24 = !{i32 990000, i64 24047101, i32 388}
!25 = !{i32 999000, i64 3805030, i32 501}
!26 = !{i32 999900, i64 637179, i32 578}
!27 = !{i32 999990, i64 66341, i32 629}
!28 = !{i32 999999, i64 5762, i32 686}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!36 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_ZL17search_time_checkP7state_t, i64 360626203}
!37 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7is_drawP11gamestate_tP7state_t, i64 360626202}
!38 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 359975726}
!39 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z4evalP7state_tiii, i64 243713690}
!40 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z13retrieve_evalP7state_t, i64 308277135}
!41 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7StoreTTP7state_tiiijiiii, i64 308156111}
!42 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z12gen_capturesP7state_tPi, i64 189088454}
!43 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z12gen_evasionsP7state_tPii, i64 31396536}
!44 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z15gen_good_checksP7state_tPi, i64 67321045}
!45 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z9gen_quietP7state_tPi, i64 9347769}
!46 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_ZL16fast_order_movesP7state_tPiS1_ij, i64 293012678}
!47 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_ZL15remove_one_fastPiS_S_i, i64 1107780275}
!48 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_ZL15history_pre_cutP7state_tii, i64 248106228}
!49 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z3seeP7state_tiiii, i64 443928559}
!50 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z4makeP7state_ti, i64 411830503}
!51 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z11check_legalP7state_ti, i64 411830503}
!52 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z8in_checkP7state_t, i64 243712898}
!53 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7qsearchP7state_tiiii, i64 216847551}
!54 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z6unmakeP7state_ti, i64 411830503}
!55 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z12compact_movei, i64 98767618}
!56 = !{ptr @_ZL17search_time_checkP7state_t, ptr @_Z9interruptv, i64 35896}
!57 = !{ptr @_ZL17search_time_checkP7state_t, ptr @_Z5rtimev, i64 35895}
!58 = !{ptr @_ZL17search_time_checkP7state_t, ptr @_Z9rdifftimeii, i64 35895}
!59 = !{ptr @_ZL16fast_order_movesP7state_tPiS1_ij, ptr @_Z12compact_movei, i64 1327526639}
!60 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7qsearchP7state_tiiii, i64 177033599}
!61 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL17search_time_checkP7state_t, i64 227573787}
!62 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7is_drawP11gamestate_tP7state_t, i64 227573786}
!63 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 227385800}
!64 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z13retrieve_evalP7state_t, i64 197521495}
!65 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7StoreTTP7state_tiiijiiii, i64 161464071}
!66 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z6searchP7state_tiiiii, i64 279873140}
!67 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z3genP7state_tPi, i64 59033512}
!68 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z12gen_evasionsP7state_tPii, i64 21268451}
!69 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z4makeP7state_ti, i64 824097701}
!70 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z11check_legalP7state_ti, i64 824097701}
!71 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z6unmakeP7state_ti, i64 824097701}
!72 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL11order_movesP7state_tPiS1_ij, i64 80306430}
!73 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL15remove_one_fastPiS_S_i, i64 1003497597}
!74 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z8in_checkP7state_t, i64 645370423}
!75 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z4evalP7state_tiii, i64 323832547}
!76 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z3seeP7state_tiiii, i64 142514899}
!77 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL15history_pre_cutP7state_tii, i64 461487156}
!78 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL13history_scoreP7state_ti, i64 139815661}
!79 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL12history_goodP7state_tii, i64 69245401}
!80 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL11history_badP7state_tii, i64 18673584}
!81 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z12compact_movei, i64 69541931}
!82 = !{ptr @_ZL11order_movesP7state_tPiS1_ij, ptr @_ZL12make_blunderP7state_tiPii, i64 1}
!83 = !{ptr @_ZL11order_movesP7state_tPiS1_ij, ptr @_Z12compact_movei, i64 2397261800}
!84 = !{ptr @_ZL11order_movesP7state_tPiS1_ij, ptr @_Z3seeP7state_tiiii, i64 224072465}
!85 = !{ptr @_Z14rootmovesearchP7state_tiiiii, ptr @_Z6searchP7state_tiiiii, i64 9696}
!86 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 246}
!87 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z8in_checkP7state_t, i64 9728}
!88 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z12gen_evasionsP7state_tPii, i64 1}
!89 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z3genP7state_tPi, i64 245}
!90 = !{ptr @_Z11search_rootP7state_tiii, ptr @_ZL11order_movesP7state_tPiS1_ij, i64 246}
!91 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z4evalP7state_tiii, i64 9727}
!92 = !{ptr @_Z11search_rootP7state_tiii, ptr @_ZL15remove_one_fastPiS_S_i, i64 9780}
!93 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z4makeP7state_ti, i64 19054}
!94 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z11check_legalP7state_ti, i64 9573}
!95 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z6unmakeP7state_ti, i64 19054}
!96 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z11comp_to_sanP7state_tiPc, i64 9480}
!97 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z13comp_to_coordP7state_tiPc, i64 1}
!98 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z4ranki, i64 1454}
!99 = !{ptr @_Z11search_rootP7state_tiii, ptr @_ZL13history_scoreP7state_ti, i64 8565}
!100 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z14rootmovesearchP7state_tiiiii, i64 9611}
!101 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z16post_fh_thinkingP7state_tiiPci, i64 37}
!102 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z16post_fl_thinkingP7state_tiiPci, i64 40}
!103 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z13post_thinkingP7state_tiiPci, i64 272}
!104 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z21post_multipv_thinkingP7state_tiii, i64 1}
!105 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z12compact_movei, i64 323}
!106 = !{ptr @_Z11search_rootP7state_tiii, ptr @_ZL12history_goodP7state_tii, i64 282}
!107 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z7StoreTTP7state_tiiijiiii, i64 245}
!108 = !{ptr @_Z17reset_search_dataP7state_t, ptr @_Z12elo_to_depthi, i64 1}
!109 = !{ptr @_Z17reset_search_dataP7state_t, ptr @_ZSt3minIiERKT_S2_S2_, i64 1}
!110 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11clear_dp_ttv, i64 12}
!111 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z17reset_search_dataP7state_t, i64 12}
!112 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z21reset_search_countersP7state_t, i64 12}
!113 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z5rtimev, i64 141}
!114 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z8in_checkP7state_t, i64 21}
!115 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z12gen_evasionsP7state_tPii, i64 1}
!116 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z3genP7state_tPi, i64 11}
!117 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z4makeP7state_ti, i64 504}
!118 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11check_legalP7state_ti, i64 503}
!119 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z6unmakeP7state_ti, i64 504}
!120 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11check_phaseP11gamestate_tP7state_t, i64 11}
!121 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z8myprintfPKcz, i64 18}
!122 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z13allocate_timeP11gamestate_ti, i64 1}
!123 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_ZSt3minIiERKT_S2_S2_, i64 137}
!124 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z9rdifftimeii, i64 129}
!125 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11search_rootP7state_tiii, i64 162}
!126 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z9interruptv, i64 128}
!127 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z13post_thinkingP7state_tiiPci, i64 124}
!128 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z19extract_ponder_moveP7state_t, i64 1}
!129 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z13comp_to_coordP7state_tiPc, i64 1}
!130 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z4logLi, i64 1}
!131 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!132 = !{!"function_entry_count", i64 360626203}
!133 = !{!134, !134, i64 0}
!134 = !{!"long long", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C++ TBAA"}
!137 = !{!138, !139, i64 472}
!138 = !{!"_ZTS7state_t", !139, i64 0, !135, i64 4, !134, i64 264, !134, i64 272, !134, i64 280, !135, i64 288, !139, i64 392, !139, i64 396, !135, i64 400, !139, i64 452, !139, i64 456, !139, i64 460, !139, i64 464, !139, i64 468, !139, i64 472, !139, i64 476, !134, i64 480, !134, i64 488, !135, i64 496, !135, i64 2544, !135, i64 2800, !135, i64 3056, !134, i64 4080, !134, i64 4088, !139, i64 4096, !135, i64 4100, !139, i64 4356, !139, i64 4360, !139, i64 4364, !139, i64 4368, !139, i64 4372, !139, i64 4376, !139, i64 4380, !139, i64 4384, !139, i64 4388, !139, i64 4392, !135, i64 4400}
!139 = !{!"int", !135, i64 0}
!140 = !{!138, !139, i64 4096}
!141 = !{!"branch_weights", i32 537, i32 360625668}
!142 = !{i32 0, i32 2}
!143 = !{!"branch_weights", i32 360626204, i32 1}
!144 = !{!"branch_weights", i32 359975730, i32 650475}
!145 = !{!138, !139, i64 476}
!146 = !{!"branch_weights", i32 1, i32 359975730}
!147 = !{!148, !139, i64 12}
!148 = !{!"_ZTS11gamestate_t", !139, i64 0, !139, i64 4, !139, i64 8, !139, i64 12, !139, i64 16, !139, i64 20, !139, i64 24, !139, i64 28, !139, i64 32, !139, i64 36, !139, i64 40, !139, i64 44, !139, i64 48, !139, i64 52, !139, i64 56, !139, i64 60, !135, i64 64, !135, i64 4064, !134, i64 36064, !139, i64 36072, !139, i64 36076, !139, i64 36080, !139, i64 36084, !139, i64 36088, !139, i64 36092, !139, i64 36096, !139, i64 36100}
!149 = !{!138, !139, i64 460}
!150 = !{!"branch_weights", i32 338451, i32 312025}
!151 = !{!"branch_weights", i32 24047103, i32 105246, i32 37705847, i32 46959320, i32 251158219}
!152 = !{!139, !139, i64 0}
!153 = !{!"branch_weights", i32 18704572, i32 19001276}
!154 = !{!"branch_weights", i32 14368041, i32 32591280}
!155 = !{!148, !139, i64 20}
!156 = !{!"branch_weights", i32 791, i32 308277141}
!157 = !{!"branch_weights", i32 1, i32 308277141}
!158 = !{!"branch_weights", i32 31396537, i32 276880605}
!159 = !{!"branch_weights", i32 210035108, i32 66845498}
!160 = !{!"branch_weights", i32 220455, i32 209814654}
!161 = !{!"branch_weights", i32 191826359, i32 17988296}
!162 = !{!"branch_weights", i32 87575406, i32 104250954}
!163 = !{!"branch_weights", i32 23986786, i32 80264169}
!164 = !{!"branch_weights", i32 339444, i32 23647343}
!165 = !{!"branch_weights", i32 66342, i32 273103}
!166 = !{!"branch_weights", i32 23303, i32 43040}
!167 = !{!"branch_weights", i32 16650, i32 6654}
!168 = !{!"branch_weights", i32 275551, i32 40592}
!169 = !{!"branch_weights", i32 21281443, i32 2365901}
!170 = !{!"branch_weights", i32 13483484, i32 74091923}
!171 = !{!"branch_weights", i32 697877, i32 12785608}
!172 = !{!"branch_weights", i32 19400, i32 678478}
!173 = !{!"branch_weights", i32 6010, i32 13391}
!174 = !{!"branch_weights", i32 4544, i32 1467}
!175 = !{!"branch_weights", i32 619559, i32 72310}
!176 = !{!"branch_weights", i32 12314179, i32 471430}
!177 = !{!"branch_weights", i32 68609667, i32 230011699}
!178 = !{!"branch_weights", i32 9526699, i32 220485001}
!179 = !{!"branch_weights", i32 1, i32 15}
!180 = !{!"branch_weights", i32 206924522, i32 650949397}
!181 = !{!"branch_weights", i32 284463880, i32 366485518}
!182 = !{!"branch_weights", i32 1234796566, i32 -634089934}
!183 = !{!"branch_weights", i32 -1509480886, i32 1616754393}
!184 = !{!"branch_weights", i32 344788665, i32 21696854}
!185 = !{!"branch_weights", i32 9915573, i32 11781282}
!186 = !{!"branch_weights", i32 137665700, i32 720208218}
!187 = distinct !{!187, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !{!"branch_weights", i32 297347506, i32 271938277}
!190 = !{!"branch_weights", i32 39235935, i32 258111572}
!191 = !{!"branch_weights", i32 138334928, i32 74380910}
!192 = !{!"branch_weights", i32 145614424, i32 91178879}
!193 = !{!"branch_weights", i32 220428623, i32 152055687}
!194 = !{!138, !134, i64 480}
!195 = !{!148, !139, i64 60}
!196 = !{!"branch_weights", i32 328522627, i32 -1643249209}
!197 = !{!"branch_weights", i32 4055291, i32 192074695}
!198 = !{!148, !139, i64 36096}
!199 = !{!"branch_weights", i32 372484309, i32 1}
!200 = !{!"branch_weights", i32 951301669, i32 -1279634420}
!201 = !{!"branch_weights", i32 123762, i32 89207622}
!202 = !{!"branch_weights", i32 15, i32 -2092316111}
!203 = !{!"branch_weights", i32 1165396365, i32 -1903284469}
!204 = !{!"branch_weights", i32 264256072, i32 -653533194}
!205 = !{!"branch_weights", i32 22354608, i32 -2066571429}
!206 = !{!"function_entry_count", i64 588199992}
!207 = !{!"search.cpp:_ZL17search_time_checkP7state_t"}
!208 = !{!138, !134, i64 4080}
!209 = !{!"branch_weights", i32 35896, i32 588164098}
!210 = !{!"branch_weights", i32 35896, i32 1}
!211 = !{!148, !139, i64 36072}
!212 = !{!148, !139, i64 48}
!213 = !{!148, !139, i64 36084}
!214 = !{!148, !139, i64 40}
!215 = !{!148, !139, i64 36092}
!216 = !{!148, !139, i64 36088}
!217 = !{!"function_entry_count", i64 298621364}
!218 = !{!"search.cpp:_ZL16fast_order_movesP7state_tPiS1_ij"}
!219 = !{!"branch_weights", i32 298621364, i32 1}
!220 = !{!"branch_weights", i32 16660984, i32 1310865660}
!221 = !{!"branch_weights", i32 654760694, i32 656104967}
!222 = !{!"branch_weights", i32 652458332, i32 2302363}
!223 = !{!224, !139, i64 0}
!224 = !{!"_ZTSN7state_tUt_E", !139, i64 0, !139, i64 4, !139, i64 8, !139, i64 12}
!225 = !{!"branch_weights", i32 12376627, i32 640081706}
!226 = !{!224, !139, i64 4}
!227 = !{!"branch_weights", i32 9592955, i32 630488752}
!228 = !{!224, !139, i64 8}
!229 = !{!"branch_weights", i32 8216738, i32 622272015}
!230 = !{!224, !139, i64 12}
!231 = !{!"branch_weights", i32 7338061, i32 614933955}
!232 = !{!138, !139, i64 0}
!233 = !{!"branch_weights", i32 298621364, i32 1028905279}
!234 = distinct !{!234, !188}
!235 = !{!"function_entry_count", i64 1817513289}
!236 = !{!"search.cpp:_ZL15remove_one_fastPiS_S_i"}
!237 = !{!"branch_weights", i32 1069244780, i32 748268511}
!238 = !{!"branch_weights", i32 267311194, i32 1}
!239 = !{!"branch_weights", i32 829479838, i32 -472549298}
!240 = !{!"branch_weights", i32 267311194, i32 -1073355114}
!241 = distinct !{!241, !188}
!242 = !{!"branch_weights", i32 1902451522, i32 245032126}
!243 = !{!"function_entry_count", i64 666232163}
!244 = !{!"search.cpp:_ZL15history_pre_cutP7state_tii"}
!245 = !{!"function_entry_count", i64 0}
!246 = !{!"function_entry_count", i64 680919544}
!247 = !{!"branch_weights", i32 648990227, i32 31929319}
!248 = !{!"function_entry_count", i64 229576879}
!249 = !{!"branch_weights", i32 2003091, i32 227573790}
!250 = !{!"branch_weights", i32 1, i32 227573790}
!251 = !{!"branch_weights", i32 227573790, i32 1}
!252 = !{!"branch_weights", i32 227384667, i32 189124}
!253 = !{!"branch_weights", i32 1, i32 227384667}
!254 = !{!"branch_weights", i32 115135, i32 73990}
!255 = !{!"branch_weights", i32 49, i32 227384619}
!256 = !{!"branch_weights", i32 49, i32 1}
!257 = !{!"branch_weights", i32 5777, i32 227378891}
!258 = !{!"branch_weights", i32 2449, i32 3329}
!259 = !{!"branch_weights", i32 1, i32 50943, i32 11958980, i32 39844178, i32 71410497, i32 104116745}
!260 = !{!"branch_weights", i32 6336423, i32 5622558}
!261 = !{!"branch_weights", i32 15657841, i32 24186338}
!262 = !{!"branch_weights", i32 24408317, i32 47002181}
!263 = !{!"branch_weights", i32 -742062771, i32 515609940}
!264 = !{!"branch_weights", i32 56606074, i32 115883187}
!265 = !{!"branch_weights", i32 48365249, i32 8240826}
!266 = !{!"branch_weights", i32 36057423, i32 12307827}
!267 = !{!"branch_weights", i32 50638982, i32 65244206}
!268 = !{!"branch_weights", i32 29890534, i32 20748449}
!269 = !{!"branch_weights", i32 126035323, i32 6439486}
!270 = !{!"branch_weights", i32 72554644, i32 53480680}
!271 = !{!"branch_weights", i32 -1799384028, i32 1352272599}
!272 = !{!148, !139, i64 4}
!273 = !{!"branch_weights", i32 1, i32 81742059}
!274 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!275 = !{!138, !139, i64 456}
!276 = !{!"branch_weights", i32 66329313, i32 15412747}
!277 = !{!"branch_weights", i32 81742059, i32 1}
!278 = !{!"branch_weights", i32 37497308, i32 44244752}
!279 = !{!"branch_weights", i32 270109, i32 37227200}
!280 = !{!"branch_weights", i32 539947351, i32 -1709672199}
!281 = !{!"branch_weights", i32 8765085, i32 1}
!282 = !{!"branch_weights", i32 836992, i32 7928094}
!283 = !{!"branch_weights", i32 1067025209, i32 1080458439}
!284 = !{!"branch_weights", i32 18, i32 22746464}
!285 = !{!"branch_weights", i32 22746463, i32 1}
!286 = !{!"branch_weights", i32 134964770, i32 3809207}
!287 = !{!"branch_weights", i32 93281050, i32 22746463}
!288 = distinct !{!288, !188}
!289 = !{!"branch_weights", i32 -1495693382, i32 895648}
!290 = !{!"branch_weights", i32 4469, i32 21217}
!291 = !{!"branch_weights", i32 4468, i32 1}
!292 = !{!"branch_weights", i32 136826, i32 10735}
!293 = !{!"branch_weights", i32 1, i32 10735}
!294 = !{!"branch_weights", i32 4468, i32 143092}
!295 = distinct !{!295, !188}
!296 = !{!"branch_weights", i32 2147003120, i32 480528}
!297 = !{!"branch_weights", i32 284684567, i32 -1376108652}
!298 = !{!"branch_weights", i32 5963890, i32 1172189}
!299 = !{!"branch_weights", i32 3461, i32 5960430}
!300 = !{!"branch_weights", i32 5487331, i32 473100}
!301 = !{!"branch_weights", i32 5454287, i32 2142029361}
!302 = !{!"branch_weights", i32 4967628, i32 505767}
!303 = !{!"branch_weights", i32 1, i32 2836508}
!304 = !{!"branch_weights", i32 12959394, i32 259813}
!305 = !{!"branch_weights", i32 2353783, i32 10605612}
!306 = !{!"branch_weights", i32 13219206, i32 1}
!307 = !{!"branch_weights", i32 2073003726, i32 -1634390358}
!308 = !{!"branch_weights", i32 2148517, i32 3640647}
!309 = !{!"branch_weights", i32 16055714, i32 1}
!310 = !{!"branch_weights", i32 10382698, i32 2836508}
!311 = distinct !{!311, !188}
!312 = !{!"branch_weights", i32 170098027, i32 -123326740}
!313 = !{!"branch_weights", i32 1701449, i32 1360403}
!314 = !{!"branch_weights", i32 683786344, i32 1}
!315 = !{!"branch_weights", i32 1871499, i32 3788997}
!316 = !{!"branch_weights", i32 2087549, i32 1701449}
!317 = !{!"branch_weights", i32 1541581, i32 159869}
!318 = !{!"branch_weights", i32 1072078, i32 1015472}
!319 = !{!"branch_weights", i32 1511421266, i32 683786344}
!320 = distinct !{!320, !188}
!321 = !{!"branch_weights", i32 77809697, i32 343752}
!322 = !{!"branch_weights", i32 1, i32 127}
!323 = !{!"branch_weights", i32 775743250, i32 1}
!324 = !{!"branch_weights", i32 143901606, i32 631841645}
!325 = !{!"branch_weights", i32 -1871701047, i32 15438148, i32 14306622}
!326 = !{!"branch_weights", i32 140964874, i32 1191810}
!327 = !{!"branch_weights", i32 21735, i32 2914999}
!328 = !{!"branch_weights", i32 665326192, i32 110417059}
!329 = !{!"branch_weights", i32 54051731, i32 56365329}
!330 = !{!"branch_weights", i32 12408623, i32 43956707}
!331 = !{!"branch_weights", i32 3500650, i32 8907974}
!332 = !{!"branch_weights", i32 2860441, i32 640210}
!333 = !{!"branch_weights", i32 18086, i32 2842356}
!334 = !{!"branch_weights", i32 4013283, i32 771729968}
!335 = !{!"branch_weights", i32 51629496, i32 -617566173}
!336 = !{!"branch_weights", i32 2145367397, i32 2116251}
!337 = !{!"branch_weights", i32 2962536, i32 991283}
!338 = !{!"branch_weights", i32 205705, i32 2147277943}
!339 = !{!"branch_weights", i32 273189153, i32 -1435237971, i32 97830461, i32 103579017}
!340 = !{!"branch_weights", i32 1184, i32 63557246}
!341 = !{!"branch_weights", i32 -261317159, i32 -637795787}
!342 = !{!"branch_weights", i32 -909688441, i32 -1996909491}
!343 = !{!"branch_weights", i32 22802902, i32 752940348}
!344 = distinct !{!344, !188}
!345 = !{!"branch_weights", i32 1094689391, i32 -1356006551}
!346 = !{!"branch_weights", i32 310772679, i32 245244462}
!347 = !{!"branch_weights", i32 127330708, i32 117913755}
!348 = !{!"branch_weights", i32 110417059, i32 445600082}
!349 = !{!"branch_weights", i32 54691396, i32 501325745}
!350 = !{!"branch_weights", i32 27665528, i32 473660218}
!351 = !{!"branch_weights", i32 219975, i32 27445554}
!352 = !{!"branch_weights", i32 -1691132495, i32 352533743}
!353 = !{!"branch_weights", i32 -1853633412, i32 -1321445926}
!354 = !{!"branch_weights", i32 198890072, i32 184228}
!355 = !{!"branch_weights", i32 963116952, i32 -1238651453}
!356 = !{!"branch_weights", i32 57912720, i32 231051}
!357 = !{!"branch_weights", i32 -1164130080, i32 -1307098597}
!358 = !{!"branch_weights", i32 -2002791317, i32 273972098}
!359 = !{!"branch_weights", i32 -1786442355, i32 226402862}
!360 = !{!"branch_weights", i32 74810695, i32 169712261}
!361 = !{!"branch_weights", i32 17900324, i32 56910372}
!362 = !{!"branch_weights", i32 30995696, i32 138716566}
!363 = !{!"branch_weights", i32 18459018, i32 -1608346101}
!364 = !{!"branch_weights", i32 930644, i32 4404895}
!365 = !{!"branch_weights", i32 91512, i32 1066577}
!366 = !{!"branch_weights", i32 299214350, i32 1}
!367 = !{!"branch_weights", i32 54691396, i32 244522955}
!368 = !{!"branch_weights", i32 55587573, i32 188935383}
!369 = !{!"branch_weights", i32 237028, i32 55350546}
!370 = !{!"branch_weights", i32 14926523, i32 40424023}
!371 = !{!"branch_weights", i32 14926523, i32 0}
!372 = distinct !{!372, !188}
!373 = !{!"branch_weights", i32 127, i32 -1376195967}
!374 = !{!"branch_weights", i32 948455853, i32 1199027795}
!375 = !{!"branch_weights", i32 1, i32 705736}
!376 = !{!"branch_weights", i32 22097168, i32 22097169}
!377 = !{!"branch_weights", i32 -569649657, i32 337}
!378 = !{!"function_entry_count", i64 80306677}
!379 = !{!"search.cpp:_ZL11order_movesP7state_tPiS1_ij"}
!380 = !{!"branch_weights", i32 80306677, i32 1}
!381 = !{!"branch_weights", i32 1, i32 -1897705450}
!382 = !{!"branch_weights", i32 -1897705450, i32 1}
!383 = !{!"branch_weights", i32 22173274, i32 -1919878723}
!384 = !{!"branch_weights", i32 503968652, i32 -103657042}
!385 = !{!"branch_weights", i32 30858114, i32 224072469}
!386 = !{!"branch_weights", i32 818891596, i32 1328592052}
!387 = !{!"branch_weights", i32 41691553, i32 2078466440}
!388 = !{!"branch_weights", i32 31835095, i32 2046631346}
!389 = !{!"branch_weights", i32 27142755, i32 2019488592}
!390 = !{!"branch_weights", i32 24341462, i32 1995147131}
!391 = !{!"branch_weights", i32 80306677, i32 -1978012127}
!392 = distinct !{!392, !188}
!393 = !{!"function_entry_count", i64 111768749}
!394 = !{!"search.cpp:_ZL13history_scoreP7state_ti"}
!395 = !{!"function_entry_count", i64 55350829}
!396 = !{!"search.cpp:_ZL12history_goodP7state_tii"}
!397 = !{!"branch_weights", i32 1245531104, i32 -125303955}
!398 = !{!"branch_weights", i32 385, i32 12730680}
!399 = !{!"branch_weights", i32 4609, i32 290304}
!400 = distinct !{!400, !188}
!401 = !{!"branch_weights", i32 385, i32 4224}
!402 = distinct !{!402, !188}
!403 = !{!"branch_weights", i32 1, i32 12731064}
!404 = distinct !{!404, !188}
!405 = distinct !{!405, !188}
!406 = !{!"branch_weights", i32 6264526, i32 6466539}
!407 = !{!"branch_weights", i32 1540919, i32 4925621}
!408 = !{!"branch_weights", i32 769733, i32 4155889}
!409 = !{!"function_entry_count", i64 14926522}
!410 = !{!"search.cpp:_ZL11history_badP7state_tii"}
!411 = !{!"branch_weights", i32 -913580115, i32 1447258605}
!412 = !{!"branch_weights", i32 144, i32 10452552}
!413 = !{!"branch_weights", i32 1717, i32 108108}
!414 = distinct !{!414, !188}
!415 = !{!"branch_weights", i32 144, i32 1573}
!416 = distinct !{!416, !188}
!417 = !{!"search.cpp:_ZL12make_blunderP7state_tiPii"}
!418 = !{!"function_entry_count", i64 9696}
!419 = !{!"branch_weights", i32 9697, i32 1}
!420 = !{!"function_entry_count", i64 246}
!421 = !{!148, !139, i64 0}
!422 = !{!"branch_weights", i32 1, i32 247}
!423 = !{!"branch_weights", i32 247, i32 1}
!424 = !{!148, !139, i64 36076}
!425 = !{!"branch_weights", i32 247, i32 14326}
!426 = distinct !{!426, !188, !427, !428}
!427 = !{!"llvm.loop.isvectorized", i32 1}
!428 = !{!"llvm.loop.unroll.runtime.disable"}
!429 = !{!"branch_weights", i32 1, i32 209}
!430 = !{!"branch_weights", i32 92, i32 9567}
!431 = !{!"branch_weights", i32 9567, i32 1}
!432 = !{!"branch_weights", i32 9314, i32 254}
!433 = !{!"branch_weights", i32 1114, i32 8201}
!434 = !{!"branch_weights", i32 1, i32 1114}
!435 = !{!"branch_weights", i32 353, i32 8962}
!436 = !{!"branch_weights", i32 1, i32 353}
!437 = !{!"branch_weights", i32 9314, i32 1}
!438 = !{!"branch_weights", i32 154034866, i32 1993448782}
!439 = !{!"branch_weights", i32 6314, i32 2332}
!440 = !{!"branch_weights", i32 38212328, i32 1666897}
!441 = !{!"branch_weights", i32 302943240, i32 -1600193048}
!442 = !{!"branch_weights", i32 965, i32 1}
!443 = !{!"branch_weights", i32 934, i32 32}
!444 = !{!"branch_weights", i32 29320, i32 656970}
!445 = !{!"branch_weights", i32 1600, i32 81}
!446 = !{!"branch_weights", i32 202, i32 694}
!447 = !{!"branch_weights", i32 40804, i32 405}
!448 = !{!"branch_weights", i32 1, i32 965}
!449 = !{!"branch_weights", i32 194654, i32 80656}
!450 = !{!"branch_weights", i32 92, i32 8512}
!451 = !{!"branch_weights", i32 17020, i32 278}
!452 = !{!"branch_weights", i32 2249, i32 1936}
!453 = !{!"branch_weights", i32 39, i32 6}
!454 = !{!"branch_weights", i32 8598, i32 6}
!455 = !{!"branch_weights", i32 6, i32 1}
!456 = !{!"branch_weights", i32 17, i32 9551}
!457 = !{!"branch_weights", i32 17, i32 1}
!458 = !{!"branch_weights", i32 2147471157, i32 12491}
!459 = !{!148, !139, i64 36100}
!460 = !{!"branch_weights", i32 9658, i32 1}
!461 = !{!"branch_weights", i32 285, i32 9283}
!462 = !{!"branch_weights", i32 248, i32 38}
!463 = !{!"branch_weights", i32 9312, i32 219}
!464 = !{!148, !134, i64 36064}
!465 = !{!"branch_weights", i32 209, i32 9449}
!466 = distinct !{!466, !188}
!467 = !{!"branch_weights", i32 13, i32 198}
!468 = !{!"branch_weights", i32 26995, i32 3850}
!469 = !{!"branch_weights", i32 2, i32 209}
!470 = !{!"branch_weights", i32 16, i32 2}
!471 = !{!"branch_weights", i32 3, i32 208}
!472 = !{!"branch_weights", i32 206, i32 3}
!473 = !{!"branch_weights", i32 210, i32 1}
!474 = !{!148, !139, i64 16}
!475 = !{!"branch_weights", i32 1, i32 210}
!476 = !{!"function_entry_count", i64 12}
!477 = !{!"branch_weights", i32 13, i32 84}
!478 = distinct !{!478, !188}
!479 = !{!"branch_weights", i32 13, i32 1}
!480 = !{!148, !139, i64 56}
!481 = !{!"branch_weights", i32 207, i32 1}
!482 = !{!"branch_weights", i32 540, i32 6}
!483 = !{!"branch_weights", i32 207, i32 8513}
!484 = distinct !{!484, !188}
!485 = !{!"branch_weights", i32 143123232, i32 2004360416}
!486 = !{!"branch_weights", i32 27, i32 169}
!487 = !{!148, !139, i64 52}
!488 = !{!"branch_weights", i32 1, i32 13}
!489 = !{!"branch_weights", i32 1, i32 207}
!490 = !{!"branch_weights", i32 195, i32 1}
!491 = !{!"branch_weights", i32 13, i32 183}
!492 = !{!"branch_weights", i32 972, i32 37248}
!493 = !{!"branch_weights", i32 192, i32 1}
!494 = !{!"branch_weights", i32 1, i32 192}
!495 = !{!"branch_weights", i32 2744, i32 196}
!496 = !{!"branch_weights", i32 14, i32 1}
!497 = !{!"branch_weights", i32 2070787804, i32 76695844}
!498 = !{!"branch_weights", i32 5693, i32 1444}
!499 = !{!"branch_weights", i32 147, i32 9}
!500 = !{!"branch_weights", i32 3, i32 1}
!501 = !{!"branch_weights", i32 37830, i32 7453290}
!502 = !{!"branch_weights", i32 195, i32 38221}
!503 = !{!"branch_weights", i32 7414875, i32 114661}
!504 = !{!"branch_weights", i32 171, i32 33541}
!505 = !{!"branch_weights", i32 197, i32 195}
!506 = !{!"branch_weights", i32 2913, i32 207}
!507 = distinct !{!507, !188}
!508 = !{!"branch_weights", i32 142500559, i32 2004983089}
!509 = !{!"branch_weights", i32 111, i32 1}
!510 = distinct !{!510, !188}
!511 = !{!"branch_weights", i32 2003034075, i32 144449573}
!512 = !{!"branch_weights", i32 27, i32 1}
!513 = !{!"branch_weights", i32 815730721, i32 660058335}
