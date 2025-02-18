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

@history_h = dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]] zeroinitializer, align 16
@history_hit = dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]] zeroinitializer, align 16
@history_tot = dso_local local_unnamed_addr global [8 x [12 x [64 x i32]]] zeroinitializer, align 16
@gamestate = external global %struct.gamestate_t, align 8
@contempt = external local_unnamed_addr global i32, align 4
@material = external local_unnamed_addr constant [14 x i32], align 16
@_ZL8rc_index = internal unnamed_addr constant [14 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 2, i32 2, i32 0], align 16
@_ZZ11search_rootP7state_tiiiE7changes = internal unnamed_addr global i32 0, align 4
@_ZZ11search_rootP7state_tiiiE5bmove = internal unnamed_addr global i32 0, align 4
@multipv_scores = external local_unnamed_addr global [240 x i32], align 16
@root_scores = external local_unnamed_addr global [240 x i32], align 16
@uci_mode = external local_unnamed_addr global i32, align 4
@uci_multipv = external local_unnamed_addr global i32, align 4
@uci_showrefutations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"info refutation %s \00", align 1
@is_pondering = external local_unnamed_addr global i32, align 4
@scoreboard = external local_unnamed_addr global %struct.scoreboard_t, align 8
@uci_limitstrength = external local_unnamed_addr global i32, align 4
@uci_elo = external local_unnamed_addr global i32, align 4
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
@time_check_log = external local_unnamed_addr global i32, align 4
@reltable._Z5thinkP11gamestate_tP7state_t = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable._Z5thinkP11gamestate_tP7state_t to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable._Z5thinkP11gamestate_tP7state_t to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable._Z5thinkP11gamestate_tP7state_t to i64)) to i32)], align 4

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !107 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [240 x i32], align 16
  %10 = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %10) #11
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %12 = load i64, ptr %11, align 8, !tbaa !108
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !108
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 23
  %15 = load i64, ptr %14, align 8, !tbaa !114
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !116
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %23, !prof !117

22:                                               ; preds = %5
  store i32 %18, ptr %19, align 8, !tbaa !116
  br label %23

23:                                               ; preds = %22, %5
  %24 = load i32, ptr @time_check_log, align 4, !tbaa !118
  %25 = shl nsw i32 -1, %24
  %26 = xor i32 %25, -1
  %27 = zext nneg i32 %26 to i64
  %28 = and i64 %13, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %101, !prof !119

30:                                               ; preds = %23
  %31 = tail call noundef i32 @_Z9interruptv()
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !120

33:                                               ; preds = %30
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  br label %544

34:                                               ; preds = %30
  %35 = tail call noundef i32 @_Z5rtimev()
  %36 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !123
  %37 = tail call noundef i32 @_Z9rdifftimeii(i32 noundef %35, i32 noundef %36)
  %38 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %39 = icmp sge i32 %37, %38
  %40 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %41 = icmp sgt i32 %40, 2
  %42 = select i1 %39, i1 %41, i1 false, !prof !125
  br i1 %42, label %43, label %101, !prof !125

43:                                               ; preds = %34
  %44 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  %45 = icmp eq i32 %44, 1
  %46 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4
  %47 = icmp ne i32 %46, 2
  %48 = select i1 %45, i1 %47, i1 false
  %49 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %79

52:                                               ; preds = %43
  %53 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %54 = mul nsw i32 %38, 7
  %55 = tail call i32 @llvm.smax.i32(i32 %54, i32 1000)
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = icmp eq i32 %46, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %61 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %62 = add nsw i32 %61, %60
  store i32 %62, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %63 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %64 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %65 = add nsw i32 %64, %63
  store i32 %65, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  br label %66

66:                                               ; preds = %59, %57
  %67 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %68 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %69 = add nsw i32 %68, %67
  store i32 %69, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %70 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %71 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %73 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %74 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %75 = add nsw i32 %74, %73
  store i32 %75, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %76 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %77 = add nsw i32 %76, -50
  %78 = tail call i32 @llvm.smin.i32(i32 %77, i32 %75)
  store i32 %78, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  store i32 2, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !128
  br label %101

79:                                               ; preds = %52, %43
  %80 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  %81 = icmp eq i32 %80, 1
  %82 = icmp eq i32 %46, 0
  %83 = select i1 %81, i1 %82, i1 false
  %84 = select i1 %83, i1 %50, i1 false
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %87 = mul nsw i32 %38, 6
  %88 = tail call i32 @llvm.smax.i32(i32 %87, i32 1000)
  %89 = icmp sgt i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !128
  %91 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %92 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %93 = add nsw i32 %92, %91
  store i32 %93, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %94 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %95 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %96 = add nsw i32 %95, %94
  store i32 %96, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %97 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %98 = add nsw i32 %97, -50
  %99 = tail call i32 @llvm.smin.i32(i32 %98, i32 %96)
  store i32 %99, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  br label %101

100:                                              ; preds = %85, %79
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  br label %544

101:                                              ; preds = %90, %66, %34, %23
  %102 = tail call noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef %0)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108, !prof !130

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %106 = load i32, ptr %105, align 4, !tbaa !131
  %107 = icmp sgt i32 %106, 99
  br i1 %107, label %108, label %116, !prof !132

108:                                              ; preds = %104, %101
  %109 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 3), align 4, !tbaa !133
  %110 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %111 = load i32, ptr %110, align 4, !tbaa !134
  %112 = icmp eq i32 %109, %111
  %113 = load i32, ptr @contempt, align 4
  %114 = sub nsw i32 0, %113
  %115 = select i1 %112, i32 %113, i32 %114, !prof !135
  br label %544

116:                                              ; preds = %104
  %117 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %8, i32 noundef 0)
  switch i32 %117, label %127 [
    i32 3, label %118
    i32 1, label %120
    i32 2, label %123
    i32 4, label %126
  ], !prof !136

118:                                              ; preds = %116
  %119 = load i32, ptr %7, align 4, !tbaa !118
  br label %544

120:                                              ; preds = %116
  %121 = load i32, ptr %7, align 4, !tbaa !118
  %122 = icmp sgt i32 %121, %1
  br i1 %122, label %127, label %544, !prof !137

123:                                              ; preds = %116
  %124 = load i32, ptr %7, align 4, !tbaa !118
  %125 = icmp slt i32 %124, %2
  br i1 %125, label %127, label %544, !prof !138

126:                                              ; preds = %116
  store i32 65535, ptr %6, align 4, !tbaa !118
  br label %127

127:                                              ; preds = %123, %120, %116, %126
  %128 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %129 = shl nsw i32 %128, 1
  %130 = icmp slt i32 %129, %4
  br i1 %130, label %134, label %131, !prof !140

131:                                              ; preds = %127
  %132 = load i32, ptr %17, align 8, !tbaa !115
  %133 = icmp sgt i32 %132, 60
  br i1 %133, label %134, label %136, !prof !141

134:                                              ; preds = %131, %127
  %135 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  br label %544

136:                                              ; preds = %131
  %137 = sext i32 %132 to i64
  %138 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !118
  %140 = call noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef %0)
  %141 = add nsw i32 %140, 50
  %142 = icmp ne i32 %139, 0
  br i1 %142, label %216, label %143, !prof !142

143:                                              ; preds = %136
  %144 = icmp slt i32 %140, %2
  br i1 %144, label %147, label %145, !prof !143

145:                                              ; preds = %143
  %146 = load i32, ptr %6, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %140, i32 noundef %1, i32 noundef %2, i32 noundef %146, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %544

147:                                              ; preds = %143
  %148 = icmp sgt i32 %140, %1
  br i1 %148, label %216, label %149, !prof !144

149:                                              ; preds = %147
  %150 = add nsw i32 %140, 985
  %151 = icmp sgt i32 %150, %1
  br i1 %151, label %154, label %152, !prof !145

152:                                              ; preds = %149
  %153 = load i32, ptr %6, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %150, i32 noundef %1, i32 noundef %2, i32 noundef %153, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %544

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %156 = load i32, ptr %155, align 4, !tbaa !134
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %185, label %158, !prof !146

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %160 = load i32, ptr %159, align 4, !tbaa !118
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %212, !prof !147

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %164 = load i32, ptr %163, align 4, !tbaa !118
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %180, !prof !148

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %168 = load i32, ptr %167, align 4, !tbaa !118
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %177, !prof !149

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %172 = load i32, ptr %171, align 4, !tbaa !118
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177, !prof !150

174:                                              ; preds = %170
  %175 = add nsw i32 %140, 135
  %176 = icmp sgt i32 %175, %1
  br i1 %176, label %212, label %213, !prof !151

177:                                              ; preds = %170, %166
  %178 = add nsw i32 %140, 380
  %179 = icmp sgt i32 %178, %1
  br i1 %179, label %212, label %213, !prof !152

180:                                              ; preds = %162
  %181 = add nsw i32 %140, 540
  %182 = icmp sgt i32 %181, %1
  br i1 %182, label %212, label %183, !prof !153

183:                                              ; preds = %180
  %184 = load i32, ptr %6, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %181, i32 noundef %1, i32 noundef %2, i32 noundef %184, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %213

185:                                              ; preds = %154
  %186 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %187 = load i32, ptr %186, align 4, !tbaa !118
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %212, !prof !154

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %191 = load i32, ptr %190, align 4, !tbaa !118
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %207, !prof !155

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %195 = load i32, ptr %194, align 4, !tbaa !118
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %204, !prof !156

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %199 = load i32, ptr %198, align 4, !tbaa !118
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204, !prof !157

201:                                              ; preds = %197
  %202 = add nsw i32 %140, 135
  %203 = icmp sgt i32 %202, %1
  br i1 %203, label %212, label %213, !prof !158

204:                                              ; preds = %197, %193
  %205 = add nsw i32 %140, 380
  %206 = icmp sgt i32 %205, %1
  br i1 %206, label %212, label %213, !prof !159

207:                                              ; preds = %189
  %208 = add nsw i32 %140, 540
  %209 = icmp sgt i32 %208, %1
  br i1 %209, label %212, label %210, !prof !160

210:                                              ; preds = %207
  %211 = load i32, ptr %6, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %208, i32 noundef %1, i32 noundef %2, i32 noundef %211, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %213

212:                                              ; preds = %185, %207, %201, %204, %158, %180, %174, %177
  br label %213

213:                                              ; preds = %204, %201, %174, %177, %212, %210, %183
  %214 = phi i1 [ true, %212 ], [ false, %183 ], [ false, %210 ], [ false, %177 ], [ false, %174 ], [ false, %201 ], [ false, %204 ]
  %215 = phi i32 [ undef, %212 ], [ %181, %183 ], [ %208, %210 ], [ %178, %177 ], [ %175, %174 ], [ %202, %201 ], [ %205, %204 ]
  br i1 %214, label %216, label %544, !prof !161

216:                                              ; preds = %147, %213, %136
  %217 = phi i32 [ %1, %136 ], [ %1, %213 ], [ %140, %147 ]
  %218 = sub nsw i32 %217, %141
  %219 = select i1 %142, i32 0, i32 %218, !prof !162
  %220 = load i32, ptr %6, align 4, !tbaa !118
  %221 = icmp sgt i32 %3, -6
  br i1 %221, label %222, label %227, !prof !163

222:                                              ; preds = %216
  br i1 %142, label %223, label %225, !prof !164

223:                                              ; preds = %222
  %224 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %139)
  br label %232

225:                                              ; preds = %222
  %226 = call noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %0, ptr noundef nonnull %9)
  br label %232

227:                                              ; preds = %216
  br i1 %142, label %230, label %228, !prof !165

228:                                              ; preds = %227
  %229 = call noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef %0, ptr noundef nonnull %9)
  br label %232

230:                                              ; preds = %227
  %231 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %139)
  br label %232

232:                                              ; preds = %228, %230, %223, %225
  %233 = phi i1 [ false, %223 ], [ true, %225 ], [ false, %230 ], [ false, %228 ]
  %234 = phi i32 [ %224, %223 ], [ %226, %225 ], [ %231, %230 ], [ %229, %228 ]
  %235 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  br label %236

236:                                              ; preds = %528, %232
  %237 = phi i32 [ %220, %232 ], [ %339, %528 ]
  %238 = phi i32 [ 1, %232 ], [ %345, %528 ]
  %239 = phi i32 [ -32000, %232 ], [ %346, %528 ]
  %240 = phi i1 [ false, %232 ], [ %527, %528 ]
  %241 = phi i1 [ false, %232 ], [ %529, %528 ]
  %242 = phi i1 [ true, %232 ], [ false, %528 ]
  %243 = phi i32 [ %234, %232 ], [ %251, %528 ]
  %244 = phi i32 [ %217, %232 ], [ %342, %528 ]
  br i1 %240, label %245, label %247, !prof !166

245:                                              ; preds = %236
  %246 = call noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef %0, ptr noundef nonnull %9)
  br label %250

247:                                              ; preds = %236
  br i1 %241, label %248, label %250, !prof !167

248:                                              ; preds = %247
  %249 = call noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef %0, ptr noundef nonnull %9)
  br label %250

250:                                              ; preds = %247, %248, %245
  %251 = phi i32 [ %246, %245 ], [ %249, %248 ], [ %243, %247 ]
  %252 = load i32, ptr %6, align 4, !tbaa !118
  %253 = icmp sgt i32 %251, 0
  br i1 %253, label %254, label %333, !prof !168

254:                                              ; preds = %250
  %255 = zext nneg i32 %251 to i64
  br label %256

256:                                              ; preds = %328, %254
  %257 = phi i64 [ 0, %254 ], [ %331, %328 ]
  %258 = getelementptr inbounds i32, ptr %9, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !118
  %260 = lshr i32 %259, 6
  %261 = and i32 %260, 63
  %262 = and i32 %259, 63
  %263 = lshr i32 %259, 19
  %264 = and i32 %263, 15
  %265 = lshr i32 %259, 12
  %266 = and i32 %265, 15
  %267 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %259)
  %268 = zext i16 %267 to i32
  %269 = icmp eq i32 %252, %268
  br i1 %269, label %328, label %270, !prof !169

270:                                              ; preds = %256
  %271 = icmp eq i32 %264, 13
  br i1 %271, label %287, label %272, !prof !170

272:                                              ; preds = %270
  %273 = zext nneg i32 %264 to i64
  %274 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4, !tbaa !118
  %276 = call i32 @llvm.abs.i32(i32 %275, i1 true)
  %277 = shl nsw i32 %276, 12
  %278 = add nuw nsw i32 %277, 10000000
  %279 = zext nneg i32 %261 to i64
  %280 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !118
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !118
  %285 = call i32 @llvm.abs.i32(i32 %284, i1 true)
  %286 = sub nsw i32 %278, %285
  br label %328

287:                                              ; preds = %270
  %288 = icmp eq i32 %266, 0
  br i1 %288, label %295, label %289, !prof !171

289:                                              ; preds = %287
  %290 = zext nneg i32 %266 to i64
  %291 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !118
  %293 = call i32 @llvm.abs.i32(i32 %292, i1 true)
  %294 = add nuw nsw i32 %293, 9000000
  br label %328

295:                                              ; preds = %287
  %296 = load i32, ptr %258, align 4, !tbaa !118
  %297 = load i32, ptr %17, align 8, !tbaa !115
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %298
  %300 = load i32, ptr %299, align 8, !tbaa !172
  %301 = icmp eq i32 %296, %300
  br i1 %301, label %328, label %302, !prof !174

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %298, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !175
  %305 = icmp eq i32 %296, %304
  br i1 %305, label %328, label %306, !prof !176

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %298, i32 2
  %308 = load i32, ptr %307, align 8, !tbaa !177
  %309 = icmp eq i32 %296, %308
  br i1 %309, label %328, label %310, !prof !178

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %298, i32 3
  %312 = load i32, ptr %311, align 4, !tbaa !179
  %313 = icmp eq i32 %296, %312
  br i1 %313, label %328, label %314, !prof !180

314:                                              ; preds = %310
  %315 = zext nneg i32 %261 to i64
  %316 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %315
  %317 = load i32, ptr %316, align 4, !tbaa !118
  %318 = add nsw i32 %317, -1
  %319 = load i32, ptr %0, align 8, !tbaa !181
  %320 = sext i32 %319 to i64
  %321 = sext i32 %318 to i64
  %322 = zext nneg i32 %262 to i64
  %323 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %320, i64 %321, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !118
  %325 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %320, i64 %321, i64 %315
  %326 = load i32, ptr %325, align 4, !tbaa !118
  %327 = sub nsw i32 %324, %326
  br label %328

328:                                              ; preds = %310, %306, %302, %295, %256, %314, %289, %272
  %329 = phi i32 [ %327, %314 ], [ %294, %289 ], [ %286, %272 ], [ 128000000, %256 ], [ 8000000, %295 ], [ 7000000, %302 ], [ 6000000, %306 ], [ 5000000, %310 ]
  %330 = getelementptr inbounds i32, ptr %10, i64 %257
  store i32 %329, ptr %330, align 4, !tbaa !118
  %331 = add nuw nsw i64 %257, 1
  %332 = icmp eq i64 %331, %255
  br i1 %332, label %333, label %256, !prof !182, !llvm.loop !183

333:                                              ; preds = %328, %250
  %334 = or i1 %240, %241
  %335 = sext i32 %251 to i64
  %336 = sext i32 %251 to i64
  br label %337

337:                                              ; preds = %520, %333
  %338 = phi i32 [ %468, %520 ], [ -1, %333 ]
  %339 = phi i32 [ %523, %520 ], [ %237, %333 ]
  %340 = phi i32 [ %512, %520 ], [ %238, %333 ]
  %341 = phi i32 [ %513, %520 ], [ %239, %333 ]
  %342 = phi i32 [ %513, %520 ], [ %244, %333 ]
  br label %343

343:                                              ; preds = %337, %517
  %344 = phi i32 [ %468, %517 ], [ %338, %337 ]
  %345 = phi i32 [ %512, %517 ], [ %340, %337 ]
  %346 = phi i32 [ %513, %517 ], [ %341, %337 ]
  %347 = sext i32 %344 to i64
  br label %348

348:                                              ; preds = %414, %343
  %349 = phi i64 [ %347, %343 ], [ %352, %414 ]
  %350 = phi i32 [ %344, %343 ], [ %351, %414 ]
  %351 = add i32 %350, 1
  %352 = add i64 %349, 1
  %353 = icmp slt i64 %349, 9
  br i1 %353, label %354, label %370, !prof !186

354:                                              ; preds = %348
  %355 = icmp slt i64 %352, %336
  br i1 %355, label %356, label %373, !prof !187

356:                                              ; preds = %354
  %357 = sext i32 %351 to i64
  br label %358

358:                                              ; preds = %356, %358
  %359 = phi i64 [ %368, %358 ], [ %357, %356 ]
  %360 = phi i32 [ %367, %358 ], [ undef, %356 ]
  %361 = phi i32 [ %365, %358 ], [ -1000000, %356 ]
  %362 = getelementptr inbounds i32, ptr %10, i64 %359
  %363 = load i32, ptr %362, align 4, !tbaa !118
  %364 = icmp sgt i32 %363, %361
  %365 = call i32 @llvm.smax.i32(i32 %363, i32 %361)
  %366 = trunc i64 %359 to i32
  %367 = select i1 %364, i32 %366, i32 %360, !prof !188
  %368 = add nsw i64 %359, 1
  %369 = icmp slt i64 %368, %335
  br i1 %369, label %358, label %373, !prof !189, !llvm.loop !190

370:                                              ; preds = %348
  %371 = sext i32 %251 to i64
  %372 = icmp slt i64 %352, %371
  br i1 %372, label %386, label %373, !prof !191

373:                                              ; preds = %358, %354, %370
  %374 = phi i32 [ -1000000, %370 ], [ -1000000, %354 ], [ %365, %358 ]
  %375 = phi i32 [ undef, %370 ], [ undef, %354 ], [ %367, %358 ]
  %376 = icmp sgt i32 %374, -1000000
  br i1 %376, label %377, label %526, !prof !192

377:                                              ; preds = %373
  %378 = getelementptr inbounds i32, ptr %10, i64 %352
  %379 = load i32, ptr %378, align 4, !tbaa !118
  %380 = sext i32 %375 to i64
  %381 = getelementptr inbounds i32, ptr %10, i64 %380
  store i32 %379, ptr %381, align 4, !tbaa !118
  store i32 %374, ptr %378, align 4, !tbaa !118
  %382 = getelementptr inbounds i32, ptr %9, i64 %352
  %383 = load i32, ptr %382, align 4, !tbaa !118
  %384 = getelementptr inbounds i32, ptr %9, i64 %380
  %385 = load i32, ptr %384, align 4, !tbaa !118
  store i32 %385, ptr %382, align 4, !tbaa !118
  store i32 %383, ptr %384, align 4, !tbaa !118
  br label %386

386:                                              ; preds = %370, %377
  br i1 %142, label %467, label %387, !prof !193

387:                                              ; preds = %386
  br i1 %242, label %388, label %401, !prof !194

388:                                              ; preds = %387
  %389 = getelementptr inbounds [240 x i32], ptr %9, i64 0, i64 %352
  %390 = load i32, ptr %389, align 4, !tbaa !118
  %391 = lshr i32 %390, 19
  %392 = and i32 %391, 15
  %393 = zext nneg i32 %392 to i64
  %394 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %393
  %395 = load i32, ptr %394, align 4, !tbaa !118
  %396 = call i32 @llvm.abs.i32(i32 %395, i1 true)
  %397 = icmp sle i32 %396, %219
  %398 = and i32 %390, 61440
  %399 = icmp eq i32 %398, 0
  %400 = and i1 %399, %397
  br i1 %400, label %526, label %401, !prof !195

401:                                              ; preds = %388, %387
  br i1 %334, label %402, label %415, !prof !196

402:                                              ; preds = %401
  %403 = getelementptr inbounds [240 x i32], ptr %9, i64 0, i64 %352
  %404 = load i32, ptr %403, align 4, !tbaa !118
  %405 = lshr i32 %404, 19
  %406 = and i32 %405, 15
  %407 = icmp eq i32 %406, 13
  br i1 %407, label %415, label %408, !prof !197

408:                                              ; preds = %402
  %409 = zext nneg i32 %406 to i64
  %410 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !118
  %412 = call i32 @llvm.abs.i32(i32 %411, i1 true)
  %413 = icmp sgt i32 %412, %219
  br i1 %413, label %414, label %415, !prof !198

414:                                              ; preds = %408, %416, %456
  br label %348, !llvm.loop !199

415:                                              ; preds = %408, %401, %402
  br i1 %241, label %416, label %436, !prof !200

416:                                              ; preds = %415
  %417 = getelementptr inbounds [240 x i32], ptr %9, i64 0, i64 %352
  %418 = load i32, ptr %417, align 4, !tbaa !118
  %419 = lshr i32 %418, 6
  %420 = and i32 %419, 63
  %421 = zext nneg i32 %420 to i64
  %422 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %421
  %423 = load i32, ptr %422, align 4, !tbaa !118
  %424 = add nsw i32 %423, -1
  %425 = and i32 %418, 63
  %426 = load i32, ptr %0, align 8, !tbaa !181
  %427 = sext i32 %426 to i64
  %428 = sext i32 %424 to i64
  %429 = zext nneg i32 %425 to i64
  %430 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %427, i64 %428, i64 %429
  %431 = load i32, ptr %430, align 4, !tbaa !118
  %432 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %427, i64 %428, i64 %429
  %433 = load i32, ptr %432, align 4, !tbaa !118
  %434 = sub nsw i32 %433, %431
  %435 = icmp slt i32 %431, %434
  br i1 %435, label %414, label %436, !prof !201

436:                                              ; preds = %416, %415
  br i1 %334, label %456, label %437, !prof !202

437:                                              ; preds = %436
  %438 = getelementptr inbounds [240 x i32], ptr %9, i64 0, i64 %352
  %439 = load i32, ptr %438, align 4, !tbaa !118
  %440 = lshr i32 %439, 19
  %441 = and i32 %440, 15
  %442 = zext nneg i32 %441 to i64
  %443 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !118
  %445 = call i32 @llvm.abs.i32(i32 %444, i1 true)
  %446 = lshr i32 %439, 6
  %447 = and i32 %446, 63
  %448 = zext nneg i32 %447 to i64
  %449 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !118
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %451
  %453 = load i32, ptr %452, align 4, !tbaa !118
  %454 = call i32 @llvm.abs.i32(i32 %453, i1 true)
  %455 = icmp ult i32 %445, %454
  br i1 %455, label %456, label %467, !prof !203

456:                                              ; preds = %437, %436
  %457 = load i32, ptr %235, align 4, !tbaa !134
  %458 = icmp eq i32 %457, 0
  %459 = zext i1 %458 to i32
  %460 = getelementptr inbounds [240 x i32], ptr %9, i64 0, i64 %352
  %461 = load i32, ptr %460, align 4, !tbaa !118
  %462 = lshr i32 %461, 6
  %463 = and i32 %462, 63
  %464 = and i32 %461, 63
  %465 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %459, i32 noundef %463, i32 noundef %464, i32 noundef 0)
  %466 = icmp slt i32 %465, -50
  br i1 %466, label %414, label %467, !prof !204

467:                                              ; preds = %437, %456, %386
  %468 = trunc i64 %352 to i32
  %469 = shl i64 %352, 32
  %470 = ashr exact i64 %469, 32
  %471 = getelementptr inbounds [240 x i32], ptr %9, i64 0, i64 %470
  %472 = load i32, ptr %471, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %472)
  %473 = load i32, ptr %471, align 4, !tbaa !118
  %474 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %511, !prof !205

476:                                              ; preds = %467
  %477 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %478 = sub nsw i32 0, %2
  %479 = sub i32 60, %342
  %480 = load i64, ptr %477, align 8, !tbaa !206
  %481 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !207
  %482 = load i32, ptr %17, align 8, !tbaa !115
  %483 = add i32 %482, -1
  %484 = add i32 %483, %481
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %485
  store i64 %480, ptr %486, align 8, !tbaa !208
  %487 = load i32, ptr %471, align 4, !tbaa !118
  %488 = add nsw i32 %482, -1
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %489
  store i32 %487, ptr %490, align 4, !tbaa !118
  %491 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %492 = load i32, ptr %17, align 8, !tbaa !115
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %493
  store i32 %491, ptr %494, align 4, !tbaa !118
  %495 = icmp ne i32 %491, 0
  %496 = zext i1 %495 to i32
  %497 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %478, i32 noundef %479, i32 noundef %496)
  %498 = sub nsw i32 0, %497
  %499 = icmp sge i32 %342, %498
  %500 = select i1 %241, i1 %499, i1 false, !prof !209
  br i1 %500, label %511, label %501, !prof !210

501:                                              ; preds = %476
  %502 = add nsw i32 %4, 1
  %503 = sub nsw i32 0, %342
  %504 = or i32 %491, %139
  %505 = icmp eq i32 %504, 0
  %506 = select i1 %505, i32 -8, i32 -1
  %507 = select i1 %241, i32 0, i32 %506, !prof !211
  %508 = add nsw i32 %507, %3
  %509 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %478, i32 noundef %503, i32 noundef %508, i32 noundef %502)
  %510 = sub nsw i32 0, %509
  br label %511

511:                                              ; preds = %501, %476, %467
  %512 = phi i32 [ %345, %467 ], [ 0, %476 ], [ 0, %501 ]
  %513 = phi i32 [ %346, %467 ], [ %346, %476 ], [ %510, %501 ]
  %514 = load i32, ptr %471, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %514)
  %515 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %544, !prof !212

517:                                              ; preds = %511
  %518 = icmp sgt i32 %513, %342
  %519 = and i1 %475, %518
  br i1 %519, label %520, label %343, !prof !213, !llvm.loop !199

520:                                              ; preds = %517
  %521 = load i32, ptr %471, align 4, !tbaa !118
  %522 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %521)
  %523 = zext i16 %522 to i32
  %524 = icmp slt i32 %513, %2
  br i1 %524, label %337, label %525, !prof !214, !llvm.loop !199

525:                                              ; preds = %520
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %513, i32 noundef %1, i32 noundef %2, i32 noundef %523, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %544

526:                                              ; preds = %388, %373
  %527 = and i1 %233, %242
  br i1 %527, label %528, label %530, !prof !215

528:                                              ; preds = %526, %530
  %529 = xor i1 %527, true
  br label %236

530:                                              ; preds = %526
  %531 = icmp sgt i32 %3, -1
  %532 = and i1 %531, %240
  %533 = and i1 %233, %532
  %534 = icmp sgt i32 %141, %342
  %535 = select i1 %533, i1 %534, i1 false, !prof !216
  br i1 %535, label %528, label %536, !prof !217

536:                                              ; preds = %530
  %537 = icmp ne i32 %345, 0
  %538 = and i1 %142, %537
  br i1 %538, label %539, label %542, !prof !218

539:                                              ; preds = %536
  %540 = load i32, ptr %17, align 8, !tbaa !115
  %541 = add nsw i32 %540, -32000
  br label %542

542:                                              ; preds = %539, %536
  %543 = phi i32 [ %541, %539 ], [ %342, %536 ]
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %543, i32 noundef %1, i32 noundef %2, i32 noundef %339, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %544

