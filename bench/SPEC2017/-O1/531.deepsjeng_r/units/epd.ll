; ModuleID = 'epd.cpp'
source_filename = "epd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@_ZZ14setup_epd_lineP11gamestate_tP7state_tPKcE11rankoffsets = internal unnamed_addr constant [8 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56], align 16
@uci_chess960_mode = external local_unnamed_addr global i32, align 4
@uci_mode = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"bm \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"am \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"No best-move or avoid-move found!\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Workload not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Analyzing %d plies...\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\0ANodes: %llu (%0.2f%% qnodes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZZ15position_to_fenP7state_tPcE5xlate = internal unnamed_addr constant [14 x i8] c"FPpNnKkRrQqBbE", align 1
@_ZZ15position_to_fenP7state_tPcE9str_empty = internal unnamed_addr constant [9 x i8] c" 12345678", align 1
@_ZZ15position_to_fenP7state_tPcE11rankoffsets = internal unnamed_addr constant [8 x i32] [i32 56, i32 48, i32 40, i32 32, i32 24, i32 16, i32 8, i32 0], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" %c%c\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c" -\00", align 1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z14setup_epd_lineP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !52 {
  tail call void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef %0, ptr noundef %1)
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %5 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  store i32 0, ptr %5, align 4, !tbaa !53
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 32
  store i32 56, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 33
  store i32 63, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 34
  store i32 0, ptr %8, align 4, !tbaa !61
  %9 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 35
  store i32 7, ptr %9, align 8, !tbaa !62
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi i64 [ %15, %10 ], [ 0, %3 ]
  %12 = getelementptr inbounds i8, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !63
  %14 = icmp eq i8 %13, 32
  %15 = add nuw i64 %11, 1
  br i1 %14, label %10, label %16, !prof !64, !llvm.loop !65

16:                                               ; preds = %10
  %17 = trunc i64 %11 to i32
  br label %18

18:                                               ; preds = %234, %16
  %19 = phi i32 [ 0, %16 ], [ %226, %234 ]
  %20 = phi i32 [ 0, %16 ], [ %227, %234 ]
  %21 = phi i32 [ 0, %16 ], [ %228, %234 ]
  %22 = phi i32 [ %17, %16 ], [ %235, %234 ]
  %23 = phi i32 [ 0, %16 ], [ %41, %234 ]
  %24 = phi i32 [ 0, %16 ], [ %230, %234 ]
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i8, ptr %2, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !63
  switch i8 %27, label %39 [
    i8 10, label %238
    i8 0, label %238
    i8 32, label %28
  ], !prof !68

28:                                               ; preds = %18
  %29 = sext i32 %22 to i64
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ %32, %30 ], [ %29, %28 ]
  %32 = add i64 %31, 1
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !63
  %35 = icmp eq i8 %34, 32
  br i1 %35, label %30, label %36, !prof !69, !llvm.loop !70

36:                                               ; preds = %30
  %37 = add nsw i32 %23, 1
  %38 = trunc i64 %32 to i32
  br label %39

39:                                               ; preds = %36, %18
  %40 = phi i32 [ %22, %18 ], [ %38, %36 ]
  %41 = phi i32 [ %23, %18 ], [ %37, %36 ]
  switch i32 %41, label %225 [
    i32 0, label %42
    i32 1, label %133
    i32 2, label %142
    i32 3, label %194
    i32 4, label %212
  ], !prof !71

42:                                               ; preds = %39
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds i8, ptr %2, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !63
  %46 = sext i8 %45 to i32
  %47 = add nsw i32 %46, -48
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %49, label %66, !prof !72

49:                                               ; preds = %42
  %50 = tail call i64 @strtol(ptr nocapture noundef nonnull %44, ptr noundef null, i32 noundef 10) #9
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %225, !prof !73

53:                                               ; preds = %49
  %54 = sext i32 %19 to i64
  %55 = sext i32 %20 to i64
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ %54, %53 ], [ %61, %56 ]
  %58 = phi i32 [ 0, %53 ], [ %62, %56 ]
  %59 = add nsw i64 %57, %55
  %60 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %59
  store i32 13, ptr %60, align 4, !tbaa !74
  %61 = add nsw i64 %57, 1
  %62 = add nuw nsw i32 %58, 1
  %63 = tail call i64 @strtol(ptr nocapture noundef nonnull %44, ptr noundef null, i32 noundef 10) #9
  %64 = trunc i64 %63 to i32
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %56, label %223, !prof !75, !llvm.loop !76

