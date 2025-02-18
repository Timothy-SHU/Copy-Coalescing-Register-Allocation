; ModuleID = 'see.cpp'
source_filename = "see.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }

@Mask = external local_unnamed_addr global [64 x i64], align 16
@material = external local_unnamed_addr constant [14 x i32], align 16
@RookMask = external local_unnamed_addr global [64 x i64], align 16
@BishopMask = external local_unnamed_addr global [64 x i64], align 16

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_Z3seeP7state_tiiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !39 {
  %6 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #4
  %7 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !40
  %11 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !44
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i64, ptr %7, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds [64 x i64], ptr @Mask, i64 0, i64 %8
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = xor i64 %17, %12
  store i64 %18, ptr %11, align 8, !tbaa !44
  %19 = load i64, ptr %16, align 8, !tbaa !47
  %20 = load i64, ptr %14, align 8, !tbaa !47
  %21 = xor i64 %20, %19
  store i64 %21, ptr %14, align 8, !tbaa !47
  %22 = tail call noundef i64 @_Z10attacks_toP7state_ti(ptr noundef %0, i32 noundef %3)
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 1, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !40
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  store i32 %29, ptr %6, align 16, !tbaa !40
  %30 = icmp eq i32 %4, 0
  br i1 %30, label %31, label %35, !prof !48

31:                                               ; preds = %5
  %32 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %13
  %33 = load i32, ptr %32, align 4, !tbaa !40
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 true)
  br label %41

35:                                               ; preds = %5
  %36 = sext i32 %4 to i64
  %37 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = add nsw i32 %39, -85
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i32 [ %40, %35 ], [ %34, %31 ]
  %43 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 9
  %44 = load i64, ptr %43, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 10
  %46 = load i64, ptr %45, align 8, !tbaa !47
  %47 = or i64 %46, %44
  %48 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 7
  %49 = load i64, ptr %48, align 8, !tbaa !47
  %50 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 8
  %51 = load i64, ptr %50, align 8, !tbaa !47
  %52 = or i64 %49, %51
  %53 = or i64 %52, %47
  %54 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 11
  %55 = load i64, ptr %54, align 8, !tbaa !47
  %56 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 12
  %57 = load i64, ptr %56, align 8, !tbaa !47
  %58 = or i64 %55, %57
  %59 = or i64 %58, %47
  %60 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 6
  %61 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 5
  %62 = icmp eq i64 %22, 0
  br i1 %62, label %162, label %63, !prof !49

63:                                               ; preds = %41
  %64 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %23
  %65 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %23
  br label %66

66:                                               ; preds = %63, %154
  %67 = phi i64 [ 1, %63 ], [ %133, %154 ]
  %68 = phi i32 [ %1, %63 ], [ %71, %154 ]
  %69 = phi i64 [ %22, %63 ], [ %157, %154 ]
  %70 = phi i32 [ %42, %63 ], [ %127, %154 ]
  %71 = xor i32 %68, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %99, !prof !50

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %75 = load i64, ptr %74, align 8, !tbaa !47
  %76 = and i64 %75, %69
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %125, !prof !51

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %80 = load i64, ptr %79, align 8, !tbaa !47
  %81 = and i64 %80, %69
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %125, !prof !52

83:                                               ; preds = %78
  %84 = load i64, ptr %54, align 8, !tbaa !47
  %85 = and i64 %84, %69
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %125, !prof !53

87:                                               ; preds = %83
  %88 = load i64, ptr %48, align 8, !tbaa !47
  %89 = and i64 %88, %69
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %125, !prof !54

91:                                               ; preds = %87
  %92 = load i64, ptr %43, align 8, !tbaa !47
  %93 = and i64 %92, %69
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %125, !prof !55

95:                                               ; preds = %91
  %96 = load i64, ptr %61, align 8, !tbaa !47
  %97 = and i64 %96, %69
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %159, label %125, !prof !56

99:                                               ; preds = %66
  %100 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %101 = load i64, ptr %100, align 8, !tbaa !47
  %102 = and i64 %101, %69
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %125, !prof !57

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %106 = load i64, ptr %105, align 8, !tbaa !47
  %107 = and i64 %106, %69
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %125, !prof !58

109:                                              ; preds = %104
  %110 = load i64, ptr %56, align 8, !tbaa !47
  %111 = and i64 %110, %69
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %125, !prof !59

113:                                              ; preds = %109
  %114 = load i64, ptr %50, align 8, !tbaa !47
  %115 = and i64 %114, %69
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %125, !prof !60

117:                                              ; preds = %113
  %118 = load i64, ptr %45, align 8, !tbaa !47
  %119 = and i64 %118, %69
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125, !prof !61

121:                                              ; preds = %117
  %122 = load i64, ptr %60, align 8, !tbaa !47
  %123 = and i64 %122, %69
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %159, label %125, !prof !62

125:                                              ; preds = %121, %117, %113, %109, %104, %99, %95, %91, %87, %83, %78, %73
  %126 = phi i64 [ %76, %73 ], [ %81, %78 ], [ %85, %83 ], [ %89, %87 ], [ %93, %91 ], [ %97, %95 ], [ %102, %99 ], [ %107, %104 ], [ %111, %109 ], [ %115, %113 ], [ %119, %117 ], [ %123, %121 ]
  %127 = phi i32 [ 85, %73 ], [ 305, %78 ], [ 330, %83 ], [ 490, %87 ], [ 935, %91 ], [ 1000000, %95 ], [ 85, %99 ], [ 305, %104 ], [ 330, %109 ], [ 490, %113 ], [ 935, %117 ], [ 1000000, %121 ]
  %128 = add nsw i64 %67, -1
  %129 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !40
  %131 = sub i32 %70, %130
  %132 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %67
  store i32 %131, ptr %132, align 4, !tbaa !40
  %133 = add nuw i64 %67, 1
  %134 = sub i64 0, %126
  %135 = and i64 %126, %134
  %136 = load i64, ptr %11, align 8, !tbaa !44
  %137 = xor i64 %136, %135
  store i64 %137, ptr %11, align 8, !tbaa !44
  %138 = load i64, ptr %64, align 8, !tbaa !47
  %139 = and i64 %138, %53
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %145, label %141, !prof !63