544:                                              ; preds = %511, %33, %100, %123, %120, %213, %542, %525, %152, %145, %134, %118, %108
  %545 = phi i32 [ %115, %108 ], [ %135, %134 ], [ %513, %525 ], [ %543, %542 ], [ %140, %145 ], [ %150, %152 ], [ %215, %213 ], [ %119, %118 ], [ %121, %120 ], [ %124, %123 ], [ 0, %100 ], [ 0, %33 ], [ 0, %511 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %545
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z4evalP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z7StoreTTP7state_tiiijiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z12gen_capturesP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z15gen_good_checksP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z9gen_quietP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare noundef i32 @_Z3seeP7state_tiiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z4makeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z11check_legalP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z8in_checkP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z6unmakeP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i16 @_Z12compact_movei(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !219 {
  %7 = alloca [240 x i32], align 16
  %8 = alloca [240 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [240 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %15) #11
  %18 = icmp slt i32 %3, 1
  br i1 %18, label %23, label %19, !prof !220

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %21 = load i32, ptr %20, align 8, !tbaa !115
  %22 = icmp sgt i32 %21, 59
  br i1 %22, label %23, label %25, !prof !221

23:                                               ; preds = %19, %6
  %24 = tail call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0)
  br label %1656

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %27 = load i64, ptr %26, align 8, !tbaa !108
  %28 = add i64 %27, 1
  store i64 %28, ptr %26, align 8, !tbaa !108
  %29 = load i32, ptr @time_check_log, align 4, !tbaa !118
  %30 = shl nsw i32 -1, %29
  %31 = xor i32 %30, -1
  %32 = zext nneg i32 %31 to i64
  %33 = and i64 %28, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %106, !prof !119

35:                                               ; preds = %25
  %36 = tail call noundef i32 @_Z9interruptv()
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !120

38:                                               ; preds = %35
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  br label %1656

39:                                               ; preds = %35
  %40 = tail call noundef i32 @_Z5rtimev()
  %41 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !123
  %42 = tail call noundef i32 @_Z9rdifftimeii(i32 noundef %40, i32 noundef %41)
  %43 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %44 = icmp sge i32 %42, %43
  %45 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %46 = icmp sgt i32 %45, 2
  %47 = select i1 %44, i1 %46, i1 false, !prof !125
  br i1 %47, label %48, label %106, !prof !125

48:                                               ; preds = %39
  %49 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  %50 = icmp eq i32 %49, 1
  %51 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4
  %52 = icmp ne i32 %51, 2
  %53 = select i1 %50, i1 %52, i1 false
  %54 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %84

57:                                               ; preds = %48
  %58 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %59 = mul nsw i32 %43, 7
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 1000)
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = icmp eq i32 %51, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %62
  %65 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %66 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %67 = add nsw i32 %66, %65
  store i32 %67, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %68 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %69 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %70 = add nsw i32 %69, %68
  store i32 %70, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  br label %71

71:                                               ; preds = %64, %62
  %72 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %73 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %74 = add nsw i32 %73, %72
  store i32 %74, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %75 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %76 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %77 = add nsw i32 %76, %75
  store i32 %77, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %78 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %79 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %80 = add nsw i32 %79, %78
  store i32 %80, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %81 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %82 = add nsw i32 %81, -50
  %83 = tail call i32 @llvm.smin.i32(i32 %82, i32 %80)
  store i32 %83, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  store i32 2, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !128
  br label %106

84:                                               ; preds = %57, %48
  %85 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  %86 = icmp eq i32 %85, 1
  %87 = icmp eq i32 %51, 0
  %88 = select i1 %86, i1 %87, i1 false
  %89 = select i1 %88, i1 %55, i1 false
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %92 = mul nsw i32 %43, 6
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 1000)
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !128
  %96 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %97 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %98 = add nsw i32 %97, %96
  store i32 %98, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %99 = tail call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  %100 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %101 = add nsw i32 %100, %99
  store i32 %101, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %102 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 10), align 8, !tbaa !127
  %103 = add nsw i32 %102, -50
  %104 = tail call i32 @llvm.smin.i32(i32 %103, i32 %101)
  store i32 %104, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  br label %106

105:                                              ; preds = %90, %84
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  br label %1656

106:                                              ; preds = %95, %71, %39, %25
  %107 = tail call noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef %0)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113, !prof !222

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %111 = load i32, ptr %110, align 4, !tbaa !131
  %112 = icmp sgt i32 %111, 99
  br i1 %112, label %113, label %121, !prof !223

113:                                              ; preds = %109, %106
  %114 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 3), align 4, !tbaa !133
  %115 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %116 = load i32, ptr %115, align 4, !tbaa !134
  %117 = icmp eq i32 %114, %116
  %118 = load i32, ptr @contempt, align 4
  %119 = sub nsw i32 0, %118
  %120 = select i1 %117, i32 %118, i32 %119, !prof !224
  br label %1656

121:                                              ; preds = %109
  %122 = load i32, ptr %20, align 8, !tbaa !115
  %123 = add nsw i32 %122, -32000
  %124 = icmp sgt i32 %123, %1
  br i1 %124, label %125, label %127, !prof !225

125:                                              ; preds = %121
  %126 = icmp slt i32 %123, %2
  br i1 %126, label %127, label %1656, !prof !226

127:                                              ; preds = %125, %121
  %128 = phi i32 [ %123, %125 ], [ %1, %121 ]
  %129 = sub i32 31999, %122
  %130 = icmp slt i32 %129, %2
  br i1 %130, label %131, label %133, !prof !227

131:                                              ; preds = %127
  %132 = icmp sgt i32 %129, %128
  br i1 %132, label %133, label %1656, !prof !228

133:                                              ; preds = %131, %127
  %134 = phi i32 [ %129, %131 ], [ %2, %127 ]
  %135 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %128, i32 noundef %134, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %3)
  switch i32 %135, label %149 [
    i32 3, label %136
    i32 1, label %138
    i32 2, label %141
    i32 0, label %144
    i32 4, label %148
  ], !prof !229

136:                                              ; preds = %133
  %137 = load i32, ptr %9, align 4, !tbaa !118
  br label %1656

138:                                              ; preds = %133
  %139 = load i32, ptr %9, align 4, !tbaa !118
  %140 = icmp sgt i32 %139, %128
  br i1 %140, label %149, label %1656, !prof !230

141:                                              ; preds = %133
  %142 = load i32, ptr %9, align 4, !tbaa !118
  %143 = icmp slt i32 %142, %134
  br i1 %143, label %149, label %1656, !prof !231

144:                                              ; preds = %133
  %145 = load i32, ptr %9, align 4, !tbaa !118
  %146 = icmp slt i32 %145, %134
  %147 = select i1 %146, i32 %5, i32 1, !prof !232
  br label %149

148:                                              ; preds = %133
  store i32 65535, ptr %12, align 4, !tbaa !118
  store i32 0, ptr %10, align 4, !tbaa !118
  store i32 0, ptr %13, align 4, !tbaa !118
  store i32 0, ptr %14, align 4, !tbaa !118
  br label %149

149:                                              ; preds = %144, %141, %138, %133, %148
  %150 = phi i32 [ %5, %133 ], [ %5, %148 ], [ 0, %138 ], [ 1, %141 ], [ %147, %144 ]
  %151 = load i32, ptr %20, align 8, !tbaa !115
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !118
  %155 = call noundef i32 @_Z13retrieve_evalP7state_t(ptr noundef %0)
  %156 = icmp ne i32 %154, 0
  %157 = xor i1 %156, true
  %158 = add nsw i32 %128, 1
  %159 = icmp eq i32 %134, %158
  %160 = select i1 %157, i1 %159, i1 false, !prof !233
  br i1 %160, label %161, label %185, !prof !234

161:                                              ; preds = %149
  %162 = icmp slt i32 %3, 5
  br i1 %162, label %163, label %175, !prof !235

163:                                              ; preds = %161
  %164 = add nsw i32 %155, -75
  %165 = icmp slt i32 %164, %134
  br i1 %165, label %171, label %166, !prof !236

166:                                              ; preds = %163
  %167 = load i32, ptr %12, align 4, !tbaa !118
  %168 = load i32, ptr %10, align 4, !tbaa !118
  %169 = load i32, ptr %13, align 4, !tbaa !118
  %170 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %164, i32 noundef %128, i32 noundef %134, i32 noundef %167, i32 noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %3)
  br label %1656

171:                                              ; preds = %163
  %172 = icmp slt i32 %155, %134
  br i1 %172, label %173, label %185, !prof !237

173:                                              ; preds = %171
  %174 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %128, i32 noundef %134, i32 noundef 0, i32 noundef 0)
  br label %1656

175:                                              ; preds = %161
  %176 = icmp slt i32 %3, 9
  br i1 %176, label %177, label %185, !prof !238

177:                                              ; preds = %175
  %178 = add nsw i32 %155, -125
  %179 = icmp slt i32 %178, %134
  br i1 %179, label %185, label %180, !prof !239

180:                                              ; preds = %177
  %181 = load i32, ptr %12, align 4, !tbaa !118
  %182 = load i32, ptr %10, align 4, !tbaa !118
  %183 = load i32, ptr %13, align 4, !tbaa !118
  %184 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %178, i32 noundef %128, i32 noundef %134, i32 noundef %181, i32 noundef %182, i32 noundef %183, i32 noundef %184, i32 noundef %3)
  br label %1656

185:                                              ; preds = %171, %177, %175, %149
  %186 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %187 = load i32, ptr %186, align 4, !tbaa !118
  %188 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %189 = load i32, ptr %188, align 4, !tbaa !118
  %190 = add nsw i32 %189, %187
  %191 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %192 = load i32, ptr %191, align 4, !tbaa !118
  %193 = add nsw i32 %190, %192
  %194 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %195 = load i32, ptr %194, align 4, !tbaa !118
  %196 = add nsw i32 %193, %195
  %197 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %198 = load i32, ptr %197, align 8, !tbaa !118
  %199 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %200 = load i32, ptr %199, align 8, !tbaa !118
  %201 = add nsw i32 %200, %198
  %202 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %203 = load i32, ptr %202, align 8, !tbaa !118
  %204 = add nsw i32 %201, %203
  %205 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %206 = load i32, ptr %205, align 8, !tbaa !118
  %207 = add nsw i32 %204, %206
  store i32 0, ptr %10, align 4, !tbaa !118
  %208 = icmp eq i32 %4, 0
  br i1 %208, label %209, label %301, !prof !240

209:                                              ; preds = %185
  %210 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %211 = load i32, ptr %210, align 4, !tbaa !134
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %212, i32 %207, i32 %196, !prof !241
  %214 = icmp eq i32 %213, 0
  %215 = or i1 %156, %214
  %216 = load i32, ptr %11, align 4
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %215, true
  %219 = select i1 %218, i1 %217, i1 false, !prof !242
  %220 = icmp sgt i32 %3, 4
  %221 = and i1 %220, %159
  %222 = select i1 %219, i1 %221, i1 false, !prof !243
  br i1 %222, label %223, label %301, !prof !244

223:                                              ; preds = %209
  %224 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !245
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %226, label %239, !prof !246

226:                                              ; preds = %223
  %227 = icmp slt i32 %3, 25
  br i1 %227, label %228, label %231

228:                                              ; preds = %226
  %229 = add nsw i32 %134, -1
  %230 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %229, i32 noundef %134, i32 noundef 0, i32 noundef 0)
  br label %235

231:                                              ; preds = %226
  %232 = add nsw i32 %3, -24
  %233 = add nsw i32 %134, -1
  %234 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %233, i32 noundef %134, i32 noundef %232, i32 noundef 1, i32 noundef %150)
  br label %235

235:                                              ; preds = %231, %228
  %236 = phi i32 [ %230, %228 ], [ %234, %231 ]
  %237 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %1656

239:                                              ; preds = %235, %223
  %240 = phi i32 [ -32000, %223 ], [ %236, %235 ]
  %241 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !245
  %242 = icmp eq i32 %241, 2
  %243 = icmp slt i32 %240, %134
  %244 = and i1 %243, %242
  br i1 %244, label %321, label %245, !prof !246

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %247 = load i32, ptr %246, align 8, !tbaa !247
  store i32 0, ptr %246, align 8, !tbaa !247
  %248 = load i32, ptr %210, align 4, !tbaa !134
  %249 = xor i32 %248, 1
  store i32 %249, ptr %210, align 4, !tbaa !134
  %250 = load i32, ptr %20, align 8, !tbaa !115
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %20, align 8, !tbaa !115
  %252 = load i32, ptr %110, align 4, !tbaa !131
  %253 = add nsw i32 %252, 1
  store i32 %253, ptr %110, align 4, !tbaa !131
  %254 = sext i32 %250 to i64
  %255 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %254
  store i32 0, ptr %255, align 4, !tbaa !118
  %256 = load i32, ptr %20, align 8, !tbaa !115
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %257
  store i32 0, ptr %258, align 4, !tbaa !118
  %259 = load i32, ptr %20, align 8, !tbaa !115
  %260 = add nsw i32 %259, -1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !118
  %264 = sext i32 %259 to i64
  %265 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 20, i64 %264
  store i32 %263, ptr %265, align 4, !tbaa !118
  %266 = icmp slt i32 %3, 17
  br i1 %266, label %267, label %271, !prof !248

267:                                              ; preds = %245
  %268 = sub nsw i32 0, %134
  %269 = sub i32 1, %134
  %270 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %268, i32 noundef %269, i32 noundef 0, i32 noundef 0)
  br label %278

271:                                              ; preds = %245
  %272 = add nsw i32 %3, -16
  %273 = sub nsw i32 0, %134
  %274 = sub i32 1, %134
  %275 = icmp eq i32 %150, 0
  %276 = zext i1 %275 to i32
  %277 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %273, i32 noundef %274, i32 noundef %272, i32 noundef 1, i32 noundef %276)
  br label %278

278:                                              ; preds = %271, %267
  %279 = phi i32 [ %270, %267 ], [ %277, %271 ]
  %280 = sub nsw i32 0, %279
  %281 = load i32, ptr %110, align 4, !tbaa !131
  %282 = add nsw i32 %281, -1
  store i32 %282, ptr %110, align 4, !tbaa !131
  %283 = load i32, ptr %20, align 8, !tbaa !115
  %284 = add nsw i32 %283, -1
  store i32 %284, ptr %20, align 8, !tbaa !115
  %285 = load i32, ptr %210, align 4, !tbaa !134
  %286 = xor i32 %285, 1
  store i32 %286, ptr %210, align 4, !tbaa !134
  store i32 %247, ptr %246, align 8, !tbaa !247
  %287 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %298, !prof !249

289:                                              ; preds = %278
  %290 = icmp sgt i32 %134, %280
  br i1 %290, label %295, label %291, !prof !250

291:                                              ; preds = %289
  %292 = load i32, ptr %12, align 4, !tbaa !118
  %293 = load i32, ptr %10, align 4, !tbaa !118
  %294 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %280, i32 noundef %128, i32 noundef %134, i32 noundef %292, i32 noundef %293, i32 noundef 0, i32 noundef %294, i32 noundef %3)
  br label %298

295:                                              ; preds = %289
  %296 = icmp sgt i32 %279, 31400
  br i1 %296, label %297, label %298, !prof !251

297:                                              ; preds = %295
  store i32 1, ptr %10, align 4, !tbaa !118
  br label %298

298:                                              ; preds = %297, %295, %278, %291
  %299 = phi i1 [ false, %291 ], [ false, %278 ], [ true, %295 ], [ true, %297 ]
  %300 = phi i32 [ %280, %291 ], [ 0, %278 ], [ 0, %295 ], [ 0, %297 ]
  br i1 %299, label %321, label %1656, !prof !250

301:                                              ; preds = %209, %185
  %302 = icmp slt i32 %3, 13
  %303 = and i1 %302, %159
  %304 = add nsw i32 %134, -300
  %305 = icmp slt i32 %155, %304
  %306 = select i1 %303, i1 %305, i1 false, !prof !252
  br i1 %306, label %307, label %321, !prof !253

307:                                              ; preds = %301
  %308 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %128, i32 noundef %134, i32 noundef 0, i32 noundef 0)
  %309 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %318, !prof !254

311:                                              ; preds = %307
  %312 = icmp sgt i32 %308, %128
  br i1 %312, label %318, label %313, !prof !255

313:                                              ; preds = %311
  %314 = load i32, ptr %12, align 4, !tbaa !118
  %315 = load i32, ptr %10, align 4, !tbaa !118
  %316 = load i32, ptr %13, align 4, !tbaa !118
  %317 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %128, i32 noundef %128, i32 noundef %134, i32 noundef %314, i32 noundef %315, i32 noundef %316, i32 noundef %317, i32 noundef %3)
  br label %318

318:                                              ; preds = %311, %307, %313
  %319 = phi i1 [ false, %313 ], [ false, %307 ], [ true, %311 ]
  %320 = phi i32 [ %128, %313 ], [ 0, %307 ], [ undef, %311 ]
  br i1 %319, label %321, label %1656, !prof !255

321:                                              ; preds = %239, %301, %318, %298
  %322 = phi i32 [ %300, %298 ], [ %320, %318 ], [ undef, %301 ], [ 0, %239 ]
  br i1 %156, label %323, label %325, !prof !256

323:                                              ; preds = %321
  %324 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %154)
  br label %327

325:                                              ; preds = %321
  %326 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %7)
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i32 [ %324, %323 ], [ %326, %325 ]
  br i1 %156, label %329, label %348, !prof !256

329:                                              ; preds = %327
  %330 = icmp sgt i32 %328, 0
  br i1 %330, label %331, label %348, !prof !257

331:                                              ; preds = %329
  %332 = zext nneg i32 %328 to i64
  br label %333

333:                                              ; preds = %331, %333
  %334 = phi i64 [ 0, %331 ], [ %344, %333 ]
  %335 = phi i32 [ 0, %331 ], [ %342, %333 ]
  %336 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %334
  %337 = load i32, ptr %336, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %337)
  %338 = load i32, ptr %336, align 4, !tbaa !118
  %339 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %338)
  %340 = icmp ne i32 %339, 0
  %341 = zext i1 %340 to i32
  %342 = add nuw nsw i32 %335, %341
  %343 = load i32, ptr %336, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %343)
  %344 = add nuw nsw i64 %334, 1
  %345 = icmp ult i64 %344, %332
  %346 = icmp ult i32 %342, 2
  %347 = select i1 %345, i1 %346, i1 false, !prof !258
  br i1 %347, label %333, label %348, !prof !259, !llvm.loop !260

348:                                              ; preds = %333, %329, %327
  %349 = phi i32 [ %328, %327 ], [ 0, %329 ], [ %342, %333 ]
  %350 = load i32, ptr %12, align 4, !tbaa !118
  %351 = icmp sgt i32 %328, 0
  br i1 %351, label %352, label %565, !prof !261

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %354 = zext nneg i32 %328 to i64
  br label %355

355:                                              ; preds = %562, %352
  %356 = phi i64 [ 0, %352 ], [ %563, %562 ]
  %357 = getelementptr inbounds i32, ptr %7, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !118
  %359 = lshr i32 %358, 6
  %360 = and i32 %359, 63
  %361 = and i32 %358, 63
  %362 = lshr i32 %358, 12
  %363 = and i32 %362, 15
  %364 = lshr i32 %358, 19
  %365 = and i32 %364, 15
  %366 = load i32, ptr @uci_multipv, align 4, !tbaa !118
  %367 = icmp sgt i32 %366, 1
  br i1 %367, label %368, label %379, !prof !262

368:                                              ; preds = %355
  %369 = load i32, ptr %20, align 8, !tbaa !115
  %370 = icmp eq i32 %369, 1
  %371 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %372 = icmp sgt i32 %371, 2
  %373 = select i1 %370, i1 %372, i1 false
  br i1 %373, label %374, label %379

374:                                              ; preds = %368
  %375 = getelementptr inbounds [240 x i32], ptr @root_scores, i64 0, i64 %356
  %376 = load i32, ptr %375, align 4, !tbaa !118
  %377 = add nsw i32 %376, 100000
  %378 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 %377, ptr %378, align 4, !tbaa !118
  br label %562

379:                                              ; preds = %368, %355
  %380 = load i32, ptr @uci_limitstrength, align 4, !tbaa !118
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %482, label %382, !prof !263

382:                                              ; preds = %379
  %383 = load i32, ptr %20, align 8, !tbaa !115
  %384 = icmp sgt i32 %383, 1
  br i1 %384, label %385, label %482

385:                                              ; preds = %382
  %386 = getelementptr inbounds i32, ptr %8, i64 %356
  %387 = zext nneg i32 %383 to i64
  %388 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %387
  %389 = load i32, ptr %388, align 4, !tbaa !118
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %482

391:                                              ; preds = %385
  %392 = load i32, ptr @uci_elo, align 4, !tbaa !118
  %393 = call noundef i32 @_Z14elo_to_blunderi(i32 noundef %392)
  %394 = icmp sgt i32 %393, 99
  br i1 %394, label %482, label %395

395:                                              ; preds = %391
  %396 = icmp slt i32 %328, 6
  %397 = icmp slt i32 %328, 9
  %398 = select i1 %397, i32 40, i32 100
  %399 = select i1 %396, i32 20, i32 %398
  %400 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %401 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %402 = load i32, ptr @uci_elo, align 4, !tbaa !118
  %403 = call noundef i32 @_Z14elo_to_blunderi(i32 noundef %402)
  %404 = call noundef i32 @_Z8myrandomv()
  %405 = urem i32 %404, 200
  %406 = sub i32 %399, %403
  %407 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %408 = icmp slt i32 %407, 5
  %409 = add i32 %406, 5
  %410 = sub i32 %409, %407
  %411 = select i1 %408, i32 %410, i32 %406
  %412 = load i32, ptr %20, align 8, !tbaa !115
  %413 = shl nsw i32 %412, 1
  %414 = load i32, ptr %186, align 4, !tbaa !118
  %415 = load i32, ptr %188, align 4, !tbaa !118
  %416 = load i32, ptr %191, align 4, !tbaa !118
  %417 = load i32, ptr %194, align 4, !tbaa !118
  %418 = load i32, ptr %197, align 8, !tbaa !118
  %419 = load i32, ptr %202, align 8, !tbaa !118
  %420 = load i32, ptr %205, align 8, !tbaa !118
  %421 = load i32, ptr %199, align 8, !tbaa !118
  %422 = load i32, ptr %400, align 4, !tbaa !118
  %423 = load i32, ptr %401, align 8, !tbaa !118
  %424 = add i32 %411, %413
  %425 = add i32 %424, %414
  %426 = add i32 %425, %415
  %427 = add i32 %426, %416
  %428 = add i32 %427, %417
  %429 = add i32 %428, %418
  %430 = add i32 %429, %419
  %431 = add i32 %430, %420
  %432 = add i32 %431, %421
  %433 = add i32 %432, %422
  %434 = add i32 %433, %423
  %435 = zext nneg i32 %360 to i64
  %436 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !118
  %438 = icmp eq i32 %365, %437
  %439 = add nsw i32 %434, -30
  %440 = select i1 %438, i32 %439, i32 %434
  %441 = add i32 %437, -1
  %442 = icmp ult i32 %441, 2
  %443 = add nsw i32 %440, -30
  %444 = select i1 %442, i32 %443, i32 %440
  %445 = icmp eq i32 %365, 13
  %446 = add nsw i32 %444, -10
  %447 = select i1 %445, i32 %444, i32 %446
  %448 = add nsw i32 %365, -9
  %449 = icmp ult i32 %448, 2
  %450 = add nsw i32 %447, -30
  %451 = select i1 %449, i32 %450, i32 %447
  switch i32 %363, label %452 [
    i32 0, label %454
    i32 13, label %454
    i32 9, label %454
    i32 10, label %454
  ]

452:                                              ; preds = %395
  %453 = add nsw i32 %451, 40
  br label %454

454:                                              ; preds = %452, %395, %395, %395, %395
  %455 = phi i32 [ %453, %452 ], [ %451, %395 ], [ %451, %395 ], [ %451, %395 ], [ %451, %395 ]
  %456 = call noundef i32 @_Z12taxicab_distii(i32 noundef %360, i32 noundef %361)
  %457 = shl nsw i32 %456, 1
  %458 = add nsw i32 %457, %455
  %459 = load i32, ptr %436, align 4, !tbaa !118
  %460 = add i32 %459, -3
  %461 = icmp ult i32 %460, 2
  %462 = add nsw i32 %458, 20
  %463 = select i1 %461, i32 %462, i32 %458
  %464 = load i32, ptr %353, align 4, !tbaa !134
  %465 = icmp eq i32 %464, 0
  %466 = call noundef i32 @_Z4ranki(i32 noundef %360)
  %467 = call noundef i32 @_Z4ranki(i32 noundef %361)
  br i1 %465, label %470, label %468

468:                                              ; preds = %454
  %469 = icmp sgt i32 %466, %467
  br i1 %469, label %472, label %478

470:                                              ; preds = %454
  %471 = icmp slt i32 %466, %467
  br i1 %471, label %472, label %478

472:                                              ; preds = %470, %468
  %473 = call noundef i32 @_Z4ranki(i32 noundef %360)
  %474 = call noundef i32 @_Z4ranki(i32 noundef %361)
  %475 = sub nsw i32 %473, %474
  %476 = shl nsw i32 %475, 2
  %477 = add nsw i32 %476, %463
  br label %478

478:                                              ; preds = %472, %470, %468
  %479 = phi i32 [ %463, %468 ], [ %463, %470 ], [ %477, %472 ]
  %480 = icmp slt i32 %479, %405
  br i1 %480, label %482, label %481

481:                                              ; preds = %478
  store i32 -1000000, ptr %386, align 4, !tbaa !118
  br label %562

482:                                              ; preds = %478, %391, %385, %382, %379
  %483 = load i32, ptr %357, align 4, !tbaa !118
  %484 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %483)
  %485 = zext i16 %484 to i32
  %486 = icmp eq i32 %350, %485
  br i1 %486, label %487, label %489, !prof !264

487:                                              ; preds = %482
  %488 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 128000000, ptr %488, align 4, !tbaa !118
  br label %562

489:                                              ; preds = %482
  %490 = icmp ne i32 %365, 13
  %491 = icmp ne i32 %363, 0
  %492 = select i1 %490, i1 true, i1 %491, !prof !265
  br i1 %492, label %493, label %520, !prof !266

493:                                              ; preds = %489
  %494 = zext nneg i32 %365 to i64
  %495 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !118
  %497 = call i32 @llvm.abs.i32(i32 %496, i1 true)
  %498 = zext nneg i32 %360 to i64
  %499 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %498
  %500 = load i32, ptr %499, align 4, !tbaa !118
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !118
  %504 = call i32 @llvm.abs.i32(i32 %503, i1 true)
  %505 = sub nsw i32 %497, %504
  %506 = icmp sgt i32 %505, 0
  br i1 %506, label %512, label %507, !prof !267

507:                                              ; preds = %493
  %508 = load i32, ptr %353, align 4, !tbaa !134
  %509 = icmp eq i32 %508, 0
  %510 = zext i1 %509 to i32
  %511 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %510, i32 noundef %360, i32 noundef %361, i32 noundef %363)
  br label %512

512:                                              ; preds = %507, %493
  %513 = phi i32 [ %511, %507 ], [ %505, %493 ]
  %514 = icmp sgt i32 %513, -1
  br i1 %514, label %515, label %518, !prof !268

515:                                              ; preds = %512
  %516 = add nuw nsw i32 %513, 10000000
  %517 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 %516, ptr %517, align 4, !tbaa !118
  br label %562

518:                                              ; preds = %512
  %519 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 %513, ptr %519, align 4, !tbaa !118
  br label %562

520:                                              ; preds = %489
  %521 = load i32, ptr %357, align 4, !tbaa !118
  %522 = load i32, ptr %20, align 8, !tbaa !115
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %523
  %525 = load i32, ptr %524, align 8, !tbaa !172
  %526 = icmp eq i32 %521, %525
  br i1 %526, label %527, label %529, !prof !269

527:                                              ; preds = %520
  %528 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 8000000, ptr %528, align 4, !tbaa !118
  br label %562

529:                                              ; preds = %520
  %530 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %523, i32 1
  %531 = load i32, ptr %530, align 4, !tbaa !175
  %532 = icmp eq i32 %521, %531
  br i1 %532, label %533, label %535, !prof !270

533:                                              ; preds = %529
  %534 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 7000000, ptr %534, align 4, !tbaa !118
  br label %562

535:                                              ; preds = %529
  %536 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %523, i32 2
  %537 = load i32, ptr %536, align 8, !tbaa !177
  %538 = icmp eq i32 %521, %537
  br i1 %538, label %539, label %541, !prof !271

539:                                              ; preds = %535
  %540 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 6000000, ptr %540, align 4, !tbaa !118
  br label %562

541:                                              ; preds = %535
  %542 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %523, i32 3
  %543 = load i32, ptr %542, align 4, !tbaa !179
  %544 = icmp eq i32 %521, %543
  br i1 %544, label %545, label %547, !prof !272

545:                                              ; preds = %541
  %546 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 5000000, ptr %546, align 4, !tbaa !118
  br label %562