66:                                               ; preds = %42
  %67 = icmp eq i8 %45, 47
  br i1 %67, label %68, label %73, !prof !77

68:                                               ; preds = %66
  %69 = add nsw i32 %21, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], ptr @_ZZ14setup_epd_lineP11gamestate_tP7state_tPKcE11rankoffsets, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !74
  br label %225

73:                                               ; preds = %66
  %74 = tail call i32 @isalpha(i32 noundef %46) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %225, label %76, !prof !78

76:                                               ; preds = %73
  switch i8 %45, label %131 [
    i8 112, label %77
    i8 80, label %81
    i8 110, label %85
    i8 78, label %89
    i8 98, label %93
    i8 66, label %97
    i8 114, label %101
    i8 82, label %105
    i8 113, label %109
    i8 81, label %113
    i8 107, label %117
    i8 75, label %124
  ], !prof !79

77:                                               ; preds = %76
  %78 = add nsw i32 %20, %19
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %79
  store i32 2, ptr %80, align 4, !tbaa !74
  br label %131

81:                                               ; preds = %76
  %82 = add nsw i32 %20, %19
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %83
  store i32 1, ptr %84, align 4, !tbaa !74
  br label %131

85:                                               ; preds = %76
  %86 = add nsw i32 %20, %19
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %87
  store i32 4, ptr %88, align 4, !tbaa !74
  br label %131

89:                                               ; preds = %76
  %90 = add nsw i32 %20, %19
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %91
  store i32 3, ptr %92, align 4, !tbaa !74
  br label %131

93:                                               ; preds = %76
  %94 = add nsw i32 %20, %19
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %95
  store i32 12, ptr %96, align 4, !tbaa !74
  br label %131

97:                                               ; preds = %76
  %98 = add nsw i32 %20, %19
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %99
  store i32 11, ptr %100, align 4, !tbaa !74
  br label %131

101:                                              ; preds = %76
  %102 = add nsw i32 %20, %19
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %103
  store i32 8, ptr %104, align 4, !tbaa !74
  br label %131

105:                                              ; preds = %76
  %106 = add nsw i32 %20, %19
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %107
  store i32 7, ptr %108, align 4, !tbaa !74
  br label %131

109:                                              ; preds = %76
  %110 = add nsw i32 %20, %19
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %111
  store i32 10, ptr %112, align 4, !tbaa !74
  br label %131

113:                                              ; preds = %76
  %114 = add nsw i32 %20, %19
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %115
  store i32 9, ptr %116, align 4, !tbaa !74
  br label %131

117:                                              ; preds = %76
  %118 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %119 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 31
  %120 = add nsw i32 %20, %19
  store i32 %120, ptr %118, align 4, !tbaa !80
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %121
  store i32 6, ptr %122, align 4, !tbaa !74
  %123 = load i32, ptr %118, align 4, !tbaa !80
  store i32 %123, ptr %119, align 8, !tbaa !81
  br label %131

124:                                              ; preds = %76
  %125 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %126 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 30
  %127 = add nsw i32 %20, %19
  store i32 %127, ptr %125, align 8, !tbaa !82
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 %128
  store i32 5, ptr %129, align 4, !tbaa !74
  %130 = load i32, ptr %125, align 8, !tbaa !82
  store i32 %130, ptr %126, align 4, !tbaa !83
  br label %131

131:                                              ; preds = %76, %124, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %77
  %132 = add nsw i32 %19, 1
  br label %225

133:                                              ; preds = %39
  %134 = sext i32 %40 to i64
  %135 = getelementptr inbounds i8, ptr %2, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !63
  %137 = icmp eq i8 %136, 119
  br i1 %137, label %138, label %140, !prof !84

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  store i32 1, ptr %139, align 4, !tbaa !85
  br label %225

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  store i32 0, ptr %141, align 4, !tbaa !85
  br label %225

142:                                              ; preds = %39
  %143 = sext i32 %40 to i64
  %144 = getelementptr inbounds i8, ptr %2, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !63
  switch i8 %145, label %158 [
    i8 45, label %225
    i8 75, label %146
    i8 81, label %149
    i8 107, label %152
    i8 113, label %155
  ], !prof !86

