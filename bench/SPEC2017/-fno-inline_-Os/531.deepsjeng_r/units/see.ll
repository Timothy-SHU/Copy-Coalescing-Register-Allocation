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

; Function Attrs: mustprogress noinline optsize uwtable
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
  %22 = tail call noundef i64 @_Z10attacks_toP7state_ti(ptr noundef %0, i32 noundef %3) #5
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
  br i1 %62, label %63, label %65, !prof !49

63:                                               ; preds = %41
  %64 = load i32, ptr %6, align 16, !tbaa !40
  br label %180

65:                                               ; preds = %41
  %66 = getelementptr inbounds [64 x i64], ptr @RookMask, i64 0, i64 %23
  %67 = getelementptr inbounds [64 x i64], ptr @BishopMask, i64 0, i64 %23
  br label %68

68:                                               ; preds = %65, %154
  %69 = phi i32 [ %29, %65 ], [ %131, %154 ]
  %70 = phi i64 [ 1, %65 ], [ %133, %154 ]
  %71 = phi i32 [ %1, %65 ], [ %74, %154 ]
  %72 = phi i64 [ %22, %65 ], [ %157, %154 ]
  %73 = phi i32 [ %42, %65 ], [ %130, %154 ]
  %74 = xor i32 %71, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %102, !prof !50

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 1
  %78 = load i64, ptr %77, align 8, !tbaa !47
  %79 = and i64 %78, %72
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %128, !prof !51

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 3
  %83 = load i64, ptr %82, align 8, !tbaa !47
  %84 = and i64 %83, %72
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %128, !prof !52

86:                                               ; preds = %81
  %87 = load i64, ptr %54, align 8, !tbaa !47
  %88 = and i64 %87, %72
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %128, !prof !53

90:                                               ; preds = %86
  %91 = load i64, ptr %48, align 8, !tbaa !47
  %92 = and i64 %91, %72
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %128, !prof !54

94:                                               ; preds = %90
  %95 = load i64, ptr %43, align 8, !tbaa !47
  %96 = and i64 %95, %72
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %128, !prof !55

98:                                               ; preds = %94
  %99 = load i64, ptr %61, align 8, !tbaa !47
  %100 = and i64 %99, %72
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %159, label %128, !prof !56

102:                                              ; preds = %68
  %103 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 2
  %104 = load i64, ptr %103, align 8, !tbaa !47
  %105 = and i64 %104, %72
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %128, !prof !57

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 5, i64 4
  %109 = load i64, ptr %108, align 8, !tbaa !47
  %110 = and i64 %109, %72
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %128, !prof !58

112:                                              ; preds = %107
  %113 = load i64, ptr %56, align 8, !tbaa !47
  %114 = and i64 %113, %72
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %128, !prof !59

116:                                              ; preds = %112
  %117 = load i64, ptr %50, align 8, !tbaa !47
  %118 = and i64 %117, %72
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %128, !prof !60

120:                                              ; preds = %116
  %121 = load i64, ptr %45, align 8, !tbaa !47
  %122 = and i64 %121, %72
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128, !prof !61

124:                                              ; preds = %120
  %125 = load i64, ptr %60, align 8, !tbaa !47
  %126 = and i64 %125, %72
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %159, label %128, !prof !62

128:                                              ; preds = %124, %120, %116, %112, %107, %102, %98, %94, %90, %86, %81, %76
  %129 = phi i64 [ %79, %76 ], [ %84, %81 ], [ %88, %86 ], [ %92, %90 ], [ %96, %94 ], [ %100, %98 ], [ %105, %102 ], [ %110, %107 ], [ %114, %112 ], [ %118, %116 ], [ %122, %120 ], [ %126, %124 ]
  %130 = phi i32 [ 85, %76 ], [ 305, %81 ], [ 330, %86 ], [ 490, %90 ], [ 935, %94 ], [ 1000000, %98 ], [ 85, %102 ], [ 305, %107 ], [ 330, %112 ], [ 490, %116 ], [ 935, %120 ], [ 1000000, %124 ]
  %131 = sub i32 %73, %69
  %132 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %70
  store i32 %131, ptr %132, align 4, !tbaa !40
  %133 = add nuw i64 %70, 1
  %134 = sub i64 0, %129
  %135 = and i64 %129, %134
  %136 = load i64, ptr %11, align 8, !tbaa !44
  %137 = xor i64 %136, %135
  store i64 %137, ptr %11, align 8, !tbaa !44
  %138 = load i64, ptr %66, align 8, !tbaa !47
  %139 = and i64 %138, %53
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %145, label %141, !prof !63

141:                                              ; preds = %128
  %142 = tail call noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %3) #5
  %143 = and i64 %142, %53
  %144 = or i64 %143, %72
  br label %145

145:                                              ; preds = %141, %128
  %146 = phi i64 [ %144, %141 ], [ %72, %128 ]
  %147 = load i64, ptr %67, align 8, !tbaa !47
  %148 = and i64 %147, %59
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %154, label %150, !prof !64

150:                                              ; preds = %145
  %151 = tail call noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef nonnull %0, i32 noundef %3) #5
  %152 = and i64 %151, %59
  %153 = or i64 %152, %146
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i64 [ %153, %150 ], [ %146, %145 ]
  %156 = load i64, ptr %11, align 8, !tbaa !44
  %157 = and i64 %156, %155
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %68, !prof !65, !llvm.loop !66