547:                                              ; preds = %541
  %548 = zext nneg i32 %360 to i64
  %549 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %548
  %550 = load i32, ptr %549, align 4, !tbaa !118
  %551 = add nsw i32 %550, -1
  %552 = load i32, ptr %0, align 8, !tbaa !181
  %553 = sext i32 %552 to i64
  %554 = sext i32 %551 to i64
  %555 = zext nneg i32 %361 to i64
  %556 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %553, i64 %554, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !118
  %558 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %553, i64 %554, i64 %548
  %559 = load i32, ptr %558, align 4, !tbaa !118
  %560 = sub nsw i32 %557, %559
  %561 = getelementptr inbounds i32, ptr %8, i64 %356
  store i32 %560, ptr %561, align 4, !tbaa !118
  br label %562

562:                                              ; preds = %547, %545, %539, %533, %527, %518, %515, %487, %481, %374
  %563 = add nuw nsw i64 %356, 1
  %564 = icmp eq i64 %563, %354
  br i1 %564, label %565, label %355, !prof !273, !llvm.loop !274

565:                                              ; preds = %562, %348
  %566 = icmp sgt i32 %3, 19
  br i1 %566, label %567, label %610, !prof !275

567:                                              ; preds = %565
  %568 = icmp ne i32 %134, %158
  %569 = load i32, ptr %12, align 4
  %570 = icmp eq i32 %569, 65535
  %571 = select i1 %568, i1 %570, i1 false, !prof !276
  br i1 %571, label %572, label %610, !prof !277

572:                                              ; preds = %567
  %573 = icmp sgt i32 %328, 0
  br i1 %573, label %574, label %600, !prof !278

574:                                              ; preds = %572
  %575 = zext nneg i32 %328 to i64
  br label %576

576:                                              ; preds = %574, %596
  %577 = phi i64 [ 0, %574 ], [ %598, %596 ]
  %578 = phi i32 [ 0, %574 ], [ %597, %596 ]
  %579 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %577
  %580 = load i32, ptr %579, align 4, !tbaa !118
  %581 = lshr i32 %580, 19
  %582 = and i32 %581, 15
  %583 = icmp eq i32 %582, 13
  br i1 %583, label %596, label %584, !prof !279

584:                                              ; preds = %576
  %585 = lshr i32 %580, 6
  %586 = and i32 %585, 63
  %587 = zext nneg i32 %586 to i64
  %588 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %587
  %589 = load i32, ptr %588, align 4, !tbaa !118
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %590
  %592 = load i32, ptr %591, align 4, !tbaa !118
  %593 = call i32 @llvm.abs.i32(i32 %592, i1 true)
  %594 = icmp ugt i32 %582, %593
  %595 = select i1 %594, i32 1, i32 %578, !prof !280
  br label %596

596:                                              ; preds = %584, %576
  %597 = phi i32 [ %578, %576 ], [ %595, %584 ]
  %598 = add nuw nsw i64 %577, 1
  %599 = icmp eq i64 %598, %575
  br i1 %599, label %600, label %576, !prof !281, !llvm.loop !282

600:                                              ; preds = %596, %572
  %601 = phi i32 [ 0, %572 ], [ %597, %596 ]
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %610, !prof !283

603:                                              ; preds = %600
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #11
  %604 = lshr i32 %3, 1
  %605 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %128, i32 noundef %134, i32 noundef %604, i32 noundef 0, i32 noundef %150)
  %606 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %16, i32 noundef 0)
  %607 = icmp eq i32 %606, 4
  %608 = select i1 %607, ptr %12, ptr %17, !prof !284
  %609 = load i32, ptr %608, align 4, !tbaa !118
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %328, i32 noundef %609)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  br label %610

610:                                              ; preds = %600, %603, %567, %565
  %611 = load i32, ptr %10, align 4
  %612 = icmp eq i32 %611, 0
  %613 = select i1 %157, i1 %612, i1 false, !prof !285
  %614 = icmp sgt i32 %3, 15
  %615 = and i1 %614, %613
  %616 = icmp sgt i32 %349, 8
  %617 = select i1 %615, i1 %616, i1 false, !prof !286
  br i1 %617, label %618, label %769, !prof !287

618:                                              ; preds = %610
  %619 = load i32, ptr %20, align 8, !tbaa !115
  %620 = add nsw i32 %619, -1
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %621
  %623 = load i32, ptr %622, align 4, !tbaa !118
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %769, !prof !288

625:                                              ; preds = %618
  %626 = icmp slt i32 %619, 3
  br i1 %626, label %633, label %627, !prof !289

627:                                              ; preds = %625
  %628 = add nsw i32 %619, -2
  %629 = zext nneg i32 %628 to i64
  %630 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %629
  %631 = load i32, ptr %630, align 4, !tbaa !118
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %769, !prof !290

633:                                              ; preds = %627, %625
  %634 = icmp slt i32 %619, 4
  br i1 %634, label %641, label %635, !prof !291

635:                                              ; preds = %633
  %636 = add nsw i32 %619, -3
  %637 = zext nneg i32 %636 to i64
  %638 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !118
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %769, !prof !292

641:                                              ; preds = %635, %633
  %642 = icmp sgt i32 %328, 0
  br i1 %642, label %643, label %657, !prof !293

643:                                              ; preds = %641
  %644 = zext nneg i32 %328 to i64
  br label %645

645:                                              ; preds = %643, %645
  %646 = phi i64 [ 0, %643 ], [ %655, %645 ]
  %647 = phi i32 [ undef, %643 ], [ %654, %645 ]
  %648 = phi i32 [ -1000000, %643 ], [ %652, %645 ]
  %649 = getelementptr inbounds i32, ptr %8, i64 %646
  %650 = load i32, ptr %649, align 4, !tbaa !118
  %651 = icmp sgt i32 %650, %648
  %652 = call i32 @llvm.smax.i32(i32 %650, i32 %648)
  %653 = trunc i64 %646 to i32
  %654 = select i1 %651, i32 %653, i32 %647, !prof !294
  %655 = add nuw nsw i64 %646, 1
  %656 = icmp eq i64 %655, %644
  br i1 %656, label %657, label %645, !prof !295, !llvm.loop !190

657:                                              ; preds = %645, %641
  %658 = phi i32 [ -1000000, %641 ], [ %652, %645 ]
  %659 = phi i32 [ undef, %641 ], [ %654, %645 ]
  %660 = icmp slt i32 %658, -999999
  br i1 %660, label %765, label %661, !prof !296

661:                                              ; preds = %657
  %662 = load i32, ptr %8, align 16, !tbaa !118
  %663 = sext i32 %659 to i64
  %664 = getelementptr inbounds i32, ptr %8, i64 %663
  store i32 %662, ptr %664, align 4, !tbaa !118
  store i32 %658, ptr %8, align 16, !tbaa !118
  %665 = load i32, ptr %7, align 16, !tbaa !118
  %666 = getelementptr inbounds i32, ptr %7, i64 %663
  %667 = load i32, ptr %666, align 4, !tbaa !118
  store i32 %667, ptr %7, align 16, !tbaa !118
  store i32 %665, ptr %666, align 4, !tbaa !118
  %668 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %669 = sub nsw i32 0, %134
  %670 = sub i32 50, %128
  %671 = icmp sgt i32 %3, 16
  %672 = icmp slt i32 %3, 17
  %673 = add nsw i32 %3, -16
  %674 = sub i32 1, %134
  %675 = icmp eq i32 %150, 0
  %676 = zext i1 %675 to i32
  %677 = sext i32 %328 to i64
  %678 = zext i32 %328 to i64
  br label %679

679:                                              ; preds = %661, %760
  %680 = phi i64 [ 0, %661 ], [ %684, %760 ]
  %681 = phi i64 [ 1, %661 ], [ %764, %760 ]
  %682 = phi i32 [ 0, %661 ], [ %733, %760 ]
  %683 = phi i32 [ -32000, %661 ], [ %719, %760 ]
  %684 = add nuw nsw i64 %680, 1
  %685 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %680
  %686 = load i32, ptr %685, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %686)
  %687 = load i32, ptr %685, align 4, !tbaa !118
  %688 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %687)
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %718, !prof !297

690:                                              ; preds = %679
  %691 = load i64, ptr %668, align 8, !tbaa !206
  %692 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !207
  %693 = load i32, ptr %20, align 8, !tbaa !115
  %694 = add i32 %693, -1
  %695 = add i32 %694, %692
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %696
  store i64 %691, ptr %697, align 8, !tbaa !208
  %698 = load i32, ptr %685, align 4, !tbaa !118
  %699 = add nsw i32 %693, -1
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %700
  store i32 %698, ptr %701, align 4, !tbaa !118
  %702 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %703 = load i32, ptr %20, align 8, !tbaa !115
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %704
  store i32 %702, ptr %705, align 4, !tbaa !118
  %706 = icmp ne i32 %702, 0
  %707 = or i1 %671, %706
  %708 = zext i1 %707 to i32
  %709 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %669, i32 noundef %670, i32 noundef %708)
  br i1 %672, label %710, label %713, !prof !298

710:                                              ; preds = %690
  %711 = sub i32 1, %134
  %712 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %669, i32 noundef %711, i32 noundef 0, i32 noundef 0)
  br label %715

713:                                              ; preds = %690
  %714 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %669, i32 noundef %674, i32 noundef %673, i32 noundef 0, i32 noundef %676)
  br label %715

715:                                              ; preds = %713, %710
  %716 = phi i32 [ %712, %710 ], [ %714, %713 ]
  %717 = sub nsw i32 0, %716
  br label %718

718:                                              ; preds = %715, %679
  %719 = phi i32 [ %717, %715 ], [ %683, %679 ]
  %720 = load i32, ptr %685, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %720)
  %721 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %765, !prof !299

723:                                              ; preds = %718
  %724 = icmp sge i32 %719, %134
  %725 = and i1 %689, %724
  br i1 %725, label %726, label %732, !prof !300

726:                                              ; preds = %723
  %727 = icmp sgt i32 %682, 0
  br i1 %727, label %728, label %732, !prof !301

728:                                              ; preds = %726
  %729 = load i32, ptr %12, align 4, !tbaa !118
  %730 = load i32, ptr %10, align 4, !tbaa !118
  %731 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %134, i32 noundef %128, i32 noundef %134, i32 noundef %729, i32 noundef %730, i32 noundef 0, i32 noundef %731, i32 noundef %3)
  br label %765

732:                                              ; preds = %726, %723
  %733 = phi i32 [ 1, %726 ], [ %682, %723 ]
  %734 = icmp slt i64 %684, %677
  br i1 %734, label %735, label %747, !prof !302

735:                                              ; preds = %732, %735
  %736 = phi i64 [ %745, %735 ], [ %681, %732 ]
  %737 = phi i32 [ %744, %735 ], [ undef, %732 ]
  %738 = phi i32 [ %742, %735 ], [ -1000000, %732 ]
  %739 = getelementptr inbounds i32, ptr %8, i64 %736
  %740 = load i32, ptr %739, align 4, !tbaa !118
  %741 = icmp sgt i32 %740, %738
  %742 = call i32 @llvm.smax.i32(i32 %740, i32 %738)
  %743 = trunc i64 %736 to i32
  %744 = select i1 %741, i32 %743, i32 %737, !prof !303
  %745 = add nuw nsw i64 %736, 1
  %746 = icmp eq i64 %745, %678
  br i1 %746, label %747, label %735, !prof !304, !llvm.loop !190

747:                                              ; preds = %735, %732
  %748 = phi i32 [ -1000000, %732 ], [ %742, %735 ]
  %749 = phi i32 [ undef, %732 ], [ %744, %735 ]
  %750 = icmp sgt i32 %748, -1000000
  br i1 %750, label %751, label %760, !prof !305

751:                                              ; preds = %747
  %752 = getelementptr inbounds i32, ptr %8, i64 %684
  %753 = load i32, ptr %752, align 4, !tbaa !118
  %754 = sext i32 %749 to i64
  %755 = getelementptr inbounds i32, ptr %8, i64 %754
  store i32 %753, ptr %755, align 4, !tbaa !118
  store i32 %748, ptr %752, align 4, !tbaa !118
  %756 = getelementptr inbounds i32, ptr %7, i64 %684
  %757 = load i32, ptr %756, align 4, !tbaa !118
  %758 = getelementptr inbounds i32, ptr %7, i64 %754
  %759 = load i32, ptr %758, align 4, !tbaa !118
  store i32 %759, ptr %756, align 4, !tbaa !118
  store i32 %757, ptr %758, align 4, !tbaa !118
  br label %760

760:                                              ; preds = %747, %751
  %761 = and i64 %680, 4294967294
  %762 = icmp eq i64 %761, 0
  %763 = and i1 %750, %762
  %764 = add nuw nsw i64 %681, 1
  br i1 %763, label %679, label %765, !prof !306, !llvm.loop !307

765:                                              ; preds = %718, %760, %657, %728
  %766 = phi i1 [ false, %728 ], [ true, %657 ], [ true, %760 ], [ true, %718 ]
  %767 = phi i32 [ %719, %728 ], [ -32000, %657 ], [ %719, %760 ], [ %719, %718 ]
  %768 = phi i32 [ %134, %728 ], [ %322, %657 ], [ %322, %760 ], [ %322, %718 ]
  br i1 %766, label %769, label %1656, !prof !308

769:                                              ; preds = %765, %635, %627, %618, %610
  %770 = phi i32 [ -32000, %618 ], [ %767, %765 ], [ -32000, %635 ], [ -32000, %627 ], [ -32000, %610 ]
  %771 = phi i32 [ %322, %618 ], [ %768, %765 ], [ %322, %635 ], [ %322, %627 ], [ %322, %610 ]
  %772 = load i32, ptr %13, align 4, !tbaa !118
  %773 = icmp eq i32 %772, 0
  %774 = load i32, ptr %14, align 4
  %775 = icmp eq i32 %774, 0
  %776 = select i1 %773, i1 %775, i1 false, !prof !309
  %777 = load i32, ptr %10, align 4
  %778 = icmp eq i32 %777, 0
  %779 = select i1 %776, i1 %778, i1 false, !prof !310
  %780 = and i1 %566, %779
  %781 = icmp sgt i32 %349, 1
  %782 = select i1 %780, i1 %781, i1 false, !prof !311
  %783 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4
  %784 = icmp ne i32 %783, 2
  %785 = select i1 %782, i1 %784, i1 false, !prof !312
  br i1 %785, label %786, label %923, !prof !312

786:                                              ; preds = %769
  %787 = add nsw i32 %3, -24
  %788 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %128, i32 noundef %134, i32 noundef %787, i32 noundef 0, i32 noundef %150)
  %789 = icmp sgt i32 %788, %128
  br i1 %789, label %790, label %923, !prof !313

790:                                              ; preds = %786
  %791 = icmp sgt i32 %328, 0
  br i1 %791, label %792, label %808, !prof !314

792:                                              ; preds = %790
  %793 = zext nneg i32 %328 to i64
  br label %794

794:                                              ; preds = %792, %794
  %795 = phi i64 [ 0, %792 ], [ %804, %794 ]
  %796 = phi i32 [ undef, %792 ], [ %803, %794 ]
  %797 = phi i32 [ -1000000, %792 ], [ %801, %794 ]
  %798 = getelementptr inbounds i32, ptr %8, i64 %795
  %799 = load i32, ptr %798, align 4, !tbaa !118
  %800 = icmp sgt i32 %799, %797
  %801 = call i32 @llvm.smax.i32(i32 %799, i32 %797)
  %802 = trunc i64 %795 to i32
  %803 = select i1 %800, i32 %802, i32 %796, !prof !315
  %804 = add nuw nsw i64 %795, 1
  %805 = icmp eq i64 %804, %793
  br i1 %805, label %806, label %794, !prof !316, !llvm.loop !190

806:                                              ; preds = %794
  %807 = sext i32 %803 to i64
  br label %808

808:                                              ; preds = %806, %790
  %809 = phi i32 [ -1000000, %790 ], [ %801, %806 ]
  %810 = phi i64 [ 0, %790 ], [ %807, %806 ]
  %811 = icmp sgt i32 %809, -1000000
  br i1 %811, label %812, label %818, !prof !317

812:                                              ; preds = %808
  %813 = load i32, ptr %8, align 16, !tbaa !118
  %814 = getelementptr inbounds i32, ptr %8, i64 %810
  store i32 %813, ptr %814, align 4, !tbaa !118
  store i32 %809, ptr %8, align 16, !tbaa !118
  %815 = load i32, ptr %7, align 16, !tbaa !118
  %816 = getelementptr inbounds i32, ptr %7, i64 %810
  %817 = load i32, ptr %816, align 4, !tbaa !118
  store i32 %817, ptr %7, align 16, !tbaa !118
  store i32 %815, ptr %816, align 4, !tbaa !118
  br label %818

818:                                              ; preds = %808, %812
  %819 = load i32, ptr %13, align 4
  %820 = icmp slt i32 %819, 2
  %821 = select i1 %811, i1 %820, i1 false, !prof !318
  br i1 %821, label %822, label %923, !prof !314

822:                                              ; preds = %818
  %823 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %824 = add nsw i32 %3, -16
  %825 = sub nsw i32 0, %134
  %826 = sub i32 50, %128
  %827 = sub nsw i32 0, %128
  %828 = xor i32 %128, -1
  %829 = icmp eq i32 %150, 0
  %830 = zext i1 %829 to i32
  %831 = sub nsw i32 49, %128
  %832 = add nsw i32 %128, -50
  %833 = sext i32 %328 to i64
  %834 = zext i32 %328 to i64
  br label %835

835:                                              ; preds = %822, %915
  %836 = phi i64 [ 0, %822 ], [ %883, %915 ]
  %837 = phi i64 [ 1, %822 ], [ %922, %915 ]
  %838 = phi i32 [ 0, %822 ], [ %881, %915 ]
  %839 = phi i32 [ %770, %822 ], [ %880, %915 ]
  %840 = phi i32 [ 1, %822 ], [ %879, %915 ]
  %841 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %836
  %842 = load i32, ptr %841, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %842)
  %843 = load i32, ptr %841, align 4, !tbaa !118
  %844 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %843)
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %878, label %846, !prof !319

846:                                              ; preds = %835
  %847 = load i64, ptr %823, align 8, !tbaa !206
  %848 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !207
  %849 = load i32, ptr %20, align 8, !tbaa !115
  %850 = add i32 %849, -1
  %851 = add i32 %850, %848
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %852
  store i64 %847, ptr %853, align 8, !tbaa !208
  %854 = load i32, ptr %841, align 4, !tbaa !118
  %855 = add nsw i32 %849, -1
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %856
  store i32 %854, ptr %857, align 4, !tbaa !118
  %858 = add nsw i32 %838, 1
  %859 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %860 = load i32, ptr %20, align 8, !tbaa !115
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %861
  store i32 %859, ptr %862, align 4, !tbaa !118
  %863 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %825, i32 noundef %826, i32 noundef 1)
  %864 = icmp eq i32 %840, 0
  br i1 %864, label %872, label %865, !prof !320

865:                                              ; preds = %846
  %866 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %828, i32 noundef %827, i32 noundef %824, i32 noundef 0, i32 noundef %830)
  %867 = sub nsw i32 0, %866
  %868 = icmp slt i32 %128, %867
  br i1 %868, label %869, label %870, !prof !321

869:                                              ; preds = %865
  store i32 1, ptr %13, align 4, !tbaa !118
  br label %878

870:                                              ; preds = %865
  store i32 0, ptr %13, align 4, !tbaa !118
  %871 = add nsw i32 %838, 11
  br label %878

872:                                              ; preds = %846
  %873 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %831, i32 noundef %826, i32 noundef %824, i32 noundef 0, i32 noundef 0)
  %874 = sub nsw i32 0, %873
  %875 = icmp slt i32 %832, %874
  br i1 %875, label %876, label %878, !prof !322

876:                                              ; preds = %872
  store i32 0, ptr %13, align 4, !tbaa !118
  %877 = add nsw i32 %838, 11
  br label %878

878:                                              ; preds = %870, %869, %876, %872, %835
  %879 = phi i32 [ %840, %835 ], [ 0, %872 ], [ 0, %876 ], [ 0, %869 ], [ 0, %870 ]
  %880 = phi i32 [ %839, %835 ], [ %874, %872 ], [ %874, %876 ], [ %867, %869 ], [ %867, %870 ]
  %881 = phi i32 [ %838, %835 ], [ %858, %872 ], [ %877, %876 ], [ %858, %869 ], [ %871, %870 ]
  %882 = load i32, ptr %841, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %882)
  %883 = add nuw i64 %836, 1
  %884 = icmp ult i64 %836, 9
  br i1 %884, label %885, label %899, !prof !323

885:                                              ; preds = %878
  %886 = icmp slt i64 %883, %833
  br i1 %886, label %887, label %902, !prof !324

887:                                              ; preds = %885, %887
  %888 = phi i64 [ %897, %887 ], [ %837, %885 ]
  %889 = phi i32 [ %896, %887 ], [ undef, %885 ]
  %890 = phi i32 [ %894, %887 ], [ -1000000, %885 ]
  %891 = getelementptr inbounds i32, ptr %8, i64 %888
  %892 = load i32, ptr %891, align 4, !tbaa !118
  %893 = icmp sgt i32 %892, %890
  %894 = call i32 @llvm.smax.i32(i32 %892, i32 %890)
  %895 = trunc i64 %888 to i32
  %896 = select i1 %893, i32 %895, i32 %889, !prof !325
  %897 = add nuw i64 %888, 1
  %898 = icmp eq i64 %897, %834
  br i1 %898, label %902, label %887, !prof !326, !llvm.loop !190

899:                                              ; preds = %878
  %900 = trunc i64 %883 to i32
  %901 = icmp sgt i32 %328, %900
  br i1 %901, label %915, label %902, !prof !327

902:                                              ; preds = %887, %885, %899
  %903 = phi i32 [ -1000000, %899 ], [ -1000000, %885 ], [ %894, %887 ]
  %904 = phi i32 [ undef, %899 ], [ undef, %885 ], [ %896, %887 ]
  %905 = icmp sgt i32 %903, -1000000
  br i1 %905, label %906, label %915, !prof !328

906:                                              ; preds = %902
  %907 = getelementptr inbounds i32, ptr %8, i64 %883
  %908 = load i32, ptr %907, align 4, !tbaa !118
  %909 = sext i32 %904 to i64
  %910 = getelementptr inbounds i32, ptr %8, i64 %909
  store i32 %908, ptr %910, align 4, !tbaa !118
  store i32 %903, ptr %907, align 4, !tbaa !118
  %911 = getelementptr inbounds i32, ptr %7, i64 %883
  %912 = load i32, ptr %911, align 4, !tbaa !118
  %913 = getelementptr inbounds i32, ptr %7, i64 %909
  %914 = load i32, ptr %913, align 4, !tbaa !118
  store i32 %914, ptr %911, align 4, !tbaa !118
  store i32 %912, ptr %913, align 4, !tbaa !118
  br label %915

915:                                              ; preds = %899, %902, %906
  %916 = phi i1 [ true, %906 ], [ true, %899 ], [ false, %902 ]
  %917 = load i32, ptr %13, align 4
  %918 = icmp slt i32 %917, 2
  %919 = select i1 %916, i1 %918, i1 false, !prof !318
  %920 = icmp slt i32 %881, 3
  %921 = select i1 %919, i1 %920, i1 false, !prof !318
  %922 = add nuw i64 %837, 1
  br i1 %921, label %835, label %923, !prof !329, !llvm.loop !330

923:                                              ; preds = %915, %818, %786, %769
  %924 = phi i32 [ %770, %769 ], [ %770, %786 ], [ %770, %818 ], [ %880, %915 ]
  br i1 %159, label %930, label %925, !prof !331

925:                                              ; preds = %923
  %926 = load i32, ptr %20, align 8, !tbaa !115
  %927 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %928 = shl nsw i32 %927, 1
  %929 = icmp sle i32 %926, %928
  br label %930

930:                                              ; preds = %925, %923
  %931 = phi i1 [ false, %923 ], [ %929, %925 ]
  %932 = icmp sgt i32 %328, 0
  br i1 %932, label %933, label %949, !prof !332

933:                                              ; preds = %930
  %934 = zext nneg i32 %328 to i64
  br label %935

935:                                              ; preds = %933, %935
  %936 = phi i64 [ 0, %933 ], [ %945, %935 ]
  %937 = phi i32 [ undef, %933 ], [ %944, %935 ]
  %938 = phi i32 [ -1000000, %933 ], [ %942, %935 ]
  %939 = getelementptr inbounds i32, ptr %8, i64 %936
  %940 = load i32, ptr %939, align 4, !tbaa !118
  %941 = icmp sgt i32 %940, %938
  %942 = call i32 @llvm.smax.i32(i32 %940, i32 %938)
  %943 = trunc i64 %936 to i32
  %944 = select i1 %941, i32 %943, i32 %937, !prof !333
  %945 = add nuw nsw i64 %936, 1
  %946 = icmp eq i64 %945, %934
  br i1 %946, label %947, label %935, !prof !334, !llvm.loop !190

947:                                              ; preds = %935
  %948 = sext i32 %944 to i64
  br label %949

949:                                              ; preds = %947, %930
  %950 = phi i32 [ -1000000, %930 ], [ %942, %947 ]
  %951 = phi i64 [ 0, %930 ], [ %948, %947 ]
  %952 = icmp slt i32 %950, -999999
  br i1 %952, label %1625, label %953, !prof !335

953:                                              ; preds = %949
  %954 = load i32, ptr %8, align 16, !tbaa !118
  %955 = getelementptr inbounds i32, ptr %8, i64 %951
  store i32 %954, ptr %955, align 4, !tbaa !118
  store i32 %950, ptr %8, align 16, !tbaa !118
  %956 = load i32, ptr %7, align 16, !tbaa !118
  %957 = getelementptr inbounds i32, ptr %7, i64 %951
  %958 = load i32, ptr %957, align 4, !tbaa !118
  store i32 %958, ptr %7, align 16, !tbaa !118
  store i32 %956, ptr %957, align 4, !tbaa !118
  %959 = icmp eq i32 %349, 1
  %960 = select i1 %156, i1 %959, i1 false
  %961 = select i1 %960, i32 4, i32 0
  %962 = add nsw i32 %207, %196
  %963 = icmp eq i32 %962, 1
  %964 = lshr i32 %3, 2
  %965 = add nuw nsw i32 %964, 1
  %966 = icmp slt i32 %3, 25
  %967 = icmp slt i32 %3, 9
  %968 = icmp slt i32 %3, 13
  %969 = add nsw i32 %155, 100
  %970 = add nsw i32 %155, 300
  %971 = add nsw i32 %155, 75
  %972 = add nsw i32 %155, 200
  %973 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %974 = sub nsw i32 0, %134
  %975 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %976 = icmp sgt i32 %3, 4
  %977 = sext i32 %328 to i64
  %978 = sext i32 %328 to i64
  %979 = sext i32 %328 to i64
  br label %980

980:                                              ; preds = %953, %1622
  %981 = phi i32 [ %771, %953 ], [ %1621, %1622 ]
  %982 = phi i32 [ %128, %953 ], [ %1620, %1622 ]
  %983 = phi i32 [ %924, %953 ], [ %1619, %1622 ]
  %984 = phi i32 [ 1, %953 ], [ %1618, %1622 ]
  %985 = phi i32 [ -32000, %953 ], [ %1616, %1622 ]
  %986 = phi i32 [ 1, %953 ], [ %1615, %1622 ]
  %987 = phi i32 [ 1, %953 ], [ %1614, %1622 ]
  %988 = phi i32 [ 0, %953 ], [ %1612, %1622 ]
  %989 = icmp ne i32 %986, 0
  %990 = icmp sle i32 %987, %965
  %991 = sext i32 %988 to i64
  br label %992

992:                                              ; preds = %1139, %980
  %993 = phi i64 [ %991, %980 ], [ %1118, %1139 ]
  %994 = phi i32 [ %988, %980 ], [ %996, %1139 ]
  %995 = phi i32 [ %984, %980 ], [ 0, %1139 ]
  %996 = add i32 %994, 1
  %997 = sext i32 %996 to i64
  %998 = load i32, ptr %20, align 8, !tbaa !115
  %999 = icmp slt i32 %998, 60
  br i1 %999, label %1000, label %1082, !prof !336

1000:                                             ; preds = %992
  %1001 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %993
  %1002 = load i32, ptr %1001, align 4, !tbaa !118
  %1003 = lshr i32 %1002, 6
  %1004 = and i32 %1003, 63
  %1005 = zext nneg i32 %1004 to i64
  %1006 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %1005
  %1007 = load i32, ptr %1006, align 4, !tbaa !118
  %1008 = add nsw i32 %1007, 1
  %1009 = and i32 %1008, -2
  %1010 = icmp eq i32 %1009, 2
  br i1 %1010, label %1011, label %1020, !prof !337

1011:                                             ; preds = %1000
  %1012 = lshr i32 %1002, 3
  %1013 = and i32 %1012, 7
  switch i32 %1013, label %1014 [
    i32 1, label %1017
    i32 6, label %1017
  ], !prof !338

1014:                                             ; preds = %1011
  %1015 = and i32 %1002, 61440
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1020, label %1017, !prof !339

1017:                                             ; preds = %1011, %1011, %1014
  %1018 = or disjoint i32 %961, 2
  %1019 = select i1 %931, i32 %1018, i32 %961
  br label %1020