146:                                              ; preds = %142
  %147 = load i32, ptr %5, align 4, !tbaa !53
  %148 = or i32 %147, 2
  store i32 %148, ptr %5, align 4, !tbaa !53
  br label %225

149:                                              ; preds = %142
  %150 = load i32, ptr %5, align 4, !tbaa !53
  %151 = or i32 %150, 4
  store i32 %151, ptr %5, align 4, !tbaa !53
  br label %225

152:                                              ; preds = %142
  %153 = load i32, ptr %5, align 4, !tbaa !53
  %154 = or i32 %153, 8
  store i32 %154, ptr %5, align 4, !tbaa !53
  br label %225

155:                                              ; preds = %142
  %156 = load i32, ptr %5, align 4, !tbaa !53
  %157 = or i32 %156, 16
  store i32 %157, ptr %5, align 4, !tbaa !53
  br label %225

158:                                              ; preds = %142
  %159 = load i32, ptr @uci_chess960_mode, align 4, !tbaa !74
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %225, label %161

161:                                              ; preds = %158
  %162 = add i8 %145, -65
  %163 = icmp ult i8 %162, 8
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %166 = zext nneg i8 %145 to i32
  %167 = add nsw i32 %166, -64
  %168 = add nsw i32 %166, -9
  %169 = load i32, ptr %165, align 8, !tbaa !82
  %170 = tail call noundef i32 @_Z4filei(i32 noundef %169)
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  store i32 %168, ptr %6, align 4, !tbaa !59
  %173 = load i32, ptr %5, align 4, !tbaa !53
  %174 = or i32 %173, 4
  store i32 %174, ptr %5, align 4, !tbaa !53
  br label %225

175:                                              ; preds = %164
  store i32 %168, ptr %7, align 8, !tbaa !60
  %176 = load i32, ptr %5, align 4, !tbaa !53
  %177 = or i32 %176, 2
  store i32 %177, ptr %5, align 4, !tbaa !53
  br label %225

178:                                              ; preds = %161
  %179 = add i8 %145, -97
  %180 = icmp ult i8 %179, 8
  br i1 %180, label %181, label %225

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %183 = zext nneg i8 %179 to i32
  %184 = add nuw nsw i32 %183, 1
  %185 = load i32, ptr %182, align 4, !tbaa !80
  %186 = tail call noundef i32 @_Z4filei(i32 noundef %185)
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  store i32 %183, ptr %8, align 4, !tbaa !61
  %189 = load i32, ptr %5, align 4, !tbaa !53
  %190 = or i32 %189, 16
  store i32 %190, ptr %5, align 4, !tbaa !53
  br label %225

191:                                              ; preds = %181
  store i32 %183, ptr %9, align 8, !tbaa !62
  %192 = load i32, ptr %5, align 4, !tbaa !53
  %193 = or i32 %192, 8
  store i32 %193, ptr %5, align 4, !tbaa !53
  br label %225

194:                                              ; preds = %39
  %195 = sext i32 %40 to i64
  %196 = getelementptr inbounds i8, ptr %2, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !63
  %198 = icmp eq i8 %197, 45
  br i1 %198, label %199, label %201, !prof !87

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 10
  store i32 0, ptr %200, align 8, !tbaa !88
  br label %225

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 10
  %203 = sext i8 %197 to i32
  %204 = add nsw i32 %40, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %2, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !63
  %208 = sext i8 %207 to i32
  %209 = add nsw i32 %203, 351
  %210 = shl nsw i32 %208, 3
  %211 = sub nsw i32 %209, %210
  store i32 %211, ptr %202, align 8, !tbaa !88
  br label %225

212:                                              ; preds = %39
  %213 = sext i32 %40 to i64
  %214 = getelementptr inbounds i8, ptr %2, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !63
  %216 = sext i8 %215 to i32
  %217 = add nsw i32 %216, -48
  %218 = icmp ult i32 %217, 10
  br i1 %218, label %219, label %225, !prof !89

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  %221 = tail call i64 @strtol(ptr nocapture noundef nonnull %214, ptr noundef null, i32 noundef 10) #9
  %222 = trunc i64 %221 to i32
  store i32 %222, ptr %220, align 4, !tbaa !90
  br label %225