141:                                              ; preds = %125
  %142 = tail call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef %0, i32 noundef %3)
  %143 = and i64 %142, %53
  %144 = or i64 %143, %69
  br label %145

145:                                              ; preds = %141, %125
  %146 = phi i64 [ %144, %141 ], [ %69, %125 ]
  %147 = load i64, ptr %65, align 8, !tbaa !47
  %148 = and i64 %147, %59
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %154, label %150, !prof !64

150:                                              ; preds = %145
  %151 = tail call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef %0, i32 noundef %3)
  %152 = and i64 %151, %59
  %153 = or i64 %152, %146
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i64 [ %153, %150 ], [ %146, %145 ]
  %156 = load i64, ptr %11, align 8, !tbaa !44
  %157 = and i64 %156, %155
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %66, !prof !65, !llvm.loop !66

159:                                              ; preds = %121, %95, %154
  %160 = phi i64 [ %133, %154 ], [ %67, %95 ], [ %67, %121 ]
  %161 = trunc i64 %160 to i32
  br label %162

162:                                              ; preds = %159, %41
  %163 = phi i32 [ 1, %41 ], [ %161, %159 ]
  %164 = add nsw i32 %163, -1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !40
  %168 = icmp sgt i32 %163, 1
  br i1 %168, label %169, label %182, !prof !69

169:                                              ; preds = %162
  %170 = zext i32 %164 to i64
  br label %171

171:                                              ; preds = %169, %171
  %172 = phi i64 [ %170, %169 ], [ %174, %171 ]
  %173 = phi i32 [ %167, %169 ], [ %180, %171 ]
  %174 = add nsw i64 %172, -1
  %175 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !40
  %177 = sub nsw i32 0, %176
  %178 = icmp sgt i32 %173, %177
  %179 = sub nsw i32 0, %173
  %180 = select i1 %178, i32 %179, i32 %176, !prof !70
  %181 = icmp sgt i64 %172, 1
  br i1 %181, label %171, label %182, !prof !71, !llvm.loop !72

182:                                              ; preds = %171, %162
  %183 = phi i32 [ %167, %162 ], [ %180, %171 ]
  store i64 %12, ptr %11, align 8, !tbaa !44
  store i64 %15, ptr %14, align 8, !tbaa !47
  br i1 %30, label %191, label %184, !prof !48

184:                                              ; preds = %182
  %185 = sext i32 %4 to i64
  %186 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !40
  %188 = tail call i32 @llvm.abs.i32(i32 %187, i1 true)
  %189 = add i32 %183, -85
  %190 = add i32 %189, %188
  br label %191

191:                                              ; preds = %182, %184
  %192 = phi i32 [ %190, %184 ], [ %183, %182 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #4
  ret i32 %192
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef i64 @_Z10attacks_toP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z10attacks_toP7state_ti, i64 859881838}
!36 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z11RookAttacksP7state_ti, i64 775024399}
!37 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z13BishopAttacksP7state_ti, i64 667657587}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 859881838}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !46, i64 264}
!45 = !{!"_ZTS7state_t", !41, i64 0, !42, i64 4, !46, i64 264, !46, i64 272, !46, i64 280, !42, i64 288, !41, i64 392, !41, i64 396, !42, i64 400, !41, i64 452, !41, i64 456, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !46, i64 480, !46, i64 488, !42, i64 496, !42, i64 2544, !42, i64 2800, !42, i64 3056, !46, i64 4080, !46, i64 4088, !41, i64 4096, !42, i64 4100, !41, i64 4356, !41, i64 4360, !41, i64 4364, !41, i64 4368, !41, i64 4372, !41, i64 4376, !41, i64 4380, !41, i64 4384, !41, i64 4388, !41, i64 4392, !42, i64 4400}
!46 = !{!"long long", !42, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"branch_weights", i32 857179195, i32 2702643}
!49 = !{!"branch_weights", i32 1, i32 507513224}
!50 = !{!"branch_weights", i32 608930740, i32 611437442}
!51 = !{!"branch_weights", i32 536284512, i32 72646228}
!52 = !{!"branch_weights", i32 486082254, i32 50202258}
!53 = !{!"branch_weights", i32 403471079, i32 82611175}
!54 = !{!"branch_weights", i32 307282528, i32 96188551}
!55 = !{!"branch_weights", i32 199230492, i32 108052036}
!56 = !{!"branch_weights", i32 182011683, i32 17218809}
!57 = !{!"branch_weights", i32 539768979, i32 71668463}
!58 = !{!"branch_weights", i32 465253049, i32 74515930}
!59 = !{!"branch_weights", i32 395140922, i32 70112127}
!60 = !{!"branch_weights", i32 297377739, i32 97763183}
!61 = !{!"branch_weights", i32 213177077, i32 84200662}
!62 = !{!"branch_weights", i32 170356930, i32 42820147}
!63 = !{!"branch_weights", i32 225053115, i32 642946454}
!64 = !{!"branch_weights", i32 314122712, i32 553876857}
!65 = !{!"branch_weights", i32 507513224, i32 712854958}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!"branch_weights", i32 859881837, i32 1}
!70 = !{!"branch_weights", i32 676505272, i32 191494297}
!71 = !{!"branch_weights", i32 8117732, i32 859881837}
!72 = distinct !{!72, !67, !68}