1020:                                             ; preds = %1017, %1014, %1000
  %1021 = phi i32 [ %961, %1014 ], [ %961, %1000 ], [ %1019, %1017 ]
  %1022 = lshr i32 %1002, 19
  %1023 = and i32 %1022, 15
  %1024 = icmp eq i32 %1023, 13
  br i1 %1024, label %1059, label %1025, !prof !340

1025:                                             ; preds = %1020
  %1026 = add nsw i32 %998, -1
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %1027
  %1029 = load i32, ptr %1028, align 4, !tbaa !118
  %1030 = lshr i32 %1029, 19
  %1031 = and i32 %1030, 15
  %1032 = icmp eq i32 %1031, 13
  br i1 %1032, label %1059, label %1033, !prof !341

1033:                                             ; preds = %1025
  %1034 = zext nneg i32 %1023 to i64
  %1035 = getelementptr inbounds [14 x i32], ptr @_ZL8rc_index, i64 0, i64 %1034
  %1036 = load i32, ptr %1035, align 4, !tbaa !118
  %1037 = zext nneg i32 %1031 to i64
  %1038 = getelementptr inbounds [14 x i32], ptr @_ZL8rc_index, i64 0, i64 %1037
  %1039 = load i32, ptr %1038, align 4, !tbaa !118
  %1040 = icmp eq i32 %1036, %1039
  br i1 %1040, label %1041, label %1059, !prof !342

1041:                                             ; preds = %1033
  %1042 = and i32 %1002, 63
  %1043 = and i32 %1029, 63
  %1044 = icmp eq i32 %1042, %1043
  br i1 %1044, label %1045, label %1059, !prof !343

1045:                                             ; preds = %1041
  %1046 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %1047 = load i32, ptr %1046, align 4, !tbaa !134
  %1048 = icmp eq i32 %1047, 0
  %1049 = zext i1 %1048 to i32
  %1050 = lshr i32 %1002, 12
  %1051 = and i32 %1050, 15
  %1052 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %1049, i32 noundef %1004, i32 noundef %1042, i32 noundef %1051)
  %1053 = icmp sgt i32 %1052, 0
  br i1 %1053, label %1054, label %1059, !prof !344

1054:                                             ; preds = %1045
  br i1 %931, label %1055, label %1057, !prof !345

1055:                                             ; preds = %1054
  %1056 = add nuw nsw i32 %1021, 3
  br label %1059

1057:                                             ; preds = %1054
  %1058 = add nuw nsw i32 %1021, 1
  br label %1059

1059:                                             ; preds = %1045, %1057, %1055, %1041, %1033, %1025, %1020
  %1060 = phi i32 [ %1021, %1041 ], [ %1021, %1033 ], [ %1021, %1025 ], [ %1021, %1020 ], [ %1056, %1055 ], [ %1058, %1057 ], [ %1021, %1045 ]
  %1061 = load i32, ptr %13, align 4
  %1062 = icmp eq i32 %1061, 1
  %1063 = icmp ne i32 %1060, 0
  %1064 = select i1 %1062, i1 %1063, i1 false, !prof !346
  %1065 = select i1 %1064, i1 %989, i1 false, !prof !347
  br i1 %1065, label %1066, label %1067, !prof !348

1066:                                             ; preds = %1059
  store i32 1, ptr %14, align 4, !tbaa !118
  br label %1073

1067:                                             ; preds = %1059
  %1068 = icmp eq i32 %1060, 0
  %1069 = and i1 %1068, %1062
  %1070 = select i1 %1069, i1 %989, i1 false, !prof !349
  br i1 %1070, label %1071, label %1073, !prof !350

1071:                                             ; preds = %1067
  %1072 = select i1 %931, i32 3, i32 1
  store i32 0, ptr %14, align 4, !tbaa !118
  br label %1073

1073:                                             ; preds = %1071, %1067, %1066
  %1074 = phi i32 [ %1060, %1066 ], [ %1060, %1067 ], [ %1072, %1071 ]
  %1075 = call i32 @llvm.smin.i32(i32 %1074, i32 4)
  %1076 = load i32, ptr %1001, align 4, !tbaa !118
  %1077 = lshr i32 %1076, 19
  %1078 = and i32 %1077, 15
  switch i32 %1078, label %1079 [
    i32 13, label %1082
    i32 1, label %1082
    i32 2, label %1082
  ], !prof !351

1079:                                             ; preds = %1073
  %1080 = add nsw i32 %1075, 4
  %1081 = select i1 %963, i32 %1080, i32 %1075, !prof !352
  br label %1082

1082:                                             ; preds = %1073, %1073, %1079, %1073, %992
  %1083 = phi i32 [ 0, %992 ], [ %1075, %1073 ], [ %1081, %1079 ], [ %1075, %1073 ], [ %1075, %1073 ]
  %1084 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %993
  %1085 = load i32, ptr %1084, align 4, !tbaa !118
  %1086 = and i32 %1085, 7864320
  %1087 = icmp ne i32 %1086, 6815744
  %1088 = select i1 %1087, i1 true, i1 %990
  br i1 %1088, label %1153, label %1089, !prof !353

1089:                                             ; preds = %1082
  %1090 = add nsw i32 %982, 1
  %1091 = icmp eq i32 %134, %1090
  %1092 = lshr i32 %1085, 6
  %1093 = and i32 %1092, 63
  %1094 = zext nneg i32 %1093 to i64
  %1095 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %1094
  %1096 = load i32, ptr %1095, align 4, !tbaa !118
  %1097 = add nsw i32 %1096, -1
  %1098 = and i32 %1085, 63
  %1099 = load i32, ptr %0, align 8, !tbaa !181
  %1100 = sext i32 %1099 to i64
  %1101 = sext i32 %1097 to i64
  %1102 = zext nneg i32 %1098 to i64
  %1103 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %1100, i64 %1101, i64 %1102
  %1104 = load i32, ptr %1103, align 4, !tbaa !118
  %1105 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1100, i64 %1101, i64 %1102
  %1106 = load i32, ptr %1105, align 4, !tbaa !118
  %1107 = sub nsw i32 %1106, %1104
  %1108 = mul nsw i32 %1104, %965
  %1109 = icmp slt i32 %1108, %1107
  %1110 = and i1 %966, %1109
  %1111 = icmp eq i32 %1083, 0
  %1112 = select i1 %1110, i1 %1111, i1 false, !prof !354
  %1113 = select i1 %1112, i1 %1091, i1 false, !prof !355
  %1114 = and i32 %1085, 61440
  %1115 = icmp eq i32 %1114, 0
  %1116 = and i1 %1115, %1113
  br i1 %1116, label %1117, label %1157, !prof !356

1117:                                             ; preds = %1089
  %1118 = add i64 %993, 1
  %1119 = icmp slt i64 %993, 9
  br i1 %1119, label %1120, label %1137, !prof !357

1120:                                             ; preds = %1117
  %1121 = sext i32 %328 to i64
  %1122 = icmp slt i64 %1118, %1121
  br i1 %1122, label %1123, label %1140, !prof !358

1123:                                             ; preds = %1120
  %1124 = sext i32 %328 to i64
  br label %1125

1125:                                             ; preds = %1123, %1125
  %1126 = phi i64 [ %1135, %1125 ], [ %997, %1123 ]
  %1127 = phi i32 [ %1134, %1125 ], [ undef, %1123 ]
  %1128 = phi i32 [ %1132, %1125 ], [ -1000000, %1123 ]
  %1129 = getelementptr inbounds i32, ptr %8, i64 %1126
  %1130 = load i32, ptr %1129, align 4, !tbaa !118
  %1131 = icmp sgt i32 %1130, %1128
  %1132 = call i32 @llvm.smax.i32(i32 %1130, i32 %1128)
  %1133 = trunc i64 %1126 to i32
  %1134 = select i1 %1131, i32 %1133, i32 %1127, !prof !359
  %1135 = add nsw i64 %1126, 1
  %1136 = icmp slt i64 %1135, %1124
  br i1 %1136, label %1125, label %1140, !prof !360, !llvm.loop !190

1137:                                             ; preds = %1117
  %1138 = icmp slt i64 %1118, %977
  br i1 %1138, label %1139, label %1140, !prof !361

1139:                                             ; preds = %1137, %1144
  br label %992

1140:                                             ; preds = %1125, %1120, %1137
  %1141 = phi i32 [ -1000000, %1137 ], [ -1000000, %1120 ], [ %1132, %1125 ]
  %1142 = phi i32 [ undef, %1137 ], [ undef, %1120 ], [ %1134, %1125 ]
  %1143 = icmp sgt i32 %1141, -1000000
  br i1 %1143, label %1144, label %1625, !prof !362

1144:                                             ; preds = %1140
  %1145 = getelementptr inbounds i32, ptr %8, i64 %1118
  %1146 = load i32, ptr %1145, align 4, !tbaa !118
  %1147 = sext i32 %1142 to i64
  %1148 = getelementptr inbounds i32, ptr %8, i64 %1147
  store i32 %1146, ptr %1148, align 4, !tbaa !118
  store i32 %1141, ptr %1145, align 4, !tbaa !118
  %1149 = getelementptr inbounds i32, ptr %7, i64 %1118
  %1150 = load i32, ptr %1149, align 4, !tbaa !118
  %1151 = getelementptr inbounds i32, ptr %7, i64 %1147
  %1152 = load i32, ptr %1151, align 4, !tbaa !118
  store i32 %1152, ptr %1149, align 4, !tbaa !118
  store i32 %1150, ptr %1151, align 4, !tbaa !118
  br label %1139

1153:                                             ; preds = %1082
  %1154 = trunc i64 %993 to i32
  %1155 = select i1 %1087, i64 %993, i64 %991, !prof !363
  %1156 = select i1 %1087, i32 %995, i32 %984, !prof !363
  br label %1159

1157:                                             ; preds = %1089
  %1158 = trunc i64 %993 to i32
  br label %1159

1159:                                             ; preds = %1157, %1153
  %1160 = phi i32 [ %1154, %1153 ], [ %1158, %1157 ]
  %1161 = phi i64 [ %1155, %1153 ], [ %993, %1157 ]
  %1162 = phi i32 [ %1156, %1153 ], [ %995, %1157 ]
  %1163 = getelementptr inbounds [240 x i32], ptr %7, i64 0, i64 %1161
  br i1 %967, label %1164, label %1167, !prof !364

1164:                                             ; preds = %1159
  %1165 = icmp slt i32 %971, %982
  %1166 = icmp slt i32 %972, %982
  br label %1171

1167:                                             ; preds = %1159
  br i1 %968, label %1168, label %1171, !prof !365

1168:                                             ; preds = %1167
  %1169 = icmp slt i32 %969, %982
  %1170 = icmp slt i32 %970, %982
  br label %1171

1171:                                             ; preds = %1168, %1164, %1167
  %1172 = phi i1 [ false, %1167 ], [ %1165, %1164 ], [ %1169, %1168 ]
  %1173 = phi i1 [ false, %1167 ], [ %1166, %1164 ], [ %1170, %1168 ]
  br i1 %1087, label %1174, label %1184, !prof !366

1174:                                             ; preds = %1171
  %1175 = load i32, ptr %973, align 4, !tbaa !134
  %1176 = icmp eq i32 %1175, 0
  %1177 = zext i1 %1176 to i32
  %1178 = lshr i32 %1085, 6
  %1179 = and i32 %1178, 63
  %1180 = and i32 %1085, 63
  %1181 = lshr i32 %1085, 12
  %1182 = and i32 %1181, 15
  %1183 = call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %1177, i32 noundef %1179, i32 noundef %1180, i32 noundef %1182)
  br label %1184

1184:                                             ; preds = %1171, %1174
  %1185 = phi i32 [ %1183, %1174 ], [ -1000000, %1171 ]
  %1186 = load i32, ptr %1163, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %1186)
  %1187 = load i32, ptr %1163, align 4, !tbaa !118
  %1188 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %1187)
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1393, label %1190, !prof !367

1190:                                             ; preds = %1184
  %1191 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %1192 = icmp ne i32 %1191, 0
  br i1 %1192, label %1193, label %1198, !prof !368

1193:                                             ; preds = %1190
  br i1 %931, label %1194, label %1196, !prof !369

1194:                                             ; preds = %1193
  %1195 = add nsw i32 %1083, 4
  br label %1198

1196:                                             ; preds = %1193
  %1197 = add nsw i32 %1083, 2
  br label %1198

1198:                                             ; preds = %1194, %1196, %1190
  %1199 = phi i32 [ %1195, %1194 ], [ %1197, %1196 ], [ %1083, %1190 ]
  %1200 = or i32 %1191, %154
  %1201 = icmp eq i32 %1200, 0
  %1202 = add nsw i32 %982, 1
  %1203 = icmp eq i32 %134, %1202
  %1204 = select i1 %1201, i1 %1203, i1 false, !prof !370
  br i1 %1204, label %1205, label %1288, !prof !371

1205:                                             ; preds = %1198
  %1206 = icmp slt i32 %1185, 86
  %1207 = and i1 %1173, %1206
  br i1 %1207, label %1208, label %1246, !prof !372

1208:                                             ; preds = %1205
  %1209 = load i32, ptr %1163, align 4, !tbaa !118
  %1210 = and i32 %1209, 61440
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1246, !prof !373

1212:                                             ; preds = %1208
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %1209)
  %1213 = add nsw i32 %1160, 1
  %1214 = icmp slt i32 %1160, 9
  %1215 = icmp slt i32 %1213, %328
  br i1 %1214, label %1216, label %1231, !prof !374

1216:                                             ; preds = %1212
  br i1 %1215, label %1217, label %1232, !prof !375

1217:                                             ; preds = %1216
  %1218 = sext i32 %996 to i64
  br label %1219

1219:                                             ; preds = %1217, %1219
  %1220 = phi i64 [ %1218, %1217 ], [ %1229, %1219 ]
  %1221 = phi i32 [ undef, %1217 ], [ %1228, %1219 ]
  %1222 = phi i32 [ -1000000, %1217 ], [ %1226, %1219 ]
  %1223 = getelementptr inbounds i32, ptr %8, i64 %1220
  %1224 = load i32, ptr %1223, align 4, !tbaa !118
  %1225 = icmp sgt i32 %1224, %1222
  %1226 = call i32 @llvm.smax.i32(i32 %1224, i32 %1222)
  %1227 = trunc i64 %1220 to i32
  %1228 = select i1 %1225, i32 %1227, i32 %1221, !prof !376
  %1229 = add nsw i64 %1220, 1
  %1230 = icmp slt i64 %1229, %978
  br i1 %1230, label %1219, label %1232, !prof !377, !llvm.loop !190

1231:                                             ; preds = %1212
  br i1 %1215, label %1611, label %1232, !prof !378, !llvm.loop !379

1232:                                             ; preds = %1219, %1216, %1231
  %1233 = phi i32 [ -1000000, %1231 ], [ -1000000, %1216 ], [ %1226, %1219 ]
  %1234 = phi i32 [ undef, %1231 ], [ undef, %1216 ], [ %1228, %1219 ]
  %1235 = icmp sgt i32 %1233, -1000000
  br i1 %1235, label %1236, label %1611, !prof !380, !llvm.loop !379

1236:                                             ; preds = %1232
  %1237 = sext i32 %1213 to i64
  %1238 = getelementptr inbounds i32, ptr %8, i64 %1237
  %1239 = load i32, ptr %1238, align 4, !tbaa !118
  %1240 = sext i32 %1234 to i64
  %1241 = getelementptr inbounds i32, ptr %8, i64 %1240
  store i32 %1239, ptr %1241, align 4, !tbaa !118
  store i32 %1233, ptr %1238, align 4, !tbaa !118
  %1242 = getelementptr inbounds i32, ptr %7, i64 %1237
  %1243 = load i32, ptr %1242, align 4, !tbaa !118
  %1244 = getelementptr inbounds i32, ptr %7, i64 %1240
  %1245 = load i32, ptr %1244, align 4, !tbaa !118
  store i32 %1245, ptr %1242, align 4, !tbaa !118
  store i32 %1243, ptr %1244, align 4, !tbaa !118
  br label %1611, !llvm.loop !379

1246:                                             ; preds = %1208, %1205
  %1247 = icmp slt i32 %1185, -50
  %1248 = and i1 %1172, %1247
  br i1 %1248, label %1249, label %1288, !prof !381

1249:                                             ; preds = %1246
  %1250 = load i32, ptr %1163, align 4, !tbaa !118
  %1251 = and i32 %1250, 61440
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1288, !prof !382

1253:                                             ; preds = %1249
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %1250)
  %1254 = add nsw i32 %1160, 1
  %1255 = icmp slt i32 %1160, 9
  %1256 = icmp slt i32 %1254, %328
  br i1 %1255, label %1257, label %1273, !prof !383

1257:                                             ; preds = %1253
  br i1 %1256, label %1258, label %1274, !prof !384

1258:                                             ; preds = %1257
  %1259 = sext i32 %328 to i64
  %1260 = sext i32 %996 to i64
  br label %1261

1261:                                             ; preds = %1258, %1261
  %1262 = phi i64 [ %1260, %1258 ], [ %1271, %1261 ]
  %1263 = phi i32 [ undef, %1258 ], [ %1270, %1261 ]
  %1264 = phi i32 [ -1000000, %1258 ], [ %1268, %1261 ]
  %1265 = getelementptr inbounds i32, ptr %8, i64 %1262
  %1266 = load i32, ptr %1265, align 4, !tbaa !118
  %1267 = icmp sgt i32 %1266, %1264
  %1268 = call i32 @llvm.smax.i32(i32 %1266, i32 %1264)
  %1269 = trunc i64 %1262 to i32
  %1270 = select i1 %1267, i32 %1269, i32 %1263, !prof !385
  %1271 = add nsw i64 %1262, 1
  %1272 = icmp slt i64 %1271, %1259
  br i1 %1272, label %1261, label %1274, !prof !386, !llvm.loop !190

1273:                                             ; preds = %1253
  br i1 %1256, label %1611, label %1274, !prof !387, !llvm.loop !379

1274:                                             ; preds = %1261, %1257, %1273
  %1275 = phi i32 [ -1000000, %1273 ], [ -1000000, %1257 ], [ %1268, %1261 ]
  %1276 = phi i32 [ undef, %1273 ], [ undef, %1257 ], [ %1270, %1261 ]
  %1277 = icmp sgt i32 %1275, -1000000
  br i1 %1277, label %1278, label %1611, !prof !388, !llvm.loop !379

1278:                                             ; preds = %1274
  %1279 = sext i32 %1254 to i64
  %1280 = getelementptr inbounds i32, ptr %8, i64 %1279
  %1281 = load i32, ptr %1280, align 4, !tbaa !118
  %1282 = sext i32 %1276 to i64
  %1283 = getelementptr inbounds i32, ptr %8, i64 %1282
  store i32 %1281, ptr %1283, align 4, !tbaa !118
  store i32 %1275, ptr %1280, align 4, !tbaa !118
  %1284 = getelementptr inbounds i32, ptr %7, i64 %1279
  %1285 = load i32, ptr %1284, align 4, !tbaa !118
  %1286 = getelementptr inbounds i32, ptr %7, i64 %1282
  %1287 = load i32, ptr %1286, align 4, !tbaa !118
  store i32 %1287, ptr %1284, align 4, !tbaa !118
  store i32 %1285, ptr %1286, align 4, !tbaa !118
  br label %1611, !llvm.loop !379

1288:                                             ; preds = %1246, %1249, %1198
  %1289 = add nsw i32 %1199, %3
  %1290 = sub nsw i32 0, %982
  %1291 = sub i32 130, %982
  %1292 = icmp sgt i32 %1289, 4
  %1293 = or i1 %1192, %1292
  %1294 = zext i1 %1293 to i32
  %1295 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %974, i32 noundef %1291, i32 noundef %1294)
  %1296 = load i32, ptr %20, align 8, !tbaa !115
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %1297
  store i32 %1191, ptr %1298, align 4, !tbaa !118
  %1299 = load i64, ptr %975, align 8, !tbaa !206
  %1300 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !207
  %1301 = load i32, ptr %20, align 8, !tbaa !115
  %1302 = add i32 %1301, -1
  %1303 = add i32 %1302, %1300
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %1304
  store i64 %1299, ptr %1305, align 8, !tbaa !208
  %1306 = load i32, ptr %1163, align 4, !tbaa !118
  %1307 = add nsw i32 %1301, -1
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %1308
  store i32 %1306, ptr %1309, align 4, !tbaa !118
  %1310 = icmp sgt i32 %987, 3
  %1311 = select i1 %976, i1 %1310, i1 false, !prof !389
  br i1 %1311, label %1312, label %1342, !prof !390

1312:                                             ; preds = %1288
  %1313 = or i32 %1199, %1191
  %1314 = icmp eq i32 %1313, 0
  %1315 = select i1 %1203, i1 %1314, i1 false, !prof !391
  %1316 = icmp slt i32 %1185, -50
  %1317 = and i1 %1316, %1315
  br i1 %1317, label %1318, label %1342, !prof !392

1318:                                             ; preds = %1312
  %1319 = and i32 %1306, 63
  %1320 = zext nneg i32 %1319 to i64
  %1321 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %1320
  %1322 = load i32, ptr %1321, align 4, !tbaa !118
  %1323 = add nsw i32 %1322, -1
  %1324 = load i32, ptr %0, align 8, !tbaa !181
  %1325 = sext i32 %1324 to i64
  %1326 = sext i32 %1323 to i64
  %1327 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %1325, i64 %1326, i64 %1320
  %1328 = load i32, ptr %1327, align 4, !tbaa !118
  %1329 = shl i32 %1328, 7
  %1330 = add i32 %1329, 128
  %1331 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1325, i64 %1326, i64 %1320
  %1332 = load i32, ptr %1331, align 4, !tbaa !118
  %1333 = add nsw i32 %1332, 1
  %1334 = sdiv i32 %1330, %1333
  %1335 = icmp slt i32 %1334, 80
  %1336 = and i32 %1306, 61440
  %1337 = icmp eq i32 %1336, 0
  %1338 = and i1 %1337, %1335
  br i1 %1338, label %1339, label %1342, !prof !393

1339:                                             ; preds = %1318
  %1340 = add nsw i32 %1199, -4
  %1341 = add nsw i32 %1340, %3
  br label %1342

1342:                                             ; preds = %1339, %1318, %1312, %1288
  %1343 = phi i1 [ true, %1339 ], [ false, %1318 ], [ false, %1312 ], [ false, %1288 ]
  %1344 = phi i32 [ 4, %1339 ], [ 0, %1318 ], [ 0, %1312 ], [ 0, %1288 ]
  %1345 = phi i32 [ %1340, %1339 ], [ %1199, %1318 ], [ %1199, %1312 ], [ %1199, %1288 ]
  %1346 = phi i32 [ %1341, %1339 ], [ %1289, %1318 ], [ %1289, %1312 ], [ %1289, %1288 ]
  %1347 = add nsw i32 %1346, -4
  %1348 = icmp eq i32 %986, 1
  %1349 = icmp slt i32 %1346, 5
  br i1 %1348, label %1350, label %1359, !prof !394

1350:                                             ; preds = %1342
  br i1 %1349, label %1351, label %1354, !prof !395

1351:                                             ; preds = %1350
  %1352 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %974, i32 noundef %1290, i32 noundef 0, i32 noundef 0)
  %1353 = sub nsw i32 0, %1352
  br label %1390

1354:                                             ; preds = %1350
  %1355 = icmp eq i32 %150, 0
  %1356 = zext i1 %1355 to i32
  %1357 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %974, i32 noundef %1290, i32 noundef %1347, i32 noundef 0, i32 noundef %1356)
  %1358 = sub nsw i32 0, %1357
  br label %1390

1359:                                             ; preds = %1342
  %1360 = xor i32 %982, -1
  br i1 %1349, label %1361, label %1363, !prof !396

1361:                                             ; preds = %1359
  %1362 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %1360, i32 noundef %1290, i32 noundef 0, i32 noundef 0)
  br label %1365

1363:                                             ; preds = %1359
  %1364 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %1360, i32 noundef %1290, i32 noundef %1347, i32 noundef 0, i32 noundef 1)
  br label %1365

1365:                                             ; preds = %1363, %1361
  %1366 = phi i32 [ %1362, %1361 ], [ %1364, %1363 ]
  %1367 = sub nsw i32 0, %1366
  %1368 = icmp slt i32 %985, %1367
  %1369 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %1370 = icmp eq i32 %1369, 0
  %1371 = select i1 %1368, i1 %1370, i1 false, !prof !397
  %1372 = icmp slt i32 %982, %1367
  %1373 = select i1 %1371, i1 %1372, i1 false, !prof !397
  %1374 = icmp sgt i32 %134, %1367
  %1375 = or i1 %1343, %1374
  %1376 = and i1 %1375, %1373
  br i1 %1376, label %1377, label %1390, !prof !398

1377:                                             ; preds = %1365
  %1378 = select i1 %1343, i32 %1344, i32 0, !prof !399
  %1379 = add nuw i32 %1378, %3
  %1380 = add i32 %1379, %1345
  %1381 = icmp slt i32 %1380, 5
  br i1 %1381, label %1382, label %1385, !prof !400

1382:                                             ; preds = %1377
  %1383 = call noundef i32 @_Z7qsearchP7state_tiiii(ptr noundef %0, i32 noundef %974, i32 noundef %1290, i32 noundef 0, i32 noundef 0)
  %1384 = sub nsw i32 0, %1383
  br label %1390

1385:                                             ; preds = %1377
  %1386 = add nsw i32 %1380, -4
  %1387 = zext i1 %1343 to i32
  %1388 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %974, i32 noundef %1290, i32 noundef %1386, i32 noundef 0, i32 noundef %1387)
  %1389 = sub nsw i32 0, %1388
  br label %1390

1390:                                             ; preds = %1365, %1385, %1382, %1351, %1354
  %1391 = phi i32 [ %1353, %1351 ], [ %1358, %1354 ], [ %1367, %1365 ], [ %1384, %1382 ], [ %1389, %1385 ]
  %1392 = call i32 @llvm.smax.i32(i32 %1391, i32 %985)
  br label %1393

1393:                                             ; preds = %1390, %1184
  %1394 = phi i32 [ %1392, %1390 ], [ %985, %1184 ]
  %1395 = phi i32 [ 0, %1390 ], [ %1162, %1184 ]
  %1396 = phi i32 [ %1391, %1390 ], [ %983, %1184 ]
  %1397 = load i32, ptr %1163, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %1397)
  %1398 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1400, label %1611, !prof !401

1400:                                             ; preds = %1393
  br i1 %1189, label %1574, label %1401, !prof !402

1401:                                             ; preds = %1400
  %1402 = icmp sgt i32 %1396, %982
  br i1 %1402, label %1403, label %1567, !prof !403

1403:                                             ; preds = %1401
  %1404 = icmp slt i32 %1396, %134
  %1405 = load i32, ptr %1163, align 4, !tbaa !118
  br i1 %1404, label %1564, label %1406, !prof !404

1406:                                             ; preds = %1403
  %1407 = and i32 %1405, 7925760
  %1408 = icmp eq i32 %1407, 6815744
  br i1 %1408, label %1409, label %1501, !prof !405

1409:                                             ; preds = %1406
  %1410 = add nuw nsw i32 %3, 3
  %1411 = lshr i32 %1410, 2
  %1412 = lshr i32 %1405, 6
  %1413 = and i32 %1412, 63
  %1414 = zext nneg i32 %1413 to i64
  %1415 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %1414
  %1416 = load i32, ptr %1415, align 4, !tbaa !118
  %1417 = add nsw i32 %1416, -1
  %1418 = and i32 %1405, 63
  %1419 = load i32, ptr %0, align 8, !tbaa !181
  %1420 = sext i32 %1419 to i64
  %1421 = sext i32 %1417 to i64
  %1422 = zext nneg i32 %1418 to i64
  %1423 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %1420, i64 %1421, i64 %1422
  %1424 = load i32, ptr %1423, align 4, !tbaa !118
  %1425 = add nsw i32 %1424, %1411
  store i32 %1425, ptr %1423, align 4, !tbaa !118
  %1426 = load i32, ptr %0, align 8, !tbaa !181
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1427, i64 %1421, i64 %1422
  %1429 = load i32, ptr %1428, align 4, !tbaa !118
  %1430 = add nsw i32 %1429, %1411
  store i32 %1430, ptr %1428, align 4, !tbaa !118
  %1431 = load i32, ptr %0, align 8, !tbaa !181
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1432, i64 %1421, i64 %1422
  %1434 = load i32, ptr %1433, align 4, !tbaa !118
  %1435 = icmp sgt i32 %1434, 16384
  br i1 %1435, label %1436, label %1457, !prof !406

1436:                                             ; preds = %1409, %1454
  %1437 = phi i64 [ %1455, %1454 ], [ 0, %1409 ]
  br label %1438