223:                                              ; preds = %56
  %224 = trunc i64 %61 to i32
  br label %225

225:                                              ; preds = %223, %49, %39, %140, %138, %201, %199, %212, %219, %142, %146, %149, %152, %155, %175, %172, %188, %191, %178, %158, %73, %131, %68
  %226 = phi i32 [ 0, %68 ], [ %132, %131 ], [ %19, %73 ], [ %19, %138 ], [ %19, %140 ], [ %19, %172 ], [ %19, %175 ], [ %19, %188 ], [ %19, %191 ], [ %19, %178 ], [ %19, %158 ], [ %19, %155 ], [ %19, %152 ], [ %19, %149 ], [ %19, %146 ], [ %19, %142 ], [ %19, %199 ], [ %19, %201 ], [ %19, %219 ], [ %19, %212 ], [ %19, %39 ], [ %19, %49 ], [ %224, %223 ]
  %227 = phi i32 [ %72, %68 ], [ %20, %131 ], [ %20, %73 ], [ %20, %138 ], [ %20, %140 ], [ %20, %172 ], [ %20, %175 ], [ %20, %188 ], [ %20, %191 ], [ %20, %178 ], [ %20, %158 ], [ %20, %155 ], [ %20, %152 ], [ %20, %149 ], [ %20, %146 ], [ %20, %142 ], [ %20, %199 ], [ %20, %201 ], [ %20, %219 ], [ %20, %212 ], [ %20, %39 ], [ %20, %49 ], [ %20, %223 ]
  %228 = phi i32 [ %69, %68 ], [ %21, %131 ], [ %21, %73 ], [ %21, %138 ], [ %21, %140 ], [ %21, %172 ], [ %21, %175 ], [ %21, %188 ], [ %21, %191 ], [ %21, %178 ], [ %21, %158 ], [ %21, %155 ], [ %21, %152 ], [ %21, %149 ], [ %21, %146 ], [ %21, %142 ], [ %21, %199 ], [ %21, %201 ], [ %21, %219 ], [ %21, %212 ], [ %21, %39 ], [ %21, %49 ], [ %21, %223 ]
  %229 = phi i32 [ %40, %68 ], [ %40, %131 ], [ %40, %73 ], [ %40, %138 ], [ %40, %140 ], [ %40, %172 ], [ %40, %175 ], [ %40, %188 ], [ %40, %191 ], [ %40, %178 ], [ %40, %158 ], [ %40, %155 ], [ %40, %152 ], [ %40, %149 ], [ %40, %146 ], [ %40, %142 ], [ %40, %199 ], [ %204, %201 ], [ %40, %219 ], [ %40, %212 ], [ %40, %39 ], [ %40, %49 ], [ %40, %223 ]
  %230 = phi i32 [ %24, %68 ], [ %24, %131 ], [ %24, %73 ], [ %24, %138 ], [ %24, %140 ], [ 1, %172 ], [ 1, %175 ], [ 1, %188 ], [ 1, %191 ], [ %24, %178 ], [ %24, %158 ], [ 1, %155 ], [ 1, %152 ], [ 1, %149 ], [ 1, %146 ], [ %24, %142 ], [ %24, %199 ], [ %24, %201 ], [ %24, %219 ], [ %24, %212 ], [ %24, %39 ], [ %24, %49 ], [ %24, %223 ]
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, ptr %2, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !63
  switch i8 %233, label %236 [
    i8 10, label %234
    i8 0, label %234
  ], !prof !91

234:                                              ; preds = %225, %225, %236
  %235 = phi i32 [ %229, %225 ], [ %229, %225 ], [ %237, %236 ]
  br label %18, !llvm.loop !92

236:                                              ; preds = %225
  %237 = add nsw i32 %229, 1
  br label %234

238:                                              ; preds = %18, %18
  %239 = icmp ne i32 %24, 0
  %240 = load i32, ptr @uci_mode, align 4
  %241 = icmp ne i32 %240, 0
  %242 = select i1 %239, i1 true, i1 %241, !prof !93
  br i1 %242, label %286, label %243, !prof !93