159:                                              ; preds = %154, %98, %124
  %160 = phi i64 [ %133, %154 ], [ %70, %98 ], [ %70, %124 ]
  %161 = trunc i64 %160 to i32
  %162 = add nsw i32 %161, -1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !40
  %166 = icmp sgt i32 %161, 1
  br i1 %166, label %167, label %180, !prof !68

167:                                              ; preds = %159
  %168 = zext nneg i32 %162 to i64
  br label %169

169:                                              ; preds = %167, %169
  %170 = phi i64 [ %168, %167 ], [ %172, %169 ]
  %171 = phi i32 [ %165, %167 ], [ %178, %169 ]
  %172 = add nsw i64 %170, -1
  %173 = getelementptr inbounds [32 x i32], ptr %6, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !40
  %175 = sub nsw i32 0, %174
  %176 = icmp sgt i32 %171, %175
  %177 = sub nsw i32 0, %171
  %178 = select i1 %176, i32 %177, i32 %174, !prof !69
  %179 = icmp ugt i64 %170, 1
  br i1 %179, label %169, label %180, !prof !70, !llvm.loop !71

180:                                              ; preds = %169, %63, %159
  %181 = phi i32 [ %165, %159 ], [ %64, %63 ], [ %178, %169 ]
  store i64 %12, ptr %11, align 8, !tbaa !44
  store i64 %15, ptr %14, align 8, !tbaa !47
  br i1 %30, label %189, label %182, !prof !48

182:                                              ; preds = %180
  %183 = sext i32 %4 to i64
  %184 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !40
  %186 = tail call i32 @llvm.abs.i32(i32 %185, i1 true)
  %187 = add i32 %181, -85
  %188 = add i32 %187, %186
  br label %189

189:                                              ; preds = %180, %182
  %190 = phi i32 [ %188, %182 ], [ %181, %180 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #4
  ret i32 %190
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i64 @_Z10attacks_toP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: optsize
declare noundef i64 @_Z11RookAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef i64 @_Z13BishopAttacksP7state_ti(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 126727826429}
!4 = !{!"MaxCount", i64 7592818589}
!5 = !{!"MaxInternalCount", i64 4612963787}
!6 = !{!"MaxFunctionCount", i64 7592818589}
!7 = !{!"NumCounts", i64 1321}
!8 = !{!"NumFunctions", i64 93}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7592818589, i32 1}
!14 = !{i32 100000, i64 5393808666, i32 2}
!15 = !{i32 200000, i64 3322262585, i32 6}
!16 = !{i32 300000, i64 2468518944, i32 10}
!17 = !{i32 400000, i64 1837796421, i32 16}
!18 = !{i32 500000, i64 887660800, i32 29}
!19 = !{i32 600000, i64 608930740, i32 46}
!20 = !{i32 700000, i64 396110762, i32 71}
!21 = !{i32 800000, i64 205990918, i32 118}
!22 = !{i32 900000, i64 105535903, i32 199}
!23 = !{i32 950000, i64 66857471, i32 270}
!24 = !{i32 990000, i64 20633230, i32 388}
!25 = !{i32 999000, i64 3210553, i32 503}
!26 = !{i32 999900, i64 480625, i32 581}
!27 = !{i32 999990, i64 63262, i32 633}
!28 = !{i32 999999, i64 5111, i32 689}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z10attacks_toP7state_ti, i64 859881838}
!36 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z11RookAttacksP7state_ti, i64 775024405}
!37 = !{ptr @_Z3seeP7state_tiiii, ptr @_Z13BishopAttacksP7state_ti, i64 667657592}
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
!48 = !{!"branch_weights", i32 857179196, i32 2702644}
!49 = !{!"branch_weights", i32 1, i32 507513225}
!50 = !{!"branch_weights", i32 608930741, i32 611437443}
!51 = !{!"branch_weights", i32 536284513, i32 72646229}
!52 = !{!"branch_weights", i32 486082255, i32 50202259}
!53 = !{!"branch_weights", i32 403471080, i32 82611176}
!54 = !{!"branch_weights", i32 307282529, i32 96188552}
!55 = !{!"branch_weights", i32 199230493, i32 108052037}
!56 = !{!"branch_weights", i32 182011684, i32 17218810}
!57 = !{!"branch_weights", i32 539768980, i32 71668464}
!58 = !{!"branch_weights", i32 465253050, i32 74515931}
!59 = !{!"branch_weights", i32 395140923, i32 70112128}
!60 = !{!"branch_weights", i32 297377740, i32 97763184}
!61 = !{!"branch_weights", i32 213177078, i32 84200663}
!62 = !{!"branch_weights", i32 170356931, i32 42820148}
!63 = !{!"branch_weights", i32 225053116, i32 642946455}
!64 = !{!"branch_weights", i32 314122713, i32 553876858}
!65 = !{!"branch_weights", i32 507513225, i32 712854958}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"branch_weights", i32 -2147483648, i32 0}
!69 = !{!"branch_weights", i32 676505273, i32 191494298}
!70 = !{!"branch_weights", i32 8117732, i32 859881838}
!71 = distinct !{!71, !67}