1438:                                             ; preds = %1438, %1436
  %1439 = phi i64 [ 0, %1436 ], [ %1452, %1438 ]
  %1440 = load i32, ptr %0, align 8, !tbaa !181
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %1441, i64 %1437, i64 %1439
  %1443 = load i32, ptr %1442, align 4, !tbaa !118
  %1444 = add nsw i32 %1443, 1
  %1445 = ashr i32 %1444, 1
  store i32 %1445, ptr %1442, align 4, !tbaa !118
  %1446 = load i32, ptr %0, align 8, !tbaa !181
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1447, i64 %1437, i64 %1439
  %1449 = load i32, ptr %1448, align 4, !tbaa !118
  %1450 = add nsw i32 %1449, 1
  %1451 = ashr i32 %1450, 1
  store i32 %1451, ptr %1448, align 4, !tbaa !118
  %1452 = add nuw nsw i64 %1439, 1
  %1453 = icmp eq i64 %1452, 64
  br i1 %1453, label %1454, label %1438, !prof !407, !llvm.loop !408

1454:                                             ; preds = %1438
  %1455 = add nuw nsw i64 %1437, 1
  %1456 = icmp eq i64 %1455, 12
  br i1 %1456, label %1457, label %1436, !prof !409, !llvm.loop !410

1457:                                             ; preds = %1454, %1409
  %1458 = load i32, ptr %0, align 8, !tbaa !181
  %1459 = sext i32 %1458 to i64
  %1460 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %1459, i64 %1421, i64 %1422
  %1461 = load i32, ptr %1460, align 4, !tbaa !118
  %1462 = add nsw i32 %1461, %1411
  store i32 %1462, ptr %1460, align 4, !tbaa !118
  %1463 = load i32, ptr %0, align 8, !tbaa !181
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %1464, i64 %1421, i64 %1422
  %1466 = load i32, ptr %1465, align 4, !tbaa !118
  %1467 = icmp sgt i32 %1466, 500000
  br i1 %1467, label %1468, label %1483, !prof !411

1468:                                             ; preds = %1457, %1480
  %1469 = phi i64 [ %1481, %1480 ], [ 0, %1457 ]
  br label %1470

1470:                                             ; preds = %1470, %1468
  %1471 = phi i64 [ 0, %1468 ], [ %1478, %1470 ]
  %1472 = load i32, ptr %0, align 8, !tbaa !181
  %1473 = sext i32 %1472 to i64
  %1474 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %1473, i64 %1469, i64 %1471
  %1475 = load i32, ptr %1474, align 4, !tbaa !118
  %1476 = add nsw i32 %1475, 1
  %1477 = ashr i32 %1476, 1
  store i32 %1477, ptr %1474, align 4, !tbaa !118
  %1478 = add nuw nsw i64 %1471, 1
  %1479 = icmp eq i64 %1478, 64
  br i1 %1479, label %1480, label %1470, !llvm.loop !412

1480:                                             ; preds = %1470
  %1481 = add nuw nsw i64 %1469, 1
  %1482 = icmp eq i64 %1481, 12
  br i1 %1482, label %1483, label %1468, !llvm.loop !413

1483:                                             ; preds = %1480, %1457
  %1484 = load i32, ptr %20, align 8, !tbaa !115
  %1485 = sext i32 %1484 to i64
  %1486 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %1485
  %1487 = load i32, ptr %1486, align 8, !tbaa !172
  %1488 = icmp eq i32 %1487, %1405
  br i1 %1488, label %1501, label %1489, !prof !414

1489:                                             ; preds = %1483
  %1490 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %1485, i32 1
  %1491 = load i32, ptr %1490, align 4, !tbaa !175
  %1492 = icmp eq i32 %1491, %1405
  br i1 %1492, label %1500, label %1493, !prof !415

1493:                                             ; preds = %1489
  %1494 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %1485, i32 2
  %1495 = load i32, ptr %1494, align 8, !tbaa !177
  %1496 = icmp eq i32 %1495, %1405
  br i1 %1496, label %1499, label %1497, !prof !416

1497:                                             ; preds = %1493
  %1498 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %1485, i32 3
  store i32 %1495, ptr %1498, align 4, !tbaa !179
  br label %1499

1499:                                             ; preds = %1497, %1493
  store i32 %1491, ptr %1494, align 8, !tbaa !177
  br label %1500

1500:                                             ; preds = %1499, %1489
  store i32 %1487, ptr %1490, align 4, !tbaa !175
  store i32 %1405, ptr %1486, align 8, !tbaa !172
  br label %1501

1501:                                             ; preds = %1406, %1483, %1500
  %1502 = icmp sgt i32 %987, 1
  br i1 %1502, label %1503, label %1558, !prof !417

1503:                                             ; preds = %1501
  %1504 = add nsw i32 %987, -1
  %1505 = zext i32 %1504 to i64
  br label %1506

1506:                                             ; preds = %1503, %1555
  %1507 = phi i64 [ 0, %1503 ], [ %1556, %1555 ]
  %1508 = getelementptr inbounds [240 x i32], ptr %15, i64 0, i64 %1507
  %1509 = load i32, ptr %1508, align 4, !tbaa !118
  %1510 = and i32 %1509, 7925760
  %1511 = icmp eq i32 %1510, 6815744
  br i1 %1511, label %1512, label %1555, !prof !418

1512:                                             ; preds = %1506
  %1513 = add nuw nsw i32 %3, 3
  %1514 = lshr i32 %1513, 2
  %1515 = lshr i32 %1509, 6
  %1516 = and i32 %1515, 63
  %1517 = zext nneg i32 %1516 to i64
  %1518 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %1517
  %1519 = load i32, ptr %1518, align 4, !tbaa !118
  %1520 = add nsw i32 %1519, -1
  %1521 = and i32 %1509, 63
  %1522 = load i32, ptr %0, align 8, !tbaa !181
  %1523 = sext i32 %1522 to i64
  %1524 = sext i32 %1520 to i64
  %1525 = zext nneg i32 %1521 to i64
  %1526 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1523, i64 %1524, i64 %1525
  %1527 = load i32, ptr %1526, align 4, !tbaa !118
  %1528 = add nsw i32 %1527, %1514
  store i32 %1528, ptr %1526, align 4, !tbaa !118
  %1529 = load i32, ptr %0, align 8, !tbaa !181
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1530, i64 %1524, i64 %1525
  %1532 = load i32, ptr %1531, align 4, !tbaa !118
  %1533 = icmp sgt i32 %1532, 16384
  br i1 %1533, label %1534, label %1555, !prof !419

1534:                                             ; preds = %1512, %1552
  %1535 = phi i64 [ %1553, %1552 ], [ 0, %1512 ]
  br label %1536

1536:                                             ; preds = %1534, %1536
  %1537 = phi i64 [ 0, %1534 ], [ %1550, %1536 ]
  %1538 = load i32, ptr %0, align 8, !tbaa !181
  %1539 = sext i32 %1538 to i64
  %1540 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %1539, i64 %1535, i64 %1537
  %1541 = load i32, ptr %1540, align 4, !tbaa !118
  %1542 = add nsw i32 %1541, 1
  %1543 = ashr i32 %1542, 1
  store i32 %1543, ptr %1540, align 4, !tbaa !118
  %1544 = load i32, ptr %0, align 8, !tbaa !181
  %1545 = sext i32 %1544 to i64
  %1546 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %1545, i64 %1535, i64 %1537
  %1547 = load i32, ptr %1546, align 4, !tbaa !118
  %1548 = add nsw i32 %1547, 1
  %1549 = ashr i32 %1548, 1
  store i32 %1549, ptr %1546, align 4, !tbaa !118
  %1550 = add nuw nsw i64 %1537, 1
  %1551 = icmp eq i64 %1550, 64
  br i1 %1551, label %1552, label %1536, !prof !420, !llvm.loop !421

1552:                                             ; preds = %1536
  %1553 = add nuw nsw i64 %1535, 1
  %1554 = icmp eq i64 %1553, 12
  br i1 %1554, label %1555, label %1534, !prof !422, !llvm.loop !423

1555:                                             ; preds = %1552, %1506, %1512
  %1556 = add nuw nsw i64 %1507, 1
  %1557 = icmp eq i64 %1556, %1505
  br i1 %1557, label %1558, label %1506, !prof !424, !llvm.loop !425

1558:                                             ; preds = %1555, %1501
  %1559 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %1405)
  %1560 = zext i16 %1559 to i32
  %1561 = load i32, ptr %10, align 4, !tbaa !118
  %1562 = load i32, ptr %13, align 4, !tbaa !118
  %1563 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %1396, i32 noundef %128, i32 noundef %134, i32 noundef %1560, i32 noundef %1561, i32 noundef %1562, i32 noundef %1563, i32 noundef %3)
  br label %1611

1564:                                             ; preds = %1403
  %1565 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %1405)
  %1566 = zext i16 %1565 to i32
  store i32 %1566, ptr %12, align 4, !tbaa !118
  br label %1567

1567:                                             ; preds = %1564, %1401
  %1568 = phi i32 [ %1396, %1564 ], [ %982, %1401 ]
  %1569 = load i32, ptr %1163, align 4, !tbaa !118
  %1570 = add nsw i32 %987, -1
  %1571 = sext i32 %1570 to i64
  %1572 = getelementptr inbounds [240 x i32], ptr %15, i64 0, i64 %1571
  store i32 %1569, ptr %1572, align 4, !tbaa !118
  %1573 = add nsw i32 %987, 1
  br label %1574

1574:                                             ; preds = %1567, %1400
  %1575 = phi i32 [ %1573, %1567 ], [ %987, %1400 ]
  %1576 = phi i32 [ 0, %1567 ], [ %986, %1400 ]
  %1577 = phi i32 [ %1568, %1567 ], [ %982, %1400 ]
  %1578 = add nsw i32 %1160, 1
  %1579 = icmp slt i32 %1160, 9
  %1580 = icmp slt i32 %1578, %328
  br i1 %1579, label %1581, label %1596, !prof !426

1581:                                             ; preds = %1574
  br i1 %1580, label %1582, label %1597, !prof !427

1582:                                             ; preds = %1581
  %1583 = sext i32 %996 to i64
  br label %1584

1584:                                             ; preds = %1582, %1584
  %1585 = phi i64 [ %1583, %1582 ], [ %1594, %1584 ]
  %1586 = phi i32 [ undef, %1582 ], [ %1593, %1584 ]
  %1587 = phi i32 [ -1000000, %1582 ], [ %1591, %1584 ]
  %1588 = getelementptr inbounds i32, ptr %8, i64 %1585
  %1589 = load i32, ptr %1588, align 4, !tbaa !118
  %1590 = icmp sgt i32 %1589, %1587
  %1591 = call i32 @llvm.smax.i32(i32 %1589, i32 %1587)
  %1592 = trunc i64 %1585 to i32
  %1593 = select i1 %1590, i32 %1592, i32 %1586, !prof !428
  %1594 = add nsw i64 %1585, 1
  %1595 = icmp slt i64 %1594, %979
  br i1 %1595, label %1584, label %1597, !prof !429, !llvm.loop !190

1596:                                             ; preds = %1574
  br i1 %1580, label %1611, label %1597, !prof !430

1597:                                             ; preds = %1584, %1581, %1596
  %1598 = phi i32 [ -1000000, %1596 ], [ -1000000, %1581 ], [ %1591, %1584 ]
  %1599 = phi i32 [ undef, %1596 ], [ undef, %1581 ], [ %1593, %1584 ]
  %1600 = icmp sgt i32 %1598, -1000000
  br i1 %1600, label %1601, label %1611, !prof !431

1601:                                             ; preds = %1597
  %1602 = sext i32 %1578 to i64
  %1603 = getelementptr inbounds i32, ptr %8, i64 %1602
  %1604 = load i32, ptr %1603, align 4, !tbaa !118
  %1605 = sext i32 %1599 to i64
  %1606 = getelementptr inbounds i32, ptr %8, i64 %1605
  store i32 %1604, ptr %1606, align 4, !tbaa !118
  store i32 %1598, ptr %1603, align 4, !tbaa !118
  %1607 = getelementptr inbounds i32, ptr %7, i64 %1602
  %1608 = load i32, ptr %1607, align 4, !tbaa !118
  %1609 = getelementptr inbounds i32, ptr %7, i64 %1605
  %1610 = load i32, ptr %1609, align 4, !tbaa !118
  store i32 %1610, ptr %1607, align 4, !tbaa !118
  store i32 %1608, ptr %1609, align 4, !tbaa !118
  br label %1611

1611:                                             ; preds = %1601, %1597, %1596, %1278, %1274, %1273, %1236, %1232, %1231, %1393, %1558
  %1612 = phi i32 [ %1160, %1558 ], [ %1160, %1393 ], [ %1213, %1231 ], [ %1213, %1232 ], [ %1213, %1236 ], [ %1254, %1273 ], [ %1254, %1274 ], [ %1254, %1278 ], [ %1578, %1596 ], [ %1578, %1597 ], [ %1578, %1601 ]
  %1613 = phi i1 [ false, %1558 ], [ false, %1393 ], [ false, %1231 ], [ true, %1232 ], [ false, %1236 ], [ false, %1273 ], [ true, %1274 ], [ false, %1278 ], [ false, %1596 ], [ true, %1597 ], [ false, %1601 ]
  %1614 = phi i32 [ %987, %1558 ], [ %987, %1393 ], [ %987, %1231 ], [ %987, %1232 ], [ %987, %1236 ], [ %987, %1273 ], [ %987, %1274 ], [ %987, %1278 ], [ %1575, %1596 ], [ %1575, %1597 ], [ %1575, %1601 ]
  %1615 = phi i32 [ %986, %1558 ], [ %986, %1393 ], [ %986, %1231 ], [ %986, %1232 ], [ %986, %1236 ], [ %986, %1273 ], [ %986, %1274 ], [ %986, %1278 ], [ %1576, %1596 ], [ %1576, %1597 ], [ %1576, %1601 ]
  %1616 = phi i32 [ %1394, %1558 ], [ %1394, %1393 ], [ %982, %1231 ], [ %982, %1232 ], [ %982, %1236 ], [ %982, %1273 ], [ %982, %1274 ], [ %982, %1278 ], [ %1394, %1596 ], [ %1394, %1597 ], [ %1394, %1601 ]
  %1617 = phi i32 [ 1, %1558 ], [ 1, %1393 ], [ 13, %1231 ], [ 13, %1232 ], [ 13, %1236 ], [ 13, %1273 ], [ 13, %1274 ], [ 13, %1278 ], [ 0, %1596 ], [ 0, %1597 ], [ 0, %1601 ]
  %1618 = phi i32 [ %1395, %1558 ], [ %1395, %1393 ], [ 0, %1231 ], [ 0, %1232 ], [ 0, %1236 ], [ 0, %1273 ], [ 0, %1274 ], [ 0, %1278 ], [ %1395, %1596 ], [ %1395, %1597 ], [ %1395, %1601 ]
  %1619 = phi i32 [ %1396, %1558 ], [ %1396, %1393 ], [ %983, %1231 ], [ %983, %1232 ], [ %983, %1236 ], [ %983, %1273 ], [ %983, %1274 ], [ %983, %1278 ], [ %1396, %1596 ], [ %1396, %1597 ], [ %1396, %1601 ]
  %1620 = phi i32 [ %982, %1558 ], [ %982, %1393 ], [ %982, %1231 ], [ %982, %1232 ], [ %982, %1236 ], [ %982, %1273 ], [ %982, %1274 ], [ %982, %1278 ], [ %1577, %1596 ], [ %1577, %1597 ], [ %1577, %1601 ]
  %1621 = phi i32 [ %1396, %1558 ], [ 0, %1393 ], [ %981, %1231 ], [ %981, %1232 ], [ %981, %1236 ], [ %981, %1273 ], [ %981, %1274 ], [ %981, %1278 ], [ %981, %1596 ], [ %981, %1597 ], [ %981, %1601 ]
  switch i32 %1617, label %1656 [
    i32 0, label %1622
    i32 13, label %1622
  ], !prof !432

1622:                                             ; preds = %1611, %1611
  br i1 %1613, label %1623, label %980, !prof !433, !llvm.loop !379

1623:                                             ; preds = %1622
  %1624 = icmp ne i32 %1618, 0
  br label %1625

1625:                                             ; preds = %1140, %949, %1623
  %1626 = phi i32 [ %1616, %1623 ], [ -32000, %949 ], [ %985, %1140 ]
  %1627 = phi i1 [ %1624, %1623 ], [ true, %949 ], [ false, %1140 ]
  %1628 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %1629 = icmp eq i32 %1628, 0
  %1630 = select i1 %1627, i1 %1629, i1 false, !prof !434
  br i1 %1630, label %1631, label %1646, !prof !434

1631:                                             ; preds = %1625
  %1632 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1642, label %1634, !prof !435

1634:                                             ; preds = %1631
  %1635 = load i32, ptr %20, align 8, !tbaa !115
  %1636 = add nsw i32 %1635, -32000
  %1637 = load i32, ptr %10, align 4, !tbaa !118
  %1638 = load i32, ptr %13, align 4, !tbaa !118
  %1639 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %1636, i32 noundef %128, i32 noundef %134, i32 noundef 0, i32 noundef %1637, i32 noundef %1638, i32 noundef %1639, i32 noundef %3)
  %1640 = load i32, ptr %20, align 8, !tbaa !115
  %1641 = add nsw i32 %1640, -32000
  br label %1656

1642:                                             ; preds = %1631
  %1643 = load i32, ptr %10, align 4, !tbaa !118
  %1644 = load i32, ptr %13, align 4, !tbaa !118
  %1645 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef 0, i32 noundef %128, i32 noundef %134, i32 noundef 0, i32 noundef %1643, i32 noundef %1644, i32 noundef %1645, i32 noundef %3)
  br label %1656

1646:                                             ; preds = %1625
  %1647 = load i32, ptr %110, align 4, !tbaa !131
  %1648 = icmp slt i32 %1647, 99
  %1649 = select i1 %1648, i1 %1629, i1 false, !prof !436
  %1650 = select i1 %1648, i32 %1626, i32 0, !prof !436
  br i1 %1649, label %1651, label %1656, !prof !436

1651:                                             ; preds = %1646
  %1652 = load i32, ptr %12, align 4, !tbaa !118
  %1653 = load i32, ptr %10, align 4, !tbaa !118
  %1654 = load i32, ptr %13, align 4, !tbaa !118
  %1655 = load i32, ptr %14, align 4, !tbaa !118
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %1626, i32 noundef %128, i32 noundef %134, i32 noundef %1652, i32 noundef %1653, i32 noundef %1654, i32 noundef %1655, i32 noundef %3)
  br label %1656

1656:                                             ; preds = %1611, %38, %105, %318, %298, %141, %138, %131, %1646, %166, %173, %180, %765, %235, %1634, %1642, %1651, %125, %136, %113, %23
  %1657 = phi i32 [ %24, %23 ], [ %120, %113 ], [ %137, %136 ], [ %123, %125 ], [ %768, %765 ], [ 0, %235 ], [ %155, %166 ], [ %174, %173 ], [ %155, %180 ], [ %1641, %1634 ], [ 0, %1642 ], [ %1650, %1646 ], [ %1626, %1651 ], [ %129, %131 ], [ %139, %138 ], [ %142, %141 ], [ %300, %298 ], [ %320, %318 ], [ 0, %105 ], [ 0, %38 ], [ %1621, %1611 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %7) #11
  ret i32 %1657
}

declare noundef i32 @_Z3genP7state_tPi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !437 !PGOFuncName !438 {
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %232, !prof !261

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %10 = zext nneg i32 %3 to i64
  br label %11

11:                                               ; preds = %7, %229
  %12 = phi i64 [ 0, %7 ], [ %230, %229 ]
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !118
  %15 = lshr i32 %14, 6
  %16 = and i32 %15, 63
  %17 = and i32 %14, 63
  %18 = lshr i32 %14, 12
  %19 = and i32 %18, 15
  %20 = lshr i32 %14, 19
  %21 = and i32 %20, 15
  %22 = load i32, ptr @uci_multipv, align 4, !tbaa !118
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %36, !prof !262

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !115
  %27 = icmp eq i32 %26, 1
  %28 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %29 = icmp sgt i32 %28, 2
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = getelementptr inbounds [240 x i32], ptr @root_scores, i64 0, i64 %12
  %33 = load i32, ptr %32, align 4, !tbaa !118
  %34 = add nsw i32 %33, 100000
  %35 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %34, ptr %35, align 4, !tbaa !118
  br label %229

36:                                               ; preds = %24, %11
  %37 = load i32, ptr @uci_limitstrength, align 4, !tbaa !118
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %149, label %39, !prof !263

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %41 = load i32, ptr %40, align 8, !tbaa !115
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %149

43:                                               ; preds = %39
  %44 = getelementptr inbounds i32, ptr %2, i64 %12
  %45 = zext nneg i32 %41 to i64
  %46 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !118
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %149

49:                                               ; preds = %43
  %50 = load i32, ptr @uci_elo, align 4, !tbaa !118
  %51 = tail call noundef i32 @_Z14elo_to_blunderi(i32 noundef %50)
  %52 = icmp sgt i32 %51, 99
  br i1 %52, label %149, label %53

53:                                               ; preds = %49
  %54 = icmp slt i32 %3, 6
  %55 = icmp slt i32 %3, 9
  %56 = select i1 %55, i32 40, i32 100
  %57 = select i1 %54, i32 20, i32 %56
  %58 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %59 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %60 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %62 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %63 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %64 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %65 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %66 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %67 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %68 = load i32, ptr @uci_elo, align 4, !tbaa !118
  %69 = tail call noundef i32 @_Z14elo_to_blunderi(i32 noundef %68)
  %70 = tail call noundef i32 @_Z8myrandomv()
  %71 = urem i32 %70, 200
  %72 = sub i32 %57, %69
  %73 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %74 = icmp slt i32 %73, 5
  %75 = add i32 %72, 5
  %76 = sub i32 %75, %73
  %77 = select i1 %74, i32 %76, i32 %72
  %78 = load i32, ptr %40, align 8, !tbaa !115
  %79 = shl nsw i32 %78, 1
  %80 = load i32, ptr %58, align 4, !tbaa !118
  %81 = load i32, ptr %59, align 4, !tbaa !118
  %82 = load i32, ptr %60, align 4, !tbaa !118
  %83 = load i32, ptr %61, align 4, !tbaa !118
  %84 = load i32, ptr %62, align 8, !tbaa !118
  %85 = load i32, ptr %63, align 8, !tbaa !118
  %86 = load i32, ptr %64, align 8, !tbaa !118
  %87 = load i32, ptr %65, align 8, !tbaa !118
  %88 = load i32, ptr %66, align 4, !tbaa !118
  %89 = load i32, ptr %67, align 8, !tbaa !118
  %90 = add i32 %77, %79
  %91 = add i32 %90, %80
  %92 = add i32 %91, %81
  %93 = add i32 %92, %82
  %94 = add i32 %93, %83
  %95 = add i32 %94, %84
  %96 = add i32 %95, %85
  %97 = add i32 %96, %86
  %98 = add i32 %97, %87
  %99 = add i32 %98, %88
  %100 = add i32 %99, %89
  %101 = zext nneg i32 %16 to i64
  %102 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !118
  %104 = icmp eq i32 %21, %103
  %105 = add nsw i32 %100, -30
  %106 = select i1 %104, i32 %105, i32 %100
  %107 = add i32 %103, -1
  %108 = icmp ult i32 %107, 2
  %109 = add nsw i32 %106, -30
  %110 = select i1 %108, i32 %109, i32 %106
  %111 = icmp eq i32 %21, 13
  %112 = add nsw i32 %110, -10
  %113 = select i1 %111, i32 %110, i32 %112
  %114 = add nsw i32 %21, -9
  %115 = icmp ult i32 %114, 2
  %116 = add nsw i32 %113, -30
  %117 = select i1 %115, i32 %116, i32 %113
  switch i32 %19, label %118 [
    i32 0, label %120
    i32 13, label %120
    i32 9, label %120
    i32 10, label %120
  ]

118:                                              ; preds = %53
  %119 = add nsw i32 %117, 40
  br label %120

120:                                              ; preds = %53, %53, %53, %118, %53
  %121 = phi i32 [ %119, %118 ], [ %117, %53 ], [ %117, %53 ], [ %117, %53 ], [ %117, %53 ]
  %122 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %123 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %16, i32 noundef %17)
  %124 = shl nsw i32 %123, 1
  %125 = add nsw i32 %124, %121
  %126 = load i32, ptr %102, align 4, !tbaa !118
  %127 = add i32 %126, -3
  %128 = icmp ult i32 %127, 2
  %129 = add nsw i32 %125, 20
  %130 = select i1 %128, i32 %129, i32 %125
  %131 = load i32, ptr %122, align 4, !tbaa !134
  %132 = icmp eq i32 %131, 0
  %133 = tail call noundef i32 @_Z4ranki(i32 noundef %16)
  %134 = tail call noundef i32 @_Z4ranki(i32 noundef %17)
  br i1 %132, label %137, label %135

135:                                              ; preds = %120
  %136 = icmp sgt i32 %133, %134
  br i1 %136, label %139, label %145

137:                                              ; preds = %120
  %138 = icmp slt i32 %133, %134
  br i1 %138, label %139, label %145

139:                                              ; preds = %137, %135
  %140 = tail call noundef i32 @_Z4ranki(i32 noundef %16)
  %141 = tail call noundef i32 @_Z4ranki(i32 noundef %17)
  %142 = sub nsw i32 %140, %141
  %143 = shl nsw i32 %142, 2
  %144 = add nsw i32 %143, %130
  br label %145

145:                                              ; preds = %139, %137, %135
  %146 = phi i32 [ %130, %135 ], [ %130, %137 ], [ %144, %139 ]
  %147 = icmp slt i32 %146, %71
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  store i32 -1000000, ptr %44, align 4, !tbaa !118
  br label %229

149:                                              ; preds = %145, %49, %43, %39, %36
  %150 = load i32, ptr %13, align 4, !tbaa !118
  %151 = tail call noundef zeroext i16 @_Z12compact_movei(i32 noundef %150)
  %152 = zext i16 %151 to i32
  %153 = icmp eq i32 %152, %4
  br i1 %153, label %154, label %156, !prof !264

154:                                              ; preds = %149
  %155 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 128000000, ptr %155, align 4, !tbaa !118
  br label %229

156:                                              ; preds = %149
  %157 = icmp ne i32 %21, 13
  %158 = icmp ne i32 %19, 0
  %159 = select i1 %157, i1 true, i1 %158, !prof !265
  br i1 %159, label %160, label %187, !prof !266

160:                                              ; preds = %156
  %161 = zext nneg i32 %21 to i64
  %162 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !118
  %164 = tail call i32 @llvm.abs.i32(i32 %163, i1 true)
  %165 = zext nneg i32 %16 to i64
  %166 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !118
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !118
  %171 = tail call i32 @llvm.abs.i32(i32 %170, i1 true)
  %172 = sub nsw i32 %164, %171
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %179, label %174, !prof !267

174:                                              ; preds = %160
  %175 = load i32, ptr %9, align 4, !tbaa !134
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = tail call noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %177, i32 noundef %16, i32 noundef %17, i32 noundef %19)
  br label %179

179:                                              ; preds = %160, %174
  %180 = phi i32 [ %178, %174 ], [ %172, %160 ]
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %182, label %185, !prof !268

182:                                              ; preds = %179
  %183 = add nuw nsw i32 %180, 10000000
  %184 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %183, ptr %184, align 4, !tbaa !118
  br label %229

185:                                              ; preds = %179
  %186 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %180, ptr %186, align 4, !tbaa !118
  br label %229

187:                                              ; preds = %156
  %188 = load i32, ptr %13, align 4, !tbaa !118
  %189 = load i32, ptr %8, align 8, !tbaa !115
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %190
  %192 = load i32, ptr %191, align 8, !tbaa !172
  %193 = icmp eq i32 %188, %192
  br i1 %193, label %194, label %196, !prof !269

194:                                              ; preds = %187
  %195 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 8000000, ptr %195, align 4, !tbaa !118
  br label %229

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %190, i32 1
  %198 = load i32, ptr %197, align 4, !tbaa !175
  %199 = icmp eq i32 %188, %198
  br i1 %199, label %200, label %202, !prof !270

200:                                              ; preds = %196
  %201 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 7000000, ptr %201, align 4, !tbaa !118
  br label %229

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %190, i32 2
  %204 = load i32, ptr %203, align 8, !tbaa !177
  %205 = icmp eq i32 %188, %204
  br i1 %205, label %206, label %208, !prof !271

206:                                              ; preds = %202
  %207 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 6000000, ptr %207, align 4, !tbaa !118
  br label %229

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %190, i32 3
  %210 = load i32, ptr %209, align 4, !tbaa !179
  %211 = icmp eq i32 %188, %210
  br i1 %211, label %212, label %214, !prof !272

212:                                              ; preds = %208
  %213 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 5000000, ptr %213, align 4, !tbaa !118
  br label %229

214:                                              ; preds = %208
  %215 = zext nneg i32 %16 to i64
  %216 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !118
  %218 = add nsw i32 %217, -1
  %219 = load i32, ptr %0, align 8, !tbaa !181
  %220 = sext i32 %219 to i64
  %221 = sext i32 %218 to i64
  %222 = zext nneg i32 %17 to i64
  %223 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %220, i64 %221, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !118
  %225 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %220, i64 %221, i64 %215
  %226 = load i32, ptr %225, align 4, !tbaa !118
  %227 = sub nsw i32 %224, %226
  %228 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %227, ptr %228, align 4, !tbaa !118
  br label %229