243:                                              ; preds = %238
  %244 = load i32, ptr %4, align 4, !tbaa !74
  %245 = icmp eq i32 %244, 8
  br i1 %245, label %246, label %253, !prof !94

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 4
  %248 = load i32, ptr %247, align 4, !tbaa !74
  %249 = icmp eq i32 %248, 6
  br i1 %249, label %250, label %253, !prof !95

250:                                              ; preds = %246
  %251 = load i32, ptr %5, align 4, !tbaa !53
  %252 = or i32 %251, 16
  store i32 %252, ptr %5, align 4, !tbaa !53
  br label %253

253:                                              ; preds = %250, %246, %243
  %254 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 7
  %255 = load i32, ptr %254, align 4, !tbaa !74
  %256 = icmp eq i32 %255, 8
  br i1 %256, label %257, label %264, !prof !96

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 4
  %259 = load i32, ptr %258, align 4, !tbaa !74
  %260 = icmp eq i32 %259, 6
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, ptr %5, align 4, !tbaa !53
  %263 = or i32 %262, 8
  store i32 %263, ptr %5, align 4, !tbaa !53
  br label %264

264:                                              ; preds = %261, %257, %253
  %265 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 56
  %266 = load i32, ptr %265, align 4, !tbaa !74
  %267 = icmp eq i32 %266, 7
  br i1 %267, label %268, label %275, !prof !97

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 60
  %270 = load i32, ptr %269, align 4, !tbaa !74
  %271 = icmp eq i32 %270, 5
  br i1 %271, label %272, label %275, !prof !98

272:                                              ; preds = %268
  %273 = load i32, ptr %5, align 4, !tbaa !53
  %274 = or i32 %273, 4
  store i32 %274, ptr %5, align 4, !tbaa !53
  br label %275

275:                                              ; preds = %272, %268, %264
  %276 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 63
  %277 = load i32, ptr %276, align 4, !tbaa !74
  %278 = icmp eq i32 %277, 7
  br i1 %278, label %279, label %286, !prof !96

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1, i64 60
  %281 = load i32, ptr %280, align 4, !tbaa !74
  %282 = icmp eq i32 %281, 5
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, ptr %5, align 4, !tbaa !53
  %285 = or i32 %284, 2
  store i32 %285, ptr %5, align 4, !tbaa !53
  br label %286

286:                                              ; preds = %275, %279, %283, %238
  tail call void @_Z16SetupCastleMasksP7state_t(ptr noundef %1)
  tail call void @_Z18reset_piece_squareP7state_t(ptr noundef %1)
  tail call void @_Z15initialize_hashP7state_t(ptr noundef %1)
  %287 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %288 = load i64, ptr %287, align 8, !tbaa !99
  %289 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %290 = load i32, ptr %289, align 4, !tbaa !100
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %291
  store i64 %288, ptr %292, align 8, !tbaa !102
  %293 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 11
  %294 = load i32, ptr %293, align 4, !tbaa !85
  %295 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 2
  store i32 %294, ptr %295, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @_Z9init_gameP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z4filei(i32 noundef) local_unnamed_addr #2

declare void @_Z16SetupCastleMasksP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z18reset_piece_squareP7state_t(ptr noundef) local_unnamed_addr #2

declare void @_Z15initialize_hashP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z14check_solutionP7state_tPci(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !104 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #9
  call void @_Z11comp_to_sanP7state_tiPc(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4)
  %5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #10
  %6 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %6, i64 3
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %9, %8 ], [ %14, %10 ]
  %12 = load i8, ptr %11, align 1, !tbaa !63
  %13 = icmp eq i8 %12, 32
  %14 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %13, label %10, label %15, !llvm.loop !105

15:                                               ; preds = %10
  %16 = shl i64 %5, 32
  %17 = ashr exact i64 %16, 32
  %18 = call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull %4, i64 noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br label %36

20:                                               ; preds = %3
  %21 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %21, i64 3
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %24, %23 ], [ %29, %25 ]
  %27 = load i8, ptr %26, align 1, !tbaa !63
  %28 = icmp eq i8 %27, 32
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  br i1 %28, label %25, label %30, !llvm.loop !106

30:                                               ; preds = %25
  %31 = shl i64 %5, 32
  %32 = ashr exact i64 %31, 32
  %33 = call i32 @strncmp(ptr noundef nonnull %26, ptr noundef nonnull %4, i64 noundef %32) #10
  %34 = icmp ne i32 %33, 0
  br label %36