229:                                              ; preds = %154, %194, %206, %214, %212, %200, %182, %185, %148, %31
  %230 = add nuw nsw i64 %12, 1
  %231 = icmp eq i64 %230, %10
  br i1 %231, label %232, label %11, !prof !273, !llvm.loop !274

232:                                              ; preds = %229, %5
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL12history_goodP7state_tii(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !439 !PGOFuncName !440 {
  %4 = and i32 %1, 7925760
  %5 = icmp eq i32 %4, 6815744
  br i1 %5, label %6, label %99, !prof !405

6:                                                ; preds = %3
  %7 = lshr i32 %1, 6
  %8 = and i32 %7, 63
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !118
  %12 = add nsw i32 %11, -1
  %13 = and i32 %1, 63
  %14 = add nsw i32 %2, 3
  %15 = sdiv i32 %14, 4
  %16 = load i32, ptr %0, align 8, !tbaa !181
  %17 = sext i32 %16 to i64
  %18 = sext i32 %12 to i64
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %17, i64 %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !118
  %22 = add nsw i32 %21, %15
  store i32 %22, ptr %20, align 4, !tbaa !118
  %23 = load i32, ptr %0, align 8, !tbaa !181
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %24, i64 %18, i64 %19
  %26 = load i32, ptr %25, align 4, !tbaa !118
  %27 = add nsw i32 %26, %15
  store i32 %27, ptr %25, align 4, !tbaa !118
  %28 = load i32, ptr %0, align 8, !tbaa !181
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %29, i64 %18, i64 %19
  %31 = load i32, ptr %30, align 4, !tbaa !118
  %32 = icmp sgt i32 %31, 16384
  br i1 %32, label %33, label %54, !prof !406

33:                                               ; preds = %6, %51
  %34 = phi i64 [ %52, %51 ], [ 0, %6 ]
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %49, %35 ]
  %37 = load i32, ptr %0, align 8, !tbaa !181
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %38, i64 %34, i64 %36
  %40 = load i32, ptr %39, align 4, !tbaa !118
  %41 = add nsw i32 %40, 1
  %42 = ashr i32 %41, 1
  store i32 %42, ptr %39, align 4, !tbaa !118
  %43 = load i32, ptr %0, align 8, !tbaa !181
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %44, i64 %34, i64 %36
  %46 = load i32, ptr %45, align 4, !tbaa !118
  %47 = add nsw i32 %46, 1
  %48 = ashr i32 %47, 1
  store i32 %48, ptr %45, align 4, !tbaa !118
  %49 = add nuw nsw i64 %36, 1
  %50 = icmp eq i64 %49, 64
  br i1 %50, label %51, label %35, !prof !407, !llvm.loop !408

51:                                               ; preds = %35
  %52 = add nuw nsw i64 %34, 1
  %53 = icmp eq i64 %52, 12
  br i1 %53, label %54, label %33, !prof !409, !llvm.loop !410

54:                                               ; preds = %51, %6
  %55 = load i32, ptr %0, align 8, !tbaa !181
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %56, i64 %18, i64 %19
  %58 = load i32, ptr %57, align 4, !tbaa !118
  %59 = add nsw i32 %58, %15
  store i32 %59, ptr %57, align 4, !tbaa !118
  %60 = load i32, ptr %0, align 8, !tbaa !181
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %61, i64 %18, i64 %19
  %63 = load i32, ptr %62, align 4, !tbaa !118
  %64 = icmp sgt i32 %63, 500000
  br i1 %64, label %65, label %80, !prof !411

65:                                               ; preds = %54, %77
  %66 = phi i64 [ %78, %77 ], [ 0, %54 ]
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ 0, %65 ], [ %75, %67 ]
  %69 = load i32, ptr %0, align 8, !tbaa !181
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_h, i64 0, i64 %70, i64 %66, i64 %68
  %72 = load i32, ptr %71, align 4, !tbaa !118
  %73 = add nsw i32 %72, 1
  %74 = ashr i32 %73, 1
  store i32 %74, ptr %71, align 4, !tbaa !118
  %75 = add nuw nsw i64 %68, 1
  %76 = icmp eq i64 %75, 64
  br i1 %76, label %77, label %67, !llvm.loop !412

77:                                               ; preds = %67
  %78 = add nuw nsw i64 %66, 1
  %79 = icmp eq i64 %78, 12
  br i1 %79, label %80, label %65, !llvm.loop !413

80:                                               ; preds = %77, %54
  %81 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  %82 = load i32, ptr %81, align 8, !tbaa !115
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %83
  %85 = load i32, ptr %84, align 8, !tbaa !172
  %86 = icmp eq i32 %85, %1
  br i1 %86, label %99, label %87, !prof !414

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %83, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !175
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %98, label %91, !prof !415

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %83, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !177
  %94 = icmp eq i32 %93, %1
  br i1 %94, label %97, label %95, !prof !416

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 21, i64 %83, i32 3
  store i32 %93, ptr %96, align 4, !tbaa !179
  br label %97

97:                                               ; preds = %95, %91
  store i32 %89, ptr %92, align 8, !tbaa !177
  br label %98

98:                                               ; preds = %97, %87
  store i32 %85, ptr %88, align 4, !tbaa !175
  store i32 %1, ptr %84, align 8, !tbaa !172
  br label %99

99:                                               ; preds = %80, %98, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z14rootmovesearchP7state_tiiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 !prof !441 {
  %7 = tail call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %8 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %7, i32 0
  ret i32 %10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z11search_rootP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 !prof !442 {
  %5 = alloca [240 x i32], align 16
  %6 = alloca [240 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #11
  %10 = load i32, ptr @_ZZ11search_rootP7state_tiiiE5bmove, align 4, !tbaa !118
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  store i32 1, ptr %11, align 8, !tbaa !115
  store i32 -32000, ptr @gamestate, align 8, !tbaa !443
  %12 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !118
  %14 = icmp ne i32 %13, 0
  %15 = add nsw i32 %3, 4
  %16 = select i1 %14, i32 %15, i32 %3, !prof !444
  %17 = call noundef i32 @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %7, i32 noundef %16)
  %18 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !445

20:                                               ; preds = %4
  %21 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %22 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %21)
  br label %25

23:                                               ; preds = %4
  %24 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %0, ptr noundef nonnull %5)
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ %24, %23 ]
  %27 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !446
  call fastcc void @_ZL11order_movesP7state_tPiS1_ij(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %26, i32 noundef %27)
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 0, %25 ], [ %32, %28 ]
  %30 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %29
  store i32 -32000, ptr %30, align 4, !tbaa !118
  %31 = getelementptr inbounds [240 x i32], ptr @root_scores, i64 0, i64 %29
  store i32 -32000, ptr %31, align 4, !tbaa !118
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, 240
  br i1 %33, label %34, label %28, !prof !447, !llvm.loop !448

34:                                               ; preds = %28
  %35 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1)
  %36 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 16
  %37 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %38 = sub nsw i32 0, %2
  %39 = add i32 %16, -4
  %40 = sext i32 %26 to i64
  %41 = sext i32 %26 to i64
  %42 = add i32 %16, -4
  br label %43

43:                                               ; preds = %340, %34
  %44 = phi i64 [ %52, %340 ], [ -1, %34 ]
  %45 = phi i32 [ %344, %340 ], [ 0, %34 ]
  %46 = phi i32 [ %300, %340 ], [ 1, %34 ]
  %47 = phi i32 [ %341, %340 ], [ 1, %34 ]
  %48 = phi i32 [ %342, %340 ], [ %1, %34 ]
  %49 = phi i32 [ %301, %340 ], [ -32000, %34 ]
  %50 = phi i32 [ %302, %340 ], [ 0, %34 ]
  %51 = phi i32 [ %343, %340 ], [ %10, %34 ]
  %52 = add i64 %44, 1
  %53 = icmp slt i64 %44, 9
  br i1 %53, label %54, label %71, !prof !449

54:                                               ; preds = %43
  %55 = icmp slt i64 %52, %41
  br i1 %55, label %56, label %73, !prof !450

56:                                               ; preds = %54
  %57 = sext i32 %45 to i64
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %68, %58 ], [ %57, %56 ]
  %60 = phi i32 [ %67, %58 ], [ undef, %56 ]
  %61 = phi i32 [ %65, %58 ], [ -1000000, %56 ]
  %62 = getelementptr inbounds i32, ptr %6, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !118
  %64 = icmp sgt i32 %63, %61
  %65 = call i32 @llvm.smax.i32(i32 %63, i32 %61)
  %66 = trunc i64 %59 to i32
  %67 = select i1 %64, i32 %66, i32 %60, !prof !451
  %68 = add nsw i64 %59, 1
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %26, %69
  br i1 %70, label %73, label %58, !prof !452, !llvm.loop !190

71:                                               ; preds = %43
  %72 = icmp slt i64 %52, %40
  br i1 %72, label %86, label %73, !prof !453

73:                                               ; preds = %58, %54, %71
  %74 = phi i32 [ -1000000, %71 ], [ -1000000, %54 ], [ %65, %58 ]
  %75 = phi i32 [ undef, %71 ], [ undef, %54 ], [ %67, %58 ]
  %76 = icmp sgt i32 %74, -1000000
  br i1 %76, label %77, label %345, !prof !454

77:                                               ; preds = %73
  %78 = getelementptr inbounds i32, ptr %6, i64 %52
  %79 = load i32, ptr %78, align 4, !tbaa !118
  %80 = sext i32 %75 to i64
  %81 = getelementptr inbounds i32, ptr %6, i64 %80
  store i32 %79, ptr %81, align 4, !tbaa !118
  store i32 %74, ptr %78, align 4, !tbaa !118
  %82 = getelementptr inbounds i32, ptr %5, i64 %52
  %83 = load i32, ptr %82, align 4, !tbaa !118
  %84 = getelementptr inbounds i32, ptr %5, i64 %80
  %85 = load i32, ptr %84, align 4, !tbaa !118
  store i32 %85, ptr %82, align 4, !tbaa !118
  store i32 %83, ptr %84, align 4, !tbaa !118
  br label %86

86:                                               ; preds = %71, %77
  %87 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %52
  %88 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %88)
  %89 = load i64, ptr %36, align 8, !tbaa !206
  %90 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !207
  %91 = load i32, ptr %11, align 8, !tbaa !115
  %92 = add i32 %91, -1
  %93 = add i32 %92, %90
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 36, i64 %94
  store i64 %89, ptr %95, align 8, !tbaa !208
  %96 = load i32, ptr %87, align 4, !tbaa !118
  %97 = add nsw i32 %91, -1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 19, i64 %98
  store i32 %96, ptr %99, align 4, !tbaa !118
  %100 = load i64, ptr %37, align 8, !tbaa !108
  %101 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %0, i32 noundef %96)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %299, label %103, !prof !455

103:                                              ; preds = %86
  %104 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %104)
  %105 = add nsw i32 %50, 1
  %106 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %107 = icmp eq i32 %106, 0
  %108 = load i32, ptr %87, align 4, !tbaa !118
  br i1 %107, label %109, label %110, !prof !456

109:                                              ; preds = %103
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %108, ptr noundef nonnull %9)
  br label %111

110:                                              ; preds = %103
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %0, i32 noundef %108, ptr noundef nonnull %9)
  br label %111

111:                                              ; preds = %110, %109
  %112 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %0, i32 noundef %112)
  %113 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %114 = load i32, ptr %11, align 8, !tbaa !115
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %115
  store i32 %113, ptr %116, align 4, !tbaa !118
  %117 = sub nsw i32 0, %48
  %118 = call noundef i32 @_Z4evalP7state_tiii(ptr noundef %0, i32 noundef %38, i32 noundef %117, i32 noundef 1)
  %119 = load i32, ptr %11, align 8, !tbaa !115
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 25, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !118
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %149, !prof !457

124:                                              ; preds = %111
  %125 = load i32, ptr %87, align 4, !tbaa !118
  %126 = and i32 %125, 63
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !118
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %134, !prof !458

131:                                              ; preds = %124
  %132 = call noundef i32 @_Z4ranki(i32 noundef %126)
  %133 = icmp sgt i32 %132, 6
  br i1 %133, label %148, label %134, !prof !459

134:                                              ; preds = %131, %124
  %135 = load i32, ptr %87, align 4, !tbaa !118
  %136 = and i32 %135, 63
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !118
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %144, !prof !460

141:                                              ; preds = %134
  %142 = call noundef i32 @_Z4ranki(i32 noundef %136)
  %143 = icmp slt i32 %142, 3
  br i1 %143, label %148, label %144, !prof !461

144:                                              ; preds = %141, %134
  %145 = load i32, ptr %87, align 4, !tbaa !118
  %146 = and i32 %145, 61440
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148, !prof !462

148:                                              ; preds = %144, %141, %131
  br label %149

149:                                              ; preds = %111, %144, %148
  %150 = phi i1 [ true, %148 ], [ false, %144 ], [ true, %111 ]
  %151 = phi i32 [ 3, %148 ], [ 0, %144 ], [ 4, %111 ]
  %152 = or i1 %14, %150
  %153 = icmp slt i32 %50, 3
  %154 = select i1 %152, i1 true, i1 %153, !prof !463
  br i1 %154, label %178, label %155, !prof !464

155:                                              ; preds = %149
  %156 = load i32, ptr %87, align 4, !tbaa !118
  %157 = and i32 %156, 63
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !118
  %161 = add nsw i32 %160, -1
  %162 = load i32, ptr %0, align 8, !tbaa !181
  %163 = sext i32 %162 to i64
  %164 = sext i32 %161 to i64
  %165 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_hit, i64 0, i64 %163, i64 %164, i64 %158
  %166 = load i32, ptr %165, align 4, !tbaa !118
  %167 = shl i32 %166, 7
  %168 = add i32 %167, 128
  %169 = getelementptr inbounds [8 x [12 x [64 x i32]]], ptr @history_tot, i64 0, i64 %163, i64 %164, i64 %158
  %170 = load i32, ptr %169, align 4, !tbaa !118
  %171 = add nsw i32 %170, 1
  %172 = sdiv i32 %168, %171
  %173 = icmp slt i32 %172, 80
  br i1 %173, label %174, label %178, !prof !465

174:                                              ; preds = %155
  %175 = and i32 %156, 7925760
  %176 = icmp eq i32 %175, 6815744
  %177 = select i1 %176, i32 -4, i32 0, !prof !466
  br label %178

178:                                              ; preds = %174, %155, %149
  %179 = phi i1 [ false, %155 ], [ false, %149 ], [ %176, %174 ]
  %180 = phi i32 [ 0, %155 ], [ 0, %149 ], [ %177, %174 ]
  %181 = icmp eq i32 %47, 1
  %182 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %183 = icmp slt i32 %182, 2
  %184 = select i1 %181, i1 true, i1 %183, !prof !467
  %185 = load i32, ptr @uci_multipv, align 4
  %186 = icmp sgt i32 %185, 1
  %187 = select i1 %184, i1 true, i1 %186, !prof !468
  br i1 %187, label %188, label %244, !prof !468

188:                                              ; preds = %178
  %189 = icmp eq i32 %185, 1
  %190 = select i1 %189, i32 %117, i32 1000000, !prof !469
  %191 = add i32 %42, %151
  %192 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %38, i32 noundef %190, i32 noundef %191, i32 noundef 0, i32 noundef 0)
  %193 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %194 = icmp eq i32 %193, 0
  %195 = select i1 %194, i32 %192, i32 0
  %196 = sub nsw i32 0, %195
  %197 = sext i32 %105 to i64
  %198 = getelementptr inbounds [240 x i32], ptr @multipv_scores, i64 0, i64 %197
  store i32 %196, ptr %198, align 4, !tbaa !118
  %199 = getelementptr inbounds [240 x i32], ptr @root_scores, i64 0, i64 %52
  store i32 %196, ptr %199, align 4, !tbaa !118
  %200 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %283, !prof !469

202:                                              ; preds = %188
  %203 = icmp slt i32 %196, %2
  br i1 %203, label %206, label %204, !prof !470

204:                                              ; preds = %202
  %205 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %196, i32 noundef %205, ptr noundef nonnull %9, i32 noundef %105)
  br label %231

206:                                              ; preds = %202
  %207 = icmp sge i32 %48, %196
  %208 = icmp ne i32 %47, 0
  %209 = select i1 %207, i1 %208, i1 false, !prof !471
  br i1 %209, label %210, label %224, !prof !472

210:                                              ; preds = %206
  %211 = add i32 %16, -4
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  %212 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z16post_fl_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %196, i32 noundef %212, ptr noundef nonnull %9, i32 noundef %105)
  %213 = add i32 %211, %151
  %214 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %38, i32 noundef 1000000, i32 noundef %213, i32 noundef 0, i32 noundef 0)
  %215 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 %214, i32 0, !prof !473
  %218 = sub nsw i32 0, %217
  %219 = load i32, ptr @uci_multipv, align 4
  %220 = icmp eq i32 %219, 1
  %221 = select i1 %216, i1 %220, i1 false, !prof !473
  br i1 %221, label %222, label %231, !prof !473

222:                                              ; preds = %210
  %223 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %218, i32 noundef %223, ptr noundef nonnull %9, i32 noundef %105)
  br label %231

224:                                              ; preds = %206
  %225 = icmp slt i32 %48, %196
  %226 = load i32, ptr @uci_multipv, align 4
  %227 = icmp eq i32 %226, 1
  %228 = select i1 %225, i1 %227, i1 false, !prof !474
  br i1 %228, label %229, label %231, !prof !474

229:                                              ; preds = %224
  %230 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %196, i32 noundef %230, ptr noundef nonnull %9, i32 noundef %105)
  br label %231

231:                                              ; preds = %222, %210, %229, %224, %204
  %232 = phi i32 [ %196, %204 ], [ %218, %222 ], [ %218, %210 ], [ %196, %229 ], [ %196, %224 ]
  %233 = load i32, ptr @uci_multipv, align 4, !tbaa !118
  %234 = icmp sgt i32 %233, 1
  br i1 %234, label %235, label %237, !prof !475

235:                                              ; preds = %231
  %236 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z21post_multipv_thinkingP7state_tiii(ptr noundef %0, i32 noundef %232, i32 noundef %105, i32 noundef %236)
  br label %237

237:                                              ; preds = %235, %231
  %238 = load i32, ptr @gamestate, align 8, !tbaa !443
  %239 = icmp sle i32 %232, %238
  %240 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %241 = icmp ne i32 %240, 0
  %242 = select i1 %239, i1 true, i1 %241, !prof !476
  br i1 %242, label %283, label %243, !prof !476

243:                                              ; preds = %237
  store i32 %232, ptr @gamestate, align 8, !tbaa !443
  br label %283

244:                                              ; preds = %178
  %245 = xor i32 %48, -1
  %246 = add i32 %39, %151
  %247 = add i32 %180, %246
  %248 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %245, i32 noundef %117, i32 noundef %247, i32 noundef 0, i32 noundef 1)
  %249 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, i32 %248, i32 0, !prof !477
  %252 = sub nsw i32 0, %251
  %253 = icmp slt i32 %48, %252
  br i1 %253, label %254, label %274, !prof !478

254:                                              ; preds = %244
  %255 = icmp slt i32 %252, %2
  %256 = or i1 %179, %255
  %257 = and i1 %250, %256
  br i1 %257, label %258, label %274, !prof !479

258:                                              ; preds = %254
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  %259 = call noundef i32 @_Z6searchP7state_tiiiii(ptr noundef %0, i32 noundef %38, i32 noundef %117, i32 noundef %246, i32 noundef 0, i32 noundef 0)
  %260 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i32 %259, i32 0, !prof !479
  %263 = sub nsw i32 0, %262
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  %264 = icmp sge i32 %48, %263
  %265 = icmp ne i32 %260, 0
  %266 = or i1 %265, %264
  br i1 %266, label %274, label %267, !prof !480

267:                                              ; preds = %258
  store i32 %263, ptr @gamestate, align 8, !tbaa !443
  %268 = load i32, ptr %87, align 4, !tbaa !118
  %269 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %268)
  %270 = zext i16 %269 to i32
  store i32 %270, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !446
  %271 = icmp slt i32 %263, %2
  br i1 %271, label %272, label %274, !prof !481

272:                                              ; preds = %267
  %273 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %263, i32 noundef %273, ptr noundef nonnull %9, i32 noundef %105)
  br label %274

274:                                              ; preds = %258, %272, %267, %254, %244
  %275 = phi i32 [ %252, %254 ], [ %263, %258 ], [ %263, %272 ], [ %263, %267 ], [ %252, %244 ]
  %276 = phi i32 [ %51, %254 ], [ %51, %258 ], [ %268, %272 ], [ %268, %267 ], [ %51, %244 ]
  %277 = icmp slt i32 %275, %2
  %278 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %279 = icmp ne i32 %278, 0
  %280 = select i1 %277, i1 true, i1 %279, !prof !482
  br i1 %280, label %283, label %281, !prof !482

281:                                              ; preds = %274
  %282 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef %0, i32 noundef %275, i32 noundef %282, ptr noundef nonnull %9, i32 noundef %105)
  br label %283

283:                                              ; preds = %274, %281, %188, %243, %237
  %284 = phi i32 [ %196, %188 ], [ %232, %237 ], [ %232, %243 ], [ %275, %274 ], [ %275, %281 ]
  %285 = phi i32 [ %51, %188 ], [ %51, %237 ], [ %51, %243 ], [ %276, %274 ], [ %276, %281 ]
  %286 = load i32, ptr @gamestate, align 8, !tbaa !443
  %287 = icmp sle i32 %284, %286
  %288 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %289 = icmp ne i32 %288, 0
  %290 = select i1 %287, i1 true, i1 %289, !prof !483
  br i1 %290, label %292, label %291, !prof !483

291:                                              ; preds = %283
  store i32 %284, ptr @gamestate, align 8, !tbaa !443
  br label %292

292:                                              ; preds = %291, %283
  %293 = load i32, ptr @gamestate, align 8
  %294 = icmp eq i32 %293, -32000
  %295 = select i1 %289, i1 %294, i1 false, !prof !484
  %296 = icmp ne i32 %46, 0
  %297 = select i1 %295, i1 %296, i1 false, !prof !484
  br i1 %297, label %298, label %299, !prof !484

298:                                              ; preds = %292
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4, !tbaa !485
  br label %299

299:                                              ; preds = %292, %298, %86
  %300 = phi i32 [ %46, %86 ], [ 0, %298 ], [ 0, %292 ]
  %301 = phi i32 [ %49, %86 ], [ %284, %298 ], [ %284, %292 ]
  %302 = phi i32 [ %50, %86 ], [ %105, %298 ], [ %105, %292 ]
  %303 = phi i32 [ %51, %86 ], [ %285, %298 ], [ %285, %292 ]
  %304 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %305 = icmp ne i32 %304, 0
  %306 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %307 = icmp sgt i32 %306, 4
  %308 = select i1 %305, i1 %307, i1 false, !prof !486
  br i1 %308, label %309, label %318, !prof !486

309:                                              ; preds = %299
  %310 = call noundef i32 @_Z5rtimev()
  %311 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !123
  %312 = call noundef i32 @_Z9rdifftimeii(i32 noundef %310, i32 noundef %311)
  %313 = icmp sgt i32 %312, 149
  %314 = load i32, ptr @uci_showrefutations, align 4
  %315 = icmp ne i32 %314, 0
  %316 = select i1 %313, i1 %315, i1 false
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str, ptr noundef nonnull %9)
  call void @_Z24extract_current_bestlineP7state_t(ptr noundef %0)
  br label %318

318:                                              ; preds = %317, %309, %299
  %319 = load i32, ptr %87, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %0, i32 noundef %319)
  %320 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %414, !prof !487

322:                                              ; preds = %318
  br i1 %102, label %340, label %323, !prof !455

323:                                              ; preds = %322
  %324 = icmp sgt i32 %301, %48
  br i1 %324, label %325, label %333, !prof !488

325:                                              ; preds = %323
  %326 = load i32, ptr %87, align 4, !tbaa !118
  call fastcc void @_ZL12history_goodP7state_tii(ptr noundef %0, i32 noundef %326, i32 noundef %16)
  %327 = load i32, ptr %87, align 4, !tbaa !118
  store i32 %301, ptr @gamestate, align 8, !tbaa !443
  %328 = call noundef zeroext i16 @_Z12compact_movei(i32 noundef %327)
  %329 = zext i16 %328 to i32
  store i32 %329, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !446
  %330 = load i32, ptr @gamestate, align 8, !tbaa !443
  %331 = icmp slt i32 %330, %2
  br i1 %331, label %333, label %332, !prof !489

332:                                              ; preds = %325
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %330, i32 noundef %1, i32 noundef %2, i32 noundef %329, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %16)
  br label %414

333:                                              ; preds = %325, %323
  %334 = phi i32 [ %301, %325 ], [ %48, %323 ]
  %335 = phi i32 [ %327, %325 ], [ %303, %323 ]
  %336 = icmp eq i32 %47, 0
  br i1 %336, label %340, label %337, !prof !490

337:                                              ; preds = %333
  %338 = load i64, ptr %37, align 8, !tbaa !108
  %339 = sub i64 %338, %100
  store i64 %339, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 18), align 8, !tbaa !491
  br label %340

340:                                              ; preds = %333, %337, %322
  %341 = phi i32 [ 0, %337 ], [ 0, %333 ], [ %47, %322 ]
  %342 = phi i32 [ %334, %337 ], [ %334, %333 ], [ %48, %322 ]
  %343 = phi i32 [ %335, %337 ], [ %335, %333 ], [ %303, %322 ]
  %344 = add i32 %45, 1
  br label %43, !llvm.loop !492

345:                                              ; preds = %73
  %346 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %347 = icmp eq i32 %346, 4
  br i1 %347, label %356, label %348, !prof !493

348:                                              ; preds = %345
  %349 = icmp slt i32 %346, 5
  %350 = load i32, ptr @_ZZ11search_rootP7state_tiiiE5bmove, align 4
  %351 = icmp eq i32 %51, %350
  %352 = select i1 %349, i1 true, i1 %351, !prof !494
  br i1 %352, label %358, label %353, !prof !495

353:                                              ; preds = %348
  %354 = load i32, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !118
  %355 = add nsw i32 %354, 1
  br label %356

356:                                              ; preds = %345, %353
  %357 = phi i32 [ %355, %353 ], [ 0, %345 ]
  store i32 %357, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !118
  br label %358

358:                                              ; preds = %356, %348
  %359 = load i64, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 18), align 8, !tbaa !491
  %360 = mul i64 %359, 100
  %361 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %362 = load i64, ptr %361, align 8, !tbaa !108
  %363 = udiv i64 %360, %362
  %364 = icmp ult i64 %363, 75
  %365 = icmp slt i32 %346, 7
  %366 = or i1 %365, %364
  %367 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8
  %368 = icmp eq i32 %367, 99999999
  %369 = select i1 %366, i1 true, i1 %368, !prof !496
  %370 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %369, i1 true, i1 %371, !prof !497
  br i1 %372, label %375, label %373, !prof !497

373:                                              ; preds = %358
  %374 = sdiv i32 %367, 2
  store i32 %374, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  br label %375

375:                                              ; preds = %373, %358
  %376 = load i32, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !118
  %377 = icmp sgt i32 %376, 3
  br i1 %377, label %378, label %380, !prof !498

378:                                              ; preds = %375
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  %379 = add nsw i32 %376, -1
  store i32 %379, ptr @_ZZ11search_rootP7state_tiiiE7changes, align 4, !tbaa !118
  br label %384

380:                                              ; preds = %375
  %381 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %384, label %383, !prof !499

383:                                              ; preds = %380
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  br label %384

384:                                              ; preds = %380, %383, %378
  store i32 %51, ptr @_ZZ11search_rootP7state_tiiiE5bmove, align 4, !tbaa !118
  %385 = icmp eq i32 %46, 0
  %386 = load i32, ptr @is_pondering, align 4
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %385, i1 true, i1 %387, !prof !497
  %389 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %388, i1 true, i1 %390, !prof !497
  br i1 %391, label %402, label %392, !prof !497

392:                                              ; preds = %384
  %393 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %0)
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %401, label %395

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %397 = load i32, ptr %396, align 4, !tbaa !134
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %400

399:                                              ; preds = %395
  store i32 2, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !500
  br label %411

400:                                              ; preds = %395
  store i32 3, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !500
  br label %411

401:                                              ; preds = %392
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !500
  br label %411

402:                                              ; preds = %384
  %403 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 15
  %404 = load i32, ptr %403, align 4, !tbaa !131
  %405 = icmp slt i32 %404, 99
  %406 = select i1 %405, i1 true, i1 %387, !prof !497
  %407 = load i32, ptr @uci_mode, align 4
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %406, i1 true, i1 %408, !prof !497
  br i1 %409, label %411, label %410, !prof !497

410:                                              ; preds = %402
  store i32 4, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !500
  store i32 0, ptr @gamestate, align 8, !tbaa !443
  br label %411

411:                                              ; preds = %402, %410, %401, %400, %399
  %412 = load i32, ptr @gamestate, align 8, !tbaa !443
  %413 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !446
  call void @_Z7StoreTTP7state_tiiijiiii(ptr noundef %0, i32 noundef %412, i32 noundef %1, i32 noundef %2, i32 noundef %413, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %16)
  br label %414

414:                                              ; preds = %318, %411, %332
  %415 = phi i32 [ %327, %332 ], [ %51, %411 ], [ %303, %318 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %5) #11
  ret i32 %415
}

declare void @_Z11comp_to_sanP7state_tiPc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z13comp_to_coordP7state_tiPc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #2

declare void @_Z16post_fh_thinkingP7state_tiiPci(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z16post_fl_thinkingP7state_tiiPci(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z13post_thinkingP7state_tiiPci(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z21post_multipv_thinkingP7state_tiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z9rdifftimeii(i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z5rtimev() local_unnamed_addr #2

declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_Z24extract_current_bestlineP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @_Z21reset_search_countersP7state_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 !prof !441 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 22
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 14
  store i32 0, ptr %3, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  br label %6

4:                                                ; preds = %6
  %5 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !128
  ret void

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 0, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.scoreboard_t, ptr @scoreboard, i64 0, i32 4, i64 %7, i32 22
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br i1 %10, label %4, label %6, !llvm.loop !501
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z17reset_search_dataP7state_t(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 !prof !502 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24576) @history_h, i8 0, i64 24576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24576) @history_hit, i8 0, i64 24576, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24576) @history_tot, i8 0, i64 24576, i1 false)
  %2 = getelementptr i8, ptr %0, i64 3056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !118
  store i64 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 18), align 8, !tbaa !491
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 20), align 4, !tbaa !446
  %3 = load i32, ptr @uci_limitstrength, align 4, !tbaa !118
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5, !prof !503

5:                                                ; preds = %1
  %6 = load i32, ptr @uci_elo, align 4, !tbaa !118
  %7 = tail call noundef i32 @_Z12elo_to_depthi(i32 noundef %6)
  %8 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8, !tbaa !118
  %9 = tail call i32 @llvm.smin.i32(i32 %7, i32 %8)
  store i32 %9, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8, !tbaa !504
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare noundef i32 @_Z12elo_to_depthi(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z5thinkP11gamestate_tP7state_t(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #5 !prof !502 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [240 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %5) #11
  tail call void @_Z11clear_dp_ttv()
  tail call void @_Z17reset_search_dataP7state_t(ptr noundef %1)
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 22
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  store i32 0, ptr %7, align 8, !tbaa !115
  %8 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  br label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ 0, %2 ], [ %12, %9 ]
  %11 = getelementptr inbounds %struct.scoreboard_t, ptr @scoreboard, i64 0, i32 4, i64 %10, i32 22
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp eq i64 %12, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %13, label %14, label %9, !prof !505, !llvm.loop !501

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 26
  %16 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 28
  %17 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !128
  %18 = tail call noundef i32 @_Z5rtimev()
  store i32 %18, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !123
  store i32 1, ptr %7, align 8, !tbaa !115
  %19 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %20 = load i64, ptr %19, align 8, !tbaa !206
  %21 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 15), align 4, !tbaa !207
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %22
  store i64 %20, ptr %23, align 8, !tbaa !208
  %24 = tail call noundef i32 @_Z8in_checkP7state_t(ptr noundef %1)
  %25 = load i32, ptr %7, align 8, !tbaa !115
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 25, i64 %26
  store i32 %24, ptr %27, align 4, !tbaa !118
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %31, label %29, !prof !503

29:                                               ; preds = %14
  %30 = call noundef i32 @_Z12gen_evasionsP7state_tPii(ptr noundef %1, ptr noundef nonnull %5, i32 noundef %24)
  br label %33

31:                                               ; preds = %14
  %32 = call noundef i32 @_Z3genP7state_tPi(ptr noundef %1, ptr noundef nonnull %5)
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %54, !prof !506

36:                                               ; preds = %33
  %37 = zext nneg i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ 0, %36 ], [ %52, %38 ]
  %40 = phi i32 [ 0, %36 ], [ %50, %38 ]
  %41 = phi i32 [ 0, %36 ], [ %48, %38 ]
  %42 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %39
  %43 = load i32, ptr %42, align 4, !tbaa !118
  call void @_Z4makeP7state_ti(ptr noundef %1, i32 noundef %43)
  %44 = load i32, ptr %42, align 4, !tbaa !118
  %45 = call noundef i32 @_Z11check_legalP7state_ti(ptr noundef %1, i32 noundef %44)
  %46 = icmp ne i32 %45, 0
  %47 = trunc i64 %39 to i32
  %48 = select i1 %46, i32 %47, i32 %41, !prof !507
  %49 = zext i1 %46 to i32
  %50 = add nuw nsw i32 %40, %49
  %51 = load i32, ptr %42, align 4, !tbaa !118
  call void @_Z6unmakeP7state_ti(ptr noundef %1, i32 noundef %51)
  %52 = add nuw nsw i64 %39, 1
  %53 = icmp eq i64 %52, %37
  br i1 %53, label %54, label %38, !prof !508, !llvm.loop !509

54:                                               ; preds = %38, %33
  %55 = phi i32 [ 0, %33 ], [ %48, %38 ]
  %56 = phi i32 [ 0, %33 ], [ %50, %38 ]
  %57 = load i32, ptr @is_pondering, align 4, !tbaa !118
  %58 = icmp eq i32 %57, 0
  %59 = icmp eq i32 %56, 1
  %60 = select i1 %58, i1 %59, i1 false, !prof !503
  br i1 %60, label %61, label %73, !prof !510

61:                                               ; preds = %54
  %62 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = sext i32 %55 to i64
  %66 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !118
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %1, i32 noundef %67, ptr noundef nonnull %3)
  %68 = load i32, ptr @_ZZ5thinkP11gamestate_tP7state_tE15lastsearchscore, align 4, !tbaa !118
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.1, i32 noundef %68)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull %3)
  br label %69

69:                                               ; preds = %64, %61
  %70 = sext i32 %55 to i64
  %71 = getelementptr inbounds [240 x i32], ptr %5, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !118
  br label %368

73:                                               ; preds = %54
  call void @_Z11check_phaseP11gamestate_tP7state_t(ptr noundef nonnull @gamestate, ptr noundef %1)
  %74 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83, !prof !503

76:                                               ; preds = %73
  %77 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 1), align 4, !tbaa !245
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = zext nneg i32 %77 to i64
  %81 = shl i64 %80, 2
  %82 = call ptr @llvm.load.relative.i64(ptr @reltable._Z5thinkP11gamestate_tP7state_t, i64 %81)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull %82)
  br label %83

83:                                               ; preds = %76, %79, %73
  %84 = load i32, ptr @is_pondering, align 4, !tbaa !118
  %85 = icmp ne i32 %84, 0
  %86 = load i32, ptr @is_analyzing, align 4
  %87 = icmp ne i32 %86, 0
  %88 = select i1 %85, i1 true, i1 %87, !prof !510
  br i1 %88, label %94, label %89, !prof !510

89:                                               ; preds = %83
  %90 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4, !tbaa !511
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94, !prof !510

92:                                               ; preds = %89
  %93 = call noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef nonnull @gamestate, i32 noundef 1)
  br label %94

94:                                               ; preds = %83, %89, %92
  %95 = phi i32 [ %93, %92 ], [ %90, %89 ], [ 99999999, %83 ]
  store i32 %95, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %96 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99, !prof !503

98:                                               ; preds = %94
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.6, i32 noundef %95)
  br label %107

99:                                               ; preds = %94
  %100 = icmp eq i32 %95, 99999999
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = sdiv i32 %95, 100
  %103 = sitofp i32 %95 to double
  %104 = fdiv double %103, 2.500000e+00
  %105 = fdiv double %104, 1.000000e+02
  %106 = fptosi double %105 to i32
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.7, i32 noundef %102, i32 noundef %106)
  br label %107

107:                                              ; preds = %99, %101, %98
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4, !tbaa !485
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8, !tbaa !129
  store i32 0, ptr @gamestate, align 8, !tbaa !443
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %108 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8, !tbaa !118
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %290, label %110, !prof !512

110:                                              ; preds = %107, %276
  %111 = phi i32 [ %279, %276 ], [ 0, %107 ]
  %112 = phi i32 [ %278, %276 ], [ 0, %107 ]
  %113 = phi i32 [ %277, %276 ], [ 0, %107 ]
  %114 = phi i32 [ %281, %276 ], [ 1, %107 ]
  %115 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117, !prof !513

117:                                              ; preds = %110
  %118 = load i32, ptr %16, align 4, !tbaa !514
  %119 = lshr i32 %118, 1
  store i32 %119, ptr %16, align 4, !tbaa !514
  %120 = load i32, ptr %17, align 8, !tbaa !515
  %121 = lshr i32 %120, 1
  store i32 %121, ptr %17, align 8, !tbaa !515
  br label %122

122:                                              ; preds = %117, %110
  %123 = load i32, ptr %8, align 8, !tbaa !116
  %124 = icmp sgt i32 %114, %123
  br i1 %124, label %125, label %126, !prof !516

125:                                              ; preds = %122
  store i32 %114, ptr %8, align 8, !tbaa !116
  br label %126

126:                                              ; preds = %125, %122
  %127 = call noundef i32 @_Z5rtimev()
  %128 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 19), align 8, !tbaa !123
  %129 = call noundef i32 @_Z9rdifftimeii(i32 noundef %127, i32 noundef %128)
  %130 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  %131 = icmp ne i32 %130, 0
  %132 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 23), align 8
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %131, i1 true, i1 %133, !prof !517
  br i1 %134, label %153, label %135, !prof !518

135:                                              ; preds = %126
  %136 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 24), align 4, !tbaa !128
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %150, !prof !519

138:                                              ; preds = %135
  %139 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 13), align 4, !tbaa !511
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %153, !prof !520

141:                                              ; preds = %138
  %142 = sitofp i32 %129 to double
  %143 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %144 = sitofp i32 %143 to double
  %145 = fdiv double %144, 2.500000e+00
  %146 = fcmp olt double %145, %142
  %147 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %148 = icmp sgt i32 %147, 2
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %285, label %153

150:                                              ; preds = %135
  %151 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %152 = icmp sgt i32 %151, 2
  br i1 %152, label %285, label %153

153:                                              ; preds = %150, %141, %138, %126
  %154 = add nsw i32 %112, -30
  %155 = add nsw i32 %112, 30
  %156 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %157 = shl nsw i32 %156, 2
  %158 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef %1, i32 noundef %154, i32 noundef %155, i32 noundef %157)
  %159 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !500
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %285, !prof !513

161:                                              ; preds = %153
  %162 = load i32, ptr @gamestate, align 8, !tbaa !443
  %163 = icmp sle i32 %162, %154
  %164 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 %165, i1 false, !prof !521
  %167 = zext i1 %166 to i32
  store i32 %167, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  %168 = icmp sgt i32 %162, %154
  %169 = icmp ne i32 %164, 0
  %170 = select i1 %168, i1 true, i1 %169, !prof !522
  br i1 %170, label %189, label %171, !prof !522

171:                                              ; preds = %161
  %172 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %173 = shl nsw i32 %172, 2
  %174 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef %1, i32 noundef -1000000, i32 noundef %155, i32 noundef %173)
  %175 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178, !prof !523

177:                                              ; preds = %171
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  br label %178

178:                                              ; preds = %177, %171
  %179 = load i32, ptr @gamestate, align 8, !tbaa !443
  %180 = icmp slt i32 %179, %155
  %181 = icmp ne i32 %175, 0
  %182 = or i1 %181, %180
  br i1 %182, label %211, label %183, !prof !523

183:                                              ; preds = %178
  %184 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %185 = shl nsw i32 %184, 2
  %186 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef %1, i32 noundef -1000000, i32 noundef 1000000, i32 noundef %185)
  %187 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %207, label %211

189:                                              ; preds = %161
  %190 = icmp slt i32 %162, %155
  %191 = select i1 %190, i1 true, i1 %169, !prof !524
  br i1 %191, label %211, label %192, !prof !524

192:                                              ; preds = %189
  %193 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %194 = shl nsw i32 %193, 2
  %195 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef %1, i32 noundef %154, i32 noundef 1000000, i32 noundef %194)
  %196 = load i32, ptr @gamestate, align 8, !tbaa !443
  %197 = icmp sgt i32 %196, %154
  %198 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %199 = icmp ne i32 %198, 0
  %200 = select i1 %197, i1 true, i1 %199, !prof !525
  br i1 %200, label %211, label %201, !prof !525

201:                                              ; preds = %192
  store i32 1, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  %202 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %203 = shl nsw i32 %202, 2
  %204 = call noundef i32 @_Z11search_rootP7state_tiii(ptr noundef %1, i32 noundef -1000000, i32 noundef 1000000, i32 noundef %203)
  %205 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211, !prof !526

207:                                              ; preds = %201, %183
  %208 = phi i32 [ %113, %183 ], [ %158, %201 ]
  %209 = phi i32 [ %186, %183 ], [ %204, %201 ]
  %210 = phi i32 [ %112, %183 ], [ %162, %201 ]
  store i32 0, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4, !tbaa !126
  br label %211

211:                                              ; preds = %207, %189, %201, %192, %178, %183
  %212 = phi i32 [ %113, %189 ], [ %158, %192 ], [ %158, %201 ], [ %113, %178 ], [ %113, %183 ], [ %208, %207 ]
  %213 = phi i32 [ %158, %189 ], [ %195, %192 ], [ %204, %201 ], [ %174, %178 ], [ %186, %183 ], [ %209, %207 ]
  %214 = phi i32 [ %112, %189 ], [ %162, %192 ], [ %162, %201 ], [ %112, %178 ], [ %112, %183 ], [ %210, %207 ]
  %215 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223, !prof !513

217:                                              ; preds = %211
  %218 = call noundef i32 @_Z9interruptv()
  %219 = icmp ne i32 %218, 0
  %220 = load i32, ptr @is_pondering, align 4
  %221 = icmp ne i32 %220, 0
  %222 = select i1 %219, i1 %221, i1 false, !prof !527
  br i1 %222, label %285, label %223, !prof !527

223:                                              ; preds = %217, %211
  %224 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 26), align 4, !tbaa !485
  %225 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 22), align 4
  %226 = icmp eq i32 %225, 0
  %227 = or i32 %224, %213
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, i1 %226, i1 false, !prof !527
  br i1 %229, label %230, label %233, !prof !527

230:                                              ; preds = %223
  %231 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %232 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !500
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.8, i32 noundef %224, i32 noundef %225, i32 noundef %231, i32 noundef %232)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.9)
  br label %368

233:                                              ; preds = %223
  %234 = icmp eq i32 %224, 0
  br i1 %234, label %235, label %270, !prof !513

235:                                              ; preds = %233
  %236 = load i32, ptr @uci_mode, align 4
  %237 = icmp eq i32 %236, 0
  %238 = load i32, ptr @gamestate, align 8
  %239 = icmp eq i32 %238, -32000
  %240 = select i1 %237, i1 %239, i1 false, !prof !513
  br i1 %240, label %368, label %241, !prof !527

241:                                              ; preds = %235
  %242 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %243 = icmp eq i32 %242, 0
  %244 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4
  %245 = select i1 %243, i32 %244, i32 %111, !prof !513
  %246 = or i32 %242, %236
  %247 = icmp eq i32 %246, 0
  %248 = load i32, ptr @uci_multipv, align 4
  %249 = icmp eq i32 %248, 1
  %250 = select i1 %247, i1 %249, i1 false, !prof !513
  br i1 %250, label %251, label %252, !prof !513

251:                                              ; preds = %241
  call void @_Z13post_thinkingP7state_tiiPci(ptr noundef %1, i32 noundef %238, i32 noundef %213, ptr noundef null, i32 noundef 0)
  br label %252

252:                                              ; preds = %251, %241
  %253 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %254 = icmp sgt i32 %253, 2
  %255 = icmp sgt i32 %238, 31500
  %256 = select i1 %254, i1 %255, i1 false, !prof !528
  br i1 %256, label %257, label %270, !prof !527

257:                                              ; preds = %252
  %258 = load i32, ptr @gamestate, align 8, !tbaa !443
  %259 = sub nsw i32 32000, %258
  %260 = icmp slt i32 %259, %253
  br i1 %260, label %261, label %270

261:                                              ; preds = %257
  %262 = load i32, ptr @is_pondering, align 4, !tbaa !118
  %263 = icmp eq i32 %262, 0
  %264 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8
  %265 = icmp ne i32 %264, 99999999
  %266 = select i1 %263, i1 true, i1 %265
  %267 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8
  %268 = icmp ne i32 %267, 0
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %285, label %276

270:                                              ; preds = %252, %257, %233
  %271 = phi i32 [ %212, %233 ], [ %213, %257 ], [ %213, %252 ]
  %272 = phi i32 [ %214, %233 ], [ %238, %257 ], [ %238, %252 ]
  %273 = phi i32 [ %111, %233 ], [ %245, %257 ], [ %245, %252 ]
  %274 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 25), align 8, !tbaa !121
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %285, !prof !513

276:                                              ; preds = %261, %270
  %277 = phi i32 [ %271, %270 ], [ %213, %261 ]
  %278 = phi i32 [ %272, %270 ], [ %238, %261 ]
  %279 = phi i32 [ %273, %270 ], [ %245, %261 ]
  %280 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %281 = add nsw i32 %280, 1
  store i32 %281, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %282 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 14), align 8, !tbaa !118
  %283 = call i32 @llvm.smin.i32(i32 %282, i32 40)
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %110, label %285, !prof !529, !llvm.loop !530

285:                                              ; preds = %261, %150, %141, %217, %270, %153, %276
  %286 = phi i32 [ %277, %276 ], [ %113, %153 ], [ %271, %270 ], [ %212, %217 ], [ %113, %141 ], [ %113, %150 ], [ %213, %261 ]
  %287 = phi i32 [ %278, %276 ], [ %112, %153 ], [ %272, %270 ], [ %214, %217 ], [ %112, %141 ], [ %112, %150 ], [ %238, %261 ]
  %288 = phi i32 [ %279, %276 ], [ %111, %153 ], [ %273, %270 ], [ %111, %217 ], [ %111, %141 ], [ %111, %150 ], [ %245, %261 ]
  %289 = icmp sgt i32 %288, 4
  br label %290

290:                                              ; preds = %285, %107
  %291 = phi i32 [ 0, %107 ], [ %286, %285 ]
  %292 = phi i32 [ undef, %107 ], [ %129, %285 ]
  %293 = phi i32 [ 0, %107 ], [ %287, %285 ]
  %294 = phi i1 [ false, %107 ], [ %289, %285 ]
  %295 = icmp eq i32 %291, 0
  br i1 %295, label %296, label %297, !prof !510

296:                                              ; preds = %290
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.9)
  br label %368

297:                                              ; preds = %290
  %298 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 5), align 4, !tbaa !139
  %299 = icmp slt i32 %298, 32
  %300 = load i32, ptr @is_pondering, align 4
  %301 = icmp eq i32 %300, 0
  %302 = select i1 %299, i1 true, i1 %301, !prof !503
  %303 = load i32, ptr @uci_mode, align 4
  %304 = icmp eq i32 %303, 0
  %305 = select i1 %302, i1 true, i1 %304, !prof !503
  %306 = load i32, ptr @buffered_count, align 4
  %307 = icmp ne i32 %306, 0
  %308 = select i1 %305, i1 true, i1 %307, !prof !503
  br i1 %308, label %318, label %309, !prof !503

309:                                              ; preds = %297
  %310 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8, !tbaa !124
  %311 = icmp eq i32 %310, 99999999
  br i1 %311, label %312, label %318

312:                                              ; preds = %309, %312
  %313 = call noundef i32 @_Z9interruptv()
  %314 = icmp eq i32 %313, 0
  %315 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 12), align 8
  %316 = icmp eq i32 %315, 99999999
  %317 = select i1 %314, i1 %316, i1 false
  br i1 %317, label %312, label %318, !llvm.loop !531

318:                                              ; preds = %312, %309, %297
  %319 = load i32, ptr @uci_mode, align 4, !tbaa !118
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %326, label %321, !prof !503

321:                                              ; preds = %318
  call void @_Z4makeP7state_ti(ptr noundef %1, i32 noundef %291)
  %322 = call noundef i32 @_Z19extract_ponder_moveP7state_t(ptr noundef %1)
  call void @_Z6unmakeP7state_ti(ptr noundef %1, i32 noundef %291)
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %1, i32 noundef %291, ptr noundef nonnull %3)
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %321
  call void @_Z13comp_to_coordP7state_tiPc(ptr noundef %1, i32 noundef %322, ptr noundef nonnull %4)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %326

325:                                              ; preds = %321
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull %3)
  br label %326

326:                                              ; preds = %324, %325, %318
  %327 = icmp ne i32 %293, 31998
  %328 = load i32, ptr @is_pondering, align 4
  %329 = icmp ne i32 %328, 0
  %330 = select i1 %327, i1 true, i1 %329, !prof !503
  br i1 %330, label %336, label %331, !prof !503

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  %333 = load i32, ptr %332, align 4, !tbaa !134
  %334 = icmp eq i32 %333, 0
  %335 = select i1 %334, i32 2, i32 3
  store i32 %335, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8, !tbaa !500
  br label %336

336:                                              ; preds = %331, %326
  %337 = icmp sgt i32 %292, 20
  br i1 %337, label %338, label %349, !prof !510

338:                                              ; preds = %336
  %339 = load i64, ptr %6, align 8, !tbaa !108
  %340 = uitofp i64 %339 to float
  %341 = sitofp i32 %292 to float
  %342 = fdiv float %341, 1.000000e+02
  %343 = fdiv float %340, %342
  %344 = fdiv float %343, 2.000000e+01
  %345 = fptosi float %344 to i32
  %346 = call noundef i32 @_Z4logLi(i32 noundef %345)
  %347 = call i32 @llvm.smax.i32(i32 %346, i32 8)
  %348 = call i32 @llvm.umin.i32(i32 %347, i32 17)
  store i32 %348, ptr @time_check_log, align 4
  br label %349

349:                                              ; preds = %338, %336
  %350 = call noundef i32 @_Z8in_checkP7state_t(ptr noundef %1)
  %351 = icmp eq i32 %350, 0
  %352 = load i32, ptr @is_pondering, align 4
  %353 = icmp eq i32 %352, 0
  %354 = select i1 %351, i1 %353, i1 false, !prof !503
  %355 = load i32, ptr getelementptr inbounds (%struct.gamestate_t, ptr @gamestate, i64 0, i32 4), align 8
  %356 = icmp ne i32 %355, 2
  %357 = select i1 %354, i1 %356, i1 false, !prof !503
  %358 = icmp ne i32 %355, 3
  %359 = select i1 %357, i1 %358, i1 false, !prof !503
  %360 = icmp ne i32 %355, 1
  %361 = select i1 %359, i1 %360, i1 false, !prof !503
  %362 = icmp ne i32 %355, 4
  %363 = select i1 %361, i1 %362, i1 false, !prof !503
  %364 = icmp ne i32 %355, 5
  %365 = select i1 %363, i1 %364, i1 false, !prof !503
  %366 = select i1 %365, i1 %294, i1 false, !prof !503
  br i1 %366, label %367, label %368, !prof !503

367:                                              ; preds = %349
  store i32 %293, ptr @_ZZ5thinkP11gamestate_tP7state_tE15lastsearchscore, align 4, !tbaa !118
  br label %368

368:                                              ; preds = %235, %349, %367, %296, %230, %69
  %369 = phi i32 [ %72, %69 ], [ 0, %296 ], [ 0, %230 ], [ %291, %367 ], [ %291, %349 ], [ 0, %235 ]
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #11
  ret i32 %369
}

declare void @_Z11clear_dp_ttv() local_unnamed_addr #2

declare void @_Z11check_phaseP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z13allocate_timeP11gamestate_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z9interruptv() local_unnamed_addr #2