35:                                               ; preds = %20
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.2)
  br label %36

36:                                               ; preds = %30, %15, %35
  %37 = phi i1 [ false, %35 ], [ %19, %15 ], [ %34, %30 ]
  %38 = zext i1 %37 to i32
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #9
  ret i32 %38
}

declare void @_Z11comp_to_sanP7state_tiPc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare void @_Z8myprintfPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !107 {
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %6 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !108

8:                                                ; preds = %3
  %9 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %6)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !prof !109

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 13
  %13 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 14
  %14 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 22
  %15 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 23
  br label %17

16:                                               ; preds = %3
  tail call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.4)
  br label %34

17:                                               ; preds = %11, %17
  call void @_Z8clear_ttv()
  call void @_Z14setup_epd_lineP11gamestate_tP7state_tPKc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %18 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %6)
  %19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #9
  %20 = load i32, ptr %5, align 4, !tbaa !74
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.6, i32 noundef %20)
  call void @_Z13display_boardP7state_ti(ptr noundef %1, i32 noundef 1)
  store i32 99999999, ptr %12, align 4, !tbaa !110
  %21 = load i32, ptr %5, align 4, !tbaa !74
  store i32 %21, ptr %13, align 8, !tbaa !111
  %22 = call noundef i32 @_Z5thinkP11gamestate_tP7state_t(ptr noundef %0, ptr noundef %1)
  %23 = load i64, ptr %14, align 8, !tbaa !112
  %24 = load i64, ptr %15, align 8, !tbaa !113
  %25 = uitofp i64 %24 to float
  %26 = uitofp i64 %23 to float
  %27 = fdiv float %25, %26
  %28 = fmul float %27, 1.000000e+02
  %29 = fpext float %28 to double
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.7, i64 noundef %23, double noundef %29)
  call void @_Z14dumpsearchstatP7state_t(ptr noundef %1)
  call void (ptr, ...) @_Z8myprintfPKcz(ptr noundef nonnull @.str.8)
  %30 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull %6)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %17, !prof !114, !llvm.loop !115

32:                                               ; preds = %17, %8
  %33 = call i32 @fclose(ptr noundef nonnull %6)
  br label %34

34:                                               ; preds = %32, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @_Z8clear_ttv() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @_Z13display_boardP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z5thinkP11gamestate_tP7state_t(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z14dumpsearchstatP7state_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z15position_to_fenP7state_tPc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !104 {
  %3 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %2, %51
  %5 = phi i64 [ 8, %2 ], [ %7, %51 ]
  %6 = phi ptr [ %1, %2 ], [ %52, %51 ]
  %7 = add nsw i64 %5, -1
  %8 = getelementptr inbounds [8 x i32], ptr @_ZZ15position_to_fenP7state_tPcE11rankoffsets, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = sext i32 %9 to i64
  %11 = getelementptr i32, ptr %3, i64 %10
  br label %12

12:                                               ; preds = %4, %34
  %13 = phi i64 [ 0, %4 ], [ %37, %34 ]
  %14 = phi ptr [ %6, %4 ], [ %36, %34 ]
  %15 = phi i32 [ 0, %4 ], [ %35, %34 ]
  %16 = getelementptr i32, ptr %11, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !74
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds [9 x i8], ptr @_ZZ15position_to_fenP7state_tPcE9str_empty, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !63
  store i8 %24, ptr %14, align 1
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 0, ptr %25, align 1
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi ptr [ %25, %21 ], [ %14, %19 ]
  %28 = sext i32 %17 to i64
  %29 = getelementptr inbounds [14 x i8], ptr @_ZZ15position_to_fenP7state_tPcE5xlate, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !63
  store i8 %30, ptr %27, align 1
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 0, ptr %31, align 1
  br label %34

32:                                               ; preds = %12
  %33 = add nsw i32 %15, 1
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi i32 [ 0, %26 ], [ %33, %32 ]
  %36 = phi ptr [ %31, %26 ], [ %14, %32 ]
  %37 = add nuw nsw i64 %13, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %39, label %12, !llvm.loop !116

39:                                               ; preds = %34
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = sext i32 %35 to i64
  %43 = getelementptr inbounds [9 x i8], ptr @_ZZ15position_to_fenP7state_tPcE9str_empty, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !63
  store i8 %44, ptr %36, align 1
  %45 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %41, %39
  %47 = phi ptr [ %45, %41 ], [ %36, %39 ]
  %48 = icmp eq i64 %5, 1
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  store i16 47, ptr %47, align 1
  %50 = getelementptr inbounds i8, ptr %47, i64 1
  br label %51

51:                                               ; preds = %46, %49
  %52 = phi ptr [ %50, %49 ], [ %47, %46 ]
  %53 = icmp ugt i64 %5, 1
  br i1 %53, label %4, label %54, !llvm.loop !117

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 11
  %56 = load i32, ptr %55, align 4, !tbaa !85
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 98, i32 119
  %59 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %58) #9
  %60 = getelementptr inbounds i8, ptr %52, i64 3
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !53
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  store i16 75, ptr %60, align 1
  %66 = getelementptr inbounds i8, ptr %52, i64 4
  br label %67

67:                                               ; preds = %65, %54
  %68 = phi i32 [ 1, %65 ], [ 0, %54 ]
  %69 = phi ptr [ %66, %65 ], [ %60, %54 ]
  %70 = load i32, ptr %61, align 4, !tbaa !53
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  store i16 81, ptr %69, align 1
  %74 = getelementptr inbounds i8, ptr %69, i64 1
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ 1, %73 ], [ %68, %67 ]
  %77 = phi ptr [ %74, %73 ], [ %69, %67 ]
  %78 = load i32, ptr %61, align 4, !tbaa !53
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  store i16 107, ptr %77, align 1
  %82 = getelementptr inbounds i8, ptr %77, i64 1
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i32 [ 1, %81 ], [ %76, %75 ]
  %85 = phi ptr [ %82, %81 ], [ %77, %75 ]
  %86 = load i32, ptr %61, align 4, !tbaa !53
  %87 = and i32 %86, 16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  store i16 113, ptr %85, align 1
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  br label %91

91:                                               ; preds = %89, %83
  %92 = phi i32 [ 1, %89 ], [ %84, %83 ]
  %93 = phi ptr [ %90, %89 ], [ %85, %83 ]
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  store i16 45, ptr %93, align 1
  %96 = getelementptr inbounds i8, ptr %93, i64 1
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %93, %91 ], [ %96, %95 ]
  %99 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 10
  %100 = load i32, ptr %99, align 8, !tbaa !88
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = tail call noundef i32 @_Z4filei(i32 noundef %100)
  %104 = add nsw i32 %103, 96
  %105 = load i32, ptr %99, align 8, !tbaa !88
  %106 = tail call noundef i32 @_Z4ranki(i32 noundef %105)
  %107 = add nsw i32 %106, 48
  %108 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %98, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %104, i32 noundef %107) #9
  br label %110

109:                                              ; preds = %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %98, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false)
  br label %110