declare noundef i32 @_Z19extract_ponder_moveP7state_t(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z4logLi(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z14elo_to_blunderi(i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z8myrandomv() local_unnamed_addr #2

declare noundef i32 @_Z12taxicab_distii(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!106}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 128361366639}
!8 = !{!"MaxCount", i64 7592818589}
!9 = !{!"MaxInternalCount", i64 5393808666}
!10 = !{!"MaxFunctionCount", i64 7592818589}
!11 = !{!"NumCounts", i64 1723}
!12 = !{!"NumFunctions", i64 109}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7592818589, i32 1}
!18 = !{i32 100000, i64 5393808666, i32 2}
!19 = !{i32 200000, i64 2869551984, i32 6}
!20 = !{i32 300000, i64 1728514292, i32 11}
!21 = !{i32 400000, i64 824050972, i32 24}
!22 = !{i32 500000, i64 588473769, i32 42}
!23 = !{i32 600000, i64 446369574, i32 68}
!24 = !{i32 700000, i64 286932458, i32 105}
!25 = !{i32 800000, i64 196614852, i32 160}
!26 = !{i32 900000, i64 107044397, i32 249}
!27 = !{i32 950000, i64 60101921, i32 326}
!28 = !{i32 990000, i64 15736932, i32 482}
!29 = !{i32 999000, i64 2025695, i32 659}
!30 = !{i32 999900, i64 318185, i32 779}
!31 = !{i32 999990, i64 50049, i32 848}
!32 = !{i32 999999, i64 3896, i32 923}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!35 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z9interruptv, i64 18857}
!36 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z5rtimev, i64 18857}
!37 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z9rdifftimeii, i64 18857}
!38 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7is_drawP11gamestate_tP7state_t, i64 309018805}
!39 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 308515751}
!40 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z4evalP7state_tiii, i64 186956977}
!41 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z13retrieve_evalP7state_t, i64 265120126}
!42 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7StoreTTP7state_tiiijiiii, i64 264954662}
!43 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z12gen_evasionsP7state_tPii, i64 25337373}
!44 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z12gen_capturesP7state_tPi, i64 164929022}
!45 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z15gen_good_checksP7state_tPi, i64 57578690}
!46 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z9gen_quietP7state_tPi, i64 7394807}
!47 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z12compact_movei, i64 1191040857}
!48 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z3seeP7state_tiiii, i64 198031441}
!49 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z4makeP7state_ti, i64 310413472}
!50 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z11check_legalP7state_ti, i64 310413472}
!51 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z8in_checkP7state_t, i64 186956187}
!52 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z7qsearchP7state_tiiii, i64 168481312}
!53 = !{ptr @_Z7qsearchP7state_tiiii, ptr @_Z6unmakeP7state_ti, i64 310413472}
!54 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7qsearchP7state_tiiii, i64 152590535}
!55 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z9interruptv, i64 12096}
!56 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z5rtimev, i64 12096}
!57 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z9rdifftimeii, i64 12096}
!58 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7is_drawP11gamestate_tP7state_t, i64 198224450}
!59 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 198047847}
!60 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z13retrieve_evalP7state_t, i64 171789668}
!61 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z7StoreTTP7state_tiiijiiii, i64 140448977}
!62 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z6searchP7state_tiiiii, i64 251234031}
!63 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z12gen_evasionsP7state_tPii, i64 19349472}
!64 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z3genP7state_tPi, i64 49724834}
!65 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z4makeP7state_ti, i64 751661665}
!66 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z11check_legalP7state_ti, i64 751661665}
!67 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z6unmakeP7state_ti, i64 751661665}
!68 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z12compact_movei, i64 2144891899}
!69 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z3seeP7state_tiiii, i64 331916354}
!70 = !{ptr @_Z6searchP7state_tiiiii, ptr @_ZL11order_movesP7state_tPiS1_ij, i64 3590}
!71 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z8in_checkP7state_t, i64 587818183}
!72 = !{ptr @_Z6searchP7state_tiiiii, ptr @_Z4evalP7state_tiii, i64 287907631}
!73 = !{ptr @_ZL11order_movesP7state_tPiS1_ij, ptr @_Z12compact_movei, i64 115646}
!74 = !{ptr @_ZL11order_movesP7state_tPiS1_ij, ptr @_Z3seeP7state_tiiii, i64 11119}
!75 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z7ProbeTTP7state_tPiiiPjS1_S1_S1_S1_i, i64 244}
!76 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z8in_checkP7state_t, i64 9808}
!77 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z3genP7state_tPi, i64 244}
!78 = !{ptr @_Z11search_rootP7state_tiii, ptr @_ZL11order_movesP7state_tPiS1_ij, i64 244}
!79 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z4evalP7state_tiii, i64 9808}
!80 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z4makeP7state_ti, i64 19219}
!81 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z11check_legalP7state_ti, i64 9655}
!82 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z6unmakeP7state_ti, i64 19219}
!83 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z11comp_to_sanP7state_tiPc, i64 9564}
!84 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z4ranki, i64 1465}
!85 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z6searchP7state_tiiiii, i64 9697}
!86 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z16post_fh_thinkingP7state_tiiPci, i64 34}
!87 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z16post_fl_thinkingP7state_tiiPci, i64 41}
!88 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z13post_thinkingP7state_tiiPci, i64 278}
!89 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z12compact_movei, i64 325}
!90 = !{ptr @_Z11search_rootP7state_tiii, ptr @_ZL12history_goodP7state_tii, i64 282}
!91 = !{ptr @_Z11search_rootP7state_tiii, ptr @_Z7StoreTTP7state_tiiijiiii, i64 244}
!92 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11clear_dp_ttv, i64 12}
!93 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z17reset_search_dataP7state_t, i64 12}
!94 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z5rtimev, i64 206}
!95 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z8in_checkP7state_t, i64 24}
!96 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z3genP7state_tPi, i64 12}
!97 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z4makeP7state_ti, i64 544}
!98 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11check_legalP7state_ti, i64 544}
!99 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z6unmakeP7state_ti, i64 544}
!100 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11check_phaseP11gamestate_tP7state_t, i64 12}
!101 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z8myprintfPKcz, i64 18}
!102 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z9rdifftimeii, i64 194}
!103 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z11search_rootP7state_tiii, i64 244}
!104 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z9interruptv, i64 194}
!105 = !{ptr @_Z5thinkP11gamestate_tP7state_t, ptr @_Z13post_thinkingP7state_tiiPci, i64 194}
!106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!107 = !{!"function_entry_count", i64 309018805}
!108 = !{!109, !113, i64 4080}
!109 = !{!"_ZTS7state_t", !110, i64 0, !111, i64 4, !113, i64 264, !113, i64 272, !113, i64 280, !111, i64 288, !110, i64 392, !110, i64 396, !111, i64 400, !110, i64 452, !110, i64 456, !110, i64 460, !110, i64 464, !110, i64 468, !110, i64 472, !110, i64 476, !113, i64 480, !113, i64 488, !111, i64 496, !111, i64 2544, !111, i64 2800, !111, i64 3056, !113, i64 4080, !113, i64 4088, !110, i64 4096, !111, i64 4100, !110, i64 4356, !110, i64 4360, !110, i64 4364, !110, i64 4368, !110, i64 4372, !110, i64 4376, !110, i64 4380, !110, i64 4384, !110, i64 4388, !110, i64 4392, !111, i64 4400}
!110 = !{!"int", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C++ TBAA"}
!113 = !{!"long long", !111, i64 0}
!114 = !{!109, !113, i64 4088}
!115 = !{!109, !110, i64 472}
!116 = !{!109, !110, i64 4096}
!117 = !{!"branch_weights", i32 535, i32 309018270}
!118 = !{!110, !110, i64 0}
!119 = !{!"branch_weights", i32 30953, i32 507212302}
!120 = !{!"branch_weights", i32 30953, i32 0}
!121 = !{!122, !110, i64 36096}
!122 = !{!"_ZTS11gamestate_t", !110, i64 0, !110, i64 4, !110, i64 8, !110, i64 12, !110, i64 16, !110, i64 20, !110, i64 24, !110, i64 28, !110, i64 32, !110, i64 36, !110, i64 40, !110, i64 44, !110, i64 48, !110, i64 52, !110, i64 56, !110, i64 60, !111, i64 64, !111, i64 4064, !113, i64 36064, !110, i64 36072, !110, i64 36076, !110, i64 36080, !110, i64 36084, !110, i64 36088, !110, i64 36092, !110, i64 36096, !110, i64 36100}
!123 = !{!122, !110, i64 36072}
!124 = !{!122, !110, i64 48}
!125 = !{!"branch_weights", i32 0, i32 30953}
!126 = !{!122, !110, i64 36084}
!127 = !{!122, !110, i64 40}
!128 = !{!122, !110, i64 36092}
!129 = !{!122, !110, i64 36088}
!130 = !{!"branch_weights", i32 308515751, i32 503054}
!131 = !{!109, !110, i64 476}
!132 = !{!"branch_weights", i32 0, i32 308515751}
!133 = !{!122, !110, i64 12}
!134 = !{!109, !110, i64 460}
!135 = !{!"branch_weights", i32 258718, i32 244336}
!136 = !{!"branch_weights", i32 20633230, i32 85029, i32 31730856, i32 39194241, i32 216872395}
!137 = !{!"branch_weights", i32 15634199, i32 16096657}
!138 = !{!"branch_weights", i32 11981092, i32 27213149}
!139 = !{!122, !110, i64 20}
!140 = !{!"branch_weights", i32 790, i32 265120126}
!141 = !{!"branch_weights", i32 0, i32 265120126}
!142 = !{!"branch_weights", i32 25337373, i32 239782753}
!143 = !{!"branch_weights", i32 182896303, i32 56886450}
!144 = !{!"branch_weights", i32 203309, i32 182692994}
!145 = !{!"branch_weights", i32 167164856, i32 15528138}
!146 = !{!"branch_weights", i32 77165583, i32 89999273}
!147 = !{!"branch_weights", i32 20516615, i32 69482658}
!148 = !{!"branch_weights", i32 575766, i32 19940849}
!149 = !{!"branch_weights", i32 127047, i32 448719}
!150 = !{!"branch_weights", i32 88360, i32 38687}
!151 = !{!"branch_weights", i32 62407, i32 25953}
!152 = !{!"branch_weights", i32 418968, i32 68438}
!153 = !{!"branch_weights", i32 18112867, i32 1827982}
!154 = !{!"branch_weights", i32 12409277, i32 64756306}
!155 = !{!"branch_weights", i32 649210, i32 11760067}
!156 = !{!"branch_weights", i32 15908, i32 633302}
!157 = !{!"branch_weights", i32 5120, i32 10788}
!158 = !{!"branch_weights", i32 3954, i32 1166}
!159 = !{!"branch_weights", i32 574183, i32 69907}
!160 = !{!"branch_weights", i32 11314370, i32 445697}
!161 = !{!"branch_weights", i32 164725713, i32 2439143}
!162 = !{!"branch_weights", i32 25337373, i32 164929022}
!163 = !{!"branch_weights", i32 109796897, i32 80469498}
!164 = !{!"branch_weights", i32 20835912, i32 88960985}
!165 = !{!"branch_weights", i32 4501461, i32 75968037}
!166 = !{!"branch_weights", i32 57578690, i32 197661202}
!167 = !{!"branch_weights", i32 7394807, i32 190266395}
!168 = !{!"branch_weights", i32 255239891, i32 1}
!169 = !{!"branch_weights", i32 14127485, i32 1099744188}
!170 = !{!"branch_weights", i32 511270419, i32 588473769}
!171 = !{!"branch_weights", i32 509041019, i32 2229400}
!172 = !{!173, !110, i64 0}
!173 = !{!"_ZTSN7state_tUt_E", !110, i64 0, !110, i64 4, !110, i64 8, !110, i64 12}
!174 = !{!"branch_weights", i32 10072881, i32 498968138}
!175 = !{!173, !110, i64 4}
!176 = !{!"branch_weights", i32 7712347, i32 491255791}
!177 = !{!173, !110, i64 8}
!178 = !{!"branch_weights", i32 6575045, i32 484680746}
!179 = !{!173, !110, i64 12}
!180 = !{!"branch_weights", i32 5847851, i32 478832895}
!181 = !{!109, !110, i64 0}
!182 = !{!"branch_weights", i32 255239891, i32 858631782}
!183 = distinct !{!183, !184, !185}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !{!"llvm.loop.unroll.disable"}
!186 = !{!"branch_weights", i32 621104285, i32 201476448}
!187 = !{!"branch_weights", i32 621104284, i32 1}
!188 = !{!"branch_weights", i32 1102093035, i32 -1281559605}
!189 = !{!"branch_weights", i32 -800570854, i32 621104284}
!190 = distinct !{!190, !184, !185}
!191 = !{!"branch_weights", i32 188106338, i32 13370110}
!192 = !{!"branch_weights", i32 520231747, i32 114242648}
!193 = !{!"branch_weights", i32 168290680, i32 540047405}
!194 = !{!"branch_weights", i32 252223947, i32 287823458}
!195 = !{!"branch_weights", i32 63953112, i32 188270835}
!196 = !{!"branch_weights", i32 287823458, i32 188270835}
!197 = !{!"branch_weights", i32 270344883, i32 17478575}
!198 = !{!"branch_weights", i32 7479503, i32 9999072}
!199 = distinct !{!199, !184, !185}
!200 = !{!"branch_weights", i32 233491414, i32 235123376}
!201 = !{!"branch_weights", i32 203725878, i32 29765536}
!202 = !{!"branch_weights", i32 76618077, i32 188270835}
!203 = !{!"branch_weights", i32 121413364, i32 66857471}
!204 = !{!"branch_weights", i32 122766119, i32 75265322}
!205 = !{!"branch_weights", i32 186956187, i32 123457286}
!206 = !{!109, !113, i64 480}
!207 = !{!122, !110, i64 60}
!208 = !{!113, !113, i64 0}
!209 = !{!"branch_weights", i32 21475323, i32 165480864}
!210 = !{!"branch_weights", i32 18474875, i32 168481312}
!211 = !{!"branch_weights", i32 3000448, i32 165480864}
!212 = !{!"branch_weights", i32 310413473, i32 0}
!213 = !{!"branch_weights", i32 77169184, i32 233244289}
!214 = !{!"branch_weights", i32 125052, i32 77044132}
!215 = !{!"branch_weights", i32 57578690, i32 120617070}
!216 = !{!"branch_weights", i32 46089557, i32 74527513}
!217 = !{!"branch_weights", i32 7394807, i32 113222263}
!218 = !{!"branch_weights", i32 1164790, i32 112057473}
!219 = !{!"function_entry_count", i64 199934691}
!220 = !{!"branch_weights", i32 1710241, i32 198224450}
!221 = !{!"branch_weights", i32 0, i32 198224450}
!222 = !{!"branch_weights", i32 198054028, i32 170422}
!223 = !{!"branch_weights", i32 0, i32 198054028}
!224 = !{!"branch_weights", i32 107419, i32 63003}
!225 = !{!"branch_weights", i32 46, i32 198053982}
!226 = !{!"branch_weights", i32 46, i32 0}
!227 = !{!"branch_weights", i32 12402, i32 198041626}
!228 = !{!"branch_weights", i32 2631, i32 9771}
!229 = !{!"branch_weights", i32 0, i32 38527, i32 10482544, i32 35073390, i32 62207690, i32 90242106}
!230 = !{!"branch_weights", i32 5562166, i32 4920378}
!231 = !{!"branch_weights", i32 13777706, i32 21295684}
!232 = !{!"branch_weights", i32 21025908, i32 41181782}
!233 = !{!"branch_weights", i32 150755687, i32 21033981}
!234 = !{!"branch_weights", i32 150508628, i32 21281040}
!235 = !{!"branch_weights", i32 48978240, i32 101530388}
!236 = !{!"branch_weights", i32 41561809, i32 7416431}
!237 = !{!"branch_weights", i32 31539219, i32 10022590}
!238 = !{!"branch_weights", i32 44305861, i32 57224527}
!239 = !{!"branch_weights", i32 25743534, i32 18562327}
!240 = !{!"branch_weights", i32 108516104, i32 5755587}
!241 = !{!"branch_weights", i32 62082883, i32 46433221}
!242 = !{!"branch_weights", i32 87234928, i32 21281176}
!243 = !{!"branch_weights", i32 80922197, i32 27593907}
!244 = !{!"branch_weights", i32 71257659, i32 37258445}
!245 = !{!122, !110, i64 4}
!246 = !{!"branch_weights", i32 0, i32 71257659}
!247 = !{!109, !110, i64 456}
!248 = !{!"branch_weights", i32 57537864, i32 13719795}
!249 = !{!"branch_weights", i32 71257659, i32 0}
!250 = !{!"branch_weights", i32 32899979, i32 38357680}
!251 = !{!"branch_weights", i32 235082, i32 32664897}
!252 = !{!"branch_weights", i32 36360426, i32 6653606}
!253 = !{!"branch_weights", i32 7540316, i32 35473716}
!254 = !{!"branch_weights", i32 7540316, i32 0}
!255 = !{!"branch_weights", i32 700611, i32 6839705}
!256 = !{!"branch_weights", i32 19349472, i32 49724834}
!257 = !{!"branch_weights", i32 -1438524670, i32 9300}
!258 = !{!"branch_weights", i32 116200079, i32 3431236}
!259 = !{!"branch_weights", i32 80932496, i32 19349409}
!260 = distinct !{!260, !184, !185}
!261 = !{!"branch_weights", i32 69078139, i32 1}
!262 = !{!"branch_weights", i32 0, i32 2083620615}
!263 = !{!"branch_weights", i32 2083620615, i32 0}
!264 = !{!"branch_weights", i32 19303920, i32 2064316695}
!265 = !{!"branch_weights", i32 226520274, i32 1837796421}
!266 = !{!"branch_weights", i32 228895469, i32 1835421226}
!267 = !{!"branch_weights", i32 28556854, i32 200338615}
!268 = !{!"branch_weights", i32 104771329, i32 124124140}
!269 = !{!"branch_weights", i32 35505001, i32 1799916225}
!270 = !{!"branch_weights", i32 27202542, i32 1772713683}
!271 = !{!"branch_weights", i32 23282543, i32 1749431140}
!272 = !{!"branch_weights", i32 20916848, i32 1728514292}
!273 = !{!"branch_weights", i32 69078139, i32 2014542476}
!274 = distinct !{!274, !184, !185}
!275 = !{!"branch_weights", i32 3988210, i32 65086096}
!276 = !{!"branch_weights", i32 20675, i32 3967535}
!277 = !{!"branch_weights", i32 3590, i32 3984620}
!278 = !{!"branch_weights", i32 3589, i32 1}
!279 = !{!"branch_weights", i32 109353, i32 8942}
!280 = !{!"branch_weights", i32 0, i32 8942}
!281 = !{!"branch_weights", i32 3589, i32 114706}
!282 = distinct !{!282, !184, !185}
!283 = !{!"branch_weights", i32 3590, i32 0}
!284 = !{!"branch_weights", i32 0, i32 3590}
!285 = !{!"branch_weights", i32 49724834, i32 19349472}
!286 = !{!"branch_weights", i32 6280074, i32 62794232}
!287 = !{!"branch_weights", i32 6273571, i32 62800735}
!288 = !{!"branch_weights", i32 5279469, i32 994102}
!289 = !{!"branch_weights", i32 3451, i32 5276018}
!290 = !{!"branch_weights", i32 4867921, i32 408097}
!291 = !{!"branch_weights", i32 17150, i32 4854222}
!292 = !{!"branch_weights", i32 4422791, i32 431431}
!293 = !{!"branch_weights", i32 4439940, i32 1}
!294 = !{!"branch_weights", i32 18767830, i32 154093663}
!295 = !{!"branch_weights", i32 4439940, i32 168421553}
!296 = !{!"branch_weights", i32 0, i32 4439941}
!297 = !{!"branch_weights", i32 11544246, i32 204814}
!298 = !{!"branch_weights", i32 1998397, i32 9545849}
!299 = !{!"branch_weights", i32 11749060, i32 0}
!300 = !{!"branch_weights", i32 5183714, i32 6565346}
!301 = !{!"branch_weights", i32 1937464, i32 3246250}
!302 = !{!"branch_weights", i32 9811595, i32 1}
!303 = !{!"branch_weights", i32 38011280, i32 320949704}
!304 = !{!"branch_weights", i32 9811595, i32 349149389}
!305 = !{!"branch_weights", i32 9811596, i32 0}
!306 = !{!"branch_weights", i32 9246584, i32 2502476}
!307 = distinct !{!307, !184, !185}
!308 = !{!"branch_weights", i32 2502477, i32 1937464}
!309 = !{!"branch_weights", i32 66649456, i32 487386}
!310 = !{!"branch_weights", i32 66648955, i32 487887}
!311 = !{!"branch_weights", i32 2780782, i32 64356060}
!312 = !{!"branch_weights", i32 2628993, i32 64507849}
!313 = !{!"branch_weights", i32 1440018, i32 1188975}
!314 = !{!"branch_weights", i32 1440017, i32 1}
!315 = !{!"branch_weights", i32 3602340, i32 36026828}
!316 = !{!"branch_weights", i32 1440017, i32 38189151}
!317 = !{!"branch_weights", i32 1440018, i32 0}
!318 = !{!"branch_weights", i32 6171248, i32 50330}
!319 = !{!"branch_weights", i32 1571163, i32 3210397}
!320 = !{!"branch_weights", i32 1770379, i32 1440018}
!321 = !{!"branch_weights", i32 1306060, i32 133958}
!322 = !{!"branch_weights", i32 907453, i32 862926}
!323 = !{!"branch_weights", i32 4532692, i32 248868}
!324 = !{!"branch_weights", i32 4532691, i32 1}
!325 = !{!"branch_weights", i32 11288660, i32 85850567}
!326 = !{!"branch_weights", i32 4532691, i32 92606536}
!327 = !{!"branch_weights", i32 217036, i32 31832}
!328 = !{!"branch_weights", i32 4514194, i32 50330}
!329 = !{!"branch_weights", i32 3341543, i32 1440017}
!330 = distinct !{!330, !184, !185}
!331 = !{!"branch_weights", i32 66849317, i32 287525}
!332 = !{!"branch_weights", i32 67136841, i32 1}
!333 = !{!"branch_weights", i32 244603798, i32 1760518969}
!334 = !{!"branch_weights", i32 67136841, i32 1937985926}
!335 = !{!"branch_weights", i32 62, i32 67136780}
!336 = !{!"branch_weights", i32 682859496, i32 0}
!337 = !{!"branch_weights", i32 123797257, i32 559062239}
!338 = !{!"branch_weights", i32 122112122, i32 975305, i32 709830}
!339 = !{!"branch_weights", i32 121013944, i32 1098178}
!340 = !{!"branch_weights", i32 584429489, i32 98430007}
!341 = !{!"branch_weights", i32 46676221, i32 51753786}
!342 = !{!"branch_weights", i32 11271365, i32 40482421}
!343 = !{!"branch_weights", i32 3210553, i32 8060812}
!344 = !{!"branch_weights", i32 2604665, i32 605888}
!345 = !{!"branch_weights", i32 15697, i32 2588968}
!346 = !{!"branch_weights", i32 3530679, i32 679328817}
!347 = !{!"branch_weights", i32 53610, i32 682805886}
!348 = !{!"branch_weights", i32 50049, i32 682809447}
!349 = !{!"branch_weights", i32 3477069, i32 679332378}
!350 = !{!"branch_weights", i32 859414, i32 681950033}
!351 = !{!"branch_weights", i32 56813386, i32 584429489, i32 20328566, i32 21288055}
!352 = !{!"branch_weights", i32 25920, i32 56787466}
!353 = !{!"branch_weights", i32 -1158152811, i32 -1484978297}
!354 = !{!"branch_weights", i32 196987585, i32 125677806}
!355 = !{!"branch_weights", i32 196536290, i32 126129101}
!356 = !{!"branch_weights", i32 193425536, i32 129239855}
!357 = !{!"branch_weights", i32 24539074, i32 168886462}
!358 = !{!"branch_weights", i32 24539073, i32 1}
!359 = !{!"branch_weights", i32 90984775, i32 596822138}
!360 = !{!"branch_weights", i32 663267840, i32 24539073}
!361 = !{!"branch_weights", i32 164299867, i32 4586595}
!362 = !{!"branch_weights", i32 24484202, i32 4641467}
!363 = !{!"branch_weights", i32 857195238, i32 -2015348049}
!364 = !{!"branch_weights", i32 272946161, i32 216487799}
!365 = !{!"branch_weights", i32 112917484, i32 103570315}
!366 = !{!"branch_weights", i32 98430007, i32 391003953}
!367 = !{!"branch_weights", i32 47863532, i32 441570428}
!368 = !{!"branch_weights", i32 23312242, i32 418258186}
!369 = !{!"branch_weights", i32 192557, i32 23119685}
!370 = !{!"branch_weights", i32 396110762, i32 45459666}
!371 = !{!"branch_weights", i32 391286526, i32 50283902}
!372 = !{!"branch_weights", i32 179571216, i32 211715310}
!373 = !{!"branch_weights", i32 179400311, i32 170905}
!374 = !{!"branch_weights", i32 56157646, i32 123242665}
!375 = !{!"branch_weights", i32 56157645, i32 1}
!376 = !{!"branch_weights", i32 205528352, i32 1252752321}
!377 = !{!"branch_weights", i32 1402123028, i32 56157645}
!378 = !{!"branch_weights", i32 118137001, i32 5105664}
!379 = distinct !{!379, !184, !185}
!380 = !{!"branch_weights", i32 56156328, i32 5106982}
!381 = !{!"branch_weights", i32 52314882, i32 159571333}
!382 = !{!"branch_weights", i32 52097698, i32 217184}
!383 = !{!"branch_weights", i32 14141146, i32 37956552}
!384 = !{!"branch_weights", i32 14141145, i32 1}
!385 = !{!"branch_weights", i32 55123709, i32 391483989}
!386 = !{!"branch_weights", i32 432466553, i32 14141145}
!387 = !{!"branch_weights", i32 36712830, i32 1243722}
!388 = !{!"branch_weights", i32 14140942, i32 1243926}
!389 = !{!"branch_weights", i32 181674088, i32 28398331}
!390 = !{!"branch_weights", i32 108018955, i32 102053464}
!391 = !{!"branch_weights", i32 105535903, i32 2483052}
!392 = !{!"branch_weights", i32 96899465, i32 11119490}
!393 = !{!"branch_weights", i32 88708944, i32 8190521}
!394 = !{!"branch_weights", i32 64164614, i32 145907805}
!395 = !{!"branch_weights", i32 14723783, i32 49440831}
!396 = !{!"branch_weights", i32 25409764, i32 120498041}
!397 = !{!"branch_weights", i32 8013096, i32 137894709}
!398 = !{!"branch_weights", i32 16382920, i32 -1809384020}
!399 = !{!"branch_weights", i32 763367, i32 192040}
!400 = !{!"branch_weights", i32 77909, i32 877498}
!401 = !{!"branch_weights", i32 257935951, i32 0}
!402 = !{!"branch_weights", i32 47863532, i32 210072419}
!403 = !{!"branch_weights", i32 47415885, i32 162656534}
!404 = !{!"branch_weights", i32 200249, i32 47215636}
!405 = !{!"branch_weights", i32 10367495, i32 36848423}
!406 = !{!"branch_weights", i32 329, i32 10367166}
!407 = !{!"branch_weights", i32 3948, i32 248724}
!408 = distinct !{!408, !184, !185}
!409 = !{!"branch_weights", i32 329, i32 3619}
!410 = distinct !{!410, !184, !185}
!411 = !{!"branch_weights", i32 0, i32 10367495}
!412 = distinct !{!412, !184, !185}
!413 = distinct !{!413, !184, !185}
!414 = !{!"branch_weights", i32 5143174, i32 5224321}
!415 = !{!"branch_weights", i32 1252356, i32 3971965}
!416 = !{!"branch_weights", i32 623036, i32 3348929}
!417 = !{!"branch_weights", i32 12338365, i32 34877271}
!418 = !{!"branch_weights", i32 8334079, i32 4004286}
!419 = !{!"branch_weights", i32 122, i32 8333957}
!420 = !{!"branch_weights", i32 1464, i32 92232}
!421 = distinct !{!421, !184, !185}
!422 = !{!"branch_weights", i32 122, i32 1342}
!423 = distinct !{!423, !184, !185}
!424 = !{!"branch_weights", i32 12338365, i32 0}
!425 = distinct !{!425, !184, !185}
!426 = !{!"branch_weights", i32 101979300, i32 108741015}
!427 = !{!"branch_weights", i32 101979299, i32 1}
!428 = !{!"branch_weights", i32 342246801, i32 -2115001477}
!429 = !{!"branch_weights", i32 -1874733975, i32 101979299}
!430 = !{!"branch_weights", i32 100704313, i32 8036702}
!431 = !{!"branch_weights", i32 101087233, i32 8928769}
!432 = !{!"branch_weights", i32 47215636, i32 210720315, i32 231498009}
!433 = !{!"branch_weights", i32 127, i32 -1745053183}
!434 = !{!"branch_weights", i32 669211, i32 19251995}
!435 = !{!"branch_weights", i32 0, i32 669211}
!436 = !{!"branch_weights", i32 19251995, i32 0}
!437 = !{!"function_entry_count", i64 3834}
!438 = !{!"search.cpp;_ZL11order_movesP7state_tPiS1_ij"}
!439 = !{!"function_entry_count", i64 282}
!440 = !{!"search.cpp;_ZL12history_goodP7state_tii"}
!441 = !{!"function_entry_count", i64 0}
!442 = !{!"function_entry_count", i64 244}
!443 = !{!122, !110, i64 0}
!444 = !{!"branch_weights", i32 0, i32 244}
!445 = !{!"branch_weights", i32 244, i32 0}
!446 = !{!122, !110, i64 36076}
!447 = !{!"branch_weights", i32 244, i32 58316}
!448 = distinct !{!448, !184, !185}
!449 = !{!"branch_weights", i32 2183, i32 7681}
!450 = !{!"branch_weights", i32 2182, i32 1}
!451 = !{!"branch_weights", i32 6664, i32 82766}
!452 = !{!"branch_weights", i32 2182, i32 87248}
!453 = !{!"branch_weights", i32 7472, i32 209}
!454 = !{!"branch_weights", i32 2183, i32 209}
!455 = !{!"branch_weights", i32 91, i32 9564}
!456 = !{!"branch_weights", i32 9564, i32 0}
!457 = !{!"branch_weights", i32 9311, i32 253}
!458 = !{!"branch_weights", i32 1113, i32 8198}
!459 = !{!"branch_weights", i32 0, i32 1113}
!460 = !{!"branch_weights", i32 352, i32 8959}
!461 = !{!"branch_weights", i32 0, i32 352}
!462 = !{!"branch_weights", i32 9311, i32 0}
!463 = !{!"branch_weights", i32 253, i32 9311}
!464 = !{!"branch_weights", i32 919, i32 8645}
!465 = !{!"branch_weights", i32 6312, i32 2333}
!466 = !{!"branch_weights", i32 6051, i32 261}
!467 = !{!"branch_weights", i32 244, i32 9320}
!468 = !{!"branch_weights", i32 962, i32 8602}
!469 = !{!"branch_weights", i32 962, i32 0}
!470 = !{!"branch_weights", i32 933, i32 29}
!471 = !{!"branch_weights", i32 734, i32 199}
!472 = !{!"branch_weights", i32 41, i32 892}
!473 = !{!"branch_weights", i32 41, i32 0}
!474 = !{!"branch_weights", i32 199, i32 693}
!475 = !{!"branch_weights", i32 0, i32 962}
!476 = !{!"branch_weights", i32 681, i32 281}
!477 = !{!"branch_weights", i32 8602, i32 0}
!478 = !{!"branch_weights", i32 92, i32 8510}
!479 = !{!"branch_weights", i32 92, i32 0}
!480 = !{!"branch_weights", i32 49, i32 43}
!481 = !{!"branch_weights", i32 38, i32 5}
!482 = !{!"branch_weights", i32 8597, i32 5}
!483 = !{!"branch_weights", i32 9548, i32 16}
!484 = !{!"branch_weights", i32 0, i32 9564}
!485 = !{!122, !110, i64 36100}
!486 = !{!"branch_weights", i32 0, i32 9655}
!487 = !{!"branch_weights", i32 9655, i32 0}
!488 = !{!"branch_weights", i32 282, i32 9282}
!489 = !{!"branch_weights", i32 247, i32 35}
!490 = !{!"branch_weights", i32 9311, i32 218}
!491 = !{!122, !113, i64 36064}
!492 = distinct !{!492, !184, !185}
!493 = !{!"branch_weights", i32 12, i32 197}
!494 = !{!"branch_weights", i32 44, i32 153}
!495 = !{!"branch_weights", i32 173, i32 24}
!496 = !{!"branch_weights", i32 208, i32 1}
!497 = !{!"branch_weights", i32 209, i32 0}
!498 = !{!"branch_weights", i32 2, i32 207}
!499 = !{!"branch_weights", i32 205, i32 2}
!500 = !{!122, !110, i64 16}
!501 = distinct !{!501, !184, !185}
!502 = !{!"function_entry_count", i64 12}
!503 = !{!"branch_weights", i32 12, i32 0}
!504 = !{!122, !110, i64 56}
!505 = !{!"branch_weights", i32 12, i32 84}
!506 = !{!"branch_weights", i32 191, i32 1}
!507 = !{!"branch_weights", i32 539, i32 5}
!508 = !{!"branch_weights", i32 191, i32 8513}
!509 = distinct !{!509, !184, !185}
!510 = !{!"branch_weights", i32 0, i32 12}
!511 = !{!122, !110, i64 52}
!512 = !{!"branch_weights", i32 1, i32 191}
!513 = !{!"branch_weights", i32 194, i32 0}
!514 = !{!109, !110, i64 4364}
!515 = !{!109, !110, i64 4368}
!516 = !{!"branch_weights", i32 12, i32 182}
!517 = !{!"branch_weights", i32 1, i32 193}
!518 = !{!"branch_weights", i32 3, i32 191}
!519 = !{!"branch_weights", i32 191, i32 0}
!520 = !{!"branch_weights", i32 0, i32 191}
!521 = !{!"branch_weights", i32 13, i32 181}
!522 = !{!"branch_weights", i32 181, i32 13}
!523 = !{!"branch_weights", i32 13, i32 0}
!524 = !{!"branch_weights", i32 146, i32 35}
!525 = !{!"branch_weights", i32 33, i32 2}
!526 = !{!"branch_weights", i32 2, i32 0}
!527 = !{!"branch_weights", i32 0, i32 194}
!528 = !{!"branch_weights", i32 170, i32 24}
!529 = !{!"branch_weights", i32 2913, i32 191}
!530 = distinct !{!530, !184, !185}
!531 = distinct !{!531, !184, !185}