110:                                              ; preds = %109, %102
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare noundef i32 @_Z4ranki(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z9init_gameP11gamestate_tP7state_t, i64 12}
!36 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @strtol, i64 680}
!37 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @isalpha, i64 312}
!38 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z16SetupCastleMasksP7state_t, i64 12}
!39 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z18reset_piece_squareP7state_t, i64 12}
!40 = !{ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, ptr @_Z15initialize_hashP7state_t, i64 12}
!41 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @fopen, i64 1}
!42 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @fgets, i64 25}
!43 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z8clear_ttv, i64 12}
!44 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z14setup_epd_lineP11gamestate_tP7state_tPKc, i64 12}
!45 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @__isoc99_sscanf, i64 12}
!46 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z8myprintfPKcz, i64 36}
!47 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z13display_boardP7state_ti, i64 12}
!48 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z5thinkP11gamestate_tP7state_t, i64 12}
!49 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @_Z14dumpsearchstatP7state_t, i64 12}
!50 = !{ptr @_Z17run_epd_testsuiteP11gamestate_tP7state_tPKc, ptr @fclose, i64 1}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 12}
!53 = !{!54, !55, i64 452}
!54 = !{!"_ZTS7state_t", !55, i64 0, !56, i64 4, !58, i64 264, !58, i64 272, !58, i64 280, !56, i64 288, !55, i64 392, !55, i64 396, !56, i64 400, !55, i64 452, !55, i64 456, !55, i64 460, !55, i64 464, !55, i64 468, !55, i64 472, !55, i64 476, !58, i64 480, !58, i64 488, !56, i64 496, !56, i64 2544, !56, i64 2800, !56, i64 3056, !58, i64 4080, !58, i64 4088, !55, i64 4096, !56, i64 4100, !55, i64 4356, !55, i64 4360, !55, i64 4364, !55, i64 4368, !55, i64 4372, !55, i64 4376, !55, i64 4380, !55, i64 4384, !55, i64 4388, !55, i64 4392, !56, i64 4400}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!"long long", !56, i64 0}
!59 = !{!54, !55, i64 4380}
!60 = !{!54, !55, i64 4384}
!61 = !{!54, !55, i64 4388}
!62 = !{!54, !55, i64 4392}
!63 = !{!56, !56, i64 0}
!64 = !{!"branch_weights", i32 0, i32 12}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!"branch_weights", i32 818, i32 12, i32 0, i32 96}
!69 = !{!"branch_weights", i32 0, i32 96}
!70 = distinct !{!70, !66, !67}
!71 = !{!"branch_weights", i32 229, i32 620, i32 12, i32 17, i32 12, i32 24}
!72 = !{!"branch_weights", i32 224, i32 396}
!73 = !{!"branch_weights", i32 223, i32 1}
!74 = !{!55, !55, i64 0}
!75 = !{!"branch_weights", i32 233, i32 223}
!76 = distinct !{!76, !66, !67}
!77 = !{!"branch_weights", i32 84, i32 312}
!78 = !{!"branch_weights", i32 0, i32 312}
!79 = !{!"branch_weights", i32 0, i32 74, i32 71, i32 17, i32 16, i32 20, i32 19, i32 24, i32 23, i32 12, i32 12, i32 12, i32 12}
!80 = !{!54, !55, i64 468}
!81 = !{!54, !55, i64 4376}
!82 = !{!54, !55, i64 464}
!83 = !{!54, !55, i64 4372}
!84 = !{!"branch_weights", i32 10, i32 2}
!85 = !{!54, !55, i64 460}
!86 = !{!"branch_weights", i32 0, i32 8, i32 1, i32 1, i32 4, i32 3}
!87 = !{!"branch_weights", i32 12, i32 0}
!88 = !{!54, !55, i64 456}
!89 = !{!"branch_weights", i32 0, i32 24}
!90 = !{!54, !55, i64 476}
!91 = !{!"branch_weights", i32 914, i32 0, i32 0}
!92 = distinct !{!92, !66, !67}
!93 = !{!"branch_weights", i32 4, i32 8}
!94 = !{!"branch_weights", i32 7, i32 1}
!95 = !{!"branch_weights", i32 0, i32 7}
!96 = !{!"branch_weights", i32 0, i32 8}
!97 = !{!"branch_weights", i32 2, i32 6}
!98 = !{!"branch_weights", i32 0, i32 2}
!99 = !{!54, !58, i64 480}
!100 = !{!101, !55, i64 60}
!101 = !{!"_ZTS11gamestate_t", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !56, i64 64, !56, i64 4064, !58, i64 36064, !55, i64 36072, !55, i64 36076, !55, i64 36080, !55, i64 36084, !55, i64 36088, !55, i64 36092, !55, i64 36096, !55, i64 36100}
!102 = !{!58, !58, i64 0}
!103 = !{!101, !55, i64 8}
!104 = !{!"function_entry_count", i64 0}
!105 = distinct !{!105, !66, !67}
!106 = distinct !{!106, !66, !67}
!107 = !{!"function_entry_count", i64 1}
!108 = !{!"branch_weights", i32 0, i32 1}
!109 = !{!"branch_weights", i32 1, i32 127}
!110 = !{!101, !55, i64 52}
!111 = !{!101, !55, i64 56}
!112 = !{!54, !58, i64 4080}
!113 = !{!54, !58, i64 4088}
!114 = !{!"branch_weights", i32 127, i32 1409}
!115 = distinct !{!115, !66, !67}
!116 = distinct !{!116, !66, !67}
!117 = distinct !{!117, !66, !67}
