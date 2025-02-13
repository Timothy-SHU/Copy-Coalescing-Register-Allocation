; ModuleID = 'regex.c'
source_filename = "regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%union.byte_fail_stack_elt = type { ptr }
%struct.re_registers = type { i32, ptr, ptr }
%union.byte_register_info_type = type { %union.byte_fail_stack_elt }
%struct.compile_stack_elt_t = type { i64, i64, i64, i64, i32 }
%struct.regmatch_t = type { i32, i32 }

@xre_syntax_options = dso_local local_unnamed_addr global i64 0, align 8
@xre_max_failures = dso_local local_unnamed_addr global i32 4000, align 4
@re_syntax_table = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@byte_reg_unset_dummy = internal global i8 0, align 1
@re_error_msgid = internal unnamed_addr constant [17 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 16
@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@init_syntax_once.done = internal unnamed_addr global i1 false, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"No match\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Invalid regular expression\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Invalid collation character\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Invalid character class name\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Trailing backslash\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Invalid back reference\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Unmatched [ or [^\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Unmatched ( or \\(\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Unmatched \\{\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Invalid content of \\{\\}\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Invalid range end\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Invalid preceding regular expression\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Premature end of regular expression\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Regular expression too big\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Unmatched ) or \\)\00", align 1
@re_comp_buf = internal global %struct.re_pattern_buffer zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [31 x i8] c"No previous regular expression\00", align 1
@switch.table.byte_re_match_2_internal = private unnamed_addr constant [10 x i64] [i64 6, i64 8, i64 8, i64 8, i64 6, i64 6, i64 6, i64 8, i64 8, i64 8], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @xre_set_syntax(i64 noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load i64, ptr @xre_syntax_options, align 8, !tbaa !36
  store i64 %0, ptr @xre_syntax_options, align 8, !tbaa !36
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @xre_compile_fastmap(ptr nocapture noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = tail call fastcc i32 @byte_re_compile_fastmap(ptr noundef %0) #23, !range !40
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @byte_re_compile_fastmap(ptr nocapture noundef %0) unnamed_addr #2 !prof !35 !PGOFuncName !41 {
  %2 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  %8 = alloca [40 x i8], align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %9 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, -10
  %12 = or disjoint i8 %11, 8
  store i8 %12, ptr %9, align 8
  br label %13

13:                                               ; preds = %211, %1
  %14 = phi ptr [ %8, %1 ], [ %212, %211 ]
  %15 = phi i32 [ 5, %1 ], [ %213, %211 ]
  %16 = phi i32 [ 0, %1 ], [ %214, %211 ]
  %17 = phi ptr [ %4, %1 ], [ %215, %211 ]
  %18 = phi i8 [ 1, %1 ], [ %216, %211 ]
  %19 = icmp eq ptr %17, %7
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i8, ptr %17, align 1, !tbaa !48
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %32

23:                                               ; preds = %20, %13
  %24 = icmp eq i32 %16, 0
  br i1 %24, label %379, label %25

25:                                               ; preds = %23
  %26 = load i8, ptr %9, align 8
  %27 = or i8 %26, %18
  store i8 %27, ptr %9, align 8
  %28 = add i32 %16, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %14, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  br label %211

32:                                               ; preds = %20
  %33 = getelementptr inbounds i8, ptr %17, i64 1
  switch i8 %21, label %378 [
    i8 8, label %379
    i8 2, label %206
    i8 4, label %217
    i8 5, label %241
    i8 24, label %120
    i8 25, label %34
    i8 3, label %276
    i8 0, label %211
    i8 9, label %211
    i8 10, label %211
    i8 11, label %211
    i8 12, label %211
    i8 28, label %211
    i8 29, label %211
    i8 26, label %211
    i8 27, label %211
    i8 20, label %211
    i8 22, label %288
    i8 17, label %288
    i8 18, label %288
    i8 13, label %288
    i8 14, label %288
    i8 19, label %288
    i8 15, label %322
    i8 16, label %322
    i8 21, label %363
    i8 23, label %374
    i8 6, label %376
    i8 7, label %376
  ]

34:                                               ; preds = %32, %117
  %35 = phi i64 [ %118, %117 ], [ 0, %32 ]
  %36 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %35
  %37 = load <16 x i8>, ptr %36, align 16, !tbaa !48
  %38 = icmp ne <16 x i8> %37, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %39 = extractelement <16 x i1> %38, i64 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = getelementptr inbounds i8, ptr %3, i64 %35
  store i8 1, ptr %41, align 1, !tbaa !48
  br label %42

42:                                               ; preds = %40, %34
  %43 = extractelement <16 x i1> %38, i64 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = or disjoint i64 %35, 1
  %46 = getelementptr inbounds i8, ptr %3, i64 %45
  store i8 1, ptr %46, align 1, !tbaa !48
  br label %47

47:                                               ; preds = %44, %42
  %48 = extractelement <16 x i1> %38, i64 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = or disjoint i64 %35, 2
  %51 = getelementptr inbounds i8, ptr %3, i64 %50
  store i8 1, ptr %51, align 1, !tbaa !48
  br label %52

52:                                               ; preds = %49, %47
  %53 = extractelement <16 x i1> %38, i64 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = or disjoint i64 %35, 3
  %56 = getelementptr inbounds i8, ptr %3, i64 %55
  store i8 1, ptr %56, align 1, !tbaa !48
  br label %57

57:                                               ; preds = %54, %52
  %58 = extractelement <16 x i1> %38, i64 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = or disjoint i64 %35, 4
  %61 = getelementptr inbounds i8, ptr %3, i64 %60
  store i8 1, ptr %61, align 1, !tbaa !48
  br label %62

62:                                               ; preds = %59, %57
  %63 = extractelement <16 x i1> %38, i64 5
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = or disjoint i64 %35, 5
  %66 = getelementptr inbounds i8, ptr %3, i64 %65
  store i8 1, ptr %66, align 1, !tbaa !48
  br label %67

67:                                               ; preds = %64, %62
  %68 = extractelement <16 x i1> %38, i64 6
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = or disjoint i64 %35, 6
  %71 = getelementptr inbounds i8, ptr %3, i64 %70
  store i8 1, ptr %71, align 1, !tbaa !48
  br label %72

72:                                               ; preds = %69, %67
  %73 = extractelement <16 x i1> %38, i64 7
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = or disjoint i64 %35, 7
  %76 = getelementptr inbounds i8, ptr %3, i64 %75
  store i8 1, ptr %76, align 1, !tbaa !48
  br label %77

77:                                               ; preds = %74, %72
  %78 = extractelement <16 x i1> %38, i64 8
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = or disjoint i64 %35, 8
  %81 = getelementptr inbounds i8, ptr %3, i64 %80
  store i8 1, ptr %81, align 1, !tbaa !48
  br label %82

82:                                               ; preds = %79, %77
  %83 = extractelement <16 x i1> %38, i64 9
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = or disjoint i64 %35, 9
  %86 = getelementptr inbounds i8, ptr %3, i64 %85
  store i8 1, ptr %86, align 1, !tbaa !48
  br label %87

87:                                               ; preds = %84, %82
  %88 = extractelement <16 x i1> %38, i64 10
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = or disjoint i64 %35, 10
  %91 = getelementptr inbounds i8, ptr %3, i64 %90
  store i8 1, ptr %91, align 1, !tbaa !48
  br label %92

92:                                               ; preds = %89, %87
  %93 = extractelement <16 x i1> %38, i64 11
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = or disjoint i64 %35, 11
  %96 = getelementptr inbounds i8, ptr %3, i64 %95
  store i8 1, ptr %96, align 1, !tbaa !48
  br label %97

97:                                               ; preds = %94, %92
  %98 = extractelement <16 x i1> %38, i64 12
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = or disjoint i64 %35, 12
  %101 = getelementptr inbounds i8, ptr %3, i64 %100
  store i8 1, ptr %101, align 1, !tbaa !48
  br label %102

102:                                              ; preds = %99, %97
  %103 = extractelement <16 x i1> %38, i64 13
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = or disjoint i64 %35, 13
  %106 = getelementptr inbounds i8, ptr %3, i64 %105
  store i8 1, ptr %106, align 1, !tbaa !48
  br label %107

107:                                              ; preds = %104, %102
  %108 = extractelement <16 x i1> %38, i64 14
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = or disjoint i64 %35, 14
  %111 = getelementptr inbounds i8, ptr %3, i64 %110
  store i8 1, ptr %111, align 1, !tbaa !48
  br label %112

112:                                              ; preds = %109, %107
  %113 = extractelement <16 x i1> %38, i64 15
  br i1 %113, label %114, label %117

114:                                              ; preds = %112
  %115 = or disjoint i64 %35, 15
  %116 = getelementptr inbounds i8, ptr %3, i64 %115
  store i8 1, ptr %116, align 1, !tbaa !48
  br label %117

117:                                              ; preds = %114, %112
  %118 = add nuw i64 %35, 16
  %119 = icmp eq i64 %118, 256
  br i1 %119, label %211, label %34, !llvm.loop !49

120:                                              ; preds = %32, %203
  %121 = phi i64 [ %204, %203 ], [ 0, %32 ]
  %122 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %121
  %123 = load <16 x i8>, ptr %122, align 16, !tbaa !48
  %124 = icmp eq <16 x i8> %123, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %125 = extractelement <16 x i1> %124, i64 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = getelementptr inbounds i8, ptr %3, i64 %121
  store i8 1, ptr %127, align 1, !tbaa !48
  br label %128

128:                                              ; preds = %126, %120
  %129 = extractelement <16 x i1> %124, i64 1
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = or disjoint i64 %121, 1
  %132 = getelementptr inbounds i8, ptr %3, i64 %131
  store i8 1, ptr %132, align 1, !tbaa !48
  br label %133

133:                                              ; preds = %130, %128
  %134 = extractelement <16 x i1> %124, i64 2
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = or disjoint i64 %121, 2
  %137 = getelementptr inbounds i8, ptr %3, i64 %136
  store i8 1, ptr %137, align 1, !tbaa !48
  br label %138

138:                                              ; preds = %135, %133
  %139 = extractelement <16 x i1> %124, i64 3
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  %141 = or disjoint i64 %121, 3
  %142 = getelementptr inbounds i8, ptr %3, i64 %141
  store i8 1, ptr %142, align 1, !tbaa !48
  br label %143

143:                                              ; preds = %140, %138
  %144 = extractelement <16 x i1> %124, i64 4
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = or disjoint i64 %121, 4
  %147 = getelementptr inbounds i8, ptr %3, i64 %146
  store i8 1, ptr %147, align 1, !tbaa !48
  br label %148

148:                                              ; preds = %145, %143
  %149 = extractelement <16 x i1> %124, i64 5
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = or disjoint i64 %121, 5
  %152 = getelementptr inbounds i8, ptr %3, i64 %151
  store i8 1, ptr %152, align 1, !tbaa !48
  br label %153

153:                                              ; preds = %150, %148
  %154 = extractelement <16 x i1> %124, i64 6
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = or disjoint i64 %121, 6
  %157 = getelementptr inbounds i8, ptr %3, i64 %156
  store i8 1, ptr %157, align 1, !tbaa !48
  br label %158

158:                                              ; preds = %155, %153
  %159 = extractelement <16 x i1> %124, i64 7
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = or disjoint i64 %121, 7
  %162 = getelementptr inbounds i8, ptr %3, i64 %161
  store i8 1, ptr %162, align 1, !tbaa !48
  br label %163

163:                                              ; preds = %160, %158
  %164 = extractelement <16 x i1> %124, i64 8
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = or disjoint i64 %121, 8
  %167 = getelementptr inbounds i8, ptr %3, i64 %166
  store i8 1, ptr %167, align 1, !tbaa !48
  br label %168

168:                                              ; preds = %165, %163
  %169 = extractelement <16 x i1> %124, i64 9
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = or disjoint i64 %121, 9
  %172 = getelementptr inbounds i8, ptr %3, i64 %171
  store i8 1, ptr %172, align 1, !tbaa !48
  br label %173

173:                                              ; preds = %170, %168
  %174 = extractelement <16 x i1> %124, i64 10
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = or disjoint i64 %121, 10
  %177 = getelementptr inbounds i8, ptr %3, i64 %176
  store i8 1, ptr %177, align 1, !tbaa !48
  br label %178

178:                                              ; preds = %175, %173
  %179 = extractelement <16 x i1> %124, i64 11
  br i1 %179, label %180, label %183

180:                                              ; preds = %178
  %181 = or disjoint i64 %121, 11
  %182 = getelementptr inbounds i8, ptr %3, i64 %181
  store i8 1, ptr %182, align 1, !tbaa !48
  br label %183

183:                                              ; preds = %180, %178
  %184 = extractelement <16 x i1> %124, i64 12
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = or disjoint i64 %121, 12
  %187 = getelementptr inbounds i8, ptr %3, i64 %186
  store i8 1, ptr %187, align 1, !tbaa !48
  br label %188

188:                                              ; preds = %185, %183
  %189 = extractelement <16 x i1> %124, i64 13
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = or disjoint i64 %121, 13
  %192 = getelementptr inbounds i8, ptr %3, i64 %191
  store i8 1, ptr %192, align 1, !tbaa !48
  br label %193

193:                                              ; preds = %190, %188
  %194 = extractelement <16 x i1> %124, i64 14
  br i1 %194, label %195, label %198

195:                                              ; preds = %193
  %196 = or disjoint i64 %121, 14
  %197 = getelementptr inbounds i8, ptr %3, i64 %196
  store i8 1, ptr %197, align 1, !tbaa !48
  br label %198

198:                                              ; preds = %195, %193
  %199 = extractelement <16 x i1> %124, i64 15
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = or disjoint i64 %121, 15
  %202 = getelementptr inbounds i8, ptr %3, i64 %201
  store i8 1, ptr %202, align 1, !tbaa !48
  br label %203

203:                                              ; preds = %200, %198
  %204 = add nuw i64 %121, 16
  %205 = icmp eq i64 %204, 256
  br i1 %205, label %211, label %120, !llvm.loop !53

206:                                              ; preds = %32
  %207 = getelementptr inbounds i8, ptr %17, i64 2
  %208 = load i8, ptr %207, align 1, !tbaa !48
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds i8, ptr %3, i64 %209
  store i8 1, ptr %210, align 1, !tbaa !48
  br label %211

211:                                              ; preds = %117, %203, %274, %239, %206, %283, %284, %217, %244, %302, %315, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %25, %357, %374, %376, %288, %363, %300
  %212 = phi ptr [ %14, %25 ], [ %14, %376 ], [ %14, %374 ], [ %358, %357 ], [ %14, %363 ], [ %14, %288 ], [ %14, %300 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %32 ], [ %14, %315 ], [ %14, %302 ], [ %14, %244 ], [ %14, %217 ], [ %14, %284 ], [ %14, %283 ], [ %14, %206 ], [ %14, %239 ], [ %14, %274 ], [ %14, %203 ], [ %14, %117 ]
  %213 = phi i32 [ %15, %25 ], [ %15, %376 ], [ %15, %374 ], [ %359, %357 ], [ %15, %363 ], [ %15, %288 ], [ %15, %300 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %32 ], [ %15, %315 ], [ %15, %302 ], [ %15, %244 ], [ %15, %217 ], [ %15, %284 ], [ %15, %283 ], [ %15, %206 ], [ %15, %239 ], [ %15, %274 ], [ %15, %203 ], [ %15, %117 ]
  %214 = phi i32 [ %28, %25 ], [ %16, %376 ], [ %16, %374 ], [ %360, %357 ], [ %16, %363 ], [ %16, %288 ], [ %16, %300 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %16, %32 ], [ %321, %315 ], [ 0, %302 ], [ %16, %244 ], [ %16, %217 ], [ %16, %284 ], [ %16, %283 ], [ %16, %206 ], [ %16, %239 ], [ %16, %274 ], [ %16, %203 ], [ %16, %117 ]
  %215 = phi ptr [ %31, %25 ], [ %377, %376 ], [ %375, %374 ], [ %362, %357 ], [ %372, %363 ], [ %298, %288 ], [ %298, %300 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %33, %32 ], [ %313, %315 ], [ %313, %302 ], [ %7, %244 ], [ %7, %217 ], [ %7, %284 ], [ %7, %283 ], [ %7, %206 ], [ %7, %239 ], [ %7, %274 ], [ %7, %203 ], [ %7, %117 ]
  %216 = phi i8 [ 1, %25 ], [ %18, %376 ], [ %18, %374 ], [ %18, %357 ], [ %18, %363 ], [ %18, %288 ], [ %18, %300 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %32 ], [ %18, %315 ], [ %18, %302 ], [ 0, %244 ], [ 0, %217 ], [ 0, %284 ], [ 0, %283 ], [ 0, %206 ], [ 0, %239 ], [ 0, %274 ], [ 0, %203 ], [ 0, %117 ]
  br label %13

217:                                              ; preds = %32
  %218 = getelementptr inbounds i8, ptr %17, i64 2
  %219 = load i8, ptr %33, align 1, !tbaa !48
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %211, label %221

221:                                              ; preds = %217
  %222 = zext i8 %219 to i64
  %223 = shl nuw nsw i64 %222, 3
  br label %224

224:                                              ; preds = %221, %239
  %225 = phi i64 [ %223, %221 ], [ %226, %239 ]
  %226 = add nsw i64 %225, -1
  %227 = trunc i64 %226 to i32
  %228 = lshr i64 %226, 3
  %229 = and i64 %228, 536870911
  %230 = getelementptr inbounds i8, ptr %218, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !48
  %232 = zext i8 %231 to i32
  %233 = and i32 %227, 7
  %234 = shl nuw nsw i32 1, %233
  %235 = and i32 %234, %232
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %224
  %238 = getelementptr inbounds i8, ptr %3, i64 %226
  store i8 1, ptr %238, align 1, !tbaa !48
  br label %239

239:                                              ; preds = %224, %237
  %240 = icmp ugt i64 %225, 1
  br i1 %240, label %224, label %211, !llvm.loop !54

241:                                              ; preds = %32
  %242 = load i8, ptr %33, align 1, !tbaa !48
  %243 = icmp ult i8 %242, 32
  br i1 %243, label %244, label %254

244:                                              ; preds = %241
  %245 = shl nuw i8 %242, 3
  %246 = shl nuw i8 %242, 3
  %247 = zext i8 %246 to i64
  %248 = getelementptr i8, ptr %3, i64 %247
  %249 = sub nuw nsw i8 -8, %245
  %250 = zext i8 %249 to i64
  %251 = add nuw nsw i64 %250, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %248, i8 1, i64 %251, i1 false), !tbaa !48
  %252 = load i8, ptr %33, align 1, !tbaa !48
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %211, label %254

254:                                              ; preds = %241, %244
  %255 = phi i8 [ %252, %244 ], [ %242, %241 ]
  %256 = getelementptr inbounds i8, ptr %17, i64 2
  %257 = zext i8 %255 to i64
  %258 = shl nuw nsw i64 %257, 3
  br label %259

259:                                              ; preds = %254, %274
  %260 = phi i64 [ %258, %254 ], [ %261, %274 ]
  %261 = add nsw i64 %260, -1
  %262 = trunc i64 %261 to i32
  %263 = lshr i64 %261, 3
  %264 = and i64 %263, 536870911
  %265 = getelementptr inbounds i8, ptr %256, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !48
  %267 = zext i8 %266 to i32
  %268 = and i32 %262, 7
  %269 = shl nuw nsw i32 1, %268
  %270 = and i32 %269, %267
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %259
  %273 = getelementptr inbounds i8, ptr %3, i64 %261
  store i8 1, ptr %273, align 1, !tbaa !48
  br label %274

274:                                              ; preds = %259, %272
  %275 = icmp ugt i64 %260, 1
  br i1 %275, label %259, label %211, !llvm.loop !55

276:                                              ; preds = %32
  %277 = getelementptr inbounds i8, ptr %3, i64 10
  %278 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 3
  %279 = load i8, ptr %277, align 1, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 1, i64 256, i1 false), !tbaa !48
  %280 = load i64, ptr %278, align 8, !tbaa !56
  %281 = and i64 %280, 64
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  store i8 %279, ptr %277, align 1, !tbaa !48
  br label %211

284:                                              ; preds = %276
  %285 = load i8, ptr %9, align 8
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %211, label %383

288:                                              ; preds = %32, %32, %32, %32, %32, %32
  %289 = load i8, ptr %33, align 1, !tbaa !48
  %290 = zext i8 %289 to i32
  %291 = getelementptr inbounds i8, ptr %17, i64 2
  %292 = load i8, ptr %291, align 1, !tbaa !48
  %293 = sext i8 %292 to i32
  %294 = shl nsw i32 %293, 8
  %295 = or disjoint i32 %294, %290
  %296 = getelementptr inbounds i8, ptr %17, i64 3
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i8, ptr %296, i64 %297
  %299 = icmp sgt i32 %295, 0
  br i1 %299, label %211, label %300

300:                                              ; preds = %288
  %301 = load i8, ptr %298, align 1, !tbaa !48
  switch i8 %301, label %211 [
    i8 15, label %302
    i8 21, label %302
  ]

302:                                              ; preds = %300, %300
  %303 = getelementptr inbounds i8, ptr %298, i64 1
  %304 = load i8, ptr %303, align 1, !tbaa !48
  %305 = zext i8 %304 to i32
  %306 = getelementptr inbounds i8, ptr %298, i64 2
  %307 = load i8, ptr %306, align 1, !tbaa !48
  %308 = sext i8 %307 to i32
  %309 = shl nsw i32 %308, 8
  %310 = or disjoint i32 %309, %305
  %311 = getelementptr inbounds i8, ptr %298, i64 3
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8, ptr %311, i64 %312
  %314 = icmp eq i32 %16, 0
  br i1 %314, label %211, label %315

315:                                              ; preds = %302
  %316 = add i32 %16, -1
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %14, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !48
  %320 = icmp eq ptr %319, %313
  %321 = select i1 %320, i32 %316, i32 %16
  br label %211

322:                                              ; preds = %363, %32, %32
  %323 = phi i1 [ true, %32 ], [ true, %32 ], [ false, %363 ]
  %324 = load i8, ptr %33, align 1, !tbaa !48
  %325 = zext i8 %324 to i32
  %326 = getelementptr inbounds i8, ptr %17, i64 2
  %327 = load i8, ptr %326, align 1, !tbaa !48
  %328 = sext i8 %327 to i32
  %329 = shl nsw i32 %328, 8
  %330 = or disjoint i32 %329, %325
  %331 = getelementptr inbounds i8, ptr %17, i64 3
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i8, ptr %331, i64 %332
  %334 = icmp ult ptr %333, %7
  br i1 %334, label %335, label %354

335:                                              ; preds = %322
  %336 = icmp eq i32 %16, %15
  br i1 %336, label %337, label %348

337:                                              ; preds = %335
  %338 = load i32, ptr @xre_max_failures, align 4, !tbaa !57
  %339 = mul nsw i32 %338, 19
  %340 = icmp ugt i32 %15, %339
  br i1 %340, label %383, label %341

341:                                              ; preds = %337
  %342 = shl i32 %15, 1
  %343 = zext i32 %342 to i64
  %344 = shl nuw nsw i64 %343, 3
  %345 = alloca i8, i64 %344, align 16
  %346 = zext i32 %15 to i64
  %347 = shl nuw nsw i64 %346, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %345, ptr align 8 %14, i64 %347, i1 false)
  br label %348

348:                                              ; preds = %341, %335
  %349 = phi ptr [ %345, %341 ], [ %14, %335 ]
  %350 = phi i32 [ %342, %341 ], [ %15, %335 ]
  %351 = add i32 %16, 1
  %352 = zext i32 %16 to i64
  %353 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %349, i64 %352
  store ptr %333, ptr %353, align 8, !tbaa !48
  br label %357

354:                                              ; preds = %322
  %355 = load i8, ptr %9, align 8
  %356 = or i8 %355, 1
  store i8 %356, ptr %9, align 8
  br label %357

357:                                              ; preds = %354, %348
  %358 = phi ptr [ %349, %348 ], [ %14, %354 ]
  %359 = phi i32 [ %350, %348 ], [ %15, %354 ]
  %360 = phi i32 [ %351, %348 ], [ %16, %354 ]
  %361 = getelementptr inbounds i8, ptr %17, i64 5
  %362 = select i1 %323, ptr %331, ptr %361
  br label %211

363:                                              ; preds = %32
  %364 = getelementptr inbounds i8, ptr %17, i64 3
  %365 = load i8, ptr %364, align 1, !tbaa !48
  %366 = zext i8 %365 to i32
  %367 = getelementptr inbounds i8, ptr %17, i64 4
  %368 = load i8, ptr %367, align 1, !tbaa !48
  %369 = sext i8 %368 to i32
  %370 = shl nsw i32 %369, 8
  %371 = or disjoint i32 %370, %366
  %372 = getelementptr inbounds i8, ptr %17, i64 5
  %373 = icmp eq i32 %371, 0
  br i1 %373, label %322, label %211

374:                                              ; preds = %32
  %375 = getelementptr inbounds i8, ptr %17, i64 5
  br label %211

376:                                              ; preds = %32, %32
  %377 = getelementptr inbounds i8, ptr %17, i64 3
  br label %211

378:                                              ; preds = %32
  tail call void @abort() #24
  unreachable

379:                                              ; preds = %23, %32
  %380 = phi i8 [ 1, %32 ], [ %18, %23 ]
  %381 = load i8, ptr %9, align 8
  %382 = or i8 %381, %380
  store i8 %382, ptr %9, align 8
  br label %383

383:                                              ; preds = %284, %337, %379
  %384 = phi i32 [ 0, %379 ], [ 0, %284 ], [ -2, %337 ]
  ret i32 %384
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @xre_set_registers(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 !prof !35 {
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, -7
  %10 = or disjoint i8 %9, 2
  %11 = select i1 %6, i8 %9, i8 %10
  %12 = select i1 %6, ptr null, ptr %4
  %13 = select i1 %6, ptr null, ptr %3
  store i8 %11, ptr %7, align 8
  store i32 %2, ptr %1, align 8
  %14 = getelementptr inbounds %struct.re_registers, ptr %1, i64 0, i32 2
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %struct.re_registers, ptr %1, i64 0, i32 1
  store ptr %13, ptr %15, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_search(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 !prof !35 {
  %7 = tail call i32 @xre_search_2(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %2) #23
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_search_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #2 !prof !35 {
  %10 = tail call fastcc i32 @byte_re_search_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #23
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @byte_re_search_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #2 !prof !35 !PGOFuncName !58 {
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = add nsw i32 %4, %2
  %15 = icmp slt i32 %5, 0
  %16 = icmp slt i32 %14, %5
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %160, label %18

18:                                               ; preds = %9
  %19 = add nsw i32 %6, %5
  %20 = icmp slt i32 %19, 0
  %21 = sub nsw i32 0, %5
  %22 = icmp sgt i32 %19, %14
  %23 = sub nsw i32 %14, %5
  %24 = select i1 %22, i32 %23, i32 %6
  %25 = select i1 %20, i32 %21, i32 %24
  %26 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !47
  %28 = icmp ne i64 %27, 0
  %29 = icmp sgt i32 %25, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load ptr, ptr %0, align 8, !tbaa !46
  %33 = load i8, ptr %32, align 1, !tbaa !48
  switch i8 %33, label %40 [
    i8 11, label %38
    i8 9, label %34
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %36 = load i8, ptr %35, align 8
  %37 = icmp sgt i8 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %34
  %39 = icmp eq i32 %5, 0
  br i1 %39, label %40, label %160

40:                                               ; preds = %38, %31, %34, %18
  %41 = phi i32 [ %25, %34 ], [ %25, %18 ], [ %25, %31 ], [ 1, %38 ]
  %42 = icmp ne ptr %11, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = tail call i32 @xre_compile_fastmap(ptr noundef nonnull %0) #23, !range !40
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %160, label %51

51:                                               ; preds = %48, %43, %40
  %52 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %53 = icmp eq ptr %13, null
  %54 = sext i32 %2 to i64
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds i8, ptr %3, i64 %55
  br label %57

57:                                               ; preds = %154, %51
  %58 = phi i32 [ %41, %51 ], [ %157, %154 ]
  %59 = phi i32 [ %5, %51 ], [ %159, %154 ]
  %60 = icmp slt i32 %59, %14
  %61 = select i1 %42, i1 %60, i1 false
  br i1 %61, label %62, label %134

62:                                               ; preds = %57
  %63 = load i8, ptr %52, align 8
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %134

66:                                               ; preds = %62
  %67 = icmp sgt i32 %58, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %66
  %69 = icmp sge i32 %59, %2
  %70 = add i32 %59, %58
  %71 = icmp slt i32 %70, %2
  %72 = select i1 %69, i1 true, i1 %71
  %73 = sub i32 %58, %2
  %74 = add i32 %73, %59
  %75 = select i1 %72, i32 0, i32 %74
  %76 = icmp slt i32 %59, %2
  %77 = select i1 %76, ptr %1, ptr %56
  %78 = sext i32 %59 to i64
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = icmp sgt i32 %58, %75
  br i1 %53, label %82, label %81

81:                                               ; preds = %68
  br i1 %80, label %83, label %110

82:                                               ; preds = %68
  br i1 %80, label %98, label %110

83:                                               ; preds = %81, %94
  %84 = phi ptr [ %95, %94 ], [ %79, %81 ]
  %85 = phi i32 [ %96, %94 ], [ %58, %81 ]
  %86 = load i8, ptr %84, align 1, !tbaa !48
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds i8, ptr %13, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !48
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i8, ptr %11, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !48
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %83
  %95 = getelementptr inbounds i8, ptr %84, i64 1
  %96 = add nsw i32 %85, -1
  %97 = icmp sgt i32 %96, %75
  br i1 %97, label %83, label %110, !llvm.loop !60

98:                                               ; preds = %82, %106
  %99 = phi ptr [ %107, %106 ], [ %79, %82 ]
  %100 = phi i32 [ %108, %106 ], [ %58, %82 ]
  %101 = load i8, ptr %99, align 1, !tbaa !48
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i8, ptr %11, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !48
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = getelementptr inbounds i8, ptr %99, i64 1
  %108 = add nsw i32 %100, -1
  %109 = icmp sgt i32 %108, %75
  br i1 %109, label %98, label %110, !llvm.loop !61

110:                                              ; preds = %94, %83, %106, %98, %81, %82
  %111 = phi i32 [ %58, %82 ], [ %58, %81 ], [ %75, %106 ], [ %100, %98 ], [ %75, %94 ], [ %85, %83 ]
  %112 = sub i32 %70, %111
  br label %134

113:                                              ; preds = %66
  %114 = icmp ne i32 %2, 0
  %115 = icmp slt i32 %59, %2
  %116 = select i1 %114, i1 %115, i1 false
  %117 = sub nsw i32 %59, %2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %3, i64 %118
  %120 = sext i32 %59 to i64
  %121 = getelementptr inbounds i8, ptr %1, i64 %120
  %122 = select i1 %116, ptr %121, ptr %119
  %123 = load i8, ptr %122, align 1, !tbaa !48
  br i1 %53, label %128, label %124

124:                                              ; preds = %113
  %125 = zext i8 %123 to i64
  %126 = getelementptr inbounds i8, ptr %13, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !48
  br label %128

128:                                              ; preds = %113, %124
  %129 = phi i8 [ %127, %124 ], [ %123, %113 ]
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i8, ptr %11, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !48
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %128, %110, %62, %57
  %135 = phi i32 [ %58, %62 ], [ %111, %110 ], [ %58, %128 ], [ %58, %57 ]
  %136 = phi i32 [ %59, %62 ], [ %112, %110 ], [ %59, %128 ], [ %59, %57 ]
  %137 = icmp sgt i32 %135, -1
  %138 = icmp eq i32 %136, %14
  %139 = and i1 %42, %138
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i8, ptr %52, align 8
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %141, %134
  %146 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %136, ptr noundef %7, i32 noundef %8) #23
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %160, label %148

148:                                              ; preds = %145
  %149 = icmp eq i32 %146, -2
  br i1 %149, label %160, label %150

150:                                              ; preds = %128, %148
  %151 = phi i32 [ %135, %148 ], [ %58, %128 ]
  %152 = phi i32 [ %136, %148 ], [ %59, %128 ]
  %153 = icmp eq i32 %151, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = icmp sgt i32 %151, 0
  %156 = select i1 %155, i32 -1, i32 1
  %157 = add nsw i32 %156, %151
  %158 = select i1 %155, i32 1, i32 -1
  %159 = add nsw i32 %158, %152
  br label %57

160:                                              ; preds = %150, %148, %145, %141, %48, %38, %9
  %161 = phi i32 [ -1, %9 ], [ -1, %38 ], [ -2, %48 ], [ -1, %150 ], [ -2, %148 ], [ %136, %145 ], [ -1, %141 ]
  ret i32 %161
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @byte_re_match_2_internal(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #2 !prof !35 !PGOFuncName !62 {
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %10 = load ptr, ptr %0, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !63
  %18 = add i64 %17, 1
  %19 = alloca [40 x i8], align 16
  %20 = icmp eq i64 %17, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %8
  %22 = shl i64 %18, 3
  %23 = alloca i8, i64 %22, align 16
  %24 = alloca i8, i64 %22, align 16
  %25 = alloca i8, i64 %22, align 16
  %26 = alloca i8, i64 %22, align 16
  %27 = alloca i8, i64 %22, align 16
  %28 = alloca i8, i64 %22, align 16
  %29 = alloca i8, i64 %22, align 16
  %30 = alloca i8, i64 %22, align 16
  %31 = alloca i8, i64 %22, align 16
  %32 = icmp slt i32 %5, 0
  %33 = add nsw i32 %4, %2
  %34 = icmp slt i32 %33, %5
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %1721, label %41

36:                                               ; preds = %8
  %37 = icmp slt i32 %5, 0
  %38 = add nsw i32 %4, %2
  %39 = icmp slt i32 %38, %5
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %1721, label %55

41:                                               ; preds = %21
  %42 = icmp ugt i64 %18, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %41, %43
  %44 = phi i64 [ %53, %43 ], [ 1, %41 ]
  %45 = getelementptr inbounds ptr, ptr %26, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %45, align 8, !tbaa !64
  %46 = getelementptr inbounds ptr, ptr %25, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %46, align 8, !tbaa !64
  %47 = getelementptr inbounds ptr, ptr %24, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %47, align 8, !tbaa !64
  %48 = getelementptr inbounds ptr, ptr %23, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %48, align 8, !tbaa !64
  %49 = getelementptr inbounds %union.byte_register_info_type, ptr %29, i64 %44
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, -32
  %52 = or disjoint i8 %51, 3
  store i8 %52, ptr %49, align 8
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %44, %17
  br i1 %54, label %55, label %43, !llvm.loop !65

55:                                               ; preds = %43, %36, %41
  %56 = phi i1 [ false, %41 ], [ false, %36 ], [ %42, %43 ]
  %57 = phi ptr [ %23, %41 ], [ null, %36 ], [ %23, %43 ]
  %58 = phi ptr [ %24, %41 ], [ null, %36 ], [ %24, %43 ]
  %59 = phi ptr [ %25, %41 ], [ null, %36 ], [ %25, %43 ]
  %60 = phi ptr [ %26, %41 ], [ null, %36 ], [ %26, %43 ]
  %61 = phi ptr [ %29, %41 ], [ null, %36 ], [ %29, %43 ]
  %62 = phi ptr [ %27, %41 ], [ null, %36 ], [ %27, %43 ]
  %63 = phi ptr [ %28, %41 ], [ null, %36 ], [ %28, %43 ]
  %64 = phi ptr [ %30, %41 ], [ null, %36 ], [ %30, %43 ]
  %65 = phi ptr [ %31, %41 ], [ null, %36 ], [ %31, %43 ]
  %66 = icmp eq i32 %4, 0
  %67 = icmp ne ptr %1, null
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %55
  %71 = phi i32 [ %2, %69 ], [ %4, %55 ]
  %72 = phi ptr [ %1, %69 ], [ %3, %55 ]
  %73 = phi i32 [ 0, %69 ], [ %2, %55 ]
  %74 = phi ptr [ null, %69 ], [ %1, %55 ]
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, ptr %74, i64 %75
  %77 = sext i32 %71 to i64
  %78 = getelementptr inbounds i8, ptr %72, i64 %77
  %79 = icmp slt i32 %73, %7
  %80 = sext i32 %7 to i64
  %81 = getelementptr inbounds i8, ptr %74, i64 %80
  %82 = getelementptr inbounds i8, ptr %72, i64 %80
  %83 = sub nsw i64 0, %75
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  %85 = select i1 %79, ptr %84, ptr %72
  %86 = select i1 %79, ptr %76, ptr %81
  %87 = icmp slt i32 %73, 1
  %88 = icmp slt i32 %73, %5
  %89 = or i1 %87, %88
  %90 = zext nneg i32 %5 to i64
  %91 = getelementptr inbounds i8, ptr %74, i64 %90
  %92 = getelementptr inbounds i8, ptr %72, i64 %90
  %93 = getelementptr inbounds i8, ptr %92, i64 %83
  %94 = select i1 %89, ptr %85, ptr %86
  %95 = select i1 %89, ptr %93, ptr %91
  %96 = getelementptr inbounds i8, ptr %72, i64 -1
  %97 = getelementptr inbounds i8, ptr %76, i64 -1
  %98 = icmp eq i32 %73, 0
  %99 = select i1 %98, ptr %72, ptr %74
  %100 = icmp ne i32 %71, 0
  %101 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %102 = icmp ne i32 %73, 0
  br label %103

103:                                              ; preds = %1712, %70
  %104 = phi i32 [ %1629, %1712 ], [ 0, %70 ]
  %105 = phi ptr [ %1628, %1712 ], [ null, %70 ]
  %106 = phi i64 [ %1648, %1712 ], [ 256, %70 ]
  %107 = phi i64 [ %1653, %1712 ], [ 257, %70 ]
  %108 = phi ptr [ %1627, %1712 ], [ %19, %70 ]
  %109 = phi i32 [ %1626, %1712 ], [ 5, %70 ]
  %110 = phi i32 [ %1676, %1712 ], [ 0, %70 ]
  %111 = phi ptr [ %1630, %1712 ], [ null, %70 ]
  %112 = phi ptr [ %1643, %1712 ], [ %10, %70 ]
  %113 = phi ptr [ %1716, %1712 ], [ %94, %70 ]
  %114 = phi ptr [ %1639, %1712 ], [ %95, %70 ]
  %115 = icmp eq ptr %112, %13
  br i1 %115, label %116, label %331

116:                                              ; preds = %1600, %103
  %117 = phi ptr [ %108, %103 ], [ %1604, %1600 ]
  %118 = phi i32 [ %109, %103 ], [ %1605, %1600 ]
  %119 = phi i32 [ %110, %103 ], [ %1606, %1600 ]
  %120 = phi ptr [ %111, %103 ], [ %1607, %1600 ]
  %121 = phi ptr [ %113, %103 ], [ %1609, %1600 ]
  %122 = phi ptr [ %114, %103 ], [ %1610, %1600 ]
  %123 = icmp eq ptr %122, %85
  br i1 %123, label %169, label %124

124:                                              ; preds = %116
  %125 = icmp ule ptr %74, %105
  %126 = select i1 %102, i1 %125, i1 false
  %127 = icmp ule ptr %105, %76
  %128 = select i1 %126, i1 %127, i1 false
  %129 = icmp eq ptr %121, %86
  %130 = xor i1 %128, %129
  br i1 %130, label %133, label %131

131:                                              ; preds = %124
  %132 = icmp ugt ptr %122, %105
  br label %135

133:                                              ; preds = %124
  %134 = xor i1 %129, true
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i1 [ %132, %131 ], [ %134, %133 ]
  %137 = icmp eq i32 %119, 0
  %138 = icmp eq i32 %104, 0
  %139 = select i1 %138, i1 true, i1 %136
  br i1 %137, label %152, label %140

140:                                              ; preds = %135
  br i1 %139, label %141, label %1622

141:                                              ; preds = %140
  br i1 %56, label %142, label %1622

142:                                              ; preds = %141, %142
  %143 = phi i64 [ %150, %142 ], [ 1, %141 ]
  %144 = getelementptr inbounds ptr, ptr %57, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !64
  %146 = getelementptr inbounds ptr, ptr %62, i64 %143
  store ptr %145, ptr %146, align 8, !tbaa !64
  %147 = getelementptr inbounds ptr, ptr %58, i64 %143
  %148 = load ptr, ptr %147, align 8, !tbaa !64
  %149 = getelementptr inbounds ptr, ptr %63, i64 %143
  store ptr %148, ptr %149, align 8, !tbaa !64
  %150 = add nuw nsw i64 %143, 1
  %151 = icmp eq i64 %143, %17
  br i1 %151, label %1612, label %142, !llvm.loop !66

152:                                              ; preds = %135
  br i1 %139, label %169, label %153

153:                                              ; preds = %1717, %152
  %154 = phi ptr [ %105, %152 ], [ %1718, %1717 ]
  %155 = icmp ult ptr %154, %74
  %156 = icmp ugt ptr %154, %76
  %157 = select i1 %155, i1 true, i1 %156
  %158 = select i1 %157, ptr %85, ptr %86
  br i1 %56, label %159, label %169

159:                                              ; preds = %153, %159
  %160 = phi i64 [ %167, %159 ], [ 1, %153 ]
  %161 = getelementptr inbounds ptr, ptr %62, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !64
  %163 = getelementptr inbounds ptr, ptr %57, i64 %160
  store ptr %162, ptr %163, align 8, !tbaa !64
  %164 = getelementptr inbounds ptr, ptr %63, i64 %160
  %165 = load ptr, ptr %164, align 8, !tbaa !64
  %166 = getelementptr inbounds ptr, ptr %58, i64 %160
  store ptr %165, ptr %166, align 8, !tbaa !64
  %167 = add nuw nsw i64 %160, 1
  %168 = icmp eq i64 %160, %17
  br i1 %168, label %169, label %159, !llvm.loop !67

169:                                              ; preds = %116, %331, %159, %153, %152
  %170 = phi ptr [ %121, %152 ], [ %158, %153 ], [ %158, %159 ], [ %333, %331 ], [ %121, %116 ]
  %171 = phi ptr [ %122, %152 ], [ %154, %153 ], [ %154, %159 ], [ %332, %331 ], [ %85, %116 ]
  %172 = icmp eq ptr %6, null
  br i1 %172, label %321, label %173

173:                                              ; preds = %169
  %174 = load i8, ptr %101, align 8
  %175 = and i8 %174, 16
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %321

177:                                              ; preds = %173
  %178 = lshr i8 %174, 1
  %179 = and i8 %178, 3
  switch i8 %179, label %219 [
    i8 0, label %180
    i8 1, label %197
  ]

180:                                              ; preds = %177
  %181 = add i64 %17, 2
  %182 = tail call i64 @llvm.umax.i64(i64 %181, i64 30)
  %183 = trunc i64 %182 to i32
  store i32 %183, ptr %6, align 8, !tbaa !68
  %184 = shl i64 %182, 2
  %185 = and i64 %184, 17179869180
  %186 = tail call ptr @malloc(i64 noundef %185) #26
  %187 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  store ptr %186, ptr %187, align 8, !tbaa !70
  %188 = tail call ptr @malloc(i64 noundef %185) #26
  %189 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  store ptr %188, ptr %189, align 8, !tbaa !71
  %190 = icmp eq ptr %186, null
  %191 = icmp eq ptr %188, null
  %192 = or i1 %190, %191
  br i1 %192, label %1721, label %193

193:                                              ; preds = %180
  %194 = load i8, ptr %101, align 8
  %195 = and i8 %194, -7
  %196 = or disjoint i8 %195, 2
  store i8 %196, ptr %101, align 8
  br label %219

197:                                              ; preds = %177
  %198 = load i32, ptr %6, align 8, !tbaa !68
  %199 = zext i32 %198 to i64
  %200 = add i64 %17, 2
  %201 = icmp ugt i64 %200, %199
  br i1 %201, label %202, label %221

202:                                              ; preds = %197
  %203 = trunc i64 %200 to i32
  store i32 %203, ptr %6, align 8, !tbaa !68
  %204 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !70
  %206 = shl i64 %200, 2
  %207 = and i64 %206, 17179869180
  %208 = tail call ptr @realloc(ptr noundef %205, i64 noundef %207) #27
  store ptr %208, ptr %204, align 8, !tbaa !70
  %209 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !71
  %211 = load i32, ptr %6, align 8, !tbaa !68
  %212 = zext i32 %211 to i64
  %213 = shl nuw nsw i64 %212, 2
  %214 = tail call ptr @realloc(ptr noundef %210, i64 noundef %213) #27
  store ptr %214, ptr %209, align 8, !tbaa !71
  %215 = load ptr, ptr %204, align 8, !tbaa !70
  %216 = icmp eq ptr %215, null
  %217 = icmp eq ptr %214, null
  %218 = or i1 %217, %216
  br i1 %218, label %1721, label %219

219:                                              ; preds = %193, %177, %202
  %220 = load i32, ptr %6, align 8, !tbaa !68
  br label %221

221:                                              ; preds = %219, %197
  %222 = phi i32 [ %220, %219 ], [ %198, %197 ]
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %240, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !70
  store i32 %5, ptr %226, align 4, !tbaa !57
  %227 = icmp eq ptr %170, %86
  %228 = ptrtoint ptr %171 to i64
  %229 = ptrtoint ptr %74 to i64
  %230 = sub i64 %228, %229
  %231 = trunc i64 %230 to i32
  %232 = ptrtoint ptr %72 to i64
  %233 = sub i64 %228, %232
  %234 = trunc i64 %233 to i32
  %235 = add i32 %73, %234
  %236 = select i1 %227, i32 %231, i32 %235
  %237 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !71
  store i32 %236, ptr %238, align 4, !tbaa !57
  %239 = load i32, ptr %6, align 8, !tbaa !68
  br label %240

240:                                              ; preds = %224, %221
  %241 = phi i32 [ %239, %224 ], [ 0, %221 ]
  %242 = zext i32 %241 to i64
  %243 = tail call i64 @llvm.umin.i64(i64 %18, i64 %242)
  %244 = icmp ugt i64 %243, 1
  br i1 %244, label %245, label %302

245:                                              ; preds = %240
  %246 = ptrtoint ptr %74 to i64
  %247 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %248 = ptrtoint ptr %72 to i64
  %249 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  br label %250

250:                                              ; preds = %245, %292
  %251 = phi i64 [ 1, %245 ], [ %297, %292 ]
  %252 = getelementptr inbounds ptr, ptr %57, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !64
  %254 = icmp eq ptr %253, @byte_reg_unset_dummy
  br i1 %254, label %259, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds ptr, ptr %58, i64 %251
  %257 = load ptr, ptr %256, align 8, !tbaa !64
  %258 = icmp eq ptr %257, @byte_reg_unset_dummy
  br i1 %258, label %259, label %262

259:                                              ; preds = %255, %250
  %260 = load ptr, ptr %249, align 8, !tbaa !71
  %261 = getelementptr inbounds i32, ptr %260, i64 %251
  store i32 -1, ptr %261, align 4, !tbaa !57
  br label %292

262:                                              ; preds = %255
  %263 = icmp ugt ptr %74, %253
  %264 = or i1 %98, %263
  %265 = icmp ugt ptr %253, %76
  %266 = select i1 %264, i1 true, i1 %265
  %267 = ptrtoint ptr %253 to i64
  br i1 %266, label %273, label %268

268:                                              ; preds = %262
  %269 = sub i64 %267, %246
  %270 = trunc i64 %269 to i32
  %271 = load ptr, ptr %247, align 8, !tbaa !70
  %272 = getelementptr inbounds i32, ptr %271, i64 %251
  store i32 %270, ptr %272, align 4, !tbaa !57
  br label %279

273:                                              ; preds = %262
  %274 = sub i64 %267, %248
  %275 = trunc i64 %274 to i32
  %276 = add i32 %73, %275
  %277 = load ptr, ptr %247, align 8, !tbaa !70
  %278 = getelementptr inbounds i32, ptr %277, i64 %251
  store i32 %276, ptr %278, align 4, !tbaa !57
  br i1 %98, label %287, label %279

279:                                              ; preds = %268, %273
  %280 = icmp ugt ptr %74, %257
  %281 = icmp ugt ptr %257, %76
  %282 = select i1 %280, i1 true, i1 %281
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = ptrtoint ptr %257 to i64
  %285 = sub i64 %284, %246
  %286 = trunc i64 %285 to i32
  br label %292

287:                                              ; preds = %279, %273
  %288 = ptrtoint ptr %257 to i64
  %289 = sub i64 %288, %248
  %290 = trunc i64 %289 to i32
  %291 = add i32 %73, %290
  br label %292

292:                                              ; preds = %283, %287, %259
  %293 = phi ptr [ %247, %259 ], [ %249, %287 ], [ %249, %283 ]
  %294 = phi i32 [ -1, %259 ], [ %291, %287 ], [ %286, %283 ]
  %295 = load ptr, ptr %293, align 8, !tbaa !64
  %296 = getelementptr inbounds i32, ptr %295, i64 %251
  store i32 %294, ptr %296, align 4, !tbaa !57
  %297 = add nuw nsw i64 %251, 1
  %298 = load i32, ptr %6, align 8, !tbaa !68
  %299 = zext i32 %298 to i64
  %300 = tail call i64 @llvm.umin.i64(i64 %18, i64 %299)
  %301 = icmp ugt i64 %300, %297
  br i1 %301, label %250, label %302, !llvm.loop !72

302:                                              ; preds = %292, %240
  %303 = phi i32 [ %241, %240 ], [ %298, %292 ]
  %304 = trunc i64 %18 to i32
  %305 = icmp ugt i32 %303, %304
  br i1 %305, label %306, label %321

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !71
  %309 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !70
  %311 = shl i64 %18, 32
  %312 = ashr exact i64 %311, 32
  br label %313

313:                                              ; preds = %306, %313
  %314 = phi i64 [ %312, %306 ], [ %317, %313 ]
  %315 = getelementptr inbounds i32, ptr %308, i64 %314
  store i32 -1, ptr %315, align 4, !tbaa !57
  %316 = getelementptr inbounds i32, ptr %310, i64 %314
  store i32 -1, ptr %316, align 4, !tbaa !57
  %317 = add nsw i64 %314, 1
  %318 = load i32, ptr %6, align 8, !tbaa !68
  %319 = trunc i64 %317 to i32
  %320 = icmp ugt i32 %318, %319
  br i1 %320, label %313, label %321, !llvm.loop !73

321:                                              ; preds = %313, %302, %173, %169
  %322 = sub nsw i64 0, %90
  %323 = getelementptr inbounds i8, ptr %171, i64 %322
  %324 = icmp eq ptr %170, %86
  %325 = getelementptr inbounds i8, ptr %72, i64 %83
  %326 = select i1 %324, ptr %74, ptr %325
  %327 = ptrtoint ptr %323 to i64
  %328 = ptrtoint ptr %326 to i64
  %329 = sub i64 %327, %328
  %330 = trunc i64 %329 to i32
  br label %1721

331:                                              ; preds = %103, %1600
  %332 = phi ptr [ %1610, %1600 ], [ %114, %103 ]
  %333 = phi ptr [ %1609, %1600 ], [ %113, %103 ]
  %334 = phi ptr [ %1608, %1600 ], [ %112, %103 ]
  %335 = phi ptr [ %1607, %1600 ], [ %111, %103 ]
  %336 = phi i32 [ %1606, %1600 ], [ %110, %103 ]
  %337 = phi i32 [ %1605, %1600 ], [ %109, %103 ]
  %338 = phi ptr [ %1604, %1600 ], [ %108, %103 ]
  %339 = phi i64 [ %1603, %1600 ], [ %107, %103 ]
  %340 = phi i64 [ %1602, %1600 ], [ %106, %103 ]
  %341 = phi i32 [ %1601, %1600 ], [ 0, %103 ]
  %342 = getelementptr inbounds i8, ptr %334, i64 1
  %343 = load i8, ptr %334, align 1, !tbaa !48
  switch i8 %343, label %1599 [
    i8 0, label %1600
    i8 1, label %169
    i8 2, label %364
    i8 3, label %429
    i8 4, label %475
    i8 5, label %475
    i8 6, label %526
    i8 7, label %574
    i8 8, label %767
    i8 9, label %851
    i8 10, label %865
    i8 11, label %879
    i8 12, label %882
    i8 16, label %884
    i8 15, label %958
    i8 18, label %1052
    i8 17, label %1227
    i8 13, label %1259
    i8 14, label %1259
    i8 19, label %354
    i8 20, label %344
    i8 21, label %1382
    i8 22, label %1401
    i8 23, label %1418
    i8 28, label %1435
    i8 29, label %1462
    i8 26, label %1489
    i8 27, label %1515
    i8 24, label %1541
    i8 25, label %1570
  ]

344:                                              ; preds = %331
  %345 = sub i64 %340, %339
  %346 = mul i64 %345, 3
  %347 = add i64 %346, 7
  %348 = sub i32 %337, %336
  %349 = zext i32 %348 to i64
  %350 = icmp ugt i64 %347, %349
  br i1 %350, label %351, label %1328

351:                                              ; preds = %344
  %352 = load i32, ptr @xre_max_failures, align 4, !tbaa !57
  %353 = mul nsw i32 %352, 19
  br label %1332

354:                                              ; preds = %331
  %355 = sub i64 %340, %339
  %356 = mul i64 %355, 3
  %357 = add i64 %356, 7
  %358 = sub i32 %337, %336
  %359 = zext i32 %358 to i64
  %360 = icmp ugt i64 %357, %359
  br i1 %360, label %361, label %1274

361:                                              ; preds = %354
  %362 = load i32, ptr @xre_max_failures, align 4, !tbaa !57
  %363 = mul nsw i32 %362, 19
  br label %1278

364:                                              ; preds = %331
  %365 = icmp eq ptr %15, null
  %366 = getelementptr inbounds i8, ptr %334, i64 2
  %367 = load i8, ptr %342, align 1, !tbaa !48
  %368 = zext i8 %367 to i32
  %369 = getelementptr i8, ptr %334, i64 3
  %370 = add nsw i32 %368, -1
  %371 = zext i32 %370 to i64
  %372 = getelementptr i8, ptr %369, i64 %371
  br i1 %365, label %396, label %373

373:                                              ; preds = %364, %392
  %374 = phi ptr [ %393, %392 ], [ %366, %364 ]
  %375 = phi ptr [ %379, %392 ], [ %333, %364 ]
  %376 = phi ptr [ %385, %392 ], [ %332, %364 ]
  %377 = phi i32 [ %394, %392 ], [ %368, %364 ]
  br label %378

378:                                              ; preds = %382, %373
  %379 = phi ptr [ %375, %373 ], [ %85, %382 ]
  %380 = phi ptr [ %376, %373 ], [ %72, %382 ]
  %381 = icmp eq ptr %380, %379
  br i1 %381, label %382, label %384

382:                                              ; preds = %378
  %383 = icmp eq ptr %379, %85
  br i1 %383, label %1612, label %378, !llvm.loop !74

384:                                              ; preds = %378
  %385 = getelementptr inbounds i8, ptr %380, i64 1
  %386 = load i8, ptr %380, align 1, !tbaa !48
  %387 = zext i8 %386 to i64
  %388 = getelementptr inbounds i8, ptr %15, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !48
  %390 = load i8, ptr %374, align 1, !tbaa !48
  %391 = icmp eq i8 %389, %390
  br i1 %391, label %392, label %1612

392:                                              ; preds = %384
  %393 = getelementptr inbounds i8, ptr %374, i64 1
  %394 = add nsw i32 %377, -1
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %416, label %373, !llvm.loop !75

396:                                              ; preds = %364, %412
  %397 = phi ptr [ %413, %412 ], [ %366, %364 ]
  %398 = phi ptr [ %402, %412 ], [ %333, %364 ]
  %399 = phi ptr [ %408, %412 ], [ %332, %364 ]
  %400 = phi i32 [ %414, %412 ], [ %368, %364 ]
  br label %401

401:                                              ; preds = %405, %396
  %402 = phi ptr [ %398, %396 ], [ %85, %405 ]
  %403 = phi ptr [ %399, %396 ], [ %72, %405 ]
  %404 = icmp eq ptr %403, %402
  br i1 %404, label %405, label %407

405:                                              ; preds = %401
  %406 = icmp eq ptr %402, %85
  br i1 %406, label %1612, label %401, !llvm.loop !76

407:                                              ; preds = %401
  %408 = getelementptr inbounds i8, ptr %403, i64 1
  %409 = load i8, ptr %403, align 1, !tbaa !48
  %410 = load i8, ptr %397, align 1, !tbaa !48
  %411 = icmp eq i8 %409, %410
  br i1 %411, label %412, label %1612

412:                                              ; preds = %407
  %413 = getelementptr inbounds i8, ptr %397, i64 1
  %414 = add nsw i32 %400, -1
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %396, !llvm.loop !77

416:                                              ; preds = %392, %412
  %417 = phi ptr [ %402, %412 ], [ %379, %392 ]
  %418 = phi ptr [ %408, %412 ], [ %385, %392 ]
  %419 = icmp ne i32 %341, 0
  %420 = icmp ugt i64 %339, %340
  %421 = select i1 %419, i1 true, i1 %420
  br i1 %421, label %1600, label %422

422:                                              ; preds = %416, %422
  %423 = phi i64 [ %427, %422 ], [ %339, %416 ]
  %424 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %423
  %425 = load i8, ptr %424, align 8
  %426 = or i8 %425, 24
  store i8 %426, ptr %424, align 8
  %427 = add i64 %423, 1
  %428 = icmp ugt i64 %427, %340
  br i1 %428, label %1600, label %422, !llvm.loop !78

429:                                              ; preds = %331, %433
  %430 = phi ptr [ %85, %433 ], [ %333, %331 ]
  %431 = phi ptr [ %72, %433 ], [ %332, %331 ]
  %432 = icmp eq ptr %431, %430
  br i1 %432, label %433, label %435

433:                                              ; preds = %429
  %434 = icmp eq ptr %430, %85
  br i1 %434, label %1612, label %429, !llvm.loop !79

435:                                              ; preds = %429
  %436 = icmp eq ptr %15, null
  %437 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 3
  %438 = load i64, ptr %437, align 8, !tbaa !56
  %439 = and i64 %438, 64
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %450

441:                                              ; preds = %435
  br i1 %436, label %446, label %442

442:                                              ; preds = %441
  %443 = load i8, ptr %431, align 1, !tbaa !48
  %444 = zext i8 %443 to i64
  %445 = getelementptr inbounds i8, ptr %15, i64 %444
  br label %446

446:                                              ; preds = %441, %442
  %447 = phi ptr [ %445, %442 ], [ %431, %441 ]
  %448 = load i8, ptr %447, align 1, !tbaa !48
  %449 = icmp eq i8 %448, 10
  br i1 %449, label %1612, label %450

450:                                              ; preds = %446, %435
  %451 = and i64 %438, 128
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %462, label %453

453:                                              ; preds = %450
  br i1 %436, label %458, label %454

454:                                              ; preds = %453
  %455 = load i8, ptr %431, align 1, !tbaa !48
  %456 = zext i8 %455 to i64
  %457 = getelementptr inbounds i8, ptr %15, i64 %456
  br label %458

458:                                              ; preds = %453, %454
  %459 = phi ptr [ %457, %454 ], [ %431, %453 ]
  %460 = load i8, ptr %459, align 1, !tbaa !48
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %1612, label %462

462:                                              ; preds = %450, %458
  %463 = icmp ne i32 %341, 0
  %464 = icmp ugt i64 %339, %340
  %465 = select i1 %463, i1 true, i1 %464
  br i1 %465, label %473, label %466

466:                                              ; preds = %462, %466
  %467 = phi i64 [ %471, %466 ], [ %339, %462 ]
  %468 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %467
  %469 = load i8, ptr %468, align 8
  %470 = or i8 %469, 24
  store i8 %470, ptr %468, align 8
  %471 = add i64 %467, 1
  %472 = icmp ugt i64 %471, %340
  br i1 %472, label %473, label %466, !llvm.loop !80

473:                                              ; preds = %466, %462
  %474 = getelementptr inbounds i8, ptr %431, i64 1
  br label %1600

475:                                              ; preds = %331, %331
  %476 = icmp eq i8 %343, 5
  br label %477

477:                                              ; preds = %481, %475
  %478 = phi ptr [ %333, %475 ], [ %85, %481 ]
  %479 = phi ptr [ %332, %475 ], [ %72, %481 ]
  %480 = icmp eq ptr %479, %478
  br i1 %480, label %481, label %483

481:                                              ; preds = %477
  %482 = icmp eq ptr %478, %85
  br i1 %482, label %1612, label %477, !llvm.loop !81

483:                                              ; preds = %477
  %484 = icmp eq ptr %15, null
  br i1 %484, label %489, label %485

485:                                              ; preds = %483
  %486 = load i8, ptr %479, align 1, !tbaa !48
  %487 = zext i8 %486 to i64
  %488 = getelementptr inbounds i8, ptr %15, i64 %487
  br label %489

489:                                              ; preds = %483, %485
  %490 = phi ptr [ %488, %485 ], [ %479, %483 ]
  %491 = load i8, ptr %490, align 1, !tbaa !48
  %492 = zext i8 %491 to i32
  %493 = load i8, ptr %342, align 1, !tbaa !48
  %494 = zext i8 %493 to i32
  %495 = shl nuw nsw i32 %494, 3
  %496 = icmp ugt i32 %495, %492
  br i1 %496, label %497, label %509

497:                                              ; preds = %489
  %498 = lshr i32 %492, 3
  %499 = zext nneg i32 %498 to i64
  %500 = getelementptr i8, ptr %342, i64 %499
  %501 = getelementptr i8, ptr %500, i64 1
  %502 = load i8, ptr %501, align 1, !tbaa !48
  %503 = zext i8 %502 to i32
  %504 = and i32 %492, 7
  %505 = shl nuw nsw i32 1, %504
  %506 = and i32 %505, %503
  %507 = icmp ne i32 %506, 0
  %508 = xor i1 %476, %507
  br i1 %508, label %510, label %1612

509:                                              ; preds = %489
  br i1 %476, label %510, label %1612

510:                                              ; preds = %497, %509
  %511 = zext i8 %493 to i64
  %512 = getelementptr i8, ptr %342, i64 %511
  %513 = getelementptr i8, ptr %512, i64 1
  %514 = icmp ne i32 %341, 0
  %515 = icmp ugt i64 %339, %340
  %516 = select i1 %514, i1 true, i1 %515
  br i1 %516, label %524, label %517

517:                                              ; preds = %510, %517
  %518 = phi i64 [ %522, %517 ], [ %339, %510 ]
  %519 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %518
  %520 = load i8, ptr %519, align 8
  %521 = or i8 %520, 24
  store i8 %521, ptr %519, align 8
  %522 = add i64 %518, 1
  %523 = icmp ugt i64 %522, %340
  br i1 %523, label %524, label %517, !llvm.loop !82

524:                                              ; preds = %517, %510
  %525 = getelementptr inbounds i8, ptr %479, i64 1
  br label %1600

526:                                              ; preds = %331
  store ptr %342, ptr %9, align 8, !tbaa !64
  %527 = load i8, ptr %342, align 1, !tbaa !48
  %528 = zext i8 %527 to i64
  %529 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %528
  %530 = load i8, ptr %529, align 8
  %531 = and i8 %530, 3
  %532 = icmp eq i8 %531, 3
  br i1 %532, label %533, label %545

533:                                              ; preds = %526
  %534 = call fastcc signext i8 @byte_group_match_null_string_p(ptr noundef nonnull %9, ptr noundef %13, ptr noundef nonnull %61) #23, !range !83
  %535 = load i8, ptr %342, align 1, !tbaa !48
  %536 = zext i8 %535 to i64
  %537 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %536
  %538 = load i8, ptr %537, align 8
  %539 = and i8 %538, -4
  %540 = or disjoint i8 %539, %534
  store i8 %540, ptr %537, align 8
  %541 = load i8, ptr %342, align 1, !tbaa !48
  %542 = zext i8 %541 to i64
  %543 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %542
  %544 = load i8, ptr %543, align 8
  br label %545

545:                                              ; preds = %533, %526
  %546 = phi i64 [ %542, %533 ], [ %528, %526 ]
  %547 = phi i8 [ %544, %533 ], [ %530, %526 ]
  %548 = and i8 %547, 3
  %549 = icmp eq i8 %548, 0
  %550 = getelementptr inbounds ptr, ptr %57, i64 %546
  %551 = load ptr, ptr %550, align 8, !tbaa !64
  %552 = icmp eq ptr %551, @byte_reg_unset_dummy
  %553 = select i1 %552, ptr %332, ptr %551
  %554 = select i1 %549, ptr %551, ptr %553
  %555 = getelementptr inbounds ptr, ptr %59, i64 %546
  store ptr %554, ptr %555, align 8, !tbaa !64
  %556 = load i8, ptr %342, align 1, !tbaa !48
  %557 = zext i8 %556 to i64
  %558 = getelementptr inbounds ptr, ptr %57, i64 %557
  store ptr %332, ptr %558, align 8, !tbaa !64
  %559 = load i8, ptr %342, align 1, !tbaa !48
  %560 = zext i8 %559 to i64
  %561 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %560
  %562 = load i8, ptr %561, align 8
  %563 = or i8 %562, 4
  store i8 %563, ptr %561, align 8
  %564 = load i8, ptr %342, align 1, !tbaa !48
  %565 = zext i8 %564 to i64
  %566 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %565
  %567 = load i8, ptr %566, align 8
  %568 = and i8 %567, -9
  store i8 %568, ptr %566, align 8
  %569 = load i8, ptr %342, align 1, !tbaa !48
  %570 = zext i8 %569 to i64
  %571 = icmp eq i64 %339, 257
  %572 = select i1 %571, i64 %570, i64 %339
  %573 = getelementptr inbounds i8, ptr %334, i64 3
  br label %1600

574:                                              ; preds = %331
  %575 = load i8, ptr %342, align 1, !tbaa !48
  %576 = zext i8 %575 to i64
  %577 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %576
  %578 = load i8, ptr %577, align 8
  %579 = and i8 %578, 3
  %580 = icmp eq i8 %579, 0
  %581 = getelementptr inbounds ptr, ptr %58, i64 %576
  %582 = load ptr, ptr %581, align 8, !tbaa !64
  %583 = icmp eq ptr %582, @byte_reg_unset_dummy
  %584 = select i1 %583, ptr %332, ptr %582
  %585 = select i1 %580, ptr %582, ptr %584
  %586 = getelementptr inbounds ptr, ptr %60, i64 %576
  store ptr %585, ptr %586, align 8, !tbaa !64
  %587 = load i8, ptr %342, align 1, !tbaa !48
  %588 = zext i8 %587 to i64
  %589 = getelementptr inbounds ptr, ptr %58, i64 %588
  store ptr %332, ptr %589, align 8, !tbaa !64
  %590 = load i8, ptr %342, align 1, !tbaa !48
  %591 = zext i8 %590 to i64
  %592 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %591
  %593 = load i8, ptr %592, align 8
  %594 = and i8 %593, -5
  store i8 %594, ptr %592, align 8
  %595 = icmp eq i64 %339, %340
  %596 = load i8, ptr %342, align 1, !tbaa !48
  br i1 %595, label %607, label %597

597:                                              ; preds = %574, %601
  %598 = phi i8 [ %599, %601 ], [ %596, %574 ]
  %599 = add i8 %598, -1
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %607, label %601

601:                                              ; preds = %597
  %602 = zext i8 %599 to i64
  %603 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %602
  %604 = load i8, ptr %603, align 8
  %605 = and i8 %604, 4
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %597, label %607, !llvm.loop !84

607:                                              ; preds = %601, %597, %574
  %608 = phi i64 [ 256, %574 ], [ %602, %601 ], [ 256, %597 ]
  %609 = phi i64 [ 257, %574 ], [ %339, %601 ], [ 257, %597 ]
  %610 = zext i8 %596 to i64
  %611 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %610
  %612 = load i8, ptr %611, align 8
  %613 = and i8 %612, 8
  %614 = icmp eq i8 %613, 0
  %615 = icmp eq ptr %335, %334
  %616 = select i1 %614, i1 true, i1 %615
  br i1 %616, label %617, label %765

617:                                              ; preds = %607
  %618 = getelementptr inbounds i8, ptr %334, i64 3
  %619 = icmp ult ptr %618, %13
  br i1 %619, label %620, label %765

620:                                              ; preds = %617
  %621 = getelementptr inbounds i8, ptr %334, i64 4
  store ptr %621, ptr %9, align 8, !tbaa !64
  %622 = load i8, ptr %618, align 1, !tbaa !48
  %623 = add i8 %622, -13
  %624 = icmp ult i8 %623, 10
  br i1 %624, label %625, label %765

625:                                              ; preds = %620
  %626 = zext nneg i8 %623 to i16
  %627 = lshr i16 625, %626
  %628 = and i16 %627, 1
  %629 = icmp eq i16 %628, 0
  br i1 %629, label %765, label %630

630:                                              ; preds = %625
  %631 = zext nneg i8 %623 to i64
  %632 = getelementptr inbounds [10 x i64], ptr @switch.table.byte_re_match_2_internal, i64 0, i64 %631
  %633 = load i64, ptr %632, align 8
  %634 = load i8, ptr %621, align 1, !tbaa !48
  %635 = zext i8 %634 to i32
  %636 = getelementptr inbounds i8, ptr %334, i64 5
  %637 = load i8, ptr %636, align 1, !tbaa !48
  %638 = sext i8 %637 to i32
  %639 = shl nsw i32 %638, 8
  %640 = or disjoint i32 %639, %635
  %641 = getelementptr inbounds i8, ptr %334, i64 %633
  %642 = sext i32 %640 to i64
  %643 = getelementptr inbounds i8, ptr %641, i64 %642
  store ptr %643, ptr %9, align 8, !tbaa !64
  %644 = icmp slt i32 %640, 0
  br i1 %644, label %645, label %765

645:                                              ; preds = %630
  %646 = load i8, ptr %643, align 1, !tbaa !48
  %647 = icmp eq i8 %646, 15
  br i1 %647, label %648, label %765

648:                                              ; preds = %645
  %649 = getelementptr inbounds i8, ptr %643, i64 3
  %650 = load i8, ptr %649, align 1, !tbaa !48
  %651 = icmp eq i8 %650, 6
  br i1 %651, label %652, label %765

652:                                              ; preds = %648
  %653 = getelementptr inbounds i8, ptr %643, i64 4
  %654 = load i8, ptr %653, align 1, !tbaa !48
  %655 = load i8, ptr %342, align 1, !tbaa !48
  %656 = icmp eq i8 %654, %655
  br i1 %656, label %657, label %765

657:                                              ; preds = %652
  %658 = getelementptr inbounds i8, ptr %643, i64 3
  %659 = zext i8 %654 to i64
  %660 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %659
  %661 = load i8, ptr %660, align 8
  %662 = and i8 %661, 16
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %690, label %664

664:                                              ; preds = %657
  %665 = and i8 %661, -17
  store i8 %665, ptr %660, align 8
  %666 = getelementptr inbounds i8, ptr %334, i64 2
  %667 = load i8, ptr %666, align 1, !tbaa !48
  %668 = icmp eq i8 %667, 0
  br i1 %668, label %690, label %669

669:                                              ; preds = %664
  %670 = load i8, ptr %342, align 1, !tbaa !48
  %671 = zext i8 %670 to i64
  br label %672

672:                                              ; preds = %669, %682
  %673 = phi i64 [ %671, %669 ], [ %683, %682 ]
  %674 = getelementptr inbounds ptr, ptr %59, i64 %673
  %675 = load ptr, ptr %674, align 8, !tbaa !64
  %676 = getelementptr inbounds ptr, ptr %57, i64 %673
  store ptr %675, ptr %676, align 8, !tbaa !64
  %677 = getelementptr inbounds ptr, ptr %60, i64 %673
  %678 = load ptr, ptr %677, align 8, !tbaa !64
  %679 = icmp ult ptr %678, %675
  br i1 %679, label %682, label %680

680:                                              ; preds = %672
  %681 = getelementptr inbounds ptr, ptr %58, i64 %673
  store ptr %678, ptr %681, align 8, !tbaa !64
  br label %682

682:                                              ; preds = %672, %680
  %683 = add nuw nsw i64 %673, 1
  %684 = load i8, ptr %342, align 1, !tbaa !48
  %685 = zext i8 %684 to i64
  %686 = load i8, ptr %666, align 1, !tbaa !48
  %687 = zext i8 %686 to i64
  %688 = add nuw nsw i64 %687, %685
  %689 = icmp ult i64 %683, %688
  br i1 %689, label %672, label %690, !llvm.loop !85

690:                                              ; preds = %682, %664, %657
  %691 = getelementptr inbounds i8, ptr %643, i64 1
  store ptr %691, ptr %9, align 8, !tbaa !64
  %692 = load i8, ptr %691, align 1, !tbaa !48
  %693 = zext i8 %692 to i32
  %694 = getelementptr inbounds i8, ptr %643, i64 2
  %695 = load i8, ptr %694, align 1, !tbaa !48
  %696 = sext i8 %695 to i32
  %697 = shl nsw i32 %696, 8
  %698 = or disjoint i32 %697, %693
  store ptr %658, ptr %9, align 8, !tbaa !64
  %699 = sub i64 %608, %609
  %700 = mul i64 %699, 3
  %701 = add i64 %700, 7
  %702 = sub i32 %337, %336
  %703 = zext i32 %702 to i64
  %704 = icmp ugt i64 %701, %703
  br i1 %704, label %705, label %708

705:                                              ; preds = %690
  %706 = load i32, ptr @xre_max_failures, align 4, !tbaa !57
  %707 = mul nsw i32 %706, 19
  br label %712

708:                                              ; preds = %716, %690
  %709 = phi ptr [ %338, %690 ], [ %720, %716 ]
  %710 = phi i32 [ %337, %690 ], [ %717, %716 ]
  %711 = icmp ugt i64 %609, %608
  br i1 %711, label %746, label %726

712:                                              ; preds = %705, %716
  %713 = phi i32 [ %337, %705 ], [ %717, %716 ]
  %714 = phi ptr [ %338, %705 ], [ %720, %716 ]
  %715 = icmp ugt i32 %713, %707
  br i1 %715, label %1721, label %716

716:                                              ; preds = %712
  %717 = shl i32 %713, 1
  %718 = zext i32 %717 to i64
  %719 = shl nuw nsw i64 %718, 3
  %720 = alloca i8, i64 %719, align 16
  %721 = zext i32 %713 to i64
  %722 = shl nuw nsw i64 %721, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %720, ptr align 8 %714, i64 %722, i1 false)
  %723 = sub i32 %717, %336
  %724 = zext i32 %723 to i64
  %725 = icmp ugt i64 %701, %724
  br i1 %725, label %712, label %708

726:                                              ; preds = %708, %726
  %727 = phi i32 [ %739, %726 ], [ %336, %708 ]
  %728 = phi i64 [ %744, %726 ], [ %609, %708 ]
  %729 = getelementptr inbounds ptr, ptr %57, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !64
  %731 = add i32 %727, 1
  %732 = zext i32 %727 to i64
  %733 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %709, i64 %732
  store ptr %730, ptr %733, align 8, !tbaa !48
  %734 = getelementptr inbounds ptr, ptr %58, i64 %728
  %735 = load ptr, ptr %734, align 8, !tbaa !64
  %736 = add i32 %727, 2
  %737 = zext i32 %731 to i64
  %738 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %709, i64 %737
  store ptr %735, ptr %738, align 8, !tbaa !48
  %739 = add i32 %727, 3
  %740 = zext i32 %736 to i64
  %741 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %709, i64 %740
  %742 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %728
  %743 = load i64, ptr %742, align 8
  store i64 %743, ptr %741, align 8
  %744 = add i64 %728, 1
  %745 = icmp eq i64 %728, %608
  br i1 %745, label %746, label %726, !llvm.loop !86

746:                                              ; preds = %726, %708
  %747 = phi i32 [ %336, %708 ], [ %739, %726 ]
  %748 = trunc i64 %609 to i32
  %749 = add i32 %747, 1
  %750 = zext i32 %747 to i64
  %751 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %709, i64 %750
  store i32 %748, ptr %751, align 8, !tbaa !48
  %752 = trunc i64 %608 to i32
  %753 = add i32 %747, 2
  %754 = zext i32 %749 to i64
  %755 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %709, i64 %754
  store i32 %752, ptr %755, align 8, !tbaa !48
  %756 = load ptr, ptr %9, align 8, !tbaa !64
  %757 = sext i32 %698 to i64
  %758 = getelementptr inbounds i8, ptr %756, i64 %757
  %759 = add i32 %747, 3
  %760 = zext i32 %753 to i64
  %761 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %709, i64 %760
  store ptr %758, ptr %761, align 8, !tbaa !48
  %762 = add i32 %747, 4
  %763 = zext i32 %759 to i64
  %764 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %709, i64 %763
  store ptr %332, ptr %764, align 8, !tbaa !48
  br label %1612

765:                                              ; preds = %625, %620, %630, %645, %648, %652, %607, %617
  %766 = getelementptr inbounds i8, ptr %334, i64 3
  br label %1600

767:                                              ; preds = %331
  %768 = getelementptr inbounds i8, ptr %334, i64 2
  %769 = load i8, ptr %342, align 1, !tbaa !48
  %770 = zext i8 %769 to i64
  %771 = getelementptr inbounds ptr, ptr %57, i64 %770
  %772 = load ptr, ptr %771, align 8, !tbaa !64
  %773 = icmp eq ptr %772, @byte_reg_unset_dummy
  br i1 %773, label %1612, label %774

774:                                              ; preds = %767
  %775 = getelementptr inbounds ptr, ptr %58, i64 %770
  %776 = load ptr, ptr %775, align 8, !tbaa !64
  %777 = icmp eq ptr %776, @byte_reg_unset_dummy
  br i1 %777, label %1612, label %778

778:                                              ; preds = %774
  br i1 %98, label %787, label %779

779:                                              ; preds = %778
  %780 = icmp ule ptr %74, %772
  %781 = icmp ule ptr %772, %76
  %782 = select i1 %780, i1 %781, i1 false
  %783 = icmp ule ptr %74, %776
  %784 = icmp ule ptr %776, %76
  %785 = select i1 %783, i1 %784, i1 false
  %786 = xor i1 %782, %785
  br i1 %786, label %788, label %787

787:                                              ; preds = %778, %779
  br label %788

788:                                              ; preds = %779, %787
  %789 = phi ptr [ %776, %787 ], [ %86, %779 ]
  br label %790

790:                                              ; preds = %843, %788
  %791 = phi i32 [ %341, %788 ], [ 1, %843 ]
  %792 = phi ptr [ %772, %788 ], [ %840, %843 ]
  %793 = phi ptr [ %789, %788 ], [ %798, %843 ]
  %794 = phi ptr [ %333, %788 ], [ %807, %843 ]
  %795 = phi ptr [ %332, %788 ], [ %839, %843 ]
  br label %796

796:                                              ; preds = %802, %790
  %797 = phi ptr [ %792, %790 ], [ %72, %802 ]
  %798 = phi ptr [ %793, %790 ], [ %803, %802 ]
  %799 = icmp ne ptr %797, %798
  %800 = icmp eq ptr %798, %85
  %801 = select i1 %799, i1 true, i1 %800
  br i1 %801, label %805, label %802

802:                                              ; preds = %796
  %803 = load ptr, ptr %775, align 8, !tbaa !64
  %804 = icmp eq ptr %797, %803
  br i1 %804, label %1600, label %796, !llvm.loop !87

805:                                              ; preds = %796
  br i1 %799, label %806, label %1600

806:                                              ; preds = %805, %810
  %807 = phi ptr [ %85, %810 ], [ %794, %805 ]
  %808 = phi ptr [ %72, %810 ], [ %795, %805 ]
  %809 = icmp eq ptr %808, %807
  br i1 %809, label %810, label %812

810:                                              ; preds = %806
  %811 = icmp eq ptr %807, %85
  br i1 %811, label %1612, label %806, !llvm.loop !88

812:                                              ; preds = %806
  %813 = icmp eq ptr %15, null
  %814 = ptrtoint ptr %807 to i64
  %815 = ptrtoint ptr %808 to i64
  %816 = sub i64 %814, %815
  %817 = shl i64 %816, 32
  %818 = ashr exact i64 %817, 32
  %819 = ptrtoint ptr %798 to i64
  %820 = ptrtoint ptr %797 to i64
  %821 = sub i64 %819, %820
  %822 = icmp sgt i64 %818, %821
  %823 = select i1 %822, i64 %821, i64 %816
  br i1 %813, label %831, label %824

824:                                              ; preds = %812
  %825 = trunc i64 %823 to i32
  %826 = tail call fastcc i32 @byte_bcmp_translate(ptr noundef %808, ptr noundef %797, i32 noundef %825, ptr noundef nonnull %15) #23, !range !89
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %1612

828:                                              ; preds = %824
  %829 = shl i64 %823, 32
  %830 = ashr exact i64 %829, 32
  br label %836

831:                                              ; preds = %812
  %832 = shl i64 %823, 32
  %833 = ashr exact i64 %832, 32
  %834 = tail call i32 @bcmp(ptr %808, ptr %797, i64 %833)
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %1612

836:                                              ; preds = %828, %831
  %837 = phi i64 [ %830, %828 ], [ %833, %831 ]
  %838 = icmp ugt i64 %339, %340
  %839 = getelementptr inbounds i8, ptr %808, i64 %837
  %840 = getelementptr inbounds i8, ptr %797, i64 %837
  %841 = icmp ne i32 %791, 0
  %842 = select i1 %841, i1 true, i1 %838
  br i1 %842, label %843, label %844

843:                                              ; preds = %844, %836
  br label %790

844:                                              ; preds = %836, %844
  %845 = phi i64 [ %849, %844 ], [ %339, %836 ]
  %846 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %845
  %847 = load i8, ptr %846, align 8
  %848 = or i8 %847, 24
  store i8 %848, ptr %846, align 8
  %849 = add i64 %845, 1
  %850 = icmp ugt i64 %849, %340
  br i1 %850, label %843, label %844, !llvm.loop !90

851:                                              ; preds = %331
  %852 = icmp ne ptr %332, %99
  %853 = and i1 %100, %852
  br i1 %853, label %858, label %854

854:                                              ; preds = %851
  %855 = load i8, ptr %101, align 8
  %856 = and i8 %855, 32
  %857 = icmp eq i8 %856, 0
  br i1 %857, label %1600, label %1612

858:                                              ; preds = %851
  %859 = getelementptr inbounds i8, ptr %332, i64 -1
  %860 = load i8, ptr %859, align 1, !tbaa !48
  %861 = icmp eq i8 %860, 10
  br i1 %861, label %862, label %1612

862:                                              ; preds = %858
  %863 = load i8, ptr %101, align 8
  %864 = icmp sgt i8 %863, -1
  br i1 %864, label %1612, label %1600

865:                                              ; preds = %331
  %866 = icmp eq ptr %332, %78
  br i1 %866, label %867, label %871

867:                                              ; preds = %865
  %868 = load i8, ptr %101, align 8
  %869 = and i8 %868, 64
  %870 = icmp eq i8 %869, 0
  br i1 %870, label %1600, label %1612

871:                                              ; preds = %865
  %872 = icmp eq ptr %332, %76
  %873 = select i1 %872, ptr %72, ptr %332
  %874 = load i8, ptr %873, align 1, !tbaa !48
  %875 = icmp eq i8 %874, 10
  br i1 %875, label %876, label %1612

876:                                              ; preds = %871
  %877 = load i8, ptr %101, align 8
  %878 = icmp sgt i8 %877, -1
  br i1 %878, label %1612, label %1600

879:                                              ; preds = %331
  %880 = icmp ne ptr %332, %99
  %881 = and i1 %100, %880
  br i1 %881, label %1612, label %1600

882:                                              ; preds = %331
  %883 = icmp eq ptr %332, %78
  br i1 %883, label %1600, label %1612

884:                                              ; preds = %331
  %885 = load i8, ptr %342, align 1, !tbaa !48
  %886 = zext i8 %885 to i32
  %887 = getelementptr inbounds i8, ptr %334, i64 2
  %888 = load i8, ptr %887, align 1, !tbaa !48
  %889 = sext i8 %888 to i32
  %890 = shl nsw i32 %889, 8
  %891 = or disjoint i32 %890, %886
  %892 = getelementptr inbounds i8, ptr %334, i64 3
  %893 = sub i64 %340, %339
  %894 = mul i64 %893, 3
  %895 = add i64 %894, 7
  %896 = sub i32 %337, %336
  %897 = zext i32 %896 to i64
  %898 = icmp ugt i64 %895, %897
  br i1 %898, label %899, label %902

899:                                              ; preds = %884
  %900 = load i32, ptr @xre_max_failures, align 4, !tbaa !57
  %901 = mul nsw i32 %900, 19
  br label %906

902:                                              ; preds = %910, %884
  %903 = phi ptr [ %338, %884 ], [ %914, %910 ]
  %904 = phi i32 [ %337, %884 ], [ %911, %910 ]
  %905 = icmp ugt i64 %339, %340
  br i1 %905, label %940, label %920

906:                                              ; preds = %899, %910
  %907 = phi i32 [ %337, %899 ], [ %911, %910 ]
  %908 = phi ptr [ %338, %899 ], [ %914, %910 ]
  %909 = icmp ugt i32 %907, %901
  br i1 %909, label %1721, label %910

910:                                              ; preds = %906
  %911 = shl i32 %907, 1
  %912 = zext i32 %911 to i64
  %913 = shl nuw nsw i64 %912, 3
  %914 = alloca i8, i64 %913, align 16
  %915 = zext i32 %907 to i64
  %916 = shl nuw nsw i64 %915, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %914, ptr align 8 %908, i64 %916, i1 false)
  %917 = sub i32 %911, %336
  %918 = zext i32 %917 to i64
  %919 = icmp ugt i64 %895, %918
  br i1 %919, label %906, label %902

920:                                              ; preds = %902, %920
  %921 = phi i64 [ %938, %920 ], [ %339, %902 ]
  %922 = phi i32 [ %933, %920 ], [ %336, %902 ]
  %923 = getelementptr inbounds ptr, ptr %57, i64 %921
  %924 = load ptr, ptr %923, align 8, !tbaa !64
  %925 = add i32 %922, 1
  %926 = zext i32 %922 to i64
  %927 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %903, i64 %926
  store ptr %924, ptr %927, align 8, !tbaa !48
  %928 = getelementptr inbounds ptr, ptr %58, i64 %921
  %929 = load ptr, ptr %928, align 8, !tbaa !64
  %930 = add i32 %922, 2
  %931 = zext i32 %925 to i64
  %932 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %903, i64 %931
  store ptr %929, ptr %932, align 8, !tbaa !48
  %933 = add i32 %922, 3
  %934 = zext i32 %930 to i64
  %935 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %903, i64 %934
  %936 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %921
  %937 = load i64, ptr %936, align 8
  store i64 %937, ptr %935, align 8
  %938 = add i64 %921, 1
  %939 = icmp ugt i64 %938, %340
  br i1 %939, label %940, label %920, !llvm.loop !91

940:                                              ; preds = %920, %902
  %941 = phi i32 [ %336, %902 ], [ %933, %920 ]
  %942 = trunc i64 %339 to i32
  %943 = add i32 %941, 1
  %944 = zext i32 %941 to i64
  %945 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %903, i64 %944
  store i32 %942, ptr %945, align 8, !tbaa !48
  %946 = trunc i64 %340 to i32
  %947 = add i32 %941, 2
  %948 = zext i32 %943 to i64
  %949 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %903, i64 %948
  store i32 %946, ptr %949, align 8, !tbaa !48
  %950 = sext i32 %891 to i64
  %951 = getelementptr inbounds i8, ptr %892, i64 %950
  %952 = add i32 %941, 3
  %953 = zext i32 %947 to i64
  %954 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %903, i64 %953
  store ptr %951, ptr %954, align 8, !tbaa !48
  %955 = add i32 %941, 4
  %956 = zext i32 %952 to i64
  %957 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %903, i64 %956
  store ptr null, ptr %957, align 8, !tbaa !48
  br label %1600

958:                                              ; preds = %331, %1400
  %959 = load i8, ptr %342, align 1, !tbaa !48
  %960 = zext i8 %959 to i32
  %961 = getelementptr inbounds i8, ptr %334, i64 2
  %962 = load i8, ptr %961, align 1, !tbaa !48
  %963 = sext i8 %962 to i32
  %964 = shl nsw i32 %963, 8
  %965 = or disjoint i32 %964, %960
  %966 = getelementptr inbounds i8, ptr %334, i64 3
  store ptr %966, ptr %9, align 8, !tbaa !64
  %967 = icmp ult ptr %966, %13
  br i1 %967, label %968, label %984

968:                                              ; preds = %958, %971
  %969 = phi ptr [ %972, %971 ], [ %966, %958 ]
  %970 = load i8, ptr %969, align 1, !tbaa !48
  switch i8 %970, label %984 [
    i8 0, label %971
    i8 6, label %974
  ]

971:                                              ; preds = %968
  %972 = getelementptr inbounds i8, ptr %969, i64 1
  store ptr %972, ptr %9, align 8, !tbaa !64
  %973 = icmp ult ptr %972, %13
  br i1 %973, label %968, label %984, !llvm.loop !92

974:                                              ; preds = %968
  %975 = getelementptr inbounds i8, ptr %969, i64 1
  %976 = load i8, ptr %975, align 1, !tbaa !48
  %977 = zext i8 %976 to i64
  %978 = getelementptr inbounds i8, ptr %969, i64 2
  %979 = load i8, ptr %978, align 1, !tbaa !48
  %980 = zext i8 %979 to i64
  %981 = add nuw nsw i64 %980, %977
  %982 = icmp eq i64 %339, 257
  %983 = select i1 %982, i64 %977, i64 %339
  br label %984

984:                                              ; preds = %971, %968, %958, %974
  %985 = phi i64 [ %981, %974 ], [ %340, %958 ], [ %340, %968 ], [ %340, %971 ]
  %986 = phi i64 [ %983, %974 ], [ %339, %958 ], [ %339, %968 ], [ %339, %971 ]
  %987 = sub i64 %985, %986
  %988 = mul i64 %987, 3
  %989 = add i64 %988, 7
  %990 = sub i32 %337, %336
  %991 = zext i32 %990 to i64
  %992 = icmp ugt i64 %989, %991
  br i1 %992, label %993, label %996

993:                                              ; preds = %984
  %994 = load i32, ptr @xre_max_failures, align 4, !tbaa !57
  %995 = mul nsw i32 %994, 19
  br label %1000

996:                                              ; preds = %1004, %984
  %997 = phi ptr [ %338, %984 ], [ %1008, %1004 ]
  %998 = phi i32 [ %337, %984 ], [ %1005, %1004 ]
  %999 = icmp ugt i64 %986, %985
  br i1 %999, label %1034, label %1014

1000:                                             ; preds = %993, %1004
  %1001 = phi i32 [ %337, %993 ], [ %1005, %1004 ]
  %1002 = phi ptr [ %338, %993 ], [ %1008, %1004 ]
  %1003 = icmp ugt i32 %1001, %995
  br i1 %1003, label %1721, label %1004

1004:                                             ; preds = %1000
  %1005 = shl i32 %1001, 1
  %1006 = zext i32 %1005 to i64
  %1007 = shl nuw nsw i64 %1006, 3
  %1008 = alloca i8, i64 %1007, align 16
  %1009 = zext i32 %1001 to i64
  %1010 = shl nuw nsw i64 %1009, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1008, ptr align 8 %1002, i64 %1010, i1 false)
  %1011 = sub i32 %1005, %336
  %1012 = zext i32 %1011 to i64
  %1013 = icmp ugt i64 %989, %1012
  br i1 %1013, label %1000, label %996

1014:                                             ; preds = %996, %1014
  %1015 = phi i64 [ %1032, %1014 ], [ %986, %996 ]
  %1016 = phi i32 [ %1027, %1014 ], [ %336, %996 ]
  %1017 = getelementptr inbounds ptr, ptr %57, i64 %1015
  %1018 = load ptr, ptr %1017, align 8, !tbaa !64
  %1019 = add i32 %1016, 1
  %1020 = zext i32 %1016 to i64
  %1021 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %997, i64 %1020
  store ptr %1018, ptr %1021, align 8, !tbaa !48
  %1022 = getelementptr inbounds ptr, ptr %58, i64 %1015
  %1023 = load ptr, ptr %1022, align 8, !tbaa !64
  %1024 = add i32 %1016, 2
  %1025 = zext i32 %1019 to i64
  %1026 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %997, i64 %1025
  store ptr %1023, ptr %1026, align 8, !tbaa !48
  %1027 = add i32 %1016, 3
  %1028 = zext i32 %1024 to i64
  %1029 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %997, i64 %1028
  %1030 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1015
  %1031 = load i64, ptr %1030, align 8
  store i64 %1031, ptr %1029, align 8
  %1032 = add i64 %1015, 1
  %1033 = icmp ugt i64 %1032, %985
  br i1 %1033, label %1034, label %1014, !llvm.loop !93

1034:                                             ; preds = %1014, %996
  %1035 = phi i32 [ %336, %996 ], [ %1027, %1014 ]
  %1036 = trunc i64 %986 to i32
  %1037 = add i32 %1035, 1
  %1038 = zext i32 %1035 to i64
  %1039 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %997, i64 %1038
  store i32 %1036, ptr %1039, align 8, !tbaa !48
  %1040 = trunc i64 %985 to i32
  %1041 = add i32 %1035, 2
  %1042 = zext i32 %1037 to i64
  %1043 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %997, i64 %1042
  store i32 %1040, ptr %1043, align 8, !tbaa !48
  %1044 = sext i32 %965 to i64
  %1045 = getelementptr inbounds i8, ptr %966, i64 %1044
  %1046 = add i32 %1035, 3
  %1047 = zext i32 %1041 to i64
  %1048 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %997, i64 %1047
  store ptr %1045, ptr %1048, align 8, !tbaa !48
  %1049 = add i32 %1035, 4
  %1050 = zext i32 %1046 to i64
  %1051 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %997, i64 %1050
  store ptr %332, ptr %1051, align 8, !tbaa !48
  br label %1600

1052:                                             ; preds = %331
  %1053 = load i8, ptr %342, align 1, !tbaa !48
  %1054 = zext i8 %1053 to i32
  %1055 = getelementptr inbounds i8, ptr %334, i64 2
  %1056 = load i8, ptr %1055, align 1, !tbaa !48
  %1057 = sext i8 %1056 to i32
  %1058 = shl nsw i32 %1057, 8
  %1059 = or disjoint i32 %1058, %1054
  %1060 = getelementptr inbounds i8, ptr %334, i64 3
  br label %1061

1061:                                             ; preds = %1077, %1052
  %1062 = phi ptr [ %1060, %1052 ], [ %1078, %1077 ]
  %1063 = getelementptr inbounds i8, ptr %1062, i64 2
  %1064 = icmp ult ptr %1063, %13
  br i1 %1064, label %1065, label %1071

1065:                                             ; preds = %1061
  %1066 = load i8, ptr %1062, align 1, !tbaa !48
  %1067 = and i8 %1066, -2
  %1068 = icmp eq i8 %1067, 6
  br i1 %1068, label %1069, label %1071

1069:                                             ; preds = %1065
  %1070 = getelementptr inbounds i8, ptr %1062, i64 3
  br label %1077

1071:                                             ; preds = %1065, %1061
  %1072 = getelementptr inbounds i8, ptr %1062, i64 6
  %1073 = icmp ult ptr %1072, %13
  br i1 %1073, label %1074, label %1079

1074:                                             ; preds = %1071
  %1075 = load i8, ptr %1062, align 1, !tbaa !48
  %1076 = icmp eq i8 %1075, 19
  br i1 %1076, label %1077, label %1079

1077:                                             ; preds = %1074, %1069
  %1078 = phi ptr [ %1070, %1069 ], [ %1072, %1074 ]
  br label %1061

1079:                                             ; preds = %1071, %1074
  %1080 = sext i32 %1059 to i64
  %1081 = getelementptr inbounds i8, ptr %1060, i64 %1080
  store ptr %1081, ptr %9, align 8, !tbaa !64
  %1082 = icmp eq ptr %1062, %13
  br i1 %1082, label %1226, label %1083

1083:                                             ; preds = %1079
  %1084 = load i8, ptr %1062, align 1, !tbaa !48
  %1085 = icmp eq i8 %1084, 2
  br i1 %1085, label %1091, label %1086

1086:                                             ; preds = %1083
  %1087 = load i8, ptr %101, align 8
  %1088 = icmp slt i8 %1087, 0
  %1089 = icmp eq i8 %1084, 10
  %1090 = and i1 %1089, %1088
  br i1 %1090, label %1093, label %1126

1091:                                             ; preds = %1083
  %1092 = load i8, ptr %1063, align 1, !tbaa !48
  br label %1093

1093:                                             ; preds = %1086, %1091
  %1094 = phi i8 [ %1092, %1091 ], [ 10, %1086 ]
  %1095 = getelementptr inbounds i8, ptr %1081, i64 3
  %1096 = load i8, ptr %1095, align 1, !tbaa !48
  %1097 = icmp eq i8 %1096, 2
  br i1 %1097, label %1098, label %1102

1098:                                             ; preds = %1093
  %1099 = getelementptr inbounds i8, ptr %1081, i64 5
  %1100 = load i8, ptr %1099, align 1, !tbaa !48
  %1101 = icmp eq i8 %1100, %1094
  br i1 %1101, label %1222, label %1226

1102:                                             ; preds = %1093
  %1103 = and i8 %1096, -2
  %1104 = icmp eq i8 %1103, 4
  br i1 %1104, label %1105, label %1222

1105:                                             ; preds = %1102
  %1106 = icmp eq i8 %1096, 5
  %1107 = zext i8 %1094 to i32
  %1108 = getelementptr inbounds i8, ptr %1081, i64 4
  %1109 = load i8, ptr %1108, align 1, !tbaa !48
  %1110 = zext i8 %1109 to i32
  %1111 = shl nuw nsw i32 %1110, 3
  %1112 = icmp ugt i32 %1111, %1107
  br i1 %1112, label %1113, label %1125

1113:                                             ; preds = %1105
  %1114 = lshr i32 %1107, 3
  %1115 = zext nneg i32 %1114 to i64
  %1116 = getelementptr i8, ptr %1081, i64 %1115
  %1117 = getelementptr i8, ptr %1116, i64 5
  %1118 = load i8, ptr %1117, align 1, !tbaa !48
  %1119 = zext i8 %1118 to i32
  %1120 = and i32 %1107, 7
  %1121 = shl nuw nsw i32 1, %1120
  %1122 = and i32 %1121, %1119
  %1123 = icmp ne i32 %1122, 0
  %1124 = xor i1 %1106, %1123
  br i1 %1124, label %1222, label %1226

1125:                                             ; preds = %1105
  br i1 %1106, label %1222, label %1226

1126:                                             ; preds = %1086
  %1127 = icmp eq i8 %1084, 4
  br i1 %1127, label %1128, label %1222

1128:                                             ; preds = %1126
  %1129 = getelementptr inbounds i8, ptr %1081, i64 3
  %1130 = load i8, ptr %1129, align 1, !tbaa !48
  switch i8 %1130, label %1222 [
    i8 2, label %1152
    i8 5, label %1143
    i8 4, label %1131
  ]

1131:                                             ; preds = %1128
  %1132 = getelementptr inbounds i8, ptr %1062, i64 1
  %1133 = load i8, ptr %1132, align 1, !tbaa !48
  %1134 = zext i8 %1133 to i32
  %1135 = getelementptr i8, ptr %1081, i64 5
  %1136 = icmp eq i8 %1133, 0
  br i1 %1136, label %1214, label %1137

1137:                                             ; preds = %1131
  %1138 = getelementptr inbounds i8, ptr %1081, i64 4
  %1139 = load i8, ptr %1138, align 1, !tbaa !48
  %1140 = zext i8 %1139 to i32
  %1141 = zext i8 %1139 to i64
  %1142 = zext i8 %1133 to i64
  br label %1198

1143:                                             ; preds = %1128
  %1144 = getelementptr inbounds i8, ptr %1081, i64 4
  %1145 = getelementptr inbounds i8, ptr %1062, i64 1
  %1146 = load i8, ptr %1145, align 1, !tbaa !48
  %1147 = zext i8 %1146 to i32
  %1148 = getelementptr i8, ptr %1081, i64 5
  %1149 = icmp eq i8 %1146, 0
  br i1 %1149, label %1195, label %1150

1150:                                             ; preds = %1143
  %1151 = zext i8 %1146 to i64
  br label %1172

1152:                                             ; preds = %1128
  %1153 = getelementptr inbounds i8, ptr %1062, i64 1
  %1154 = load i8, ptr %1153, align 1, !tbaa !48
  %1155 = zext i8 %1154 to i32
  %1156 = shl nuw nsw i32 %1155, 3
  %1157 = getelementptr inbounds i8, ptr %1081, i64 5
  %1158 = load i8, ptr %1157, align 1, !tbaa !48
  %1159 = zext i8 %1158 to i32
  %1160 = icmp ugt i32 %1156, %1159
  br i1 %1160, label %1161, label %1226

1161:                                             ; preds = %1152
  %1162 = lshr i32 %1159, 3
  %1163 = add nuw nsw i32 %1162, 2
  %1164 = zext nneg i32 %1163 to i64
  %1165 = getelementptr inbounds i8, ptr %1062, i64 %1164
  %1166 = load i8, ptr %1165, align 1, !tbaa !48
  %1167 = zext i8 %1166 to i32
  %1168 = and i32 %1159, 7
  %1169 = shl nuw nsw i32 1, %1168
  %1170 = and i32 %1169, %1167
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1226, label %1222

1172:                                             ; preds = %1150, %1190
  %1173 = phi i64 [ 0, %1150 ], [ %1191, %1190 ]
  %1174 = add nuw nsw i64 %1173, 2
  %1175 = getelementptr inbounds i8, ptr %1062, i64 %1174
  %1176 = load i8, ptr %1175, align 1, !tbaa !48
  %1177 = zext i8 %1176 to i32
  %1178 = icmp eq i8 %1176, 0
  br i1 %1178, label %1190, label %1179

1179:                                             ; preds = %1172
  %1180 = load i8, ptr %1144, align 1, !tbaa !48
  %1181 = zext i8 %1180 to i64
  %1182 = icmp ult i64 %1173, %1181
  br i1 %1182, label %1183, label %1193

1183:                                             ; preds = %1179
  %1184 = getelementptr i8, ptr %1148, i64 %1173
  %1185 = load i8, ptr %1184, align 1, !tbaa !48
  %1186 = zext i8 %1185 to i32
  %1187 = xor i32 %1186, -1
  %1188 = and i32 %1187, %1177
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1190, label %1193

1190:                                             ; preds = %1172, %1183
  %1191 = add nuw nsw i64 %1173, 1
  %1192 = icmp eq i64 %1191, %1151
  br i1 %1192, label %1226, label %1172, !llvm.loop !94

1193:                                             ; preds = %1179, %1183
  %1194 = trunc i64 %1173 to i32
  br label %1195

1195:                                             ; preds = %1193, %1143
  %1196 = phi i32 [ 0, %1143 ], [ %1194, %1193 ]
  %1197 = icmp eq i32 %1196, %1147
  br i1 %1197, label %1226, label %1222

1198:                                             ; preds = %1137, %1209
  %1199 = phi i64 [ 0, %1137 ], [ %1210, %1209 ]
  %1200 = icmp eq i64 %1199, %1141
  br i1 %1200, label %1214, label %1201

1201:                                             ; preds = %1198
  %1202 = add nuw nsw i64 %1199, 2
  %1203 = getelementptr inbounds i8, ptr %1062, i64 %1202
  %1204 = load i8, ptr %1203, align 1, !tbaa !48
  %1205 = getelementptr i8, ptr %1135, i64 %1199
  %1206 = load i8, ptr %1205, align 1, !tbaa !48
  %1207 = and i8 %1206, %1204
  %1208 = icmp eq i8 %1207, 0
  br i1 %1208, label %1209, label %1212

1209:                                             ; preds = %1201
  %1210 = add nuw nsw i64 %1199, 1
  %1211 = icmp eq i64 %1210, %1142
  br i1 %1211, label %1226, label %1198, !llvm.loop !95

1212:                                             ; preds = %1201
  %1213 = trunc i64 %1199 to i32
  br label %1214

1214:                                             ; preds = %1198, %1212, %1131
  %1215 = phi i32 [ 0, %1131 ], [ %1213, %1212 ], [ %1140, %1198 ]
  %1216 = icmp eq i32 %1215, %1134
  br i1 %1216, label %1226, label %1217

1217:                                             ; preds = %1214
  %1218 = getelementptr inbounds i8, ptr %1081, i64 4
  %1219 = load i8, ptr %1218, align 1, !tbaa !48
  %1220 = zext i8 %1219 to i32
  %1221 = icmp eq i32 %1215, %1220
  br i1 %1221, label %1226, label %1222

1222:                                             ; preds = %1128, %1161, %1098, %1113, %1102, %1217, %1195, %1125, %1126
  %1223 = load i8, ptr %334, align 1, !tbaa !48
  %1224 = icmp eq i8 %1223, 17
  br i1 %1224, label %1227, label %1225

1225:                                             ; preds = %1222
  store i8 13, ptr %334, align 1, !tbaa !48
  br label %1259

1226:                                             ; preds = %1209, %1190, %1214, %1217, %1195, %1152, %1161, %1125, %1113, %1098, %1079
  store i8 17, ptr %334, align 1, !tbaa !48
  br label %1227

1227:                                             ; preds = %1226, %1222, %331
  %1228 = add i32 %336, -3
  %1229 = zext i32 %1228 to i64
  %1230 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %338, i64 %1229
  %1231 = load i32, ptr %1230, align 8, !tbaa !48
  %1232 = add i32 %336, -4
  %1233 = zext i32 %1232 to i64
  %1234 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %338, i64 %1233
  %1235 = load i32, ptr %1234, align 8, !tbaa !48
  %1236 = sext i32 %1235 to i64
  %1237 = icmp ult i32 %1231, %1235
  br i1 %1237, label %1259, label %1238

1238:                                             ; preds = %1227
  %1239 = sext i32 %1231 to i64
  br label %1240

1240:                                             ; preds = %1238, %1240
  %1241 = phi i64 [ %1257, %1240 ], [ %1239, %1238 ]
  %1242 = phi i32 [ %1253, %1240 ], [ %1232, %1238 ]
  %1243 = getelementptr inbounds %union.byte_register_info_type, ptr %65, i64 %1241
  %1244 = add i32 %1242, -1
  %1245 = zext i32 %1244 to i64
  %1246 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %338, i64 %1245
  %1247 = load i64, ptr %1246, align 8
  store i64 %1247, ptr %1243, align 8
  %1248 = add i32 %1242, -2
  %1249 = zext i32 %1248 to i64
  %1250 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %338, i64 %1249
  %1251 = load ptr, ptr %1250, align 8, !tbaa !48
  %1252 = getelementptr inbounds ptr, ptr %64, i64 %1241
  store ptr %1251, ptr %1252, align 8, !tbaa !64
  %1253 = add i32 %1242, -3
  %1254 = zext i32 %1253 to i64
  %1255 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %338, i64 %1254
  %1256 = load ptr, ptr %1255, align 8, !tbaa !48
  store ptr %1256, ptr %1252, align 8, !tbaa !64
  %1257 = add i64 %1241, -1
  %1258 = icmp ult i64 %1257, %1236
  br i1 %1258, label %1259, label %1240, !llvm.loop !96

1259:                                             ; preds = %1240, %1227, %1312, %331, %1225, %1411, %331
  %1260 = phi i32 [ %341, %1411 ], [ %341, %1312 ], [ %341, %331 ], [ %341, %331 ], [ %341, %1225 ], [ 0, %1227 ], [ 0, %1240 ]
  %1261 = phi ptr [ %338, %1411 ], [ %1275, %1312 ], [ %338, %331 ], [ %338, %331 ], [ %338, %1225 ], [ %338, %1227 ], [ %338, %1240 ]
  %1262 = phi i32 [ %337, %1411 ], [ %1276, %1312 ], [ %337, %331 ], [ %337, %331 ], [ %337, %1225 ], [ %337, %1227 ], [ %337, %1240 ]
  %1263 = phi i32 [ %336, %1411 ], [ %1325, %1312 ], [ %336, %331 ], [ %336, %331 ], [ %336, %1225 ], [ %1232, %1227 ], [ %1253, %1240 ]
  %1264 = load i8, ptr %342, align 1, !tbaa !48
  %1265 = zext i8 %1264 to i32
  %1266 = getelementptr inbounds i8, ptr %334, i64 2
  %1267 = load i8, ptr %1266, align 1, !tbaa !48
  %1268 = sext i8 %1267 to i32
  %1269 = shl nsw i32 %1268, 8
  %1270 = or disjoint i32 %1269, %1265
  %1271 = getelementptr inbounds i8, ptr %334, i64 3
  %1272 = sext i32 %1270 to i64
  %1273 = getelementptr inbounds i8, ptr %1271, i64 %1272
  br label %1600

1274:                                             ; preds = %1282, %354
  %1275 = phi ptr [ %338, %354 ], [ %1286, %1282 ]
  %1276 = phi i32 [ %337, %354 ], [ %1283, %1282 ]
  %1277 = icmp ugt i64 %339, %340
  br i1 %1277, label %1312, label %1292

1278:                                             ; preds = %361, %1282
  %1279 = phi i32 [ %337, %361 ], [ %1283, %1282 ]
  %1280 = phi ptr [ %338, %361 ], [ %1286, %1282 ]
  %1281 = icmp ugt i32 %1279, %363
  br i1 %1281, label %1721, label %1282

1282:                                             ; preds = %1278
  %1283 = shl i32 %1279, 1
  %1284 = zext i32 %1283 to i64
  %1285 = shl nuw nsw i64 %1284, 3
  %1286 = alloca i8, i64 %1285, align 16
  %1287 = zext i32 %1279 to i64
  %1288 = shl nuw nsw i64 %1287, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1286, ptr align 8 %1280, i64 %1288, i1 false)
  %1289 = sub i32 %1283, %336
  %1290 = zext i32 %1289 to i64
  %1291 = icmp ugt i64 %357, %1290
  br i1 %1291, label %1278, label %1274

1292:                                             ; preds = %1274, %1292
  %1293 = phi i64 [ %1310, %1292 ], [ %339, %1274 ]
  %1294 = phi i32 [ %1305, %1292 ], [ %336, %1274 ]
  %1295 = getelementptr inbounds ptr, ptr %57, i64 %1293
  %1296 = load ptr, ptr %1295, align 8, !tbaa !64
  %1297 = add i32 %1294, 1
  %1298 = zext i32 %1294 to i64
  %1299 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1275, i64 %1298
  store ptr %1296, ptr %1299, align 8, !tbaa !48
  %1300 = getelementptr inbounds ptr, ptr %58, i64 %1293
  %1301 = load ptr, ptr %1300, align 8, !tbaa !64
  %1302 = add i32 %1294, 2
  %1303 = zext i32 %1297 to i64
  %1304 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1275, i64 %1303
  store ptr %1301, ptr %1304, align 8, !tbaa !48
  %1305 = add i32 %1294, 3
  %1306 = zext i32 %1302 to i64
  %1307 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1275, i64 %1306
  %1308 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1293
  %1309 = load i64, ptr %1308, align 8
  store i64 %1309, ptr %1307, align 8
  %1310 = add i64 %1293, 1
  %1311 = icmp ugt i64 %1310, %340
  br i1 %1311, label %1312, label %1292, !llvm.loop !97

1312:                                             ; preds = %1292, %1274
  %1313 = phi i32 [ %336, %1274 ], [ %1305, %1292 ]
  %1314 = trunc i64 %339 to i32
  %1315 = add i32 %1313, 1
  %1316 = zext i32 %1313 to i64
  %1317 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1275, i64 %1316
  store i32 %1314, ptr %1317, align 8, !tbaa !48
  %1318 = trunc i64 %340 to i32
  %1319 = add i32 %1313, 2
  %1320 = zext i32 %1315 to i64
  %1321 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1275, i64 %1320
  store i32 %1318, ptr %1321, align 8, !tbaa !48
  %1322 = add i32 %1313, 3
  %1323 = zext i32 %1319 to i64
  %1324 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1275, i64 %1323
  store ptr null, ptr %1324, align 8, !tbaa !48
  %1325 = add i32 %1313, 4
  %1326 = zext i32 %1322 to i64
  %1327 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1275, i64 %1326
  store ptr null, ptr %1327, align 8, !tbaa !48
  br label %1259

1328:                                             ; preds = %1336, %344
  %1329 = phi ptr [ %338, %344 ], [ %1340, %1336 ]
  %1330 = phi i32 [ %337, %344 ], [ %1337, %1336 ]
  %1331 = icmp ugt i64 %339, %340
  br i1 %1331, label %1366, label %1346

1332:                                             ; preds = %351, %1336
  %1333 = phi i32 [ %337, %351 ], [ %1337, %1336 ]
  %1334 = phi ptr [ %338, %351 ], [ %1340, %1336 ]
  %1335 = icmp ugt i32 %1333, %353
  br i1 %1335, label %1721, label %1336

1336:                                             ; preds = %1332
  %1337 = shl i32 %1333, 1
  %1338 = zext i32 %1337 to i64
  %1339 = shl nuw nsw i64 %1338, 3
  %1340 = alloca i8, i64 %1339, align 16
  %1341 = zext i32 %1333 to i64
  %1342 = shl nuw nsw i64 %1341, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1340, ptr align 8 %1334, i64 %1342, i1 false)
  %1343 = sub i32 %1337, %336
  %1344 = zext i32 %1343 to i64
  %1345 = icmp ugt i64 %347, %1344
  br i1 %1345, label %1332, label %1328

1346:                                             ; preds = %1328, %1346
  %1347 = phi i64 [ %1364, %1346 ], [ %339, %1328 ]
  %1348 = phi i32 [ %1359, %1346 ], [ %336, %1328 ]
  %1349 = getelementptr inbounds ptr, ptr %57, i64 %1347
  %1350 = load ptr, ptr %1349, align 8, !tbaa !64
  %1351 = add i32 %1348, 1
  %1352 = zext i32 %1348 to i64
  %1353 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1329, i64 %1352
  store ptr %1350, ptr %1353, align 8, !tbaa !48
  %1354 = getelementptr inbounds ptr, ptr %58, i64 %1347
  %1355 = load ptr, ptr %1354, align 8, !tbaa !64
  %1356 = add i32 %1348, 2
  %1357 = zext i32 %1351 to i64
  %1358 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1329, i64 %1357
  store ptr %1355, ptr %1358, align 8, !tbaa !48
  %1359 = add i32 %1348, 3
  %1360 = zext i32 %1356 to i64
  %1361 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1329, i64 %1360
  %1362 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1347
  %1363 = load i64, ptr %1362, align 8
  store i64 %1363, ptr %1361, align 8
  %1364 = add i64 %1347, 1
  %1365 = icmp ugt i64 %1364, %340
  br i1 %1365, label %1366, label %1346, !llvm.loop !98

1366:                                             ; preds = %1346, %1328
  %1367 = phi i32 [ %336, %1328 ], [ %1359, %1346 ]
  %1368 = trunc i64 %339 to i32
  %1369 = add i32 %1367, 1
  %1370 = zext i32 %1367 to i64
  %1371 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1329, i64 %1370
  store i32 %1368, ptr %1371, align 8, !tbaa !48
  %1372 = trunc i64 %340 to i32
  %1373 = add i32 %1367, 2
  %1374 = zext i32 %1369 to i64
  %1375 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1329, i64 %1374
  store i32 %1372, ptr %1375, align 8, !tbaa !48
  %1376 = add i32 %1367, 3
  %1377 = zext i32 %1373 to i64
  %1378 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1329, i64 %1377
  store ptr null, ptr %1378, align 8, !tbaa !48
  %1379 = add i32 %1367, 4
  %1380 = zext i32 %1376 to i64
  %1381 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1329, i64 %1380
  store ptr null, ptr %1381, align 8, !tbaa !48
  br label %1600

1382:                                             ; preds = %331
  %1383 = getelementptr inbounds i8, ptr %334, i64 3
  %1384 = load i8, ptr %1383, align 1, !tbaa !48
  %1385 = zext i8 %1384 to i32
  %1386 = getelementptr inbounds i8, ptr %334, i64 4
  %1387 = load i8, ptr %1386, align 1, !tbaa !48
  %1388 = sext i8 %1387 to i32
  %1389 = shl nsw i32 %1388, 8
  %1390 = or disjoint i32 %1389, %1385
  %1391 = icmp sgt i32 %1390, 0
  br i1 %1391, label %1392, label %1398

1392:                                             ; preds = %1382
  %1393 = add nsw i32 %1390, -1
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, ptr %1383, align 1, !tbaa !48
  %1395 = lshr i32 %1393, 8
  %1396 = trunc i32 %1395 to i8
  store i8 %1396, ptr %1386, align 1, !tbaa !48
  %1397 = getelementptr inbounds i8, ptr %334, i64 5
  br label %1600

1398:                                             ; preds = %1382
  %1399 = icmp eq i32 %1390, 0
  br i1 %1399, label %1400, label %1600

1400:                                             ; preds = %1398
  store i8 0, ptr %1383, align 1, !tbaa !48
  store i8 0, ptr %1386, align 1, !tbaa !48
  br label %958

1401:                                             ; preds = %331
  %1402 = getelementptr inbounds i8, ptr %334, i64 3
  %1403 = load i8, ptr %1402, align 1, !tbaa !48
  %1404 = zext i8 %1403 to i32
  %1405 = getelementptr inbounds i8, ptr %334, i64 4
  %1406 = load i8, ptr %1405, align 1, !tbaa !48
  %1407 = sext i8 %1406 to i32
  %1408 = shl nsw i32 %1407, 8
  %1409 = or disjoint i32 %1408, %1404
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1416, label %1411

1411:                                             ; preds = %1401
  %1412 = add nsw i32 %1409, -1
  %1413 = trunc i32 %1412 to i8
  store i8 %1413, ptr %1402, align 1, !tbaa !48
  %1414 = lshr i32 %1412, 8
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, ptr %1405, align 1, !tbaa !48
  br label %1259

1416:                                             ; preds = %1401
  %1417 = getelementptr inbounds i8, ptr %334, i64 5
  br label %1600

1418:                                             ; preds = %331
  %1419 = load i8, ptr %342, align 1, !tbaa !48
  %1420 = zext i8 %1419 to i32
  %1421 = getelementptr inbounds i8, ptr %334, i64 2
  %1422 = load i8, ptr %1421, align 1, !tbaa !48
  %1423 = sext i8 %1422 to i32
  %1424 = shl nsw i32 %1423, 8
  %1425 = or disjoint i32 %1424, %1420
  %1426 = getelementptr inbounds i8, ptr %334, i64 3
  %1427 = sext i32 %1425 to i64
  %1428 = getelementptr inbounds i8, ptr %1426, i64 %1427
  store ptr %1428, ptr %9, align 8, !tbaa !64
  %1429 = load i8, ptr %1426, align 1, !tbaa !48
  %1430 = getelementptr inbounds i8, ptr %334, i64 4
  %1431 = load i8, ptr %1430, align 1, !tbaa !48
  %1432 = getelementptr inbounds i8, ptr %334, i64 5
  store i8 %1429, ptr %1428, align 1, !tbaa !48
  %1433 = load ptr, ptr %9, align 8, !tbaa !64
  %1434 = getelementptr inbounds i8, ptr %1433, i64 1
  store i8 %1431, ptr %1434, align 1, !tbaa !48
  br label %1600

1435:                                             ; preds = %331
  %1436 = icmp eq i32 %71, 0
  %1437 = icmp eq ptr %332, %99
  %1438 = or i1 %1436, %1437
  %1439 = icmp eq ptr %332, %78
  %1440 = select i1 %1438, i1 true, i1 %1439
  br i1 %1440, label %1600, label %1441

1441:                                             ; preds = %1435
  %1442 = getelementptr inbounds i8, ptr %332, i64 -1
  %1443 = icmp eq ptr %1442, %76
  %1444 = icmp eq ptr %332, %72
  %1445 = select i1 %1444, ptr %97, ptr %1442
  %1446 = select i1 %1443, ptr %72, ptr %1445
  %1447 = load i8, ptr %1446, align 1, !tbaa !48
  %1448 = zext i8 %1447 to i64
  %1449 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1448
  %1450 = load i8, ptr %1449, align 1, !tbaa !48
  %1451 = icmp eq i8 %1450, 1
  %1452 = icmp eq ptr %332, %76
  %1453 = icmp eq ptr %332, %96
  %1454 = select i1 %1453, ptr %97, ptr %332
  %1455 = select i1 %1452, ptr %72, ptr %1454
  %1456 = load i8, ptr %1455, align 1, !tbaa !48
  %1457 = zext i8 %1456 to i64
  %1458 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1457
  %1459 = load i8, ptr %1458, align 1, !tbaa !48
  %1460 = icmp ne i8 %1459, 1
  %1461 = xor i1 %1451, %1460
  br i1 %1461, label %1612, label %1600

1462:                                             ; preds = %331
  %1463 = icmp eq i32 %71, 0
  %1464 = icmp eq ptr %332, %99
  %1465 = or i1 %1463, %1464
  %1466 = icmp eq ptr %332, %78
  %1467 = select i1 %1465, i1 true, i1 %1466
  br i1 %1467, label %1612, label %1468

1468:                                             ; preds = %1462
  %1469 = getelementptr inbounds i8, ptr %332, i64 -1
  %1470 = icmp eq ptr %1469, %76
  %1471 = icmp eq ptr %332, %72
  %1472 = select i1 %1471, ptr %97, ptr %1469
  %1473 = select i1 %1470, ptr %72, ptr %1472
  %1474 = load i8, ptr %1473, align 1, !tbaa !48
  %1475 = zext i8 %1474 to i64
  %1476 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1475
  %1477 = load i8, ptr %1476, align 1, !tbaa !48
  %1478 = icmp eq i8 %1477, 1
  %1479 = icmp eq ptr %332, %76
  %1480 = icmp eq ptr %332, %96
  %1481 = select i1 %1480, ptr %97, ptr %332
  %1482 = select i1 %1479, ptr %72, ptr %1481
  %1483 = load i8, ptr %1482, align 1, !tbaa !48
  %1484 = zext i8 %1483 to i64
  %1485 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1484
  %1486 = load i8, ptr %1485, align 1, !tbaa !48
  %1487 = icmp ne i8 %1486, 1
  %1488 = xor i1 %1478, %1487
  br i1 %1488, label %1600, label %1612

1489:                                             ; preds = %331
  %1490 = icmp eq ptr %332, %78
  br i1 %1490, label %1612, label %1491

1491:                                             ; preds = %1489
  %1492 = icmp eq ptr %332, %76
  %1493 = icmp eq ptr %332, %96
  %1494 = select i1 %1493, ptr %97, ptr %332
  %1495 = select i1 %1492, ptr %72, ptr %1494
  %1496 = load i8, ptr %1495, align 1, !tbaa !48
  %1497 = zext i8 %1496 to i64
  %1498 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1497
  %1499 = load i8, ptr %1498, align 1, !tbaa !48
  %1500 = icmp eq i8 %1499, 1
  br i1 %1500, label %1501, label %1612

1501:                                             ; preds = %1491
  %1502 = icmp ne ptr %332, %99
  %1503 = and i1 %100, %1502
  br i1 %1503, label %1504, label %1600

1504:                                             ; preds = %1501
  %1505 = getelementptr inbounds i8, ptr %332, i64 -1
  %1506 = icmp eq ptr %1505, %76
  %1507 = icmp eq ptr %332, %72
  %1508 = select i1 %1507, ptr %97, ptr %1505
  %1509 = select i1 %1506, ptr %72, ptr %1508
  %1510 = load i8, ptr %1509, align 1, !tbaa !48
  %1511 = zext i8 %1510 to i64
  %1512 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1511
  %1513 = load i8, ptr %1512, align 1, !tbaa !48
  %1514 = icmp eq i8 %1513, 1
  br i1 %1514, label %1612, label %1600

1515:                                             ; preds = %331
  %1516 = icmp ne ptr %332, %99
  %1517 = and i1 %100, %1516
  br i1 %1517, label %1518, label %1612

1518:                                             ; preds = %1515
  %1519 = getelementptr inbounds i8, ptr %332, i64 -1
  %1520 = icmp eq ptr %1519, %76
  %1521 = icmp eq ptr %332, %72
  %1522 = select i1 %1521, ptr %97, ptr %1519
  %1523 = select i1 %1520, ptr %72, ptr %1522
  %1524 = load i8, ptr %1523, align 1, !tbaa !48
  %1525 = zext i8 %1524 to i64
  %1526 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1525
  %1527 = load i8, ptr %1526, align 1, !tbaa !48
  %1528 = icmp eq i8 %1527, 1
  br i1 %1528, label %1529, label %1612

1529:                                             ; preds = %1518
  %1530 = icmp eq ptr %332, %78
  br i1 %1530, label %1600, label %1531

1531:                                             ; preds = %1529
  %1532 = icmp eq ptr %332, %76
  %1533 = icmp eq ptr %332, %96
  %1534 = select i1 %1533, ptr %97, ptr %332
  %1535 = select i1 %1532, ptr %72, ptr %1534
  %1536 = load i8, ptr %1535, align 1, !tbaa !48
  %1537 = zext i8 %1536 to i64
  %1538 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1537
  %1539 = load i8, ptr %1538, align 1, !tbaa !48
  %1540 = icmp eq i8 %1539, 1
  br i1 %1540, label %1612, label %1600

1541:                                             ; preds = %331, %1545
  %1542 = phi ptr [ %85, %1545 ], [ %333, %331 ]
  %1543 = phi ptr [ %72, %1545 ], [ %332, %331 ]
  %1544 = icmp eq ptr %1543, %1542
  br i1 %1544, label %1545, label %1547

1545:                                             ; preds = %1541
  %1546 = icmp eq ptr %1542, %85
  br i1 %1546, label %1612, label %1541, !llvm.loop !99

1547:                                             ; preds = %1541
  %1548 = icmp eq ptr %1543, %76
  %1549 = icmp eq ptr %1543, %96
  %1550 = select i1 %1549, ptr %97, ptr %1543
  %1551 = select i1 %1548, ptr %72, ptr %1550
  %1552 = load i8, ptr %1551, align 1, !tbaa !48
  %1553 = zext i8 %1552 to i64
  %1554 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1553
  %1555 = load i8, ptr %1554, align 1, !tbaa !48
  %1556 = icmp eq i8 %1555, 1
  br i1 %1556, label %1557, label %1612

1557:                                             ; preds = %1547
  %1558 = icmp ne i32 %341, 0
  %1559 = icmp ugt i64 %339, %340
  %1560 = select i1 %1558, i1 true, i1 %1559
  br i1 %1560, label %1568, label %1561

1561:                                             ; preds = %1557, %1561
  %1562 = phi i64 [ %1566, %1561 ], [ %339, %1557 ]
  %1563 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1562
  %1564 = load i8, ptr %1563, align 8
  %1565 = or i8 %1564, 24
  store i8 %1565, ptr %1563, align 8
  %1566 = add i64 %1562, 1
  %1567 = icmp ugt i64 %1566, %340
  br i1 %1567, label %1568, label %1561, !llvm.loop !100

1568:                                             ; preds = %1561, %1557
  %1569 = getelementptr inbounds i8, ptr %1543, i64 1
  br label %1600

1570:                                             ; preds = %331, %1574
  %1571 = phi ptr [ %85, %1574 ], [ %333, %331 ]
  %1572 = phi ptr [ %72, %1574 ], [ %332, %331 ]
  %1573 = icmp eq ptr %1572, %1571
  br i1 %1573, label %1574, label %1576

1574:                                             ; preds = %1570
  %1575 = icmp eq ptr %1571, %85
  br i1 %1575, label %1612, label %1570, !llvm.loop !101

1576:                                             ; preds = %1570
  %1577 = icmp eq ptr %1572, %76
  %1578 = icmp eq ptr %1572, %96
  %1579 = select i1 %1578, ptr %97, ptr %1572
  %1580 = select i1 %1577, ptr %72, ptr %1579
  %1581 = load i8, ptr %1580, align 1, !tbaa !48
  %1582 = zext i8 %1581 to i64
  %1583 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1582
  %1584 = load i8, ptr %1583, align 1, !tbaa !48
  %1585 = icmp eq i8 %1584, 1
  br i1 %1585, label %1612, label %1586

1586:                                             ; preds = %1576
  %1587 = icmp ne i32 %341, 0
  %1588 = icmp ugt i64 %339, %340
  %1589 = select i1 %1587, i1 true, i1 %1588
  br i1 %1589, label %1597, label %1590

1590:                                             ; preds = %1586, %1590
  %1591 = phi i64 [ %1595, %1590 ], [ %339, %1586 ]
  %1592 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1591
  %1593 = load i8, ptr %1592, align 8
  %1594 = or i8 %1593, 24
  store i8 %1594, ptr %1592, align 8
  %1595 = add i64 %1591, 1
  %1596 = icmp ugt i64 %1595, %340
  br i1 %1596, label %1597, label %1590, !llvm.loop !102

1597:                                             ; preds = %1590, %1586
  %1598 = getelementptr inbounds i8, ptr %1572, i64 1
  br label %1600

1599:                                             ; preds = %331
  tail call void @abort() #24
  unreachable

1600:                                             ; preds = %805, %422, %802, %940, %1034, %1366, %1468, %1441, %1435, %524, %1529, %1531, %1501, %1504, %1392, %1398, %882, %879, %876, %867, %862, %854, %416, %331, %1597, %1568, %1418, %1416, %1259, %765, %545, %473
  %1601 = phi i32 [ 1, %1597 ], [ 1, %1568 ], [ %341, %1529 ], [ %341, %1531 ], [ %341, %1504 ], [ %341, %1501 ], [ %341, %1418 ], [ %1260, %1259 ], [ %341, %1416 ], [ %341, %1392 ], [ %341, %1034 ], [ %341, %1398 ], [ %341, %1366 ], [ %341, %940 ], [ %341, %882 ], [ %341, %879 ], [ %341, %867 ], [ %341, %876 ], [ %341, %862 ], [ %341, %854 ], [ 0, %765 ], [ 0, %545 ], [ 1, %473 ], [ 1, %416 ], [ %341, %331 ], [ 1, %524 ], [ %341, %1435 ], [ %341, %1441 ], [ %341, %1468 ], [ %791, %802 ], [ 1, %422 ], [ %791, %805 ]
  %1602 = phi i64 [ %340, %1597 ], [ %340, %1568 ], [ %340, %1529 ], [ %340, %1531 ], [ %340, %1504 ], [ %340, %1501 ], [ %340, %1418 ], [ %340, %1259 ], [ %340, %1416 ], [ %340, %1392 ], [ %985, %1034 ], [ %340, %1398 ], [ %340, %1366 ], [ %340, %940 ], [ %340, %882 ], [ %340, %879 ], [ %340, %867 ], [ %340, %876 ], [ %340, %862 ], [ %340, %854 ], [ %608, %765 ], [ %570, %545 ], [ %340, %473 ], [ %340, %416 ], [ %340, %331 ], [ %340, %524 ], [ %340, %1435 ], [ %340, %1441 ], [ %340, %1468 ], [ %340, %802 ], [ %340, %422 ], [ %340, %805 ]
  %1603 = phi i64 [ %339, %1597 ], [ %339, %1568 ], [ %339, %1529 ], [ %339, %1531 ], [ %339, %1504 ], [ %339, %1501 ], [ %339, %1418 ], [ %339, %1259 ], [ %339, %1416 ], [ %339, %1392 ], [ %986, %1034 ], [ %339, %1398 ], [ %339, %1366 ], [ %339, %940 ], [ %339, %882 ], [ %339, %879 ], [ %339, %867 ], [ %339, %876 ], [ %339, %862 ], [ %339, %854 ], [ %609, %765 ], [ %572, %545 ], [ %339, %473 ], [ %339, %416 ], [ %339, %331 ], [ %339, %524 ], [ %339, %1435 ], [ %339, %1441 ], [ %339, %1468 ], [ %339, %802 ], [ %339, %422 ], [ %339, %805 ]
  %1604 = phi ptr [ %338, %1597 ], [ %338, %1568 ], [ %338, %1529 ], [ %338, %1531 ], [ %338, %1504 ], [ %338, %1501 ], [ %338, %1418 ], [ %1261, %1259 ], [ %338, %1416 ], [ %338, %1392 ], [ %997, %1034 ], [ %338, %1398 ], [ %1329, %1366 ], [ %903, %940 ], [ %338, %882 ], [ %338, %879 ], [ %338, %867 ], [ %338, %876 ], [ %338, %862 ], [ %338, %854 ], [ %338, %765 ], [ %338, %545 ], [ %338, %473 ], [ %338, %416 ], [ %338, %331 ], [ %338, %524 ], [ %338, %1435 ], [ %338, %1441 ], [ %338, %1468 ], [ %338, %802 ], [ %338, %422 ], [ %338, %805 ]
  %1605 = phi i32 [ %337, %1597 ], [ %337, %1568 ], [ %337, %1529 ], [ %337, %1531 ], [ %337, %1504 ], [ %337, %1501 ], [ %337, %1418 ], [ %1262, %1259 ], [ %337, %1416 ], [ %337, %1392 ], [ %998, %1034 ], [ %337, %1398 ], [ %1330, %1366 ], [ %904, %940 ], [ %337, %882 ], [ %337, %879 ], [ %337, %867 ], [ %337, %876 ], [ %337, %862 ], [ %337, %854 ], [ %337, %765 ], [ %337, %545 ], [ %337, %473 ], [ %337, %416 ], [ %337, %331 ], [ %337, %524 ], [ %337, %1435 ], [ %337, %1441 ], [ %337, %1468 ], [ %337, %802 ], [ %337, %422 ], [ %337, %805 ]
  %1606 = phi i32 [ %336, %1597 ], [ %336, %1568 ], [ %336, %1529 ], [ %336, %1531 ], [ %336, %1504 ], [ %336, %1501 ], [ %336, %1418 ], [ %1263, %1259 ], [ %336, %1416 ], [ %336, %1392 ], [ %1049, %1034 ], [ %336, %1398 ], [ %1379, %1366 ], [ %955, %940 ], [ %336, %882 ], [ %336, %879 ], [ %336, %867 ], [ %336, %876 ], [ %336, %862 ], [ %336, %854 ], [ %336, %765 ], [ %336, %545 ], [ %336, %473 ], [ %336, %416 ], [ %336, %331 ], [ %336, %524 ], [ %336, %1435 ], [ %336, %1441 ], [ %336, %1468 ], [ %336, %802 ], [ %336, %422 ], [ %336, %805 ]
  %1607 = phi ptr [ %335, %1597 ], [ %335, %1568 ], [ %335, %1529 ], [ %335, %1531 ], [ %335, %1504 ], [ %335, %1501 ], [ %335, %1418 ], [ %335, %1259 ], [ %335, %1416 ], [ %335, %1392 ], [ %335, %1034 ], [ %335, %1398 ], [ %335, %1366 ], [ %335, %940 ], [ %335, %882 ], [ %335, %879 ], [ %335, %867 ], [ %335, %876 ], [ %335, %862 ], [ %335, %854 ], [ %335, %765 ], [ %573, %545 ], [ %335, %473 ], [ %335, %416 ], [ %335, %331 ], [ %335, %524 ], [ %335, %1435 ], [ %335, %1441 ], [ %335, %1468 ], [ %335, %802 ], [ %335, %422 ], [ %335, %805 ]
  %1608 = phi ptr [ %342, %1597 ], [ %342, %1568 ], [ %342, %1529 ], [ %342, %1531 ], [ %342, %1504 ], [ %342, %1501 ], [ %1432, %1418 ], [ %1273, %1259 ], [ %1417, %1416 ], [ %1397, %1392 ], [ %966, %1034 ], [ %342, %1398 ], [ %342, %1366 ], [ %892, %940 ], [ %342, %882 ], [ %342, %879 ], [ %342, %867 ], [ %342, %876 ], [ %342, %862 ], [ %342, %854 ], [ %766, %765 ], [ %573, %545 ], [ %342, %473 ], [ %372, %416 ], [ %342, %331 ], [ %513, %524 ], [ %342, %1435 ], [ %342, %1441 ], [ %342, %1468 ], [ %768, %802 ], [ %372, %422 ], [ %768, %805 ]
  %1609 = phi ptr [ %1571, %1597 ], [ %1542, %1568 ], [ %333, %1529 ], [ %333, %1531 ], [ %333, %1504 ], [ %333, %1501 ], [ %333, %1418 ], [ %333, %1259 ], [ %333, %1416 ], [ %333, %1392 ], [ %333, %1034 ], [ %333, %1398 ], [ %333, %1366 ], [ %333, %940 ], [ %333, %882 ], [ %333, %879 ], [ %333, %867 ], [ %333, %876 ], [ %333, %862 ], [ %333, %854 ], [ %333, %765 ], [ %333, %545 ], [ %430, %473 ], [ %417, %416 ], [ %333, %331 ], [ %478, %524 ], [ %333, %1435 ], [ %333, %1441 ], [ %333, %1468 ], [ %794, %802 ], [ %417, %422 ], [ %794, %805 ]
  %1610 = phi ptr [ %1598, %1597 ], [ %1569, %1568 ], [ %78, %1529 ], [ %332, %1531 ], [ %332, %1504 ], [ %332, %1501 ], [ %332, %1418 ], [ %332, %1259 ], [ %332, %1416 ], [ %332, %1392 ], [ %332, %1034 ], [ %332, %1398 ], [ %332, %1366 ], [ %332, %940 ], [ %78, %882 ], [ %332, %879 ], [ %78, %867 ], [ %332, %876 ], [ %332, %862 ], [ %332, %854 ], [ %332, %765 ], [ %332, %545 ], [ %474, %473 ], [ %418, %416 ], [ %332, %331 ], [ %525, %524 ], [ %332, %1435 ], [ %332, %1441 ], [ %332, %1468 ], [ %795, %802 ], [ %418, %422 ], [ %795, %805 ]
  %1611 = icmp eq ptr %1608, %13
  br i1 %1611, label %116, label %331

1612:                                             ; preds = %879, %882, %1547, %1576, %1441, %1515, %1518, %1531, %1489, %1491, %1504, %1462, %1468, %867, %876, %871, %854, %862, %858, %774, %767, %509, %497, %446, %458, %142, %1574, %1545, %831, %824, %481, %433, %384, %407, %810, %382, %405, %746
  %1613 = phi ptr [ %335, %746 ], [ %335, %405 ], [ %335, %382 ], [ %335, %810 ], [ %335, %407 ], [ %335, %384 ], [ %335, %433 ], [ %335, %481 ], [ %335, %824 ], [ %335, %831 ], [ %335, %1545 ], [ %335, %1574 ], [ %120, %142 ], [ %335, %458 ], [ %335, %446 ], [ %335, %497 ], [ %335, %509 ], [ %335, %767 ], [ %335, %774 ], [ %335, %858 ], [ %335, %862 ], [ %335, %854 ], [ %335, %871 ], [ %335, %876 ], [ %335, %867 ], [ %335, %1468 ], [ %335, %1462 ], [ %335, %1504 ], [ %335, %1491 ], [ %335, %1489 ], [ %335, %1531 ], [ %335, %1518 ], [ %335, %1515 ], [ %335, %1441 ], [ %335, %1576 ], [ %335, %1547 ], [ %335, %882 ], [ %335, %879 ]
  %1614 = phi i32 [ %104, %746 ], [ %104, %405 ], [ %104, %382 ], [ %104, %810 ], [ %104, %407 ], [ %104, %384 ], [ %104, %433 ], [ %104, %481 ], [ %104, %824 ], [ %104, %831 ], [ %104, %1545 ], [ %104, %1574 ], [ 1, %142 ], [ %104, %458 ], [ %104, %446 ], [ %104, %497 ], [ %104, %509 ], [ %104, %767 ], [ %104, %774 ], [ %104, %858 ], [ %104, %862 ], [ %104, %854 ], [ %104, %871 ], [ %104, %876 ], [ %104, %867 ], [ %104, %1468 ], [ %104, %1462 ], [ %104, %1504 ], [ %104, %1491 ], [ %104, %1489 ], [ %104, %1531 ], [ %104, %1518 ], [ %104, %1515 ], [ %104, %1441 ], [ %104, %1576 ], [ %104, %1547 ], [ %104, %882 ], [ %104, %879 ]
  %1615 = phi ptr [ %105, %746 ], [ %105, %405 ], [ %105, %382 ], [ %105, %810 ], [ %105, %407 ], [ %105, %384 ], [ %105, %433 ], [ %105, %481 ], [ %105, %824 ], [ %105, %831 ], [ %105, %1545 ], [ %105, %1574 ], [ %122, %142 ], [ %105, %458 ], [ %105, %446 ], [ %105, %497 ], [ %105, %509 ], [ %105, %767 ], [ %105, %774 ], [ %105, %858 ], [ %105, %862 ], [ %105, %854 ], [ %105, %871 ], [ %105, %876 ], [ %105, %867 ], [ %105, %1468 ], [ %105, %1462 ], [ %105, %1504 ], [ %105, %1491 ], [ %105, %1489 ], [ %105, %1531 ], [ %105, %1518 ], [ %105, %1515 ], [ %105, %1441 ], [ %105, %1576 ], [ %105, %1547 ], [ %105, %882 ], [ %105, %879 ]
  %1616 = phi ptr [ %709, %746 ], [ %338, %405 ], [ %338, %382 ], [ %338, %810 ], [ %338, %407 ], [ %338, %384 ], [ %338, %433 ], [ %338, %481 ], [ %338, %824 ], [ %338, %831 ], [ %338, %1545 ], [ %338, %1574 ], [ %117, %142 ], [ %338, %458 ], [ %338, %446 ], [ %338, %497 ], [ %338, %509 ], [ %338, %767 ], [ %338, %774 ], [ %338, %858 ], [ %338, %862 ], [ %338, %854 ], [ %338, %871 ], [ %338, %876 ], [ %338, %867 ], [ %338, %1468 ], [ %338, %1462 ], [ %338, %1504 ], [ %338, %1491 ], [ %338, %1489 ], [ %338, %1531 ], [ %338, %1518 ], [ %338, %1515 ], [ %338, %1441 ], [ %338, %1576 ], [ %338, %1547 ], [ %338, %882 ], [ %338, %879 ]
  %1617 = phi i32 [ %710, %746 ], [ %337, %405 ], [ %337, %382 ], [ %337, %810 ], [ %337, %407 ], [ %337, %384 ], [ %337, %433 ], [ %337, %481 ], [ %337, %824 ], [ %337, %831 ], [ %337, %1545 ], [ %337, %1574 ], [ %118, %142 ], [ %337, %458 ], [ %337, %446 ], [ %337, %497 ], [ %337, %509 ], [ %337, %767 ], [ %337, %774 ], [ %337, %858 ], [ %337, %862 ], [ %337, %854 ], [ %337, %871 ], [ %337, %876 ], [ %337, %867 ], [ %337, %1468 ], [ %337, %1462 ], [ %337, %1504 ], [ %337, %1491 ], [ %337, %1489 ], [ %337, %1531 ], [ %337, %1518 ], [ %337, %1515 ], [ %337, %1441 ], [ %337, %1576 ], [ %337, %1547 ], [ %337, %882 ], [ %337, %879 ]
  %1618 = phi i32 [ %762, %746 ], [ %336, %405 ], [ %336, %382 ], [ %336, %810 ], [ %336, %407 ], [ %336, %384 ], [ %336, %433 ], [ %336, %481 ], [ %336, %824 ], [ %336, %831 ], [ %336, %1545 ], [ %336, %1574 ], [ %119, %142 ], [ %336, %458 ], [ %336, %446 ], [ %336, %497 ], [ %336, %509 ], [ %336, %767 ], [ %336, %774 ], [ %336, %858 ], [ %336, %862 ], [ %336, %854 ], [ %336, %871 ], [ %336, %876 ], [ %336, %867 ], [ %336, %1468 ], [ %336, %1462 ], [ %336, %1504 ], [ %336, %1491 ], [ %336, %1489 ], [ %336, %1531 ], [ %336, %1518 ], [ %336, %1515 ], [ %336, %1441 ], [ %336, %1576 ], [ %336, %1547 ], [ %336, %882 ], [ %336, %879 ]
  %1619 = phi ptr [ %333, %746 ], [ %85, %405 ], [ %85, %382 ], [ %85, %810 ], [ %402, %407 ], [ %379, %384 ], [ %85, %433 ], [ %85, %481 ], [ %807, %824 ], [ %807, %831 ], [ %85, %1545 ], [ %85, %1574 ], [ %121, %142 ], [ %333, %879 ], [ %333, %882 ], [ %1542, %1547 ], [ %1571, %1576 ], [ %333, %1441 ], [ %333, %1515 ], [ %333, %1518 ], [ %333, %1531 ], [ %333, %1489 ], [ %333, %1491 ], [ %333, %1504 ], [ %333, %1462 ], [ %333, %1468 ], [ %333, %867 ], [ %333, %876 ], [ %333, %871 ], [ %333, %854 ], [ %333, %862 ], [ %333, %858 ], [ %333, %774 ], [ %333, %767 ], [ %478, %509 ], [ %478, %497 ], [ %430, %446 ], [ %430, %458 ]
  %1620 = phi ptr [ %332, %746 ], [ %85, %405 ], [ %85, %382 ], [ %85, %810 ], [ %408, %407 ], [ %385, %384 ], [ %85, %433 ], [ %85, %481 ], [ %808, %824 ], [ %808, %831 ], [ %85, %1545 ], [ %85, %1574 ], [ %122, %142 ], [ %332, %879 ], [ %332, %882 ], [ %1543, %1547 ], [ %1572, %1576 ], [ %332, %1441 ], [ %332, %1515 ], [ %332, %1518 ], [ %332, %1531 ], [ %78, %1489 ], [ %332, %1491 ], [ %332, %1504 ], [ %332, %1462 ], [ %332, %1468 ], [ %78, %867 ], [ %332, %876 ], [ %332, %871 ], [ %332, %854 ], [ %332, %862 ], [ %332, %858 ], [ %332, %774 ], [ %332, %767 ], [ %479, %509 ], [ %479, %497 ], [ %431, %446 ], [ %431, %458 ]
  %1621 = icmp eq i32 %1618, 0
  br i1 %1621, label %1717, label %1622

1622:                                             ; preds = %140, %141, %1612
  %1623 = phi ptr [ %1620, %1612 ], [ %122, %141 ], [ %122, %140 ]
  %1624 = phi ptr [ %1619, %1612 ], [ %121, %141 ], [ %121, %140 ]
  %1625 = phi i32 [ %1618, %1612 ], [ %119, %141 ], [ %119, %140 ]
  %1626 = phi i32 [ %1617, %1612 ], [ %118, %141 ], [ %118, %140 ]
  %1627 = phi ptr [ %1616, %1612 ], [ %117, %141 ], [ %117, %140 ]
  %1628 = phi ptr [ %1615, %1612 ], [ %122, %141 ], [ %105, %140 ]
  %1629 = phi i32 [ %1614, %1612 ], [ 1, %141 ], [ 1, %140 ]
  %1630 = phi ptr [ %1613, %1612 ], [ %120, %141 ], [ %120, %140 ]
  br label %1631

1631:                                             ; preds = %1622, %1678
  %1632 = phi ptr [ %1639, %1678 ], [ %1623, %1622 ]
  %1633 = phi i32 [ %1676, %1678 ], [ %1625, %1622 ]
  %1634 = add i32 %1633, -1
  %1635 = zext i32 %1634 to i64
  %1636 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1627, i64 %1635
  %1637 = load ptr, ptr %1636, align 8, !tbaa !48
  %1638 = icmp eq ptr %1637, null
  %1639 = select i1 %1638, ptr %1632, ptr %1637
  %1640 = add i32 %1633, -2
  %1641 = zext i32 %1640 to i64
  %1642 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1627, i64 %1641
  %1643 = load ptr, ptr %1642, align 8, !tbaa !48
  %1644 = add i32 %1633, -3
  %1645 = zext i32 %1644 to i64
  %1646 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1627, i64 %1645
  %1647 = load i32, ptr %1646, align 8, !tbaa !48
  %1648 = sext i32 %1647 to i64
  %1649 = add i32 %1633, -4
  %1650 = zext i32 %1649 to i64
  %1651 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1627, i64 %1650
  %1652 = load i32, ptr %1651, align 8, !tbaa !48
  %1653 = sext i32 %1652 to i64
  %1654 = icmp ult i32 %1647, %1652
  br i1 %1654, label %1675, label %1655

1655:                                             ; preds = %1631, %1655
  %1656 = phi i64 [ %1673, %1655 ], [ %1648, %1631 ]
  %1657 = phi i32 [ %1668, %1655 ], [ %1649, %1631 ]
  %1658 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1656
  %1659 = add i32 %1657, -1
  %1660 = zext i32 %1659 to i64
  %1661 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1627, i64 %1660
  %1662 = load i64, ptr %1661, align 8
  store i64 %1662, ptr %1658, align 8
  %1663 = add i32 %1657, -2
  %1664 = zext i32 %1663 to i64
  %1665 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1627, i64 %1664
  %1666 = load ptr, ptr %1665, align 8, !tbaa !48
  %1667 = getelementptr inbounds ptr, ptr %58, i64 %1656
  store ptr %1666, ptr %1667, align 8, !tbaa !64
  %1668 = add i32 %1657, -3
  %1669 = zext i32 %1668 to i64
  %1670 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1627, i64 %1669
  %1671 = load ptr, ptr %1670, align 8, !tbaa !48
  %1672 = getelementptr inbounds ptr, ptr %57, i64 %1656
  store ptr %1671, ptr %1672, align 8, !tbaa !64
  %1673 = add i64 %1656, -1
  %1674 = icmp ult i64 %1673, %1653
  br i1 %1674, label %1675, label %1655, !llvm.loop !103

1675:                                             ; preds = %1655, %1631
  %1676 = phi i32 [ %1649, %1631 ], [ %1668, %1655 ]
  %1677 = icmp eq ptr %1643, null
  br i1 %1677, label %1678, label %1680

1678:                                             ; preds = %1710, %1708, %1675
  %1679 = icmp eq i32 %1676, 0
  br i1 %1679, label %1717, label %1631

1680:                                             ; preds = %1675
  %1681 = icmp ult ptr %1643, %13
  br i1 %1681, label %1682, label %1712

1682:                                             ; preds = %1680
  %1683 = load i8, ptr %1643, align 1, !tbaa !48
  %1684 = add i8 %1683, -13
  %1685 = icmp ult i8 %1684, 10
  br i1 %1685, label %1686, label %1712

1686:                                             ; preds = %1682
  %1687 = zext nneg i8 %1684 to i16
  %1688 = lshr i16 561, %1687
  %1689 = and i16 %1688, 1
  %1690 = icmp eq i16 %1689, 0
  br i1 %1690, label %1712, label %1691

1691:                                             ; preds = %1686
  %1692 = zext nneg i8 %1684 to i10
  %1693 = lshr i10 49, %1692
  %1694 = and i10 %1693, 1
  %1695 = icmp eq i10 %1694, 0
  %1696 = getelementptr inbounds i8, ptr %1643, i64 1
  %1697 = load i8, ptr %1696, align 1, !tbaa !48
  %1698 = zext i8 %1697 to i32
  %1699 = getelementptr inbounds i8, ptr %1643, i64 2
  %1700 = load i8, ptr %1699, align 1, !tbaa !48
  %1701 = sext i8 %1700 to i32
  %1702 = shl nsw i32 %1701, 8
  %1703 = or disjoint i32 %1702, %1698
  %1704 = getelementptr inbounds i8, ptr %1643, i64 3
  %1705 = sext i32 %1703 to i64
  %1706 = getelementptr inbounds i8, ptr %1704, i64 %1705
  store ptr %1706, ptr %9, align 8, !tbaa !64
  %1707 = load i8, ptr %1706, align 1, !tbaa !48
  br i1 %1695, label %1708, label %1710

1708:                                             ; preds = %1691
  %1709 = icmp eq i8 %1707, 21
  br i1 %1709, label %1678, label %1712

1710:                                             ; preds = %1691
  %1711 = icmp eq i8 %1707, 15
  br i1 %1711, label %1678, label %1712

1712:                                             ; preds = %1686, %1682, %1708, %1710, %1680
  %1713 = icmp ult ptr %1639, %74
  %1714 = icmp ugt ptr %1639, %76
  %1715 = select i1 %1713, i1 true, i1 %1714
  %1716 = select i1 %1715, ptr %1624, ptr %86
  br label %103

1717:                                             ; preds = %1612, %1678
  %1718 = phi ptr [ %1628, %1678 ], [ %1615, %1612 ]
  %1719 = phi i32 [ %1629, %1678 ], [ %1614, %1612 ]
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1721, label %153

1721:                                             ; preds = %712, %1332, %1278, %1000, %906, %36, %1717, %202, %180, %21, %321
  %1722 = phi i32 [ %330, %321 ], [ -1, %21 ], [ -2, %180 ], [ -2, %202 ], [ -1, %1717 ], [ -1, %36 ], [ -2, %906 ], [ -2, %1000 ], [ -2, %1278 ], [ -2, %1332 ], [ -2, %712 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  ret i32 %1722
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_group_match_null_string_p(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !35 !PGOFuncName !104 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !64
  %6 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %6, ptr %4, align 8, !tbaa !64
  %7 = icmp ult ptr %6, %1
  br i1 %7, label %8, label %84

8:                                                ; preds = %3, %82
  %9 = phi ptr [ %83, %82 ], [ %6, %3 ]
  %10 = load i8, ptr %9, align 1, !tbaa !48
  switch i8 %10, label %73 [
    i8 15, label %11
    i8 7, label %71
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %12, ptr %4, align 8, !tbaa !64
  %13 = load i8, ptr %12, align 1, !tbaa !48
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %9, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !48
  %17 = sext i8 %16 to i32
  %18 = shl nsw i32 %17, 8
  %19 = or disjoint i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %9, i64 3
  store ptr %20, ptr %4, align 8, !tbaa !64
  %21 = icmp sgt i32 %19, -1
  br i1 %21, label %22, label %79

22:                                               ; preds = %11
  %23 = zext nneg i32 %19 to i64
  %24 = getelementptr i8, ptr %20, i64 %23
  %25 = getelementptr i8, ptr %24, i64 -3
  %26 = load i8, ptr %25, align 1, !tbaa !48
  br label %27

27:                                               ; preds = %22, %41
  %28 = phi i8 [ 14, %41 ], [ %26, %22 ]
  %29 = phi ptr [ %50, %41 ], [ %20, %22 ]
  %30 = phi i32 [ %49, %41 ], [ %19, %22 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, ptr %29, i64 %31
  %33 = icmp eq i8 %28, 14
  br i1 %33, label %34, label %56

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %32, i64 -3
  %36 = tail call fastcc signext i8 @byte_alt_match_null_string_p(ptr noundef nonnull %29, ptr noundef nonnull %35, ptr noundef %2) #23, !range !83
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %32, align 1, !tbaa !48
  %40 = icmp eq i8 %39, 15
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %32, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !48
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %32, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !48
  %47 = sext i8 %46 to i32
  %48 = shl nsw i32 %47, 8
  %49 = or disjoint i32 %48, %44
  %50 = getelementptr inbounds i8, ptr %32, i64 3
  %51 = sext i32 %49 to i64
  %52 = getelementptr i8, ptr %50, i64 %51
  %53 = getelementptr i8, ptr %52, i64 -3
  %54 = load i8, ptr %53, align 1, !tbaa !48
  %55 = icmp eq i8 %54, 14
  br i1 %55, label %27, label %56, !llvm.loop !105

56:                                               ; preds = %27, %38, %41
  %57 = phi ptr [ %32, %41 ], [ %29, %27 ], [ %32, %38 ]
  store ptr %57, ptr %4, align 8, !tbaa !64
  %58 = getelementptr inbounds i8, ptr %57, i64 -2
  %59 = load i8, ptr %58, align 1, !tbaa !48
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds i8, ptr %57, i64 -1
  %62 = load i8, ptr %61, align 1, !tbaa !48
  %63 = sext i8 %62 to i32
  %64 = shl nsw i32 %63, 8
  %65 = or disjoint i32 %64, %60
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %57, i64 %66
  %68 = tail call fastcc signext i8 @byte_alt_match_null_string_p(ptr noundef %57, ptr noundef %67, ptr noundef %2) #23, !range !83
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %56
  store ptr %67, ptr %4, align 8, !tbaa !64
  br label %79

71:                                               ; preds = %8
  %72 = getelementptr inbounds i8, ptr %9, i64 2
  store ptr %72, ptr %0, align 8, !tbaa !64
  br label %84

73:                                               ; preds = %8
  %74 = call fastcc signext i8 @byte_common_op_match_null_string_p(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %2) #23, !range !83
  %75 = icmp ne i8 %74, 0
  %76 = load ptr, ptr %4, align 8
  %77 = icmp ult ptr %76, %1
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %82, label %84

79:                                               ; preds = %11, %70
  %80 = phi ptr [ %20, %11 ], [ %67, %70 ]
  %81 = icmp ult ptr %80, %1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %73
  %83 = phi ptr [ %80, %79 ], [ %76, %73 ]
  br label %8, !llvm.loop !106

84:                                               ; preds = %56, %73, %79, %34, %3, %71
  %85 = phi i8 [ 1, %71 ], [ 0, %3 ], [ 0, %34 ], [ 0, %79 ], [ 0, %73 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %85
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @byte_bcmp_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !prof !35 !PGOFuncName !107 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %4, %19
  %7 = phi ptr [ %20, %19 ], [ %1, %4 ]
  %8 = phi ptr [ %21, %19 ], [ %0, %4 ]
  %9 = phi i32 [ %22, %19 ], [ %2, %4 ]
  %10 = load i8, ptr %8, align 1, !tbaa !48
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !48
  %14 = load i8, ptr %7, align 1, !tbaa !48
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !48
  %18 = icmp eq i8 %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = getelementptr inbounds i8, ptr %8, i64 1
  %22 = add nsw i32 %9, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %6, !llvm.loop !108

24:                                               ; preds = %6, %19, %4
  %25 = phi i32 [ 0, %4 ], [ 0, %19 ], [ 1, %6 ]
  ret i32 %25
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_alt_match_null_string_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !35 !PGOFuncName !109 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !64
  %5 = icmp ult ptr %0, %1
  br i1 %5, label %6, label %30

6:                                                ; preds = %3, %27
  %7 = phi ptr [ %28, %27 ], [ %0, %3 ]
  %8 = load i8, ptr %7, align 1, !tbaa !48
  %9 = icmp eq i8 %8, 15
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %11, ptr %4, align 8, !tbaa !64
  %12 = load i8, ptr %11, align 1, !tbaa !48
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %7, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !48
  %16 = sext i8 %15 to i32
  %17 = shl nsw i32 %16, 8
  %18 = or disjoint i32 %17, %13
  %19 = getelementptr inbounds i8, ptr %7, i64 3
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %21, ptr %4, align 8, !tbaa !64
  br label %27

22:                                               ; preds = %6
  %23 = call fastcc signext i8 @byte_common_op_match_null_string_p(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %2) #23, !range !83
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !64
  br label %27

27:                                               ; preds = %25, %10
  %28 = phi ptr [ %26, %25 ], [ %21, %10 ]
  %29 = icmp ult ptr %28, %1
  br i1 %29, label %6, label %30, !llvm.loop !110

30:                                               ; preds = %22, %27, %3
  %31 = phi i8 [ 1, %3 ], [ 1, %27 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %31
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_common_op_match_null_string_p(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !35 !PGOFuncName !111 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !64
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %4, align 8, !tbaa !64
  %7 = load i8, ptr %5, align 1, !tbaa !48
  switch i8 %7, label %65 [
    i8 0, label %63
    i8 9, label %63
    i8 10, label %63
    i8 11, label %63
    i8 12, label %63
    i8 26, label %63
    i8 27, label %63
    i8 28, label %63
    i8 29, label %63
    i8 6, label %8
    i8 13, label %23
    i8 21, label %36
    i8 8, label %56
  ]

8:                                                ; preds = %3
  %9 = load i8, ptr %6, align 1, !tbaa !48
  %10 = call fastcc signext i8 @byte_group_match_null_string_p(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #23, !range !83
  %11 = zext i8 %9 to i64
  %12 = getelementptr inbounds %union.byte_register_info_type, ptr %2, i64 %11
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 3
  %15 = icmp eq i8 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = and i8 %13, -4
  %18 = or disjoint i8 %17, %10
  store i8 %18, ptr %12, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = icmp eq i8 %10, 0
  br i1 %20, label %65, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %4, align 8, !tbaa !64
  br label %63

23:                                               ; preds = %3
  %24 = load i8, ptr %6, align 1, !tbaa !48
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds i8, ptr %5, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !48
  %28 = sext i8 %27 to i32
  %29 = shl nsw i32 %28, 8
  %30 = or disjoint i32 %29, %25
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %65

32:                                               ; preds = %23
  %33 = getelementptr inbounds i8, ptr %5, i64 3
  %34 = zext nneg i32 %30 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  br label %63

36:                                               ; preds = %3
  %37 = getelementptr inbounds i8, ptr %5, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !48
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %5, i64 4
  %41 = load i8, ptr %40, align 1, !tbaa !48
  %42 = sext i8 %41 to i32
  %43 = shl nsw i32 %42, 8
  %44 = or disjoint i32 %43, %39
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %36
  %47 = load i8, ptr %6, align 1, !tbaa !48
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %5, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !48
  %51 = sext i8 %50 to i32
  %52 = shl nsw i32 %51, 8
  %53 = or disjoint i32 %52, %48
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %37, i64 %54
  br label %63

56:                                               ; preds = %3
  %57 = load i8, ptr %6, align 1, !tbaa !48
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %union.byte_register_info_type, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, 3
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %21, %56, %3, %3, %3, %3, %3, %3, %3, %3, %3, %46, %32
  %64 = phi ptr [ %22, %21 ], [ %6, %56 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %55, %46 ], [ %35, %32 ]
  store ptr %64, ptr %0, align 8, !tbaa !64
  br label %65

65:                                               ; preds = %3, %56, %36, %23, %19, %63
  %66 = phi i8 [ 1, %63 ], [ 0, %19 ], [ 0, %23 ], [ 0, %36 ], [ 0, %56 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_match(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 !prof !35 {
  %6 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %2) #23
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_match_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #2 !prof !35 {
  %9 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #23
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @xre_compile_pattern(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !35 {
  %4 = getelementptr inbounds %struct.re_pattern_buffer, ptr %2, i64 0, i32 7
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 105
  %7 = or disjoint i8 %6, -128
  store i8 %7, ptr %4, align 8
  %8 = load i64, ptr @xre_syntax_options, align 8, !tbaa !36
  %9 = tail call fastcc i32 @byte_regex_compile(ptr noundef %0, i64 noundef %1, i64 noundef %8, ptr noundef %2) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  br label %15

15:                                               ; preds = %3, %11
  %16 = phi ptr [ %14, %11 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @byte_regex_compile(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 !prof !35 !PGOFuncName !112 {
  %5 = alloca ptr, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca [17 x i8], align 16
  %8 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %9 = getelementptr inbounds i8, ptr %0, i64 %1
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = tail call dereferenceable_or_null(1280) ptr @malloc(i64 noundef 1280) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %2725, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 3
  store i64 %2, ptr %15, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 7
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, -105
  store i8 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 2
  store i64 0, ptr %19, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 6
  store i64 0, ptr %20, align 8, !tbaa !63
  tail call fastcc void @init_syntax_once() #23
  %21 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !113
  %23 = icmp eq i64 %22, 0
  %24 = load ptr, ptr %3, align 8, !tbaa !46
  br i1 %23, label %25, label %36

25:                                               ; preds = %14
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = tail call dereferenceable_or_null(32) ptr @realloc(ptr noundef nonnull %24, i64 noundef 32) #27
  br label %31

29:                                               ; preds = %25
  %30 = tail call dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ]
  store ptr %32, ptr %3, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %12) #23
  br label %2725

35:                                               ; preds = %31
  store i64 32, ptr %21, align 8, !tbaa !113
  br label %36

36:                                               ; preds = %35, %14
  %37 = phi ptr [ %32, %35 ], [ %24, %14 ]
  %38 = icmp eq i64 %1, 0
  br i1 %38, label %2679, label %39

39:                                               ; preds = %36
  %40 = icmp ne ptr %11, null
  br label %41

41:                                               ; preds = %2657, %39
  %42 = phi ptr [ %2663, %2657 ], [ %0, %39 ]
  %43 = phi ptr [ %2658, %2657 ], [ %37, %39 ]
  %44 = phi i64 [ %2662, %2657 ], [ 32, %39 ]
  %45 = phi ptr [ %1328, %2657 ], [ %12, %39 ]
  %46 = phi i32 [ %1311, %2657 ], [ 0, %39 ]
  br label %47

47:                                               ; preds = %41, %2648
  %48 = phi ptr [ %2655, %2648 ], [ %42, %41 ]
  %49 = phi ptr [ %2654, %2648 ], [ %43, %41 ]
  %50 = phi i64 [ %2653, %2648 ], [ %44, %41 ]
  %51 = phi ptr [ %2652, %2648 ], [ null, %41 ]
  %52 = phi ptr [ %2651, %2648 ], [ null, %41 ]
  %53 = phi ptr [ %2650, %2648 ], [ %43, %41 ]
  %54 = phi ptr [ %2649, %2648 ], [ null, %41 ]
  %55 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %55, ptr %5, align 8, !tbaa !64
  %56 = load i8, ptr %48, align 1, !tbaa !48
  br i1 %40, label %57, label %61

57:                                               ; preds = %47
  %58 = zext i8 %56 to i64
  %59 = getelementptr inbounds i8, ptr %11, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !48
  br label %61

61:                                               ; preds = %57, %47
  %62 = phi i8 [ %60, %57 ], [ %56, %47 ]
  switch i8 %62, label %2486 [
    i8 94, label %71
    i8 36, label %138
    i8 43, label %205
    i8 63, label %205
    i8 42, label %208
    i8 46, label %63
    i8 91, label %549
    i8 40, label %1284
    i8 41, label %1287
    i8 10, label %1290
    i8 124, label %1293
    i8 123, label %1296
    i8 92, label %1299
  ]

63:                                               ; preds = %61
  %64 = load ptr, ptr %3, align 8, !tbaa !46
  %65 = ptrtoint ptr %49 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = add i64 %65, 1
  %68 = sub i64 %67, %66
  %69 = load i64, ptr %21, align 8, !tbaa !113
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %498, label %542

71:                                               ; preds = %61
  %72 = and i64 %2, 8
  %73 = icmp eq i64 %72, 0
  %74 = icmp ne ptr %48, %0
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = tail call fastcc signext i8 @byte_at_begline_loc_p(ptr noundef %0, ptr noundef nonnull %55, i64 noundef %2) #23, !range !83
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %2486, label %79

79:                                               ; preds = %71, %76
  %80 = load ptr, ptr %3, align 8, !tbaa !46
  %81 = ptrtoint ptr %49 to i64
  %82 = ptrtoint ptr %80 to i64
  %83 = add i64 %81, 1
  %84 = sub i64 %83, %82
  %85 = load i64, ptr %21, align 8, !tbaa !113
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %79, %120
  %88 = phi i64 [ %129, %120 ], [ %85, %79 ]
  %89 = phi i64 [ %104, %120 ], [ %82, %79 ]
  %90 = phi ptr [ %100, %120 ], [ %80, %79 ]
  %91 = phi ptr [ %125, %120 ], [ %49, %79 ]
  %92 = phi ptr [ %124, %120 ], [ %51, %79 ]
  %93 = phi ptr [ %123, %120 ], [ %52, %79 ]
  %94 = phi ptr [ %122, %120 ], [ %53, %79 ]
  %95 = phi ptr [ %121, %120 ], [ %54, %79 ]
  %96 = icmp eq i64 %88, 65536
  br i1 %96, label %2725, label %97

97:                                               ; preds = %87
  %98 = shl i64 %88, 1
  %99 = tail call i64 @llvm.umin.i64(i64 %98, i64 65536)
  store i64 %99, ptr %21, align 8, !tbaa !113
  %100 = tail call ptr @realloc(ptr noundef %90, i64 noundef %99) #27
  store ptr %100, ptr %3, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %2725, label %102

102:                                              ; preds = %97
  %103 = icmp eq ptr %90, %100
  %104 = ptrtoint ptr %100 to i64
  br i1 %103, label %120, label %105

105:                                              ; preds = %102
  %106 = sub i64 %104, %89
  %107 = shl i64 %106, 32
  %108 = ashr exact i64 %107, 32
  %109 = getelementptr inbounds i8, ptr %91, i64 %108
  %110 = getelementptr inbounds i8, ptr %94, i64 %108
  %111 = icmp eq ptr %95, null
  %112 = getelementptr inbounds i8, ptr %95, i64 %108
  %113 = select i1 %111, ptr null, ptr %112
  %114 = icmp eq ptr %93, null
  %115 = getelementptr inbounds i8, ptr %93, i64 %108
  %116 = select i1 %114, ptr null, ptr %115
  %117 = icmp eq ptr %92, null
  %118 = getelementptr inbounds i8, ptr %92, i64 %108
  %119 = select i1 %117, ptr null, ptr %118
  br label %120

120:                                              ; preds = %102, %105
  %121 = phi ptr [ %113, %105 ], [ %95, %102 ]
  %122 = phi ptr [ %110, %105 ], [ %94, %102 ]
  %123 = phi ptr [ %116, %105 ], [ %93, %102 ]
  %124 = phi ptr [ %119, %105 ], [ %92, %102 ]
  %125 = phi ptr [ %109, %105 ], [ %91, %102 ]
  %126 = ptrtoint ptr %125 to i64
  %127 = add i64 %126, 1
  %128 = sub i64 %127, %104
  %129 = load i64, ptr %21, align 8, !tbaa !113
  %130 = icmp ugt i64 %128, %129
  br i1 %130, label %87, label %131, !llvm.loop !114

131:                                              ; preds = %120, %79
  %132 = phi ptr [ %54, %79 ], [ %121, %120 ]
  %133 = phi ptr [ %53, %79 ], [ %122, %120 ]
  %134 = phi ptr [ %52, %79 ], [ %123, %120 ]
  %135 = phi ptr [ %51, %79 ], [ %124, %120 ]
  %136 = phi ptr [ %49, %79 ], [ %125, %120 ]
  %137 = getelementptr inbounds i8, ptr %136, i64 1
  store i8 9, ptr %136, align 1, !tbaa !48
  br label %2648

138:                                              ; preds = %61
  %139 = and i64 %2, 8
  %140 = icmp eq i64 %139, 0
  %141 = icmp ne ptr %55, %9
  %142 = and i1 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = tail call fastcc signext i8 @byte_at_endline_loc_p(ptr noundef nonnull %55, ptr noundef nonnull %9, i64 noundef %2) #23, !range !83
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %2486, label %146

146:                                              ; preds = %138, %143
  %147 = load ptr, ptr %3, align 8, !tbaa !46
  %148 = ptrtoint ptr %49 to i64
  %149 = ptrtoint ptr %147 to i64
  %150 = add i64 %148, 1
  %151 = sub i64 %150, %149
  %152 = load i64, ptr %21, align 8, !tbaa !113
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %198

154:                                              ; preds = %146, %187
  %155 = phi i64 [ %196, %187 ], [ %152, %146 ]
  %156 = phi i64 [ %171, %187 ], [ %149, %146 ]
  %157 = phi ptr [ %167, %187 ], [ %147, %146 ]
  %158 = phi ptr [ %192, %187 ], [ %49, %146 ]
  %159 = phi ptr [ %191, %187 ], [ %51, %146 ]
  %160 = phi ptr [ %190, %187 ], [ %52, %146 ]
  %161 = phi ptr [ %189, %187 ], [ %53, %146 ]
  %162 = phi ptr [ %188, %187 ], [ %54, %146 ]
  %163 = icmp eq i64 %155, 65536
  br i1 %163, label %2725, label %164

164:                                              ; preds = %154
  %165 = shl i64 %155, 1
  %166 = tail call i64 @llvm.umin.i64(i64 %165, i64 65536)
  store i64 %166, ptr %21, align 8, !tbaa !113
  %167 = tail call ptr @realloc(ptr noundef %157, i64 noundef %166) #27
  store ptr %167, ptr %3, align 8, !tbaa !46
  %168 = icmp eq ptr %167, null
  br i1 %168, label %2725, label %169

169:                                              ; preds = %164
  %170 = icmp eq ptr %157, %167
  %171 = ptrtoint ptr %167 to i64
  br i1 %170, label %187, label %172

172:                                              ; preds = %169
  %173 = sub i64 %171, %156
  %174 = shl i64 %173, 32
  %175 = ashr exact i64 %174, 32
  %176 = getelementptr inbounds i8, ptr %158, i64 %175
  %177 = getelementptr inbounds i8, ptr %161, i64 %175
  %178 = icmp eq ptr %162, null
  %179 = getelementptr inbounds i8, ptr %162, i64 %175
  %180 = select i1 %178, ptr null, ptr %179
  %181 = icmp eq ptr %160, null
  %182 = getelementptr inbounds i8, ptr %160, i64 %175
  %183 = select i1 %181, ptr null, ptr %182
  %184 = icmp eq ptr %159, null
  %185 = getelementptr inbounds i8, ptr %159, i64 %175
  %186 = select i1 %184, ptr null, ptr %185
  br label %187

187:                                              ; preds = %169, %172
  %188 = phi ptr [ %180, %172 ], [ %162, %169 ]
  %189 = phi ptr [ %177, %172 ], [ %161, %169 ]
  %190 = phi ptr [ %183, %172 ], [ %160, %169 ]
  %191 = phi ptr [ %186, %172 ], [ %159, %169 ]
  %192 = phi ptr [ %176, %172 ], [ %158, %169 ]
  %193 = ptrtoint ptr %192 to i64
  %194 = add i64 %193, 1
  %195 = sub i64 %194, %171
  %196 = load i64, ptr %21, align 8, !tbaa !113
  %197 = icmp ugt i64 %195, %196
  br i1 %197, label %154, label %198, !llvm.loop !115

198:                                              ; preds = %187, %146
  %199 = phi ptr [ %54, %146 ], [ %188, %187 ]
  %200 = phi ptr [ %53, %146 ], [ %189, %187 ]
  %201 = phi ptr [ %52, %146 ], [ %190, %187 ]
  %202 = phi ptr [ %51, %146 ], [ %191, %187 ]
  %203 = phi ptr [ %49, %146 ], [ %192, %187 ]
  %204 = getelementptr inbounds i8, ptr %203, i64 1
  store i8 10, ptr %203, align 1, !tbaa !48
  br label %2648

205:                                              ; preds = %61, %61
  %206 = and i64 %2, 1026
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %2486

208:                                              ; preds = %205, %2477, %61
  %209 = phi ptr [ %1303, %2477 ], [ %55, %61 ], [ %55, %205 ]
  %210 = phi i8 [ %1304, %2477 ], [ %62, %61 ], [ %62, %205 ]
  %211 = icmp eq ptr %52, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = and i64 %2, 32
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  tail call void @free(ptr noundef %45) #23
  br label %2725

216:                                              ; preds = %212
  %217 = and i64 %2, 16
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %2486, label %219

219:                                              ; preds = %216, %208
  %220 = icmp ne i8 %210, 43
  %221 = zext i1 %220 to i32
  %222 = icmp ne i8 %210, 63
  %223 = zext i1 %222 to i32
  %224 = icmp eq ptr %209, %9
  br i1 %224, label %269, label %225

225:                                              ; preds = %219
  %226 = and i64 %2, 2
  %227 = icmp eq i64 %226, 0
  br label %228

228:                                              ; preds = %225, %259
  %229 = phi i32 [ %267, %259 ], [ %223, %225 ]
  %230 = phi i32 [ %264, %259 ], [ %221, %225 ]
  %231 = phi ptr [ %260, %259 ], [ %209, %225 ]
  %232 = getelementptr inbounds i8, ptr %231, i64 1
  %233 = load i8, ptr %231, align 1, !tbaa !48
  br i1 %40, label %234, label %238

234:                                              ; preds = %228
  %235 = zext i8 %233 to i64
  %236 = getelementptr inbounds i8, ptr %11, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !48
  br label %238

238:                                              ; preds = %234, %228
  %239 = phi i8 [ %237, %234 ], [ %233, %228 ]
  %240 = icmp eq i8 %239, 42
  br i1 %240, label %259, label %241

241:                                              ; preds = %238
  br i1 %227, label %242, label %243

242:                                              ; preds = %241
  switch i8 %239, label %258 [
    i8 63, label %259
    i8 43, label %259
  ]

243:                                              ; preds = %241
  %244 = icmp eq i8 %239, 92
  br i1 %244, label %245, label %258

245:                                              ; preds = %243
  %246 = icmp eq ptr %232, %9
  br i1 %246, label %247, label %248

247:                                              ; preds = %245
  tail call void @free(ptr noundef %45) #23
  br label %2725

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, ptr %231, i64 2
  %250 = load i8, ptr %232, align 1, !tbaa !48
  br i1 %40, label %251, label %255

251:                                              ; preds = %248
  %252 = zext i8 %250 to i64
  %253 = getelementptr inbounds i8, ptr %11, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !48
  br label %255

255:                                              ; preds = %251, %248
  %256 = phi i8 [ %254, %251 ], [ %250, %248 ]
  switch i8 %256, label %257 [
    i8 63, label %259
    i8 43, label %259
  ]

257:                                              ; preds = %255
  store ptr %231, ptr %5, align 8, !tbaa !64
  br label %272

258:                                              ; preds = %242, %243
  store ptr %231, ptr %5, align 8, !tbaa !64
  br label %272

259:                                              ; preds = %255, %255, %242, %242, %238
  %260 = phi ptr [ %232, %238 ], [ %232, %242 ], [ %232, %242 ], [ %249, %255 ], [ %249, %255 ]
  %261 = phi i8 [ 42, %238 ], [ %239, %242 ], [ %239, %242 ], [ %256, %255 ], [ %256, %255 ]
  %262 = icmp ne i8 %261, 43
  %263 = zext i1 %262 to i32
  %264 = or i32 %230, %263
  %265 = icmp ne i8 %261, 63
  %266 = zext i1 %265 to i32
  %267 = or i32 %229, %266
  %268 = icmp eq ptr %260, %9
  br i1 %268, label %269, label %228

269:                                              ; preds = %259, %219
  %270 = phi i32 [ %221, %219 ], [ %264, %259 ]
  %271 = phi i32 [ %223, %219 ], [ %267, %259 ]
  store ptr %9, ptr %5, align 8, !tbaa !64
  br label %272

272:                                              ; preds = %269, %258, %257
  %273 = phi ptr [ %9, %269 ], [ %231, %258 ], [ %231, %257 ]
  %274 = phi i32 [ %270, %269 ], [ %230, %258 ], [ %230, %257 ]
  %275 = phi i32 [ %271, %269 ], [ %229, %258 ], [ %229, %257 ]
  br i1 %211, label %2648, label %276

276:                                              ; preds = %272
  %277 = icmp eq i32 %275, 0
  %278 = load ptr, ptr %3, align 8, !tbaa !46
  %279 = load i64, ptr %21, align 8, !tbaa !113
  br i1 %277, label %379, label %280

280:                                              ; preds = %276
  %281 = ptrtoint ptr %49 to i64
  %282 = ptrtoint ptr %278 to i64
  %283 = add i64 %281, 3
  %284 = sub i64 %283, %282
  %285 = icmp ugt i64 %284, %279
  br i1 %285, label %286, label %325

286:                                              ; preds = %280, %315
  %287 = phi i64 [ %323, %315 ], [ %279, %280 ]
  %288 = phi i64 [ %302, %315 ], [ %282, %280 ]
  %289 = phi ptr [ %298, %315 ], [ %278, %280 ]
  %290 = phi ptr [ %319, %315 ], [ %49, %280 ]
  %291 = phi ptr [ %318, %315 ], [ %52, %280 ]
  %292 = phi ptr [ %317, %315 ], [ %53, %280 ]
  %293 = phi ptr [ %316, %315 ], [ %54, %280 ]
  %294 = icmp eq i64 %287, 65536
  br i1 %294, label %2725, label %295

295:                                              ; preds = %286
  %296 = shl i64 %287, 1
  %297 = tail call i64 @llvm.umin.i64(i64 %296, i64 65536)
  store i64 %297, ptr %21, align 8, !tbaa !113
  %298 = tail call ptr @realloc(ptr noundef %289, i64 noundef %297) #27
  store ptr %298, ptr %3, align 8, !tbaa !46
  %299 = icmp eq ptr %298, null
  br i1 %299, label %2725, label %300

300:                                              ; preds = %295
  %301 = icmp eq ptr %289, %298
  %302 = ptrtoint ptr %298 to i64
  br i1 %301, label %315, label %303

303:                                              ; preds = %300
  %304 = sub i64 %302, %288
  %305 = shl i64 %304, 32
  %306 = ashr exact i64 %305, 32
  %307 = getelementptr inbounds i8, ptr %290, i64 %306
  %308 = getelementptr inbounds i8, ptr %292, i64 %306
  %309 = icmp eq ptr %293, null
  %310 = getelementptr inbounds i8, ptr %293, i64 %306
  %311 = select i1 %309, ptr null, ptr %310
  %312 = icmp eq ptr %291, null
  %313 = getelementptr inbounds i8, ptr %291, i64 %306
  %314 = select i1 %312, ptr null, ptr %313
  br label %315

315:                                              ; preds = %300, %303
  %316 = phi ptr [ %311, %303 ], [ %293, %300 ]
  %317 = phi ptr [ %308, %303 ], [ %292, %300 ]
  %318 = phi ptr [ %314, %303 ], [ %291, %300 ]
  %319 = phi ptr [ %307, %303 ], [ %290, %300 ]
  %320 = ptrtoint ptr %319 to i64
  %321 = add i64 %320, 3
  %322 = sub i64 %321, %302
  %323 = load i64, ptr %21, align 8, !tbaa !113
  %324 = icmp ugt i64 %322, %323
  br i1 %324, label %286, label %325, !llvm.loop !116

325:                                              ; preds = %315, %280
  %326 = phi ptr [ %54, %280 ], [ %316, %315 ]
  %327 = phi ptr [ %53, %280 ], [ %317, %315 ]
  %328 = phi ptr [ %52, %280 ], [ %318, %315 ]
  %329 = phi ptr [ %49, %280 ], [ %319, %315 ]
  %330 = phi i64 [ %281, %280 ], [ %320, %315 ]
  %331 = getelementptr inbounds i8, ptr %273, i64 -2
  br i1 %40, label %332, label %339

332:                                              ; preds = %325
  %333 = getelementptr inbounds i8, ptr %11, i64 46
  %334 = load i8, ptr %331, align 1, !tbaa !48
  %335 = zext i8 %334 to i64
  %336 = getelementptr inbounds i8, ptr %11, i64 %335
  %337 = load i8, ptr %333, align 1, !tbaa !48
  %338 = sext i8 %337 to i32
  br label %339

339:                                              ; preds = %325, %332
  %340 = phi ptr [ %336, %332 ], [ %331, %325 ]
  %341 = phi i32 [ %338, %332 ], [ 46, %325 ]
  %342 = load i8, ptr %340, align 1, !tbaa !48
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %341, %343
  %345 = icmp ne i32 %274, 0
  %346 = select i1 %344, i1 %345, i1 false
  %347 = icmp ult ptr %273, %9
  %348 = select i1 %346, i1 %347, i1 false
  br i1 %348, label %349, label %366

349:                                              ; preds = %339
  br i1 %40, label %350, label %357

350:                                              ; preds = %349
  %351 = getelementptr inbounds i8, ptr %11, i64 10
  %352 = load i8, ptr %273, align 1, !tbaa !48
  %353 = zext i8 %352 to i64
  %354 = getelementptr inbounds i8, ptr %11, i64 %353
  %355 = load i8, ptr %351, align 1, !tbaa !48
  %356 = sext i8 %355 to i32
  br label %357

357:                                              ; preds = %349, %350
  %358 = phi ptr [ %354, %350 ], [ %273, %349 ]
  %359 = phi i32 [ %356, %350 ], [ 10, %349 ]
  %360 = and i64 %2, 64
  %361 = icmp eq i64 %360, 0
  %362 = load i8, ptr %358, align 1, !tbaa !48
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %359, %363
  %365 = and i1 %361, %364
  br i1 %365, label %368, label %366

366:                                              ; preds = %357, %339
  %367 = getelementptr inbounds i8, ptr %328, i64 -3
  br label %368

368:                                              ; preds = %357, %366
  %369 = phi ptr [ %367, %366 ], [ %328, %357 ]
  %370 = phi i32 [ 18, %366 ], [ 13, %357 ]
  %371 = phi i32 [ 0, %366 ], [ 1, %357 ]
  %372 = ptrtoint ptr %369 to i64
  %373 = sub i64 %372, %330
  %374 = trunc i64 %373 to i32
  %375 = add i32 %374, -3
  tail call fastcc void @byte_store_op1(i32 noundef %370, ptr noundef %329, i32 noundef %375) #23
  %376 = getelementptr inbounds i8, ptr %329, i64 3
  %377 = load ptr, ptr %3, align 8, !tbaa !46
  %378 = load i64, ptr %21, align 8, !tbaa !113
  br label %379

379:                                              ; preds = %368, %276
  %380 = phi i64 [ %378, %368 ], [ %279, %276 ]
  %381 = phi ptr [ %377, %368 ], [ %278, %276 ]
  %382 = phi i32 [ %371, %368 ], [ 0, %276 ]
  %383 = phi ptr [ %326, %368 ], [ %54, %276 ]
  %384 = phi ptr [ %327, %368 ], [ %53, %276 ]
  %385 = phi ptr [ %328, %368 ], [ %52, %276 ]
  %386 = phi ptr [ %376, %368 ], [ %49, %276 ]
  %387 = ptrtoint ptr %386 to i64
  %388 = ptrtoint ptr %381 to i64
  %389 = add i64 %387, 3
  %390 = sub i64 %389, %388
  %391 = icmp ugt i64 %390, %380
  br i1 %391, label %392, label %431

392:                                              ; preds = %379, %421
  %393 = phi i64 [ %429, %421 ], [ %380, %379 ]
  %394 = phi i64 [ %408, %421 ], [ %388, %379 ]
  %395 = phi ptr [ %404, %421 ], [ %381, %379 ]
  %396 = phi ptr [ %425, %421 ], [ %386, %379 ]
  %397 = phi ptr [ %424, %421 ], [ %385, %379 ]
  %398 = phi ptr [ %423, %421 ], [ %384, %379 ]
  %399 = phi ptr [ %422, %421 ], [ %383, %379 ]
  %400 = icmp eq i64 %393, 65536
  br i1 %400, label %2725, label %401

401:                                              ; preds = %392
  %402 = shl i64 %393, 1
  %403 = tail call i64 @llvm.umin.i64(i64 %402, i64 65536)
  store i64 %403, ptr %21, align 8, !tbaa !113
  %404 = tail call ptr @realloc(ptr noundef %395, i64 noundef %403) #27
  store ptr %404, ptr %3, align 8, !tbaa !46
  %405 = icmp eq ptr %404, null
  br i1 %405, label %2725, label %406

406:                                              ; preds = %401
  %407 = icmp eq ptr %395, %404
  %408 = ptrtoint ptr %404 to i64
  br i1 %407, label %421, label %409

409:                                              ; preds = %406
  %410 = sub i64 %408, %394
  %411 = shl i64 %410, 32
  %412 = ashr exact i64 %411, 32
  %413 = getelementptr inbounds i8, ptr %396, i64 %412
  %414 = getelementptr inbounds i8, ptr %398, i64 %412
  %415 = icmp eq ptr %399, null
  %416 = getelementptr inbounds i8, ptr %399, i64 %412
  %417 = select i1 %415, ptr null, ptr %416
  %418 = icmp eq ptr %397, null
  %419 = getelementptr inbounds i8, ptr %397, i64 %412
  %420 = select i1 %418, ptr null, ptr %419
  br label %421

421:                                              ; preds = %406, %409
  %422 = phi ptr [ %417, %409 ], [ %399, %406 ]
  %423 = phi ptr [ %414, %409 ], [ %398, %406 ]
  %424 = phi ptr [ %420, %409 ], [ %397, %406 ]
  %425 = phi ptr [ %413, %409 ], [ %396, %406 ]
  %426 = ptrtoint ptr %425 to i64
  %427 = add i64 %426, 3
  %428 = sub i64 %427, %408
  %429 = load i64, ptr %21, align 8, !tbaa !113
  %430 = icmp ugt i64 %428, %429
  br i1 %430, label %392, label %431, !llvm.loop !117

431:                                              ; preds = %421, %379
  %432 = phi ptr [ %383, %379 ], [ %422, %421 ]
  %433 = phi ptr [ %384, %379 ], [ %423, %421 ]
  %434 = phi ptr [ %385, %379 ], [ %424, %421 ]
  %435 = phi ptr [ %386, %379 ], [ %425, %421 ]
  %436 = and i32 %382, 255
  %437 = icmp eq i32 %436, 0
  %438 = select i1 %437, i32 15, i32 16
  %439 = getelementptr inbounds i8, ptr %435, i64 3
  %440 = ptrtoint ptr %439 to i64
  %441 = ptrtoint ptr %434 to i64
  %442 = sub i64 %440, %441
  %443 = trunc i64 %442 to i32
  %444 = add i32 %443, -3
  tail call fastcc void @byte_insert_op1(i32 noundef %438, ptr noundef %434, i32 noundef %444, ptr noundef %435) #23
  %445 = icmp eq i32 %274, 0
  br i1 %445, label %446, label %2648

446:                                              ; preds = %431
  %447 = load ptr, ptr %3, align 8, !tbaa !46
  %448 = ptrtoint ptr %447 to i64
  %449 = add i64 %440, 3
  %450 = sub i64 %449, %448
  %451 = load i64, ptr %21, align 8, !tbaa !113
  %452 = icmp ugt i64 %450, %451
  br i1 %452, label %453, label %492

453:                                              ; preds = %446, %482
  %454 = phi i64 [ %490, %482 ], [ %451, %446 ]
  %455 = phi i64 [ %469, %482 ], [ %448, %446 ]
  %456 = phi ptr [ %465, %482 ], [ %447, %446 ]
  %457 = phi ptr [ %486, %482 ], [ %439, %446 ]
  %458 = phi ptr [ %485, %482 ], [ %434, %446 ]
  %459 = phi ptr [ %484, %482 ], [ %433, %446 ]
  %460 = phi ptr [ %483, %482 ], [ %432, %446 ]
  %461 = icmp eq i64 %454, 65536
  br i1 %461, label %2725, label %462

462:                                              ; preds = %453
  %463 = shl i64 %454, 1
  %464 = tail call i64 @llvm.umin.i64(i64 %463, i64 65536)
  store i64 %464, ptr %21, align 8, !tbaa !113
  %465 = tail call ptr @realloc(ptr noundef %456, i64 noundef %464) #27
  store ptr %465, ptr %3, align 8, !tbaa !46
  %466 = icmp eq ptr %465, null
  br i1 %466, label %2725, label %467

467:                                              ; preds = %462
  %468 = icmp eq ptr %456, %465
  %469 = ptrtoint ptr %465 to i64
  br i1 %468, label %482, label %470

470:                                              ; preds = %467
  %471 = sub i64 %469, %455
  %472 = shl i64 %471, 32
  %473 = ashr exact i64 %472, 32
  %474 = getelementptr inbounds i8, ptr %457, i64 %473
  %475 = getelementptr inbounds i8, ptr %459, i64 %473
  %476 = icmp eq ptr %460, null
  %477 = getelementptr inbounds i8, ptr %460, i64 %473
  %478 = select i1 %476, ptr null, ptr %477
  %479 = icmp eq ptr %458, null
  %480 = getelementptr inbounds i8, ptr %458, i64 %473
  %481 = select i1 %479, ptr null, ptr %480
  br label %482

482:                                              ; preds = %467, %470
  %483 = phi ptr [ %478, %470 ], [ %460, %467 ]
  %484 = phi ptr [ %475, %470 ], [ %459, %467 ]
  %485 = phi ptr [ %481, %470 ], [ %458, %467 ]
  %486 = phi ptr [ %474, %470 ], [ %457, %467 ]
  %487 = ptrtoint ptr %486 to i64
  %488 = add i64 %487, 3
  %489 = sub i64 %488, %469
  %490 = load i64, ptr %21, align 8, !tbaa !113
  %491 = icmp ugt i64 %489, %490
  br i1 %491, label %453, label %492, !llvm.loop !118

492:                                              ; preds = %482, %446
  %493 = phi ptr [ %432, %446 ], [ %483, %482 ]
  %494 = phi ptr [ %433, %446 ], [ %484, %482 ]
  %495 = phi ptr [ %434, %446 ], [ %485, %482 ]
  %496 = phi ptr [ %439, %446 ], [ %486, %482 ]
  tail call fastcc void @byte_insert_op1(i32 noundef 19, ptr noundef %495, i32 noundef 3, ptr noundef %496) #23
  %497 = getelementptr inbounds i8, ptr %496, i64 3
  br label %2648

498:                                              ; preds = %63, %531
  %499 = phi i64 [ %540, %531 ], [ %69, %63 ]
  %500 = phi i64 [ %515, %531 ], [ %66, %63 ]
  %501 = phi ptr [ %511, %531 ], [ %64, %63 ]
  %502 = phi ptr [ %536, %531 ], [ %49, %63 ]
  %503 = phi ptr [ %535, %531 ], [ %51, %63 ]
  %504 = phi ptr [ %534, %531 ], [ %49, %63 ]
  %505 = phi ptr [ %533, %531 ], [ %53, %63 ]
  %506 = phi ptr [ %532, %531 ], [ %54, %63 ]
  %507 = icmp eq i64 %499, 65536
  br i1 %507, label %2725, label %508

508:                                              ; preds = %498
  %509 = shl i64 %499, 1
  %510 = tail call i64 @llvm.umin.i64(i64 %509, i64 65536)
  store i64 %510, ptr %21, align 8, !tbaa !113
  %511 = tail call ptr @realloc(ptr noundef %501, i64 noundef %510) #27
  store ptr %511, ptr %3, align 8, !tbaa !46
  %512 = icmp eq ptr %511, null
  br i1 %512, label %2725, label %513

513:                                              ; preds = %508
  %514 = icmp eq ptr %501, %511
  %515 = ptrtoint ptr %511 to i64
  br i1 %514, label %531, label %516

516:                                              ; preds = %513
  %517 = sub i64 %515, %500
  %518 = shl i64 %517, 32
  %519 = ashr exact i64 %518, 32
  %520 = getelementptr inbounds i8, ptr %502, i64 %519
  %521 = getelementptr inbounds i8, ptr %505, i64 %519
  %522 = icmp eq ptr %506, null
  %523 = getelementptr inbounds i8, ptr %506, i64 %519
  %524 = select i1 %522, ptr null, ptr %523
  %525 = icmp eq ptr %504, null
  %526 = getelementptr inbounds i8, ptr %504, i64 %519
  %527 = select i1 %525, ptr null, ptr %526
  %528 = icmp eq ptr %503, null
  %529 = getelementptr inbounds i8, ptr %503, i64 %519
  %530 = select i1 %528, ptr null, ptr %529
  br label %531

531:                                              ; preds = %513, %516
  %532 = phi ptr [ %524, %516 ], [ %506, %513 ]
  %533 = phi ptr [ %521, %516 ], [ %505, %513 ]
  %534 = phi ptr [ %527, %516 ], [ %504, %513 ]
  %535 = phi ptr [ %530, %516 ], [ %503, %513 ]
  %536 = phi ptr [ %520, %516 ], [ %502, %513 ]
  %537 = ptrtoint ptr %536 to i64
  %538 = add i64 %537, 1
  %539 = sub i64 %538, %515
  %540 = load i64, ptr %21, align 8, !tbaa !113
  %541 = icmp ugt i64 %539, %540
  br i1 %541, label %498, label %542, !llvm.loop !119

542:                                              ; preds = %531, %63
  %543 = phi ptr [ %54, %63 ], [ %532, %531 ]
  %544 = phi ptr [ %53, %63 ], [ %533, %531 ]
  %545 = phi ptr [ %49, %63 ], [ %534, %531 ]
  %546 = phi ptr [ %51, %63 ], [ %535, %531 ]
  %547 = phi ptr [ %49, %63 ], [ %536, %531 ]
  %548 = getelementptr inbounds i8, ptr %547, i64 1
  store i8 3, ptr %547, align 1, !tbaa !48
  br label %2648

549:                                              ; preds = %61
  %550 = icmp eq ptr %55, %9
  br i1 %550, label %559, label %551

551:                                              ; preds = %549
  %552 = load ptr, ptr %3, align 8, !tbaa !46
  %553 = ptrtoint ptr %49 to i64
  %554 = ptrtoint ptr %552 to i64
  %555 = add i64 %553, 34
  %556 = sub i64 %555, %554
  %557 = load i64, ptr %21, align 8, !tbaa !113
  %558 = icmp ugt i64 %556, %557
  br i1 %558, label %572, label %560

559:                                              ; preds = %549
  tail call void @free(ptr noundef %45) #23
  br label %2725

560:                                              ; preds = %601, %551
  %561 = phi i64 [ %554, %551 ], [ %588, %601 ]
  %562 = phi i64 [ %553, %551 ], [ %606, %601 ]
  %563 = phi i64 [ %557, %551 ], [ %609, %601 ]
  %564 = phi ptr [ %552, %551 ], [ %584, %601 ]
  %565 = phi ptr [ %54, %551 ], [ %602, %601 ]
  %566 = phi ptr [ %53, %551 ], [ %603, %601 ]
  %567 = phi ptr [ %51, %551 ], [ %604, %601 ]
  %568 = phi ptr [ %49, %551 ], [ %605, %601 ]
  %569 = add i64 %562, 1
  %570 = sub i64 %569, %561
  %571 = icmp ugt i64 %570, %563
  br i1 %571, label %611, label %655

572:                                              ; preds = %551, %601
  %573 = phi i64 [ %609, %601 ], [ %557, %551 ]
  %574 = phi i64 [ %588, %601 ], [ %554, %551 ]
  %575 = phi ptr [ %584, %601 ], [ %552, %551 ]
  %576 = phi ptr [ %605, %601 ], [ %49, %551 ]
  %577 = phi ptr [ %604, %601 ], [ %51, %551 ]
  %578 = phi ptr [ %603, %601 ], [ %53, %551 ]
  %579 = phi ptr [ %602, %601 ], [ %54, %551 ]
  %580 = icmp eq i64 %573, 65536
  br i1 %580, label %2725, label %581

581:                                              ; preds = %572
  %582 = shl i64 %573, 1
  %583 = tail call i64 @llvm.umin.i64(i64 %582, i64 65536)
  store i64 %583, ptr %21, align 8, !tbaa !113
  %584 = tail call ptr @realloc(ptr noundef %575, i64 noundef %583) #27
  store ptr %584, ptr %3, align 8, !tbaa !46
  %585 = icmp eq ptr %584, null
  br i1 %585, label %2725, label %586

586:                                              ; preds = %581
  %587 = icmp eq ptr %575, %584
  %588 = ptrtoint ptr %584 to i64
  br i1 %587, label %601, label %589

589:                                              ; preds = %586
  %590 = sub i64 %588, %574
  %591 = shl i64 %590, 32
  %592 = ashr exact i64 %591, 32
  %593 = getelementptr inbounds i8, ptr %576, i64 %592
  %594 = getelementptr inbounds i8, ptr %578, i64 %592
  %595 = icmp eq ptr %579, null
  %596 = getelementptr inbounds i8, ptr %579, i64 %592
  %597 = select i1 %595, ptr null, ptr %596
  %598 = icmp eq ptr %577, null
  %599 = getelementptr inbounds i8, ptr %577, i64 %592
  %600 = select i1 %598, ptr null, ptr %599
  br label %601

601:                                              ; preds = %586, %589
  %602 = phi ptr [ %597, %589 ], [ %579, %586 ]
  %603 = phi ptr [ %594, %589 ], [ %578, %586 ]
  %604 = phi ptr [ %600, %589 ], [ %577, %586 ]
  %605 = phi ptr [ %593, %589 ], [ %576, %586 ]
  %606 = ptrtoint ptr %605 to i64
  %607 = add i64 %606, 34
  %608 = sub i64 %607, %588
  %609 = load i64, ptr %21, align 8, !tbaa !113
  %610 = icmp ugt i64 %608, %609
  br i1 %610, label %572, label %560, !llvm.loop !120

611:                                              ; preds = %560, %644
  %612 = phi i64 [ %653, %644 ], [ %563, %560 ]
  %613 = phi i64 [ %628, %644 ], [ %561, %560 ]
  %614 = phi ptr [ %624, %644 ], [ %564, %560 ]
  %615 = phi ptr [ %649, %644 ], [ %568, %560 ]
  %616 = phi ptr [ %648, %644 ], [ %567, %560 ]
  %617 = phi ptr [ %647, %644 ], [ %568, %560 ]
  %618 = phi ptr [ %646, %644 ], [ %566, %560 ]
  %619 = phi ptr [ %645, %644 ], [ %565, %560 ]
  %620 = icmp eq i64 %612, 65536
  br i1 %620, label %2725, label %621

621:                                              ; preds = %611
  %622 = shl i64 %612, 1
  %623 = tail call i64 @llvm.umin.i64(i64 %622, i64 65536)
  store i64 %623, ptr %21, align 8, !tbaa !113
  %624 = tail call ptr @realloc(ptr noundef %614, i64 noundef %623) #27
  store ptr %624, ptr %3, align 8, !tbaa !46
  %625 = icmp eq ptr %624, null
  br i1 %625, label %2725, label %626

626:                                              ; preds = %621
  %627 = icmp eq ptr %614, %624
  %628 = ptrtoint ptr %624 to i64
  br i1 %627, label %644, label %629

629:                                              ; preds = %626
  %630 = sub i64 %628, %613
  %631 = shl i64 %630, 32
  %632 = ashr exact i64 %631, 32
  %633 = getelementptr inbounds i8, ptr %615, i64 %632
  %634 = getelementptr inbounds i8, ptr %618, i64 %632
  %635 = icmp eq ptr %619, null
  %636 = getelementptr inbounds i8, ptr %619, i64 %632
  %637 = select i1 %635, ptr null, ptr %636
  %638 = icmp eq ptr %617, null
  %639 = getelementptr inbounds i8, ptr %617, i64 %632
  %640 = select i1 %638, ptr null, ptr %639
  %641 = icmp eq ptr %616, null
  %642 = getelementptr inbounds i8, ptr %616, i64 %632
  %643 = select i1 %641, ptr null, ptr %642
  br label %644

644:                                              ; preds = %626, %629
  %645 = phi ptr [ %637, %629 ], [ %619, %626 ]
  %646 = phi ptr [ %634, %629 ], [ %618, %626 ]
  %647 = phi ptr [ %640, %629 ], [ %617, %626 ]
  %648 = phi ptr [ %643, %629 ], [ %616, %626 ]
  %649 = phi ptr [ %633, %629 ], [ %615, %626 ]
  %650 = ptrtoint ptr %649 to i64
  %651 = add i64 %650, 1
  %652 = sub i64 %651, %628
  %653 = load i64, ptr %21, align 8, !tbaa !113
  %654 = icmp ugt i64 %652, %653
  br i1 %654, label %611, label %655, !llvm.loop !121

655:                                              ; preds = %644, %560
  %656 = phi ptr [ %565, %560 ], [ %645, %644 ]
  %657 = phi ptr [ %566, %560 ], [ %646, %644 ]
  %658 = phi ptr [ %568, %560 ], [ %647, %644 ]
  %659 = phi ptr [ %567, %560 ], [ %648, %644 ]
  %660 = phi ptr [ %568, %560 ], [ %649, %644 ]
  %661 = load i8, ptr %55, align 1, !tbaa !48
  %662 = icmp eq i8 %661, 94
  %663 = select i1 %662, i8 5, i8 4
  %664 = getelementptr inbounds i8, ptr %660, i64 1
  store i8 %663, ptr %660, align 1, !tbaa !48
  %665 = load ptr, ptr %5, align 8, !tbaa !64
  %666 = load i8, ptr %665, align 1, !tbaa !48
  %667 = icmp eq i8 %666, 94
  br i1 %667, label %668, label %670

668:                                              ; preds = %655
  %669 = getelementptr inbounds i8, ptr %665, i64 1
  store ptr %669, ptr %5, align 8, !tbaa !64
  br label %670

670:                                              ; preds = %668, %655
  %671 = phi ptr [ %669, %668 ], [ %665, %655 ]
  %672 = load ptr, ptr %3, align 8, !tbaa !46
  %673 = ptrtoint ptr %664 to i64
  %674 = ptrtoint ptr %672 to i64
  %675 = add i64 %673, 1
  %676 = sub i64 %675, %674
  %677 = load i64, ptr %21, align 8, !tbaa !113
  %678 = icmp ugt i64 %676, %677
  br i1 %678, label %679, label %723

679:                                              ; preds = %670, %712
  %680 = phi i64 [ %721, %712 ], [ %677, %670 ]
  %681 = phi i64 [ %696, %712 ], [ %674, %670 ]
  %682 = phi ptr [ %692, %712 ], [ %672, %670 ]
  %683 = phi ptr [ %717, %712 ], [ %664, %670 ]
  %684 = phi ptr [ %716, %712 ], [ %659, %670 ]
  %685 = phi ptr [ %715, %712 ], [ %658, %670 ]
  %686 = phi ptr [ %714, %712 ], [ %657, %670 ]
  %687 = phi ptr [ %713, %712 ], [ %656, %670 ]
  %688 = icmp eq i64 %680, 65536
  br i1 %688, label %2725, label %689

689:                                              ; preds = %679
  %690 = shl i64 %680, 1
  %691 = tail call i64 @llvm.umin.i64(i64 %690, i64 65536)
  store i64 %691, ptr %21, align 8, !tbaa !113
  %692 = tail call ptr @realloc(ptr noundef %682, i64 noundef %691) #27
  store ptr %692, ptr %3, align 8, !tbaa !46
  %693 = icmp eq ptr %692, null
  br i1 %693, label %2725, label %694

694:                                              ; preds = %689
  %695 = icmp eq ptr %682, %692
  %696 = ptrtoint ptr %692 to i64
  br i1 %695, label %712, label %697

697:                                              ; preds = %694
  %698 = sub i64 %696, %681
  %699 = shl i64 %698, 32
  %700 = ashr exact i64 %699, 32
  %701 = getelementptr inbounds i8, ptr %683, i64 %700
  %702 = getelementptr inbounds i8, ptr %686, i64 %700
  %703 = icmp eq ptr %687, null
  %704 = getelementptr inbounds i8, ptr %687, i64 %700
  %705 = select i1 %703, ptr null, ptr %704
  %706 = icmp eq ptr %685, null
  %707 = getelementptr inbounds i8, ptr %685, i64 %700
  %708 = select i1 %706, ptr null, ptr %707
  %709 = icmp eq ptr %684, null
  %710 = getelementptr inbounds i8, ptr %684, i64 %700
  %711 = select i1 %709, ptr null, ptr %710
  br label %712

712:                                              ; preds = %694, %697
  %713 = phi ptr [ %705, %697 ], [ %687, %694 ]
  %714 = phi ptr [ %702, %697 ], [ %686, %694 ]
  %715 = phi ptr [ %708, %697 ], [ %685, %694 ]
  %716 = phi ptr [ %711, %697 ], [ %684, %694 ]
  %717 = phi ptr [ %701, %697 ], [ %683, %694 ]
  %718 = ptrtoint ptr %717 to i64
  %719 = add i64 %718, 1
  %720 = sub i64 %719, %696
  %721 = load i64, ptr %21, align 8, !tbaa !113
  %722 = icmp ugt i64 %720, %721
  br i1 %722, label %679, label %723, !llvm.loop !122

723:                                              ; preds = %712, %670
  %724 = phi ptr [ %656, %670 ], [ %713, %712 ]
  %725 = phi ptr [ %657, %670 ], [ %714, %712 ]
  %726 = phi ptr [ %658, %670 ], [ %715, %712 ]
  %727 = phi ptr [ %659, %670 ], [ %716, %712 ]
  %728 = phi ptr [ %664, %670 ], [ %717, %712 ]
  %729 = and i64 %2, 256
  %730 = icmp eq i64 %729, 0
  %731 = getelementptr inbounds i8, ptr %728, i64 1
  store i8 32, ptr %728, align 1, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %731, i8 0, i64 32, i1 false)
  %732 = getelementptr inbounds i8, ptr %728, i64 -1
  %733 = load i8, ptr %732, align 1, !tbaa !48
  %734 = icmp ne i8 %733, 5
  %735 = or i1 %730, %734
  br i1 %735, label %738, label %736

736:                                              ; preds = %723
  %737 = getelementptr inbounds i8, ptr %728, i64 2
  store i8 4, ptr %737, align 1, !tbaa !48
  br label %738

738:                                              ; preds = %736, %723
  %739 = load ptr, ptr %5, align 8, !tbaa !64
  %740 = icmp eq ptr %739, %9
  br i1 %740, label %748, label %741

741:                                              ; preds = %738
  %742 = and i64 %2, 1
  %743 = icmp ne i64 %742, 0
  br label %744

744:                                              ; preds = %741, %1261
  %745 = phi ptr [ %739, %741 ], [ %1264, %1261 ]
  %746 = phi i8 [ 0, %741 ], [ %1263, %1261 ]
  %747 = phi i32 [ -1, %741 ], [ %1262, %1261 ]
  br label %749

748:                                              ; preds = %738, %1261, %772
  tail call void @free(ptr noundef %45) #23
  br label %2725

749:                                              ; preds = %744, %772
  %750 = phi ptr [ %745, %744 ], [ %782, %772 ]
  %751 = phi i32 [ %747, %744 ], [ %774, %772 ]
  %752 = getelementptr inbounds i8, ptr %750, i64 1
  store ptr %752, ptr %5, align 8, !tbaa !64
  %753 = load i8, ptr %750, align 1, !tbaa !48
  br i1 %40, label %754, label %758

754:                                              ; preds = %749
  %755 = zext i8 %753 to i64
  %756 = getelementptr inbounds i8, ptr %11, i64 %755
  %757 = load i8, ptr %756, align 1, !tbaa !48
  br label %758

758:                                              ; preds = %754, %749
  %759 = phi i8 [ %757, %754 ], [ %753, %749 ]
  %760 = icmp eq i8 %759, 92
  %761 = select i1 %743, i1 %760, i1 false
  br i1 %761, label %762, label %784

762:                                              ; preds = %758
  %763 = icmp eq ptr %752, %9
  br i1 %763, label %764, label %765

764:                                              ; preds = %762
  tail call void @free(ptr noundef %45) #23
  br label %2725

765:                                              ; preds = %762
  %766 = getelementptr inbounds i8, ptr %750, i64 2
  store ptr %766, ptr %5, align 8, !tbaa !64
  %767 = load i8, ptr %752, align 1, !tbaa !48
  br i1 %40, label %768, label %772

768:                                              ; preds = %765
  %769 = zext i8 %767 to i64
  %770 = getelementptr inbounds i8, ptr %11, i64 %769
  %771 = load i8, ptr %770, align 1, !tbaa !48
  br label %772

772:                                              ; preds = %768, %765
  %773 = phi i8 [ %771, %768 ], [ %767, %765 ]
  %774 = zext i8 %773 to i32
  %775 = and i8 %773, 7
  %776 = shl nuw i8 1, %775
  %777 = lshr i32 %774, 3
  %778 = zext nneg i32 %777 to i64
  %779 = getelementptr inbounds i8, ptr %731, i64 %778
  %780 = load i8, ptr %779, align 1, !tbaa !48
  %781 = or i8 %776, %780
  store i8 %781, ptr %779, align 1, !tbaa !48
  %782 = load ptr, ptr %5, align 8, !tbaa !64
  %783 = icmp eq ptr %782, %9
  br i1 %783, label %748, label %749

784:                                              ; preds = %758
  %785 = zext i8 %759 to i32
  %786 = icmp ne i8 %759, 93
  %787 = icmp eq ptr %750, %671
  %788 = select i1 %786, i1 true, i1 %787
  br i1 %788, label %789, label %1266

789:                                              ; preds = %784
  %790 = icmp ne i8 %746, 0
  %791 = icmp eq i8 %759, 45
  %792 = select i1 %790, i1 %791, i1 false
  br i1 %792, label %793, label %797

793:                                              ; preds = %789
  %794 = load i8, ptr %752, align 1, !tbaa !48
  %795 = icmp eq i8 %794, 93
  br i1 %795, label %798, label %796

796:                                              ; preds = %793
  tail call void @free(ptr noundef %45) #23
  br label %2725

797:                                              ; preds = %789
  br i1 %791, label %798, label %820

798:                                              ; preds = %793, %797
  %799 = getelementptr inbounds i8, ptr %750, i64 -1
  %800 = icmp ult ptr %799, %0
  br i1 %800, label %804, label %801

801:                                              ; preds = %798
  %802 = load i8, ptr %799, align 1, !tbaa !48
  %803 = icmp eq i8 %802, 91
  br i1 %803, label %820, label %804

804:                                              ; preds = %801, %798
  %805 = getelementptr inbounds i8, ptr %750, i64 -2
  %806 = icmp ult ptr %805, %0
  br i1 %806, label %813, label %807

807:                                              ; preds = %804
  %808 = load i8, ptr %805, align 1, !tbaa !48
  %809 = icmp eq i8 %808, 91
  br i1 %809, label %810, label %813

810:                                              ; preds = %807
  %811 = load i8, ptr %799, align 1, !tbaa !48
  %812 = icmp eq i8 %811, 94
  br i1 %812, label %820, label %813

813:                                              ; preds = %810, %807, %804
  %814 = load i8, ptr %752, align 1, !tbaa !48
  %815 = icmp eq i8 %814, 93
  br i1 %815, label %1252, label %816

816:                                              ; preds = %813
  %817 = call fastcc i32 @byte_compile_range(i32 noundef %751, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef %11, i64 noundef %2, ptr noundef nonnull %731) #23, !range !123
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %1261, label %819

819:                                              ; preds = %816
  tail call void @free(ptr noundef %45) #23
  br label %2725

820:                                              ; preds = %810, %801, %797
  %821 = load i8, ptr %752, align 1, !tbaa !48
  %822 = icmp eq i8 %821, 45
  br i1 %822, label %823, label %833

823:                                              ; preds = %820
  %824 = getelementptr inbounds i8, ptr %750, i64 2
  %825 = load i8, ptr %824, align 1, !tbaa !48
  %826 = icmp eq i8 %825, 93
  br i1 %826, label %833, label %827

827:                                              ; preds = %823
  %828 = icmp eq ptr %752, %9
  br i1 %828, label %2725, label %829

829:                                              ; preds = %827
  store ptr %824, ptr %5, align 8, !tbaa !64
  %830 = call fastcc i32 @byte_compile_range(i32 noundef %785, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef %11, i64 noundef %2, ptr noundef nonnull %731) #23, !range !123
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %1261, label %832

832:                                              ; preds = %829
  tail call void @free(ptr noundef %45) #23
  br label %2725

833:                                              ; preds = %823, %820
  %834 = and i64 %2, 4
  %835 = icmp ne i64 %834, 0
  %836 = icmp eq i8 %759, 91
  %837 = select i1 %835, i1 %836, i1 false
  br i1 %837, label %838, label %1252

838:                                              ; preds = %833
  switch i8 %821, label %1252 [
    i8 58, label %839
    i8 61, label %1095
    i8 46, label %1173
  ]

839:                                              ; preds = %838
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #25
  %840 = icmp eq ptr %752, %9
  br i1 %840, label %1090, label %841

841:                                              ; preds = %839
  %842 = getelementptr inbounds i8, ptr %750, i64 2
  store ptr %842, ptr %5, align 8, !tbaa !64
  %843 = icmp eq ptr %842, %9
  br i1 %843, label %1088, label %844

844:                                              ; preds = %841, %870
  %845 = phi i8 [ %871, %870 ], [ 0, %841 ]
  %846 = phi ptr [ %847, %870 ], [ %842, %841 ]
  %847 = getelementptr inbounds i8, ptr %846, i64 1
  %848 = load i8, ptr %846, align 1, !tbaa !48
  br i1 %40, label %849, label %853

849:                                              ; preds = %844
  %850 = zext i8 %848 to i64
  %851 = getelementptr inbounds i8, ptr %11, i64 %850
  %852 = load i8, ptr %851, align 1, !tbaa !48
  br label %853

853:                                              ; preds = %849, %844
  %854 = phi i8 [ %852, %849 ], [ %848, %844 ]
  %855 = icmp eq i8 %854, 58
  br i1 %855, label %856, label %861

856:                                              ; preds = %853
  %857 = load i8, ptr %847, align 1, !tbaa !48
  %858 = icmp eq i8 %857, 93
  %859 = icmp eq ptr %847, %9
  %860 = select i1 %858, i1 true, i1 %859
  br i1 %860, label %876, label %863

861:                                              ; preds = %853
  %862 = icmp eq ptr %847, %9
  br i1 %862, label %873, label %863

863:                                              ; preds = %856, %861
  %864 = icmp ult i8 %845, 6
  br i1 %864, label %865, label %869

865:                                              ; preds = %863
  %866 = add nuw nsw i8 %845, 1
  %867 = zext nneg i8 %845 to i64
  %868 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %867
  store i8 %854, ptr %868, align 1, !tbaa !48
  br label %870

869:                                              ; preds = %863
  store i8 0, ptr %6, align 1, !tbaa !48
  br label %870

870:                                              ; preds = %869, %865
  %871 = phi i8 [ %866, %865 ], [ %845, %869 ]
  %872 = icmp eq ptr %847, %9
  br i1 %872, label %1090, label %844

873:                                              ; preds = %861
  %874 = zext i8 %845 to i64
  %875 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %874
  store i8 0, ptr %875, align 1, !tbaa !48
  br label %1074

876:                                              ; preds = %856
  store ptr %847, ptr %5, align 8, !tbaa !64
  %877 = zext i8 %845 to i64
  %878 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %877
  store i8 0, ptr %878, align 1, !tbaa !48
  %879 = load i8, ptr %847, align 1, !tbaa !48
  %880 = icmp eq i8 %879, 93
  br i1 %880, label %881, label %1074

881:                                              ; preds = %876
  %882 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str, i64 6)
  %883 = icmp eq i32 %882, 0
  %884 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.1, i64 6)
  %885 = icmp eq i32 %884, 0
  %886 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %887 = icmp eq i32 %886, 0
  %888 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.3, i64 6)
  %889 = icmp eq i32 %888, 0
  %890 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.4, i64 6)
  %891 = icmp eq i32 %890, 0
  %892 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.5, i64 6)
  %893 = icmp eq i32 %892, 0
  %894 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.6, i64 6)
  %895 = icmp eq i32 %894, 0
  %896 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.7, i64 6)
  %897 = icmp eq i32 %896, 0
  %898 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.8, i64 6)
  %899 = icmp eq i32 %898, 0
  %900 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.9, i64 6)
  %901 = icmp eq i32 %900, 0
  %902 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.10, i64 6)
  %903 = icmp eq i32 %902, 0
  %904 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.11, i64 7)
  %905 = icmp eq i32 %904, 0
  %906 = select i1 %885, i1 true, i1 %903
  %907 = select i1 %906, i1 true, i1 %895
  %908 = select i1 %907, i1 true, i1 %891
  %909 = select i1 %908, i1 true, i1 %883
  %910 = select i1 %909, i1 true, i1 %905
  %911 = select i1 %910, i1 true, i1 %901
  %912 = select i1 %911, i1 true, i1 %897
  %913 = select i1 %912, i1 true, i1 %899
  %914 = select i1 %913, i1 true, i1 %893
  %915 = select i1 %914, i1 true, i1 %889
  %916 = select i1 %915, i1 true, i1 %887
  br i1 %916, label %917, label %1088

917:                                              ; preds = %881
  br i1 %859, label %1090, label %918

918:                                              ; preds = %917
  %919 = getelementptr inbounds i8, ptr %846, i64 2
  store ptr %919, ptr %5, align 8, !tbaa !64
  %920 = icmp eq ptr %919, %9
  br i1 %920, label %1088, label %921

921:                                              ; preds = %918
  %922 = select i1 %903, i1 true, i1 %895
  %923 = select i1 %40, i1 %922, i1 false
  br label %924

924:                                              ; preds = %921, %1071
  %925 = phi i64 [ 0, %921 ], [ %1072, %1071 ]
  br i1 %883, label %926, label %933

926:                                              ; preds = %924
  %927 = tail call ptr @__ctype_b_loc() #28
  %928 = load ptr, ptr %927, align 8, !tbaa !64
  %929 = getelementptr inbounds i16, ptr %928, i64 %925
  %930 = load i16, ptr %929, align 2, !tbaa !124
  %931 = and i16 %930, 8
  %932 = icmp eq i16 %931, 0
  br i1 %932, label %933, label %957

933:                                              ; preds = %926, %924
  br i1 %885, label %934, label %941

934:                                              ; preds = %933
  %935 = tail call ptr @__ctype_b_loc() #28
  %936 = load ptr, ptr %935, align 8, !tbaa !64
  %937 = getelementptr inbounds i16, ptr %936, i64 %925
  %938 = load i16, ptr %937, align 2, !tbaa !124
  %939 = and i16 %938, 1024
  %940 = icmp eq i16 %939, 0
  br i1 %940, label %941, label %957

941:                                              ; preds = %934, %933
  br i1 %887, label %942, label %949

942:                                              ; preds = %941
  %943 = tail call ptr @__ctype_b_loc() #28
  %944 = load ptr, ptr %943, align 8, !tbaa !64
  %945 = getelementptr inbounds i16, ptr %944, i64 %925
  %946 = load i16, ptr %945, align 2, !tbaa !124
  %947 = and i16 %946, 1
  %948 = icmp eq i16 %947, 0
  br i1 %948, label %949, label %957

949:                                              ; preds = %942, %941
  br i1 %889, label %950, label %966

950:                                              ; preds = %949
  %951 = tail call ptr @__ctype_b_loc() #28
  %952 = load ptr, ptr %951, align 8, !tbaa !64
  %953 = getelementptr inbounds i16, ptr %952, i64 %925
  %954 = load i16, ptr %953, align 2, !tbaa !124
  %955 = and i16 %954, 2
  %956 = icmp eq i16 %955, 0
  br i1 %956, label %966, label %957

957:                                              ; preds = %950, %942, %934, %926
  %958 = trunc i64 %925 to i8
  %959 = and i8 %958, 7
  %960 = shl nuw i8 1, %959
  %961 = lshr i64 %925, 3
  %962 = and i64 %961, 536870911
  %963 = getelementptr inbounds i8, ptr %731, i64 %962
  %964 = load i8, ptr %963, align 1, !tbaa !48
  %965 = or i8 %964, %960
  store i8 %965, ptr %963, align 1, !tbaa !48
  br label %966

966:                                              ; preds = %957, %950, %949
  br i1 %891, label %967, label %974

967:                                              ; preds = %966
  %968 = tail call ptr @__ctype_b_loc() #28
  %969 = load ptr, ptr %968, align 8, !tbaa !64
  %970 = getelementptr inbounds i16, ptr %969, i64 %925
  %971 = load i16, ptr %970, align 2, !tbaa !124
  %972 = and i16 %971, 2048
  %973 = icmp eq i16 %972, 0
  br i1 %973, label %974, label %997

974:                                              ; preds = %967, %966
  br i1 %893, label %975, label %981

975:                                              ; preds = %974
  %976 = tail call ptr @__ctype_b_loc() #28
  %977 = load ptr, ptr %976, align 8, !tbaa !64
  %978 = getelementptr inbounds i16, ptr %977, i64 %925
  %979 = load i16, ptr %978, align 2, !tbaa !124
  %980 = icmp sgt i16 %979, -1
  br i1 %980, label %981, label %997

981:                                              ; preds = %975, %974
  br i1 %895, label %982, label %989

982:                                              ; preds = %981
  %983 = tail call ptr @__ctype_b_loc() #28
  %984 = load ptr, ptr %983, align 8, !tbaa !64
  %985 = getelementptr inbounds i16, ptr %984, i64 %925
  %986 = load i16, ptr %985, align 2, !tbaa !124
  %987 = and i16 %986, 512
  %988 = icmp eq i16 %987, 0
  br i1 %988, label %989, label %997

989:                                              ; preds = %982, %981
  br i1 %897, label %990, label %1006

990:                                              ; preds = %989
  %991 = tail call ptr @__ctype_b_loc() #28
  %992 = load ptr, ptr %991, align 8, !tbaa !64
  %993 = getelementptr inbounds i16, ptr %992, i64 %925
  %994 = load i16, ptr %993, align 2, !tbaa !124
  %995 = and i16 %994, 16384
  %996 = icmp eq i16 %995, 0
  br i1 %996, label %1006, label %997

997:                                              ; preds = %990, %982, %975, %967
  %998 = trunc i64 %925 to i8
  %999 = and i8 %998, 7
  %1000 = shl nuw i8 1, %999
  %1001 = lshr i64 %925, 3
  %1002 = and i64 %1001, 536870911
  %1003 = getelementptr inbounds i8, ptr %731, i64 %1002
  %1004 = load i8, ptr %1003, align 1, !tbaa !48
  %1005 = or i8 %1004, %1000
  store i8 %1005, ptr %1003, align 1, !tbaa !48
  br label %1006

1006:                                             ; preds = %997, %990, %989
  br i1 %899, label %1007, label %1014

1007:                                             ; preds = %1006
  %1008 = tail call ptr @__ctype_b_loc() #28
  %1009 = load ptr, ptr %1008, align 8, !tbaa !64
  %1010 = getelementptr inbounds i16, ptr %1009, i64 %925
  %1011 = load i16, ptr %1010, align 2, !tbaa !124
  %1012 = and i16 %1011, 4
  %1013 = icmp eq i16 %1012, 0
  br i1 %1013, label %1014, label %1038

1014:                                             ; preds = %1007, %1006
  br i1 %901, label %1015, label %1022

1015:                                             ; preds = %1014
  %1016 = tail call ptr @__ctype_b_loc() #28
  %1017 = load ptr, ptr %1016, align 8, !tbaa !64
  %1018 = getelementptr inbounds i16, ptr %1017, i64 %925
  %1019 = load i16, ptr %1018, align 2, !tbaa !124
  %1020 = and i16 %1019, 8192
  %1021 = icmp eq i16 %1020, 0
  br i1 %1021, label %1022, label %1038

1022:                                             ; preds = %1015, %1014
  br i1 %903, label %1023, label %1030

1023:                                             ; preds = %1022
  %1024 = tail call ptr @__ctype_b_loc() #28
  %1025 = load ptr, ptr %1024, align 8, !tbaa !64
  %1026 = getelementptr inbounds i16, ptr %1025, i64 %925
  %1027 = load i16, ptr %1026, align 2, !tbaa !124
  %1028 = and i16 %1027, 256
  %1029 = icmp eq i16 %1028, 0
  br i1 %1029, label %1030, label %1038

1030:                                             ; preds = %1023, %1022
  br i1 %905, label %1031, label %1047

1031:                                             ; preds = %1030
  %1032 = tail call ptr @__ctype_b_loc() #28
  %1033 = load ptr, ptr %1032, align 8, !tbaa !64
  %1034 = getelementptr inbounds i16, ptr %1033, i64 %925
  %1035 = load i16, ptr %1034, align 2, !tbaa !124
  %1036 = and i16 %1035, 4096
  %1037 = icmp eq i16 %1036, 0
  br i1 %1037, label %1047, label %1038

1038:                                             ; preds = %1031, %1023, %1015, %1007
  %1039 = trunc i64 %925 to i8
  %1040 = and i8 %1039, 7
  %1041 = shl nuw i8 1, %1040
  %1042 = lshr i64 %925, 3
  %1043 = and i64 %1042, 536870911
  %1044 = getelementptr inbounds i8, ptr %731, i64 %1043
  %1045 = load i8, ptr %1044, align 1, !tbaa !48
  %1046 = or i8 %1045, %1041
  store i8 %1046, ptr %1044, align 1, !tbaa !48
  br label %1047

1047:                                             ; preds = %1038, %1031, %1030
  br i1 %923, label %1048, label %1071

1048:                                             ; preds = %1047
  %1049 = tail call ptr @__ctype_b_loc() #28
  %1050 = load ptr, ptr %1049, align 8, !tbaa !64
  %1051 = getelementptr inbounds i16, ptr %1050, i64 %925
  %1052 = load i16, ptr %1051, align 2, !tbaa !124
  %1053 = and i16 %1052, 256
  %1054 = icmp eq i16 %1053, 0
  br i1 %1054, label %1055, label %1062

1055:                                             ; preds = %1048
  %1056 = tail call ptr @__ctype_b_loc() #28
  %1057 = load ptr, ptr %1056, align 8, !tbaa !64
  %1058 = getelementptr inbounds i16, ptr %1057, i64 %925
  %1059 = load i16, ptr %1058, align 2, !tbaa !124
  %1060 = and i16 %1059, 512
  %1061 = icmp eq i16 %1060, 0
  br i1 %1061, label %1071, label %1062

1062:                                             ; preds = %1055, %1048
  %1063 = trunc i64 %925 to i8
  %1064 = and i8 %1063, 7
  %1065 = shl nuw i8 1, %1064
  %1066 = lshr i64 %925, 3
  %1067 = and i64 %1066, 536870911
  %1068 = getelementptr inbounds i8, ptr %731, i64 %1067
  %1069 = load i8, ptr %1068, align 1, !tbaa !48
  %1070 = or i8 %1069, %1065
  store i8 %1070, ptr %1068, align 1, !tbaa !48
  br label %1071

1071:                                             ; preds = %1047, %1055, %1062
  %1072 = add nuw nsw i64 %925, 1
  %1073 = icmp eq i64 %1072, 256
  br i1 %1073, label %1092, label %924, !llvm.loop !126

1074:                                             ; preds = %873, %876
  %1075 = phi ptr [ %9, %873 ], [ %847, %876 ]
  %1076 = getelementptr inbounds i8, ptr %728, i64 12
  %1077 = getelementptr inbounds i8, ptr %728, i64 8
  %1078 = icmp eq i8 %845, -1
  %1079 = zext i8 %845 to i64
  %1080 = sub nsw i64 0, %1079
  %1081 = getelementptr i8, ptr %1075, i64 -1
  %1082 = getelementptr i8, ptr %1081, i64 %1080
  %1083 = select i1 %1078, ptr %1075, ptr %1082
  store ptr %1083, ptr %5, align 8, !tbaa !64
  %1084 = load i8, ptr %1076, align 1, !tbaa !48
  %1085 = or i8 %1084, 8
  store i8 %1085, ptr %1076, align 1, !tbaa !48
  %1086 = load i8, ptr %1077, align 1, !tbaa !48
  %1087 = or i8 %1086, 4
  store i8 %1087, ptr %1077, align 1, !tbaa !48
  br label %1092

1088:                                             ; preds = %918, %881, %841
  %1089 = phi i32 [ 7, %841 ], [ 4, %881 ], [ 7, %918 ]
  tail call void @free(ptr noundef %45) #23
  br label %1090

1090:                                             ; preds = %839, %917, %870, %1088
  %1091 = phi i32 [ %1089, %1088 ], [ 14, %870 ], [ 14, %917 ], [ 14, %839 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #25
  br label %2725

1092:                                             ; preds = %1071, %1074
  %1093 = phi i32 [ 58, %1074 ], [ %751, %1071 ]
  %1094 = phi i8 [ 0, %1074 ], [ 1, %1071 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #25
  br label %1261

1095:                                             ; preds = %838
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %7) #25
  %1096 = icmp eq ptr %752, %9
  br i1 %1096, label %1164, label %1097

1097:                                             ; preds = %1095
  %1098 = getelementptr inbounds i8, ptr %750, i64 2
  store ptr %1098, ptr %5, align 8, !tbaa !64
  %1099 = icmp eq ptr %1098, %9
  br i1 %1099, label %1162, label %1100

1100:                                             ; preds = %1097, %1126
  %1101 = phi i8 [ %1127, %1126 ], [ 0, %1097 ]
  %1102 = phi ptr [ %1103, %1126 ], [ %1098, %1097 ]
  %1103 = getelementptr inbounds i8, ptr %1102, i64 1
  %1104 = load i8, ptr %1102, align 1, !tbaa !48
  br i1 %40, label %1105, label %1109

1105:                                             ; preds = %1100
  %1106 = zext i8 %1104 to i64
  %1107 = getelementptr inbounds i8, ptr %11, i64 %1106
  %1108 = load i8, ptr %1107, align 1, !tbaa !48
  br label %1109

1109:                                             ; preds = %1105, %1100
  %1110 = phi i8 [ %1108, %1105 ], [ %1104, %1100 ]
  %1111 = icmp eq i8 %1110, 61
  br i1 %1111, label %1112, label %1117

1112:                                             ; preds = %1109
  %1113 = load i8, ptr %1103, align 1, !tbaa !48
  %1114 = icmp eq i8 %1113, 93
  %1115 = icmp eq ptr %1103, %9
  %1116 = select i1 %1114, i1 true, i1 %1115
  br i1 %1116, label %1132, label %1119

1117:                                             ; preds = %1109
  %1118 = icmp eq ptr %1103, %9
  br i1 %1118, label %1129, label %1119

1119:                                             ; preds = %1112, %1117
  %1120 = icmp ult i8 %1101, 16
  br i1 %1120, label %1121, label %1125

1121:                                             ; preds = %1119
  %1122 = add nuw nsw i8 %1101, 1
  %1123 = zext nneg i8 %1101 to i64
  %1124 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1123
  store i8 %1110, ptr %1124, align 1, !tbaa !48
  br label %1126

1125:                                             ; preds = %1119
  store i8 0, ptr %7, align 16, !tbaa !48
  br label %1126

1126:                                             ; preds = %1125, %1121
  %1127 = phi i8 [ %1122, %1121 ], [ %1101, %1125 ]
  %1128 = icmp eq ptr %1103, %9
  br i1 %1128, label %1164, label %1100

1129:                                             ; preds = %1117
  %1130 = zext i8 %1101 to i64
  %1131 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1130
  store i8 0, ptr %1131, align 1, !tbaa !48
  br label %1150

1132:                                             ; preds = %1112
  store ptr %1103, ptr %5, align 8, !tbaa !64
  %1133 = zext i8 %1101 to i64
  %1134 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1133
  store i8 0, ptr %1134, align 1, !tbaa !48
  %1135 = load i8, ptr %1103, align 1, !tbaa !48
  %1136 = icmp eq i8 %1135, 93
  %1137 = load i8, ptr %7, align 16
  %1138 = icmp ne i8 %1137, 0
  %1139 = select i1 %1136, i1 %1138, i1 false
  br i1 %1139, label %1140, label %1150

1140:                                             ; preds = %1132
  %1141 = icmp eq i8 %1101, 1
  br i1 %1141, label %1142, label %1162

1142:                                             ; preds = %1140
  br i1 %1115, label %1164, label %1143

1143:                                             ; preds = %1142
  %1144 = getelementptr inbounds i8, ptr %1102, i64 2
  store ptr %1144, ptr %5, align 8, !tbaa !64
  %1145 = and i8 %1137, 7
  %1146 = shl nuw i8 1, %1145
  %1147 = lshr i8 %1137, 3
  %1148 = zext nneg i8 %1147 to i64
  %1149 = getelementptr inbounds i8, ptr %731, i64 %1148
  br label %1166

1150:                                             ; preds = %1129, %1132
  %1151 = phi ptr [ %9, %1129 ], [ %1103, %1132 ]
  %1152 = getelementptr inbounds i8, ptr %728, i64 12
  %1153 = getelementptr inbounds i8, ptr %728, i64 8
  %1154 = icmp eq i8 %1101, -1
  %1155 = zext i8 %1101 to i64
  %1156 = sub nsw i64 0, %1155
  %1157 = getelementptr i8, ptr %1151, i64 -1
  %1158 = getelementptr i8, ptr %1157, i64 %1156
  %1159 = select i1 %1154, ptr %1151, ptr %1158
  store ptr %1159, ptr %5, align 8, !tbaa !64
  %1160 = load i8, ptr %1152, align 1, !tbaa !48
  %1161 = or i8 %1160, 8
  store i8 %1161, ptr %1152, align 1, !tbaa !48
  br label %1166

1162:                                             ; preds = %1140, %1097
  %1163 = phi i32 [ 7, %1097 ], [ 3, %1140 ]
  tail call void @free(ptr noundef %45) #23
  br label %1164

1164:                                             ; preds = %1095, %1142, %1126, %1162
  %1165 = phi i32 [ %1163, %1162 ], [ 14, %1126 ], [ 14, %1142 ], [ 14, %1095 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %7) #25
  br label %2725

1166:                                             ; preds = %1143, %1150
  %1167 = phi ptr [ %1149, %1143 ], [ %1153, %1150 ]
  %1168 = phi i8 [ %1146, %1143 ], [ 32, %1150 ]
  %1169 = phi i32 [ %751, %1143 ], [ 61, %1150 ]
  %1170 = phi i8 [ 1, %1143 ], [ 0, %1150 ]
  %1171 = load i8, ptr %1167, align 1, !tbaa !48
  %1172 = or i8 %1171, %1168
  store i8 %1172, ptr %1167, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %7) #25
  br label %1261

1173:                                             ; preds = %838
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #25
  %1174 = icmp eq ptr %752, %9
  br i1 %1174, label %1248, label %1175

1175:                                             ; preds = %1173
  %1176 = getelementptr inbounds i8, ptr %750, i64 2
  store ptr %1176, ptr %5, align 8, !tbaa !64
  %1177 = icmp eq ptr %1176, %9
  br i1 %1177, label %1246, label %1178

1178:                                             ; preds = %1175, %1204
  %1179 = phi i8 [ %1205, %1204 ], [ 0, %1175 ]
  %1180 = phi ptr [ %1181, %1204 ], [ %1176, %1175 ]
  %1181 = getelementptr inbounds i8, ptr %1180, i64 1
  %1182 = load i8, ptr %1180, align 1, !tbaa !48
  br i1 %40, label %1183, label %1187

1183:                                             ; preds = %1178
  %1184 = zext i8 %1182 to i64
  %1185 = getelementptr inbounds i8, ptr %11, i64 %1184
  %1186 = load i8, ptr %1185, align 1, !tbaa !48
  br label %1187

1187:                                             ; preds = %1183, %1178
  %1188 = phi i8 [ %1186, %1183 ], [ %1182, %1178 ]
  %1189 = icmp eq i8 %1188, 46
  br i1 %1189, label %1190, label %1195

1190:                                             ; preds = %1187
  %1191 = load i8, ptr %1181, align 1, !tbaa !48
  %1192 = icmp eq i8 %1191, 93
  %1193 = icmp eq ptr %1181, %9
  %1194 = select i1 %1192, i1 true, i1 %1193
  br i1 %1194, label %1210, label %1197

1195:                                             ; preds = %1187
  %1196 = icmp eq ptr %1181, %9
  br i1 %1196, label %1207, label %1197

1197:                                             ; preds = %1190, %1195
  %1198 = icmp sgt i8 %1179, -1
  br i1 %1198, label %1199, label %1203

1199:                                             ; preds = %1197
  %1200 = zext nneg i8 %1179 to i64
  %1201 = add nuw i8 %1179, 1
  %1202 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1200
  store i8 %1188, ptr %1202, align 1, !tbaa !48
  br label %1204

1203:                                             ; preds = %1197
  store i8 0, ptr %8, align 16, !tbaa !48
  br label %1204

1204:                                             ; preds = %1203, %1199
  %1205 = phi i8 [ %1201, %1199 ], [ %1179, %1203 ]
  %1206 = icmp eq ptr %1181, %9
  br i1 %1206, label %1248, label %1178

1207:                                             ; preds = %1195
  %1208 = zext i8 %1179 to i64
  %1209 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1208
  store i8 0, ptr %1209, align 1, !tbaa !48
  br label %1232

1210:                                             ; preds = %1190
  store ptr %1181, ptr %5, align 8, !tbaa !64
  %1211 = zext i8 %1179 to i64
  %1212 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1211
  store i8 0, ptr %1212, align 1, !tbaa !48
  %1213 = load i8, ptr %1181, align 1, !tbaa !48
  %1214 = icmp eq i8 %1213, 93
  %1215 = load i8, ptr %8, align 16
  %1216 = icmp ne i8 %1215, 0
  %1217 = select i1 %1214, i1 %1216, i1 false
  br i1 %1217, label %1218, label %1232

1218:                                             ; preds = %1210
  %1219 = icmp eq i8 %1179, 1
  br i1 %1219, label %1220, label %1246

1220:                                             ; preds = %1218
  br i1 %1193, label %1248, label %1221

1221:                                             ; preds = %1220
  %1222 = getelementptr inbounds i8, ptr %1180, i64 2
  store ptr %1222, ptr %5, align 8, !tbaa !64
  %1223 = and i8 %1215, 7
  %1224 = shl nuw i8 1, %1223
  %1225 = lshr i8 %1215, 3
  %1226 = zext nneg i8 %1225 to i64
  %1227 = getelementptr inbounds i8, ptr %731, i64 %1226
  %1228 = load i8, ptr %1227, align 1, !tbaa !48
  %1229 = or i8 %1228, %1224
  store i8 %1229, ptr %1227, align 1, !tbaa !48
  %1230 = load i8, ptr %8, align 16, !tbaa !48
  %1231 = zext i8 %1230 to i32
  br label %1250

1232:                                             ; preds = %1207, %1210
  %1233 = phi ptr [ %9, %1207 ], [ %1181, %1210 ]
  %1234 = getelementptr inbounds i8, ptr %728, i64 12
  %1235 = getelementptr inbounds i8, ptr %728, i64 6
  %1236 = icmp eq i8 %1179, -1
  %1237 = zext i8 %1179 to i64
  %1238 = sub nsw i64 0, %1237
  %1239 = getelementptr i8, ptr %1233, i64 -1
  %1240 = getelementptr i8, ptr %1239, i64 %1238
  %1241 = select i1 %1236, ptr %1233, ptr %1240
  store ptr %1241, ptr %5, align 8, !tbaa !64
  %1242 = load i8, ptr %1234, align 1, !tbaa !48
  %1243 = or i8 %1242, 8
  store i8 %1243, ptr %1234, align 1, !tbaa !48
  %1244 = load i8, ptr %1235, align 1, !tbaa !48
  %1245 = or i8 %1244, 64
  store i8 %1245, ptr %1235, align 1, !tbaa !48
  br label %1250

1246:                                             ; preds = %1218, %1175
  %1247 = phi i32 [ 7, %1175 ], [ 3, %1218 ]
  tail call void @free(ptr noundef %45) #23
  br label %1248

1248:                                             ; preds = %1173, %1220, %1204, %1246
  %1249 = phi i32 [ %1247, %1246 ], [ 14, %1204 ], [ 14, %1220 ], [ 14, %1173 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #25
  br label %2725

1250:                                             ; preds = %1221, %1232
  %1251 = phi i32 [ %1231, %1221 ], [ 46, %1232 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #25
  br label %1261

1252:                                             ; preds = %838, %813, %833
  %1253 = phi i8 [ 91, %838 ], [ 45, %813 ], [ %759, %833 ]
  %1254 = and i8 %1253, 7
  %1255 = shl nuw i8 1, %1254
  %1256 = lshr i32 %785, 3
  %1257 = zext nneg i32 %1256 to i64
  %1258 = getelementptr inbounds i8, ptr %731, i64 %1257
  %1259 = load i8, ptr %1258, align 1, !tbaa !48
  %1260 = or i8 %1259, %1255
  store i8 %1260, ptr %1258, align 1, !tbaa !48
  br label %1261

1261:                                             ; preds = %816, %1250, %1166, %1092, %829, %1252
  %1262 = phi i32 [ %1093, %1092 ], [ %1169, %1166 ], [ %1251, %1250 ], [ %785, %1252 ], [ -1, %829 ], [ -1, %816 ]
  %1263 = phi i8 [ %1094, %1092 ], [ %1170, %1166 ], [ 0, %1250 ], [ 0, %1252 ], [ %746, %829 ], [ %746, %816 ]
  %1264 = load ptr, ptr %5, align 8, !tbaa !64
  %1265 = icmp eq ptr %1264, %9
  br i1 %1265, label %748, label %744

1266:                                             ; preds = %784
  %1267 = load i8, ptr %728, align 1, !tbaa !48
  %1268 = icmp eq i8 %1267, 0
  br i1 %1268, label %1280, label %1269

1269:                                             ; preds = %1266, %1277
  %1270 = phi i8 [ %1278, %1277 ], [ %1267, %1266 ]
  %1271 = zext i8 %1270 to i64
  %1272 = add nuw nsw i64 %1271, 4294967295
  %1273 = and i64 %1272, 4294967295
  %1274 = getelementptr inbounds i8, ptr %731, i64 %1273
  %1275 = load i8, ptr %1274, align 1, !tbaa !48
  %1276 = icmp eq i8 %1275, 0
  br i1 %1276, label %1277, label %1280

1277:                                             ; preds = %1269
  %1278 = add i8 %1270, -1
  store i8 %1278, ptr %728, align 1, !tbaa !48
  %1279 = icmp eq i8 %1278, 0
  br i1 %1279, label %1280, label %1269, !llvm.loop !127

1280:                                             ; preds = %1277, %1269, %1266
  %1281 = phi i8 [ 0, %1266 ], [ %1270, %1269 ], [ 0, %1277 ]
  %1282 = zext i8 %1281 to i64
  %1283 = getelementptr inbounds i8, ptr %731, i64 %1282
  br label %2648

1284:                                             ; preds = %61
  %1285 = and i64 %2, 8192
  %1286 = icmp eq i64 %1285, 0
  br i1 %1286, label %2486, label %1308

1287:                                             ; preds = %61
  %1288 = and i64 %2, 8192
  %1289 = icmp eq i64 %1288, 0
  br i1 %1289, label %2486, label %1392

1290:                                             ; preds = %61
  %1291 = and i64 %2, 2048
  %1292 = icmp eq i64 %1291, 0
  br i1 %1292, label %2486, label %1555

1293:                                             ; preds = %61
  %1294 = and i64 %2, 32768
  %1295 = icmp eq i64 %1294, 0
  br i1 %1295, label %2486, label %1555

1296:                                             ; preds = %61
  %1297 = and i64 %2, 4608
  %1298 = icmp eq i64 %1297, 4608
  br i1 %1298, label %1664, label %2486

1299:                                             ; preds = %61
  %1300 = icmp eq ptr %55, %9
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1299
  tail call void @free(ptr noundef %45) #23
  br label %2725

1302:                                             ; preds = %1299
  %1303 = getelementptr inbounds i8, ptr %48, i64 2
  store ptr %1303, ptr %5, align 8, !tbaa !64
  %1304 = load i8, ptr %55, align 1, !tbaa !48
  switch i8 %1304, label %2480 [
    i8 40, label %1305
    i8 41, label %1383
    i8 124, label %1552
    i8 123, label %1661
    i8 119, label %1910
    i8 87, label %1972
    i8 60, label %2034
    i8 62, label %2096
    i8 98, label %2158
    i8 66, label %2220
    i8 96, label %2282
    i8 39, label %2344
    i8 49, label %2406
    i8 50, label %2406
    i8 51, label %2406
    i8 52, label %2406
    i8 53, label %2406
    i8 54, label %2406
    i8 55, label %2406
    i8 56, label %2406
    i8 57, label %2406
    i8 43, label %2477
    i8 63, label %2477
  ]

1305:                                             ; preds = %1302
  %1306 = and i64 %2, 8192
  %1307 = icmp eq i64 %1306, 0
  br i1 %1307, label %1308, label %2480

1308:                                             ; preds = %1305, %1284
  %1309 = load i64, ptr %20, align 8, !tbaa !63
  %1310 = add i64 %1309, 1
  store i64 %1310, ptr %20, align 8, !tbaa !63
  %1311 = add i32 %46, 1
  %1312 = lshr i64 %50, 32
  %1313 = trunc i64 %1312 to i32
  %1314 = trunc i64 %50 to i32
  %1315 = icmp eq i32 %1313, %1314
  br i1 %1315, label %1316, label %1326

1316:                                             ; preds = %1308
  %1317 = shl i64 %50, 1
  %1318 = and i64 %1317, 4294967294
  %1319 = mul nuw nsw i64 %1318, 40
  %1320 = tail call ptr @realloc(ptr noundef %45, i64 noundef %1319) #27
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %2725, label %1322

1322:                                             ; preds = %1316
  %1323 = and i64 %50, -4294967296
  %1324 = or disjoint i64 %1318, %1323
  %1325 = lshr i64 %50, 32
  br label %1326

1326:                                             ; preds = %1322, %1308
  %1327 = phi i64 [ %1325, %1322 ], [ %1312, %1308 ]
  %1328 = phi ptr [ %1320, %1322 ], [ %45, %1308 ]
  %1329 = phi i64 [ %1324, %1322 ], [ %50, %1308 ]
  %1330 = load ptr, ptr %3, align 8, !tbaa !46
  %1331 = ptrtoint ptr %53 to i64
  %1332 = ptrtoint ptr %1330 to i64
  %1333 = sub i64 %1331, %1332
  %1334 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1328, i64 %1327
  store i64 %1333, ptr %1334, align 8, !tbaa !128
  %1335 = icmp eq ptr %54, null
  %1336 = ptrtoint ptr %54 to i64
  %1337 = add i64 %1336, 1
  %1338 = sub i64 %1337, %1332
  %1339 = select i1 %1335, i64 0, i64 %1338
  %1340 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1328, i64 %1327, i32 1
  store i64 %1339, ptr %1340, align 8, !tbaa !130
  %1341 = ptrtoint ptr %49 to i64
  %1342 = sub i64 %1341, %1332
  %1343 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1328, i64 %1327, i32 3
  store i64 %1342, ptr %1343, align 8, !tbaa !131
  %1344 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1328, i64 %1327, i32 4
  store i32 %1311, ptr %1344, align 8, !tbaa !132
  %1345 = icmp ult i32 %1311, 256
  br i1 %1345, label %1346, label %2657

1346:                                             ; preds = %1326
  %1347 = add nsw i64 %1342, 2
  %1348 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1328, i64 %1327, i32 2
  store i64 %1347, ptr %1348, align 8, !tbaa !133
  %1349 = add i64 %1341, 3
  %1350 = sub i64 %1349, %1332
  %1351 = load i64, ptr %21, align 8, !tbaa !113
  %1352 = icmp ugt i64 %1350, %1351
  br i1 %1352, label %1353, label %1377

1353:                                             ; preds = %1346, %1364
  %1354 = phi i64 [ %1375, %1364 ], [ %1351, %1346 ]
  %1355 = phi i64 [ %1366, %1364 ], [ %1332, %1346 ]
  %1356 = phi ptr [ %1362, %1364 ], [ %1330, %1346 ]
  %1357 = phi ptr [ %1371, %1364 ], [ %49, %1346 ]
  %1358 = icmp eq i64 %1354, 65536
  br i1 %1358, label %2725, label %1359

1359:                                             ; preds = %1353
  %1360 = shl i64 %1354, 1
  %1361 = tail call i64 @llvm.umin.i64(i64 %1360, i64 65536)
  store i64 %1361, ptr %21, align 8, !tbaa !113
  %1362 = tail call ptr @realloc(ptr noundef %1356, i64 noundef %1361) #27
  store ptr %1362, ptr %3, align 8, !tbaa !46
  %1363 = icmp eq ptr %1362, null
  br i1 %1363, label %2725, label %1364

1364:                                             ; preds = %1359
  %1365 = icmp eq ptr %1356, %1362
  %1366 = ptrtoint ptr %1362 to i64
  %1367 = sub i64 %1366, %1355
  %1368 = shl i64 %1367, 32
  %1369 = ashr exact i64 %1368, 32
  %1370 = select i1 %1365, i64 0, i64 %1369
  %1371 = getelementptr inbounds i8, ptr %1357, i64 %1370
  %1372 = ptrtoint ptr %1371 to i64
  %1373 = add i64 %1372, 3
  %1374 = sub i64 %1373, %1366
  %1375 = load i64, ptr %21, align 8, !tbaa !113
  %1376 = icmp ugt i64 %1374, %1375
  br i1 %1376, label %1353, label %1377, !llvm.loop !134

1377:                                             ; preds = %1364, %1346
  %1378 = phi ptr [ %49, %1346 ], [ %1371, %1364 ]
  %1379 = getelementptr inbounds i8, ptr %1378, i64 1
  store i8 6, ptr %1378, align 1, !tbaa !48
  %1380 = trunc i32 %1311 to i8
  %1381 = getelementptr inbounds i8, ptr %1378, i64 2
  store i8 %1380, ptr %1379, align 1, !tbaa !48
  %1382 = getelementptr inbounds i8, ptr %1378, i64 3
  store i8 0, ptr %1381, align 1, !tbaa !48
  br label %2657

1383:                                             ; preds = %1302
  %1384 = and i64 %2, 8192
  %1385 = icmp eq i64 %1384, 0
  br i1 %1385, label %1386, label %2480

1386:                                             ; preds = %1383
  %1387 = icmp ult i64 %50, 4294967296
  br i1 %1387, label %1388, label %1392

1388:                                             ; preds = %1386
  %1389 = and i64 %2, 131072
  %1390 = icmp eq i64 %1389, 0
  br i1 %1390, label %1391, label %2480

1391:                                             ; preds = %1388
  tail call void @free(ptr noundef %45) #23
  br label %2725

1392:                                             ; preds = %1386, %1287
  %1393 = icmp eq ptr %54, null
  br i1 %1393, label %1458, label %1394

1394:                                             ; preds = %1392
  %1395 = load ptr, ptr %3, align 8, !tbaa !46
  %1396 = ptrtoint ptr %49 to i64
  %1397 = ptrtoint ptr %1395 to i64
  %1398 = add i64 %1396, 1
  %1399 = sub i64 %1398, %1397
  %1400 = load i64, ptr %21, align 8, !tbaa !113
  %1401 = icmp ugt i64 %1399, %1400
  br i1 %1401, label %1402, label %1446

1402:                                             ; preds = %1394, %1435
  %1403 = phi i64 [ %1444, %1435 ], [ %1400, %1394 ]
  %1404 = phi i64 [ %1419, %1435 ], [ %1397, %1394 ]
  %1405 = phi ptr [ %1415, %1435 ], [ %1395, %1394 ]
  %1406 = phi ptr [ %1440, %1435 ], [ %49, %1394 ]
  %1407 = phi ptr [ %1439, %1435 ], [ %51, %1394 ]
  %1408 = phi ptr [ %1438, %1435 ], [ %52, %1394 ]
  %1409 = phi ptr [ %1437, %1435 ], [ %53, %1394 ]
  %1410 = phi ptr [ %1436, %1435 ], [ %54, %1394 ]
  %1411 = icmp eq i64 %1403, 65536
  br i1 %1411, label %2725, label %1412

1412:                                             ; preds = %1402
  %1413 = shl i64 %1403, 1
  %1414 = tail call i64 @llvm.umin.i64(i64 %1413, i64 65536)
  store i64 %1414, ptr %21, align 8, !tbaa !113
  %1415 = tail call ptr @realloc(ptr noundef %1405, i64 noundef %1414) #27
  store ptr %1415, ptr %3, align 8, !tbaa !46
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %2725, label %1417

1417:                                             ; preds = %1412
  %1418 = icmp eq ptr %1405, %1415
  %1419 = ptrtoint ptr %1415 to i64
  br i1 %1418, label %1435, label %1420

1420:                                             ; preds = %1417
  %1421 = sub i64 %1419, %1404
  %1422 = shl i64 %1421, 32
  %1423 = ashr exact i64 %1422, 32
  %1424 = getelementptr inbounds i8, ptr %1406, i64 %1423
  %1425 = getelementptr inbounds i8, ptr %1409, i64 %1423
  %1426 = icmp eq ptr %1410, null
  %1427 = getelementptr inbounds i8, ptr %1410, i64 %1423
  %1428 = select i1 %1426, ptr null, ptr %1427
  %1429 = icmp eq ptr %1408, null
  %1430 = getelementptr inbounds i8, ptr %1408, i64 %1423
  %1431 = select i1 %1429, ptr null, ptr %1430
  %1432 = icmp eq ptr %1407, null
  %1433 = getelementptr inbounds i8, ptr %1407, i64 %1423
  %1434 = select i1 %1432, ptr null, ptr %1433
  br label %1435

1435:                                             ; preds = %1417, %1420
  %1436 = phi ptr [ %1428, %1420 ], [ %1410, %1417 ]
  %1437 = phi ptr [ %1425, %1420 ], [ %1409, %1417 ]
  %1438 = phi ptr [ %1431, %1420 ], [ %1408, %1417 ]
  %1439 = phi ptr [ %1434, %1420 ], [ %1407, %1417 ]
  %1440 = phi ptr [ %1424, %1420 ], [ %1406, %1417 ]
  %1441 = ptrtoint ptr %1440 to i64
  %1442 = add i64 %1441, 1
  %1443 = sub i64 %1442, %1419
  %1444 = load i64, ptr %21, align 8, !tbaa !113
  %1445 = icmp ugt i64 %1443, %1444
  br i1 %1445, label %1402, label %1446, !llvm.loop !135

1446:                                             ; preds = %1435, %1394
  %1447 = phi ptr [ %54, %1394 ], [ %1436, %1435 ]
  %1448 = phi ptr [ %53, %1394 ], [ %1437, %1435 ]
  %1449 = phi ptr [ %52, %1394 ], [ %1438, %1435 ]
  %1450 = phi ptr [ %51, %1394 ], [ %1439, %1435 ]
  %1451 = phi ptr [ %49, %1394 ], [ %1440, %1435 ]
  %1452 = phi i64 [ %1396, %1394 ], [ %1441, %1435 ]
  %1453 = getelementptr inbounds i8, ptr %1451, i64 1
  store i8 20, ptr %1451, align 1, !tbaa !48
  %1454 = ptrtoint ptr %1447 to i64
  %1455 = sub i64 %1452, %1454
  %1456 = trunc i64 %1455 to i32
  %1457 = add i32 %1456, -3
  tail call fastcc void @byte_store_op1(i32 noundef 14, ptr noundef %1447, i32 noundef %1457) #23
  br label %1458

1458:                                             ; preds = %1446, %1392
  %1459 = phi ptr [ %1447, %1446 ], [ null, %1392 ]
  %1460 = phi ptr [ %1448, %1446 ], [ %53, %1392 ]
  %1461 = phi ptr [ %1449, %1446 ], [ %52, %1392 ]
  %1462 = phi ptr [ %1450, %1446 ], [ %51, %1392 ]
  %1463 = phi ptr [ %1453, %1446 ], [ %49, %1392 ]
  %1464 = icmp ult i64 %50, 4294967296
  br i1 %1464, label %1465, label %1469

1465:                                             ; preds = %1458
  %1466 = and i64 %2, 131072
  %1467 = icmp eq i64 %1466, 0
  br i1 %1467, label %1468, label %2486

1468:                                             ; preds = %1465
  tail call void @free(ptr noundef %45) #23
  br label %2725

1469:                                             ; preds = %1458
  %1470 = and i64 %50, -4294967296
  %1471 = add i64 %1470, -4294967296
  %1472 = and i64 %50, 4294967295
  %1473 = or disjoint i64 %1471, %1472
  %1474 = load ptr, ptr %3, align 8, !tbaa !46
  %1475 = lshr exact i64 %1471, 32
  %1476 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %45, i64 %1475
  %1477 = load i64, ptr %1476, align 8, !tbaa !128
  %1478 = getelementptr inbounds i8, ptr %1474, i64 %1477
  %1479 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %45, i64 %1475, i32 1
  %1480 = load i64, ptr %1479, align 8, !tbaa !130
  %1481 = icmp eq i64 %1480, 0
  %1482 = getelementptr inbounds i8, ptr %1474, i64 %1480
  %1483 = getelementptr inbounds i8, ptr %1482, i64 -1
  %1484 = select i1 %1481, ptr null, ptr %1483
  %1485 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %45, i64 %1475, i32 3
  %1486 = load i64, ptr %1485, align 8, !tbaa !131
  %1487 = getelementptr inbounds i8, ptr %1474, i64 %1486
  %1488 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %45, i64 %1475, i32 4
  %1489 = load i32, ptr %1488, align 8, !tbaa !132
  %1490 = icmp ult i32 %1489, 256
  br i1 %1490, label %1491, label %2648

1491:                                             ; preds = %1469
  %1492 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %45, i64 %1475, i32 2
  %1493 = load i64, ptr %1492, align 8, !tbaa !133
  %1494 = getelementptr inbounds i8, ptr %1474, i64 %1493
  %1495 = sub i32 %46, %1489
  %1496 = trunc i32 %1495 to i8
  store i8 %1496, ptr %1494, align 1, !tbaa !48
  %1497 = load ptr, ptr %3, align 8, !tbaa !46
  %1498 = ptrtoint ptr %1463 to i64
  %1499 = ptrtoint ptr %1497 to i64
  %1500 = add i64 %1498, 3
  %1501 = sub i64 %1500, %1499
  %1502 = load i64, ptr %21, align 8, !tbaa !113
  %1503 = icmp ugt i64 %1501, %1502
  br i1 %1503, label %1504, label %1543

1504:                                             ; preds = %1491, %1533
  %1505 = phi i64 [ %1541, %1533 ], [ %1502, %1491 ]
  %1506 = phi i64 [ %1520, %1533 ], [ %1499, %1491 ]
  %1507 = phi ptr [ %1516, %1533 ], [ %1497, %1491 ]
  %1508 = phi ptr [ %1537, %1533 ], [ %1463, %1491 ]
  %1509 = phi ptr [ %1536, %1533 ], [ %1487, %1491 ]
  %1510 = phi ptr [ %1535, %1533 ], [ %1478, %1491 ]
  %1511 = phi ptr [ %1534, %1533 ], [ %1484, %1491 ]
  %1512 = icmp eq i64 %1505, 65536
  br i1 %1512, label %2725, label %1513

1513:                                             ; preds = %1504
  %1514 = shl i64 %1505, 1
  %1515 = tail call i64 @llvm.umin.i64(i64 %1514, i64 65536)
  store i64 %1515, ptr %21, align 8, !tbaa !113
  %1516 = tail call ptr @realloc(ptr noundef %1507, i64 noundef %1515) #27
  store ptr %1516, ptr %3, align 8, !tbaa !46
  %1517 = icmp eq ptr %1516, null
  br i1 %1517, label %2725, label %1518

1518:                                             ; preds = %1513
  %1519 = icmp eq ptr %1507, %1516
  %1520 = ptrtoint ptr %1516 to i64
  br i1 %1519, label %1533, label %1521

1521:                                             ; preds = %1518
  %1522 = sub i64 %1520, %1506
  %1523 = shl i64 %1522, 32
  %1524 = ashr exact i64 %1523, 32
  %1525 = getelementptr inbounds i8, ptr %1508, i64 %1524
  %1526 = getelementptr inbounds i8, ptr %1510, i64 %1524
  %1527 = icmp eq ptr %1511, null
  %1528 = getelementptr inbounds i8, ptr %1511, i64 %1524
  %1529 = select i1 %1527, ptr null, ptr %1528
  %1530 = icmp eq ptr %1509, null
  %1531 = getelementptr inbounds i8, ptr %1509, i64 %1524
  %1532 = select i1 %1530, ptr null, ptr %1531
  br label %1533

1533:                                             ; preds = %1518, %1521
  %1534 = phi ptr [ %1529, %1521 ], [ %1511, %1518 ]
  %1535 = phi ptr [ %1526, %1521 ], [ %1510, %1518 ]
  %1536 = phi ptr [ %1532, %1521 ], [ %1509, %1518 ]
  %1537 = phi ptr [ %1525, %1521 ], [ %1508, %1518 ]
  %1538 = ptrtoint ptr %1537 to i64
  %1539 = add i64 %1538, 3
  %1540 = sub i64 %1539, %1520
  %1541 = load i64, ptr %21, align 8, !tbaa !113
  %1542 = icmp ugt i64 %1540, %1541
  br i1 %1542, label %1504, label %1543, !llvm.loop !136

1543:                                             ; preds = %1533, %1491
  %1544 = phi ptr [ %1484, %1491 ], [ %1534, %1533 ]
  %1545 = phi ptr [ %1478, %1491 ], [ %1535, %1533 ]
  %1546 = phi ptr [ %1487, %1491 ], [ %1536, %1533 ]
  %1547 = phi ptr [ %1463, %1491 ], [ %1537, %1533 ]
  %1548 = getelementptr inbounds i8, ptr %1547, i64 1
  store i8 7, ptr %1547, align 1, !tbaa !48
  %1549 = trunc i32 %1489 to i8
  %1550 = getelementptr inbounds i8, ptr %1547, i64 2
  store i8 %1549, ptr %1548, align 1, !tbaa !48
  %1551 = getelementptr inbounds i8, ptr %1547, i64 3
  store i8 %1496, ptr %1550, align 1, !tbaa !48
  br label %2648

1552:                                             ; preds = %1302
  %1553 = and i64 %2, 33792
  %1554 = icmp eq i64 %1553, 0
  br i1 %1554, label %1555, label %2480

1555:                                             ; preds = %1552, %1293, %1290
  %1556 = phi i8 [ 124, %1293 ], [ 10, %1290 ], [ 124, %1552 ]
  %1557 = and i64 %2, 1024
  %1558 = icmp eq i64 %1557, 0
  br i1 %1558, label %1559, label %2486

1559:                                             ; preds = %1555
  %1560 = load ptr, ptr %3, align 8, !tbaa !46
  %1561 = ptrtoint ptr %49 to i64
  %1562 = ptrtoint ptr %1560 to i64
  %1563 = add i64 %1561, 3
  %1564 = sub i64 %1563, %1562
  %1565 = load i64, ptr %21, align 8, !tbaa !113
  %1566 = icmp ugt i64 %1564, %1565
  br i1 %1566, label %1567, label %1601

1567:                                             ; preds = %1559, %1592
  %1568 = phi i64 [ %1599, %1592 ], [ %1565, %1559 ]
  %1569 = phi i64 [ %1582, %1592 ], [ %1562, %1559 ]
  %1570 = phi ptr [ %1578, %1592 ], [ %1560, %1559 ]
  %1571 = phi ptr [ %1595, %1592 ], [ %49, %1559 ]
  %1572 = phi ptr [ %1594, %1592 ], [ %53, %1559 ]
  %1573 = phi ptr [ %1593, %1592 ], [ %54, %1559 ]
  %1574 = icmp eq i64 %1568, 65536
  br i1 %1574, label %2725, label %1575

1575:                                             ; preds = %1567
  %1576 = shl i64 %1568, 1
  %1577 = tail call i64 @llvm.umin.i64(i64 %1576, i64 65536)
  store i64 %1577, ptr %21, align 8, !tbaa !113
  %1578 = tail call ptr @realloc(ptr noundef %1570, i64 noundef %1577) #27
  store ptr %1578, ptr %3, align 8, !tbaa !46
  %1579 = icmp eq ptr %1578, null
  br i1 %1579, label %2725, label %1580

1580:                                             ; preds = %1575
  %1581 = icmp eq ptr %1570, %1578
  %1582 = ptrtoint ptr %1578 to i64
  br i1 %1581, label %1592, label %1583

1583:                                             ; preds = %1580
  %1584 = sub i64 %1582, %1569
  %1585 = shl i64 %1584, 32
  %1586 = ashr exact i64 %1585, 32
  %1587 = getelementptr inbounds i8, ptr %1571, i64 %1586
  %1588 = getelementptr inbounds i8, ptr %1572, i64 %1586
  %1589 = icmp eq ptr %1573, null
  %1590 = getelementptr inbounds i8, ptr %1573, i64 %1586
  %1591 = select i1 %1589, ptr null, ptr %1590
  br label %1592

1592:                                             ; preds = %1580, %1583
  %1593 = phi ptr [ %1591, %1583 ], [ %1573, %1580 ]
  %1594 = phi ptr [ %1588, %1583 ], [ %1572, %1580 ]
  %1595 = phi ptr [ %1587, %1583 ], [ %1571, %1580 ]
  %1596 = ptrtoint ptr %1595 to i64
  %1597 = add i64 %1596, 3
  %1598 = sub i64 %1597, %1582
  %1599 = load i64, ptr %21, align 8, !tbaa !113
  %1600 = icmp ugt i64 %1598, %1599
  br i1 %1600, label %1567, label %1601, !llvm.loop !137

1601:                                             ; preds = %1592, %1559
  %1602 = phi ptr [ %54, %1559 ], [ %1593, %1592 ]
  %1603 = phi ptr [ %53, %1559 ], [ %1594, %1592 ]
  %1604 = phi ptr [ %49, %1559 ], [ %1595, %1592 ]
  %1605 = getelementptr inbounds i8, ptr %1604, i64 6
  %1606 = ptrtoint ptr %1605 to i64
  %1607 = ptrtoint ptr %1603 to i64
  %1608 = sub i64 %1606, %1607
  %1609 = trunc i64 %1608 to i32
  %1610 = add i32 %1609, -3
  tail call fastcc void @byte_insert_op1(i32 noundef 15, ptr noundef %1603, i32 noundef %1610, ptr noundef %1604) #23
  %1611 = getelementptr inbounds i8, ptr %1604, i64 3
  %1612 = icmp eq ptr %1602, null
  %1613 = ptrtoint ptr %1611 to i64
  br i1 %1612, label %1619, label %1614

1614:                                             ; preds = %1601
  %1615 = ptrtoint ptr %1602 to i64
  %1616 = sub i64 %1613, %1615
  %1617 = trunc i64 %1616 to i32
  %1618 = add i32 %1617, -3
  tail call fastcc void @byte_store_op1(i32 noundef 14, ptr noundef nonnull %1602, i32 noundef %1618) #23
  br label %1619

1619:                                             ; preds = %1601, %1614
  %1620 = load ptr, ptr %3, align 8, !tbaa !46
  %1621 = ptrtoint ptr %1620 to i64
  %1622 = add i64 %1613, 3
  %1623 = sub i64 %1622, %1621
  %1624 = load i64, ptr %21, align 8, !tbaa !113
  %1625 = icmp ugt i64 %1623, %1624
  br i1 %1625, label %1626, label %1657

1626:                                             ; preds = %1619, %1649
  %1627 = phi i64 [ %1655, %1649 ], [ %1624, %1619 ]
  %1628 = phi i64 [ %1640, %1649 ], [ %1621, %1619 ]
  %1629 = phi ptr [ %1636, %1649 ], [ %1620, %1619 ]
  %1630 = phi ptr [ %1651, %1649 ], [ %1611, %1619 ]
  %1631 = phi ptr [ %1650, %1649 ], [ %1611, %1619 ]
  %1632 = icmp eq i64 %1627, 65536
  br i1 %1632, label %2725, label %1633

1633:                                             ; preds = %1626
  %1634 = shl i64 %1627, 1
  %1635 = tail call i64 @llvm.umin.i64(i64 %1634, i64 65536)
  store i64 %1635, ptr %21, align 8, !tbaa !113
  %1636 = tail call ptr @realloc(ptr noundef %1629, i64 noundef %1635) #27
  store ptr %1636, ptr %3, align 8, !tbaa !46
  %1637 = icmp eq ptr %1636, null
  br i1 %1637, label %2725, label %1638

1638:                                             ; preds = %1633
  %1639 = icmp eq ptr %1629, %1636
  %1640 = ptrtoint ptr %1636 to i64
  br i1 %1639, label %1649, label %1641

1641:                                             ; preds = %1638
  %1642 = sub i64 %1640, %1628
  %1643 = shl i64 %1642, 32
  %1644 = ashr exact i64 %1643, 32
  %1645 = getelementptr inbounds i8, ptr %1630, i64 %1644
  %1646 = icmp eq ptr %1631, null
  %1647 = getelementptr inbounds i8, ptr %1631, i64 %1644
  %1648 = select i1 %1646, ptr null, ptr %1647
  br label %1649

1649:                                             ; preds = %1638, %1641
  %1650 = phi ptr [ %1648, %1641 ], [ %1631, %1638 ]
  %1651 = phi ptr [ %1645, %1641 ], [ %1630, %1638 ]
  %1652 = ptrtoint ptr %1651 to i64
  %1653 = add i64 %1652, 3
  %1654 = sub i64 %1653, %1640
  %1655 = load i64, ptr %21, align 8, !tbaa !113
  %1656 = icmp ugt i64 %1654, %1655
  br i1 %1656, label %1626, label %1657, !llvm.loop !138

1657:                                             ; preds = %1649, %1619
  %1658 = phi ptr [ %1611, %1619 ], [ %1650, %1649 ]
  %1659 = phi ptr [ %1611, %1619 ], [ %1651, %1649 ]
  %1660 = getelementptr inbounds i8, ptr %1659, i64 3
  br label %2648

1661:                                             ; preds = %1302
  %1662 = and i64 %2, 4608
  %1663 = icmp eq i64 %1662, 512
  br i1 %1663, label %1664, label %2480

1664:                                             ; preds = %1661, %1296
  %1665 = phi ptr [ %1303, %1661 ], [ %55, %1296 ]
  %1666 = and i64 %2, 4096
  %1667 = icmp eq i64 %1666, 0
  %1668 = icmp eq ptr %1665, %9
  br i1 %1668, label %1902, label %1669

1669:                                             ; preds = %1664, %1690
  %1670 = phi i32 [ %1691, %1690 ], [ -1, %1664 ]
  %1671 = phi ptr [ %1672, %1690 ], [ %1665, %1664 ]
  %1672 = getelementptr inbounds i8, ptr %1671, i64 1
  %1673 = load i8, ptr %1671, align 1, !tbaa !48
  br i1 %40, label %1674, label %1678

1674:                                             ; preds = %1669
  %1675 = zext i8 %1673 to i64
  %1676 = getelementptr inbounds i8, ptr %11, i64 %1675
  %1677 = load i8, ptr %1676, align 1, !tbaa !48
  br label %1678

1678:                                             ; preds = %1674, %1669
  %1679 = phi i8 [ %1677, %1674 ], [ %1673, %1669 ]
  %1680 = zext i8 %1679 to i32
  %1681 = add i8 %1679, -58
  %1682 = icmp ult i8 %1681, -10
  br i1 %1682, label %1693, label %1683

1683:                                             ; preds = %1678
  %1684 = icmp slt i32 %1670, 32768
  br i1 %1684, label %1685, label %1690

1685:                                             ; preds = %1683
  %1686 = tail call i32 @llvm.smax.i32(i32 %1670, i32 0)
  %1687 = mul nuw nsw i32 %1686, 10
  %1688 = add nsw i32 %1687, -48
  %1689 = add nsw i32 %1688, %1680
  br label %1690

1690:                                             ; preds = %1685, %1683
  %1691 = phi i32 [ %1689, %1685 ], [ %1670, %1683 ]
  %1692 = icmp eq ptr %1672, %9
  br i1 %1692, label %1728, label %1669, !llvm.loop !139

1693:                                             ; preds = %1678
  store ptr %1672, ptr %5, align 8, !tbaa !64
  %1694 = icmp eq i8 %1679, 44
  br i1 %1694, label %1695, label %1729

1695:                                             ; preds = %1693
  %1696 = icmp eq ptr %1672, %9
  br i1 %1696, label %1697, label %1698

1697:                                             ; preds = %1695
  store ptr %9, ptr %5, align 8, !tbaa !64
  br label %1729

1698:                                             ; preds = %1695, %1719
  %1699 = phi i32 [ %1720, %1719 ], [ -1, %1695 ]
  %1700 = phi ptr [ %1701, %1719 ], [ %1672, %1695 ]
  %1701 = getelementptr inbounds i8, ptr %1700, i64 1
  %1702 = load i8, ptr %1700, align 1, !tbaa !48
  br i1 %40, label %1703, label %1707

1703:                                             ; preds = %1698
  %1704 = zext i8 %1702 to i64
  %1705 = getelementptr inbounds i8, ptr %11, i64 %1704
  %1706 = load i8, ptr %1705, align 1, !tbaa !48
  br label %1707

1707:                                             ; preds = %1703, %1698
  %1708 = phi i8 [ %1706, %1703 ], [ %1702, %1698 ]
  %1709 = zext i8 %1708 to i32
  %1710 = add i8 %1708, -58
  %1711 = icmp ult i8 %1710, -10
  br i1 %1711, label %1722, label %1712

1712:                                             ; preds = %1707
  %1713 = icmp slt i32 %1699, 32768
  br i1 %1713, label %1714, label %1719

1714:                                             ; preds = %1712
  %1715 = tail call i32 @llvm.smax.i32(i32 %1699, i32 0)
  %1716 = mul nuw nsw i32 %1715, 10
  %1717 = add nsw i32 %1716, -48
  %1718 = add nsw i32 %1717, %1709
  br label %1719

1719:                                             ; preds = %1714, %1712
  %1720 = phi i32 [ %1718, %1714 ], [ %1699, %1712 ]
  %1721 = icmp eq ptr %1701, %9
  br i1 %1721, label %1722, label %1698, !llvm.loop !140

1722:                                             ; preds = %1719, %1707
  %1723 = phi ptr [ %1701, %1707 ], [ %9, %1719 ]
  %1724 = phi i32 [ %1699, %1707 ], [ %1720, %1719 ]
  %1725 = freeze i32 %1724
  store ptr %1723, ptr %5, align 8, !tbaa !64
  %1726 = icmp slt i32 %1725, 0
  %1727 = select i1 %1726, i32 32767, i32 %1725
  br label %1729

1728:                                             ; preds = %1690
  store ptr %9, ptr %5, align 8, !tbaa !64
  br label %1729

1729:                                             ; preds = %1722, %1697, %1728, %1693
  %1730 = phi ptr [ %1672, %1693 ], [ %9, %1728 ], [ %9, %1697 ], [ %1723, %1722 ]
  %1731 = phi i32 [ %1670, %1693 ], [ %1691, %1728 ], [ %1670, %1697 ], [ %1670, %1722 ]
  %1732 = phi i32 [ %1670, %1693 ], [ %1691, %1728 ], [ 32767, %1697 ], [ %1727, %1722 ]
  %1733 = phi i8 [ %1679, %1693 ], [ %1679, %1728 ], [ 44, %1697 ], [ %1708, %1722 ]
  %1734 = icmp slt i32 %1731, 0
  %1735 = icmp sgt i32 %1731, %1732
  %1736 = select i1 %1734, i1 true, i1 %1735
  br i1 %1736, label %1902, label %1737

1737:                                             ; preds = %1729
  br i1 %1667, label %1738, label %1749

1738:                                             ; preds = %1737
  %1739 = icmp eq i8 %1733, 92
  br i1 %1739, label %1740, label %1902

1740:                                             ; preds = %1738
  %1741 = icmp eq ptr %1730, %9
  br i1 %1741, label %1902, label %1742

1742:                                             ; preds = %1740
  %1743 = getelementptr inbounds i8, ptr %1730, i64 1
  store ptr %1743, ptr %5, align 8, !tbaa !64
  %1744 = load i8, ptr %1730, align 1, !tbaa !48
  br i1 %40, label %1745, label %1749

1745:                                             ; preds = %1742
  %1746 = zext i8 %1744 to i64
  %1747 = getelementptr inbounds i8, ptr %11, i64 %1746
  %1748 = load i8, ptr %1747, align 1, !tbaa !48
  br label %1749

1749:                                             ; preds = %1742, %1745, %1737
  %1750 = phi ptr [ %1730, %1737 ], [ %1743, %1745 ], [ %1743, %1742 ]
  %1751 = phi i8 [ %1733, %1737 ], [ %1748, %1745 ], [ %1744, %1742 ]
  %1752 = icmp eq i8 %1751, 125
  br i1 %1752, label %1753, label %1902

1753:                                             ; preds = %1749
  %1754 = icmp eq ptr %52, null
  br i1 %1754, label %1755, label %1762

1755:                                             ; preds = %1753
  %1756 = and i64 %2, 2097184
  %1757 = icmp eq i64 %1756, 32
  br i1 %1757, label %1758, label %1759

1758:                                             ; preds = %1755
  tail call void @free(ptr noundef %45) #23
  br label %2725

1759:                                             ; preds = %1755
  %1760 = and i64 %2, 16
  %1761 = icmp eq i64 %1760, 0
  br i1 %1761, label %1909, label %1762

1762:                                             ; preds = %1759, %1753
  %1763 = phi ptr [ %52, %1753 ], [ %49, %1759 ]
  %1764 = icmp sgt i32 %1732, 32767
  br i1 %1764, label %1765, label %1766

1765:                                             ; preds = %1762
  tail call void @free(ptr noundef %45) #23
  br label %2725

1766:                                             ; preds = %1762
  %1767 = icmp eq i32 %1732, 0
  br i1 %1767, label %1768, label %1826

1768:                                             ; preds = %1766
  %1769 = load ptr, ptr %3, align 8, !tbaa !46
  %1770 = ptrtoint ptr %49 to i64
  %1771 = ptrtoint ptr %1769 to i64
  %1772 = add i64 %1770, 3
  %1773 = sub i64 %1772, %1771
  %1774 = load i64, ptr %21, align 8, !tbaa !113
  %1775 = icmp ugt i64 %1773, %1774
  br i1 %1775, label %1776, label %1815

1776:                                             ; preds = %1768, %1805
  %1777 = phi i64 [ %1813, %1805 ], [ %1774, %1768 ]
  %1778 = phi i64 [ %1792, %1805 ], [ %1771, %1768 ]
  %1779 = phi ptr [ %1788, %1805 ], [ %1769, %1768 ]
  %1780 = phi ptr [ %1809, %1805 ], [ %49, %1768 ]
  %1781 = phi ptr [ %1808, %1805 ], [ %1763, %1768 ]
  %1782 = phi ptr [ %1807, %1805 ], [ %53, %1768 ]
  %1783 = phi ptr [ %1806, %1805 ], [ %54, %1768 ]
  %1784 = icmp eq i64 %1777, 65536
  br i1 %1784, label %2725, label %1785

1785:                                             ; preds = %1776
  %1786 = shl i64 %1777, 1
  %1787 = tail call i64 @llvm.umin.i64(i64 %1786, i64 65536)
  store i64 %1787, ptr %21, align 8, !tbaa !113
  %1788 = tail call ptr @realloc(ptr noundef %1779, i64 noundef %1787) #27
  store ptr %1788, ptr %3, align 8, !tbaa !46
  %1789 = icmp eq ptr %1788, null
  br i1 %1789, label %2725, label %1790

1790:                                             ; preds = %1785
  %1791 = icmp eq ptr %1779, %1788
  %1792 = ptrtoint ptr %1788 to i64
  br i1 %1791, label %1805, label %1793

1793:                                             ; preds = %1790
  %1794 = sub i64 %1792, %1778
  %1795 = shl i64 %1794, 32
  %1796 = ashr exact i64 %1795, 32
  %1797 = getelementptr inbounds i8, ptr %1780, i64 %1796
  %1798 = getelementptr inbounds i8, ptr %1782, i64 %1796
  %1799 = icmp eq ptr %1783, null
  %1800 = getelementptr inbounds i8, ptr %1783, i64 %1796
  %1801 = select i1 %1799, ptr null, ptr %1800
  %1802 = icmp eq ptr %1781, null
  %1803 = getelementptr inbounds i8, ptr %1781, i64 %1796
  %1804 = select i1 %1802, ptr null, ptr %1803
  br label %1805

1805:                                             ; preds = %1790, %1793
  %1806 = phi ptr [ %1801, %1793 ], [ %1783, %1790 ]
  %1807 = phi ptr [ %1798, %1793 ], [ %1782, %1790 ]
  %1808 = phi ptr [ %1804, %1793 ], [ %1781, %1790 ]
  %1809 = phi ptr [ %1797, %1793 ], [ %1780, %1790 ]
  %1810 = ptrtoint ptr %1809 to i64
  %1811 = add i64 %1810, 3
  %1812 = sub i64 %1811, %1792
  %1813 = load i64, ptr %21, align 8, !tbaa !113
  %1814 = icmp ugt i64 %1812, %1813
  br i1 %1814, label %1776, label %1815, !llvm.loop !141

1815:                                             ; preds = %1805, %1768
  %1816 = phi ptr [ %54, %1768 ], [ %1806, %1805 ]
  %1817 = phi ptr [ %53, %1768 ], [ %1807, %1805 ]
  %1818 = phi ptr [ %1763, %1768 ], [ %1808, %1805 ]
  %1819 = phi ptr [ %49, %1768 ], [ %1809, %1805 ]
  %1820 = getelementptr inbounds i8, ptr %1819, i64 3
  %1821 = ptrtoint ptr %1820 to i64
  %1822 = ptrtoint ptr %1818 to i64
  %1823 = sub i64 %1821, %1822
  %1824 = trunc i64 %1823 to i32
  %1825 = add i32 %1824, -3
  tail call fastcc void @byte_insert_op1(i32 noundef 13, ptr noundef %1818, i32 noundef %1825, ptr noundef %1819) #23
  br label %2648

1826:                                             ; preds = %1766
  %1827 = icmp sgt i32 %1732, 1
  %1828 = select i1 %1827, i64 20, i64 10
  %1829 = load ptr, ptr %3, align 8, !tbaa !46
  %1830 = ptrtoint ptr %49 to i64
  %1831 = ptrtoint ptr %1829 to i64
  %1832 = add i64 %1828, %1830
  %1833 = sub i64 %1832, %1831
  %1834 = load i64, ptr %21, align 8, !tbaa !113
  %1835 = icmp ugt i64 %1833, %1834
  br i1 %1835, label %1836, label %1875

1836:                                             ; preds = %1826, %1865
  %1837 = phi i64 [ %1873, %1865 ], [ %1834, %1826 ]
  %1838 = phi i64 [ %1852, %1865 ], [ %1831, %1826 ]
  %1839 = phi ptr [ %1848, %1865 ], [ %1829, %1826 ]
  %1840 = phi ptr [ %1869, %1865 ], [ %49, %1826 ]
  %1841 = phi ptr [ %1868, %1865 ], [ %1763, %1826 ]
  %1842 = phi ptr [ %1867, %1865 ], [ %53, %1826 ]
  %1843 = phi ptr [ %1866, %1865 ], [ %54, %1826 ]
  %1844 = icmp eq i64 %1837, 65536
  br i1 %1844, label %2725, label %1845

1845:                                             ; preds = %1836
  %1846 = shl i64 %1837, 1
  %1847 = tail call i64 @llvm.umin.i64(i64 %1846, i64 65536)
  store i64 %1847, ptr %21, align 8, !tbaa !113
  %1848 = tail call ptr @realloc(ptr noundef %1839, i64 noundef %1847) #27
  store ptr %1848, ptr %3, align 8, !tbaa !46
  %1849 = icmp eq ptr %1848, null
  br i1 %1849, label %2725, label %1850

1850:                                             ; preds = %1845
  %1851 = icmp eq ptr %1839, %1848
  %1852 = ptrtoint ptr %1848 to i64
  br i1 %1851, label %1865, label %1853

1853:                                             ; preds = %1850
  %1854 = sub i64 %1852, %1838
  %1855 = shl i64 %1854, 32
  %1856 = ashr exact i64 %1855, 32
  %1857 = getelementptr inbounds i8, ptr %1840, i64 %1856
  %1858 = getelementptr inbounds i8, ptr %1842, i64 %1856
  %1859 = icmp eq ptr %1843, null
  %1860 = getelementptr inbounds i8, ptr %1843, i64 %1856
  %1861 = select i1 %1859, ptr null, ptr %1860
  %1862 = icmp eq ptr %1841, null
  %1863 = getelementptr inbounds i8, ptr %1841, i64 %1856
  %1864 = select i1 %1862, ptr null, ptr %1863
  br label %1865

1865:                                             ; preds = %1850, %1853
  %1866 = phi ptr [ %1861, %1853 ], [ %1843, %1850 ]
  %1867 = phi ptr [ %1858, %1853 ], [ %1842, %1850 ]
  %1868 = phi ptr [ %1864, %1853 ], [ %1841, %1850 ]
  %1869 = phi ptr [ %1857, %1853 ], [ %1840, %1850 ]
  %1870 = ptrtoint ptr %1869 to i64
  %1871 = add i64 %1828, %1870
  %1872 = sub i64 %1871, %1852
  %1873 = load i64, ptr %21, align 8, !tbaa !113
  %1874 = icmp ugt i64 %1872, %1873
  br i1 %1874, label %1836, label %1875, !llvm.loop !142

1875:                                             ; preds = %1865, %1826
  %1876 = phi ptr [ %54, %1826 ], [ %1866, %1865 ]
  %1877 = phi ptr [ %53, %1826 ], [ %1867, %1865 ]
  %1878 = phi ptr [ %1763, %1826 ], [ %1868, %1865 ]
  %1879 = phi ptr [ %49, %1826 ], [ %1869, %1865 ]
  %1880 = getelementptr inbounds i8, ptr %1879, i64 5
  %1881 = select i1 %1827, i64 5, i64 0
  %1882 = getelementptr inbounds i8, ptr %1880, i64 %1881
  %1883 = ptrtoint ptr %1882 to i64
  %1884 = ptrtoint ptr %1878 to i64
  %1885 = sub i64 %1883, %1884
  %1886 = trunc i64 %1885 to i32
  %1887 = add i32 %1886, -3
  tail call fastcc void @byte_insert_op2(i32 noundef 21, ptr noundef %1878, i32 noundef %1887, i32 noundef %1731, ptr noundef %1879) #23
  tail call fastcc void @byte_insert_op2(i32 noundef 23, ptr noundef %1878, i32 noundef 5, i32 noundef %1731, ptr noundef nonnull %1880) #23
  %1888 = getelementptr inbounds i8, ptr %1879, i64 10
  br i1 %1827, label %1889, label %2648

1889:                                             ; preds = %1875
  %1890 = getelementptr inbounds i8, ptr %1878, i64 5
  %1891 = ptrtoint ptr %1890 to i64
  %1892 = ptrtoint ptr %1888 to i64
  %1893 = sub i64 %1891, %1892
  %1894 = trunc i64 %1893 to i32
  %1895 = add i32 %1894, -3
  %1896 = add nsw i32 %1732, -1
  tail call fastcc void @byte_store_op2(i32 noundef 22, ptr noundef nonnull %1888, i32 noundef %1895, i32 noundef %1896) #23
  %1897 = getelementptr inbounds i8, ptr %1879, i64 15
  %1898 = ptrtoint ptr %1897 to i64
  %1899 = sub i64 %1898, %1884
  %1900 = trunc i64 %1899 to i32
  tail call fastcc void @byte_insert_op2(i32 noundef 23, ptr noundef %1878, i32 noundef %1900, i32 noundef %1896, ptr noundef nonnull %1897) #23
  %1901 = getelementptr inbounds i8, ptr %1879, i64 20
  br label %2648

1902:                                             ; preds = %1749, %1738, %1740, %1729, %1664
  %1903 = phi ptr [ %1750, %1749 ], [ %1730, %1738 ], [ %9, %1740 ], [ %1730, %1729 ], [ %9, %1664 ]
  %1904 = and i64 %2, 2097152
  %1905 = icmp eq i64 %1904, 0
  br i1 %1905, label %1906, label %1909

1906:                                             ; preds = %1902
  tail call void @free(ptr noundef %45) #23
  %1907 = icmp eq ptr %1903, %9
  %1908 = select i1 %1907, i32 9, i32 10
  br label %2725

1909:                                             ; preds = %1902, %1759
  store ptr %1665, ptr %5, align 8, !tbaa !64
  br i1 %1667, label %2480, label %2486

1910:                                             ; preds = %1302
  %1911 = and i64 %2, 524288
  %1912 = icmp eq i64 %1911, 0
  br i1 %1912, label %1913, label %2486

1913:                                             ; preds = %1910
  %1914 = load ptr, ptr %3, align 8, !tbaa !46
  %1915 = ptrtoint ptr %49 to i64
  %1916 = ptrtoint ptr %1914 to i64
  %1917 = add i64 %1915, 1
  %1918 = sub i64 %1917, %1916
  %1919 = load i64, ptr %21, align 8, !tbaa !113
  %1920 = icmp ugt i64 %1918, %1919
  br i1 %1920, label %1921, label %1965

1921:                                             ; preds = %1913, %1954
  %1922 = phi i64 [ %1963, %1954 ], [ %1919, %1913 ]
  %1923 = phi i64 [ %1938, %1954 ], [ %1916, %1913 ]
  %1924 = phi ptr [ %1934, %1954 ], [ %1914, %1913 ]
  %1925 = phi ptr [ %1959, %1954 ], [ %49, %1913 ]
  %1926 = phi ptr [ %1958, %1954 ], [ %51, %1913 ]
  %1927 = phi ptr [ %1957, %1954 ], [ %49, %1913 ]
  %1928 = phi ptr [ %1956, %1954 ], [ %53, %1913 ]
  %1929 = phi ptr [ %1955, %1954 ], [ %54, %1913 ]
  %1930 = icmp eq i64 %1922, 65536
  br i1 %1930, label %2725, label %1931

1931:                                             ; preds = %1921
  %1932 = shl i64 %1922, 1
  %1933 = tail call i64 @llvm.umin.i64(i64 %1932, i64 65536)
  store i64 %1933, ptr %21, align 8, !tbaa !113
  %1934 = tail call ptr @realloc(ptr noundef %1924, i64 noundef %1933) #27
  store ptr %1934, ptr %3, align 8, !tbaa !46
  %1935 = icmp eq ptr %1934, null
  br i1 %1935, label %2725, label %1936

1936:                                             ; preds = %1931
  %1937 = icmp eq ptr %1924, %1934
  %1938 = ptrtoint ptr %1934 to i64
  br i1 %1937, label %1954, label %1939

1939:                                             ; preds = %1936
  %1940 = sub i64 %1938, %1923
  %1941 = shl i64 %1940, 32
  %1942 = ashr exact i64 %1941, 32
  %1943 = getelementptr inbounds i8, ptr %1925, i64 %1942
  %1944 = getelementptr inbounds i8, ptr %1928, i64 %1942
  %1945 = icmp eq ptr %1929, null
  %1946 = getelementptr inbounds i8, ptr %1929, i64 %1942
  %1947 = select i1 %1945, ptr null, ptr %1946
  %1948 = icmp eq ptr %1927, null
  %1949 = getelementptr inbounds i8, ptr %1927, i64 %1942
  %1950 = select i1 %1948, ptr null, ptr %1949
  %1951 = icmp eq ptr %1926, null
  %1952 = getelementptr inbounds i8, ptr %1926, i64 %1942
  %1953 = select i1 %1951, ptr null, ptr %1952
  br label %1954

1954:                                             ; preds = %1936, %1939
  %1955 = phi ptr [ %1947, %1939 ], [ %1929, %1936 ]
  %1956 = phi ptr [ %1944, %1939 ], [ %1928, %1936 ]
  %1957 = phi ptr [ %1950, %1939 ], [ %1927, %1936 ]
  %1958 = phi ptr [ %1953, %1939 ], [ %1926, %1936 ]
  %1959 = phi ptr [ %1943, %1939 ], [ %1925, %1936 ]
  %1960 = ptrtoint ptr %1959 to i64
  %1961 = add i64 %1960, 1
  %1962 = sub i64 %1961, %1938
  %1963 = load i64, ptr %21, align 8, !tbaa !113
  %1964 = icmp ugt i64 %1962, %1963
  br i1 %1964, label %1921, label %1965, !llvm.loop !143

1965:                                             ; preds = %1954, %1913
  %1966 = phi ptr [ %54, %1913 ], [ %1955, %1954 ]
  %1967 = phi ptr [ %53, %1913 ], [ %1956, %1954 ]
  %1968 = phi ptr [ %49, %1913 ], [ %1957, %1954 ]
  %1969 = phi ptr [ %51, %1913 ], [ %1958, %1954 ]
  %1970 = phi ptr [ %49, %1913 ], [ %1959, %1954 ]
  %1971 = getelementptr inbounds i8, ptr %1970, i64 1
  store i8 24, ptr %1970, align 1, !tbaa !48
  br label %2648

1972:                                             ; preds = %1302
  %1973 = and i64 %2, 524288
  %1974 = icmp eq i64 %1973, 0
  br i1 %1974, label %1975, label %2486

1975:                                             ; preds = %1972
  %1976 = load ptr, ptr %3, align 8, !tbaa !46
  %1977 = ptrtoint ptr %49 to i64
  %1978 = ptrtoint ptr %1976 to i64
  %1979 = add i64 %1977, 1
  %1980 = sub i64 %1979, %1978
  %1981 = load i64, ptr %21, align 8, !tbaa !113
  %1982 = icmp ugt i64 %1980, %1981
  br i1 %1982, label %1983, label %2027

1983:                                             ; preds = %1975, %2016
  %1984 = phi i64 [ %2025, %2016 ], [ %1981, %1975 ]
  %1985 = phi i64 [ %2000, %2016 ], [ %1978, %1975 ]
  %1986 = phi ptr [ %1996, %2016 ], [ %1976, %1975 ]
  %1987 = phi ptr [ %2021, %2016 ], [ %49, %1975 ]
  %1988 = phi ptr [ %2020, %2016 ], [ %51, %1975 ]
  %1989 = phi ptr [ %2019, %2016 ], [ %49, %1975 ]
  %1990 = phi ptr [ %2018, %2016 ], [ %53, %1975 ]
  %1991 = phi ptr [ %2017, %2016 ], [ %54, %1975 ]
  %1992 = icmp eq i64 %1984, 65536
  br i1 %1992, label %2725, label %1993

1993:                                             ; preds = %1983
  %1994 = shl i64 %1984, 1
  %1995 = tail call i64 @llvm.umin.i64(i64 %1994, i64 65536)
  store i64 %1995, ptr %21, align 8, !tbaa !113
  %1996 = tail call ptr @realloc(ptr noundef %1986, i64 noundef %1995) #27
  store ptr %1996, ptr %3, align 8, !tbaa !46
  %1997 = icmp eq ptr %1996, null
  br i1 %1997, label %2725, label %1998

1998:                                             ; preds = %1993
  %1999 = icmp eq ptr %1986, %1996
  %2000 = ptrtoint ptr %1996 to i64
  br i1 %1999, label %2016, label %2001

2001:                                             ; preds = %1998
  %2002 = sub i64 %2000, %1985
  %2003 = shl i64 %2002, 32
  %2004 = ashr exact i64 %2003, 32
  %2005 = getelementptr inbounds i8, ptr %1987, i64 %2004
  %2006 = getelementptr inbounds i8, ptr %1990, i64 %2004
  %2007 = icmp eq ptr %1991, null
  %2008 = getelementptr inbounds i8, ptr %1991, i64 %2004
  %2009 = select i1 %2007, ptr null, ptr %2008
  %2010 = icmp eq ptr %1989, null
  %2011 = getelementptr inbounds i8, ptr %1989, i64 %2004
  %2012 = select i1 %2010, ptr null, ptr %2011
  %2013 = icmp eq ptr %1988, null
  %2014 = getelementptr inbounds i8, ptr %1988, i64 %2004
  %2015 = select i1 %2013, ptr null, ptr %2014
  br label %2016

2016:                                             ; preds = %1998, %2001
  %2017 = phi ptr [ %2009, %2001 ], [ %1991, %1998 ]
  %2018 = phi ptr [ %2006, %2001 ], [ %1990, %1998 ]
  %2019 = phi ptr [ %2012, %2001 ], [ %1989, %1998 ]
  %2020 = phi ptr [ %2015, %2001 ], [ %1988, %1998 ]
  %2021 = phi ptr [ %2005, %2001 ], [ %1987, %1998 ]
  %2022 = ptrtoint ptr %2021 to i64
  %2023 = add i64 %2022, 1
  %2024 = sub i64 %2023, %2000
  %2025 = load i64, ptr %21, align 8, !tbaa !113
  %2026 = icmp ugt i64 %2024, %2025
  br i1 %2026, label %1983, label %2027, !llvm.loop !144

2027:                                             ; preds = %2016, %1975
  %2028 = phi ptr [ %54, %1975 ], [ %2017, %2016 ]
  %2029 = phi ptr [ %53, %1975 ], [ %2018, %2016 ]
  %2030 = phi ptr [ %49, %1975 ], [ %2019, %2016 ]
  %2031 = phi ptr [ %51, %1975 ], [ %2020, %2016 ]
  %2032 = phi ptr [ %49, %1975 ], [ %2021, %2016 ]
  %2033 = getelementptr inbounds i8, ptr %2032, i64 1
  store i8 25, ptr %2032, align 1, !tbaa !48
  br label %2648

2034:                                             ; preds = %1302
  %2035 = and i64 %2, 524288
  %2036 = icmp eq i64 %2035, 0
  br i1 %2036, label %2037, label %2486

2037:                                             ; preds = %2034
  %2038 = load ptr, ptr %3, align 8, !tbaa !46
  %2039 = ptrtoint ptr %49 to i64
  %2040 = ptrtoint ptr %2038 to i64
  %2041 = add i64 %2039, 1
  %2042 = sub i64 %2041, %2040
  %2043 = load i64, ptr %21, align 8, !tbaa !113
  %2044 = icmp ugt i64 %2042, %2043
  br i1 %2044, label %2045, label %2089

2045:                                             ; preds = %2037, %2078
  %2046 = phi i64 [ %2087, %2078 ], [ %2043, %2037 ]
  %2047 = phi i64 [ %2062, %2078 ], [ %2040, %2037 ]
  %2048 = phi ptr [ %2058, %2078 ], [ %2038, %2037 ]
  %2049 = phi ptr [ %2083, %2078 ], [ %49, %2037 ]
  %2050 = phi ptr [ %2082, %2078 ], [ %51, %2037 ]
  %2051 = phi ptr [ %2081, %2078 ], [ %52, %2037 ]
  %2052 = phi ptr [ %2080, %2078 ], [ %53, %2037 ]
  %2053 = phi ptr [ %2079, %2078 ], [ %54, %2037 ]
  %2054 = icmp eq i64 %2046, 65536
  br i1 %2054, label %2725, label %2055

2055:                                             ; preds = %2045
  %2056 = shl i64 %2046, 1
  %2057 = tail call i64 @llvm.umin.i64(i64 %2056, i64 65536)
  store i64 %2057, ptr %21, align 8, !tbaa !113
  %2058 = tail call ptr @realloc(ptr noundef %2048, i64 noundef %2057) #27
  store ptr %2058, ptr %3, align 8, !tbaa !46
  %2059 = icmp eq ptr %2058, null
  br i1 %2059, label %2725, label %2060

2060:                                             ; preds = %2055
  %2061 = icmp eq ptr %2048, %2058
  %2062 = ptrtoint ptr %2058 to i64
  br i1 %2061, label %2078, label %2063

2063:                                             ; preds = %2060
  %2064 = sub i64 %2062, %2047
  %2065 = shl i64 %2064, 32
  %2066 = ashr exact i64 %2065, 32
  %2067 = getelementptr inbounds i8, ptr %2049, i64 %2066
  %2068 = getelementptr inbounds i8, ptr %2052, i64 %2066
  %2069 = icmp eq ptr %2053, null
  %2070 = getelementptr inbounds i8, ptr %2053, i64 %2066
  %2071 = select i1 %2069, ptr null, ptr %2070
  %2072 = icmp eq ptr %2051, null
  %2073 = getelementptr inbounds i8, ptr %2051, i64 %2066
  %2074 = select i1 %2072, ptr null, ptr %2073
  %2075 = icmp eq ptr %2050, null
  %2076 = getelementptr inbounds i8, ptr %2050, i64 %2066
  %2077 = select i1 %2075, ptr null, ptr %2076
  br label %2078

2078:                                             ; preds = %2060, %2063
  %2079 = phi ptr [ %2071, %2063 ], [ %2053, %2060 ]
  %2080 = phi ptr [ %2068, %2063 ], [ %2052, %2060 ]
  %2081 = phi ptr [ %2074, %2063 ], [ %2051, %2060 ]
  %2082 = phi ptr [ %2077, %2063 ], [ %2050, %2060 ]
  %2083 = phi ptr [ %2067, %2063 ], [ %2049, %2060 ]
  %2084 = ptrtoint ptr %2083 to i64
  %2085 = add i64 %2084, 1
  %2086 = sub i64 %2085, %2062
  %2087 = load i64, ptr %21, align 8, !tbaa !113
  %2088 = icmp ugt i64 %2086, %2087
  br i1 %2088, label %2045, label %2089, !llvm.loop !145

2089:                                             ; preds = %2078, %2037
  %2090 = phi ptr [ %54, %2037 ], [ %2079, %2078 ]
  %2091 = phi ptr [ %53, %2037 ], [ %2080, %2078 ]
  %2092 = phi ptr [ %52, %2037 ], [ %2081, %2078 ]
  %2093 = phi ptr [ %51, %2037 ], [ %2082, %2078 ]
  %2094 = phi ptr [ %49, %2037 ], [ %2083, %2078 ]
  %2095 = getelementptr inbounds i8, ptr %2094, i64 1
  store i8 26, ptr %2094, align 1, !tbaa !48
  br label %2648

2096:                                             ; preds = %1302
  %2097 = and i64 %2, 524288
  %2098 = icmp eq i64 %2097, 0
  br i1 %2098, label %2099, label %2486

2099:                                             ; preds = %2096
  %2100 = load ptr, ptr %3, align 8, !tbaa !46
  %2101 = ptrtoint ptr %49 to i64
  %2102 = ptrtoint ptr %2100 to i64
  %2103 = add i64 %2101, 1
  %2104 = sub i64 %2103, %2102
  %2105 = load i64, ptr %21, align 8, !tbaa !113
  %2106 = icmp ugt i64 %2104, %2105
  br i1 %2106, label %2107, label %2151

2107:                                             ; preds = %2099, %2140
  %2108 = phi i64 [ %2149, %2140 ], [ %2105, %2099 ]
  %2109 = phi i64 [ %2124, %2140 ], [ %2102, %2099 ]
  %2110 = phi ptr [ %2120, %2140 ], [ %2100, %2099 ]
  %2111 = phi ptr [ %2145, %2140 ], [ %49, %2099 ]
  %2112 = phi ptr [ %2144, %2140 ], [ %51, %2099 ]
  %2113 = phi ptr [ %2143, %2140 ], [ %52, %2099 ]
  %2114 = phi ptr [ %2142, %2140 ], [ %53, %2099 ]
  %2115 = phi ptr [ %2141, %2140 ], [ %54, %2099 ]
  %2116 = icmp eq i64 %2108, 65536
  br i1 %2116, label %2725, label %2117

2117:                                             ; preds = %2107
  %2118 = shl i64 %2108, 1
  %2119 = tail call i64 @llvm.umin.i64(i64 %2118, i64 65536)
  store i64 %2119, ptr %21, align 8, !tbaa !113
  %2120 = tail call ptr @realloc(ptr noundef %2110, i64 noundef %2119) #27
  store ptr %2120, ptr %3, align 8, !tbaa !46
  %2121 = icmp eq ptr %2120, null
  br i1 %2121, label %2725, label %2122

2122:                                             ; preds = %2117
  %2123 = icmp eq ptr %2110, %2120
  %2124 = ptrtoint ptr %2120 to i64
  br i1 %2123, label %2140, label %2125

2125:                                             ; preds = %2122
  %2126 = sub i64 %2124, %2109
  %2127 = shl i64 %2126, 32
  %2128 = ashr exact i64 %2127, 32
  %2129 = getelementptr inbounds i8, ptr %2111, i64 %2128
  %2130 = getelementptr inbounds i8, ptr %2114, i64 %2128
  %2131 = icmp eq ptr %2115, null
  %2132 = getelementptr inbounds i8, ptr %2115, i64 %2128
  %2133 = select i1 %2131, ptr null, ptr %2132
  %2134 = icmp eq ptr %2113, null
  %2135 = getelementptr inbounds i8, ptr %2113, i64 %2128
  %2136 = select i1 %2134, ptr null, ptr %2135
  %2137 = icmp eq ptr %2112, null
  %2138 = getelementptr inbounds i8, ptr %2112, i64 %2128
  %2139 = select i1 %2137, ptr null, ptr %2138
  br label %2140

2140:                                             ; preds = %2122, %2125
  %2141 = phi ptr [ %2133, %2125 ], [ %2115, %2122 ]
  %2142 = phi ptr [ %2130, %2125 ], [ %2114, %2122 ]
  %2143 = phi ptr [ %2136, %2125 ], [ %2113, %2122 ]
  %2144 = phi ptr [ %2139, %2125 ], [ %2112, %2122 ]
  %2145 = phi ptr [ %2129, %2125 ], [ %2111, %2122 ]
  %2146 = ptrtoint ptr %2145 to i64
  %2147 = add i64 %2146, 1
  %2148 = sub i64 %2147, %2124
  %2149 = load i64, ptr %21, align 8, !tbaa !113
  %2150 = icmp ugt i64 %2148, %2149
  br i1 %2150, label %2107, label %2151, !llvm.loop !146

2151:                                             ; preds = %2140, %2099
  %2152 = phi ptr [ %54, %2099 ], [ %2141, %2140 ]
  %2153 = phi ptr [ %53, %2099 ], [ %2142, %2140 ]
  %2154 = phi ptr [ %52, %2099 ], [ %2143, %2140 ]
  %2155 = phi ptr [ %51, %2099 ], [ %2144, %2140 ]
  %2156 = phi ptr [ %49, %2099 ], [ %2145, %2140 ]
  %2157 = getelementptr inbounds i8, ptr %2156, i64 1
  store i8 27, ptr %2156, align 1, !tbaa !48
  br label %2648

2158:                                             ; preds = %1302
  %2159 = and i64 %2, 524288
  %2160 = icmp eq i64 %2159, 0
  br i1 %2160, label %2161, label %2486

2161:                                             ; preds = %2158
  %2162 = load ptr, ptr %3, align 8, !tbaa !46
  %2163 = ptrtoint ptr %49 to i64
  %2164 = ptrtoint ptr %2162 to i64
  %2165 = add i64 %2163, 1
  %2166 = sub i64 %2165, %2164
  %2167 = load i64, ptr %21, align 8, !tbaa !113
  %2168 = icmp ugt i64 %2166, %2167
  br i1 %2168, label %2169, label %2213

2169:                                             ; preds = %2161, %2202
  %2170 = phi i64 [ %2211, %2202 ], [ %2167, %2161 ]
  %2171 = phi i64 [ %2186, %2202 ], [ %2164, %2161 ]
  %2172 = phi ptr [ %2182, %2202 ], [ %2162, %2161 ]
  %2173 = phi ptr [ %2207, %2202 ], [ %49, %2161 ]
  %2174 = phi ptr [ %2206, %2202 ], [ %51, %2161 ]
  %2175 = phi ptr [ %2205, %2202 ], [ %52, %2161 ]
  %2176 = phi ptr [ %2204, %2202 ], [ %53, %2161 ]
  %2177 = phi ptr [ %2203, %2202 ], [ %54, %2161 ]
  %2178 = icmp eq i64 %2170, 65536
  br i1 %2178, label %2725, label %2179

2179:                                             ; preds = %2169
  %2180 = shl i64 %2170, 1
  %2181 = tail call i64 @llvm.umin.i64(i64 %2180, i64 65536)
  store i64 %2181, ptr %21, align 8, !tbaa !113
  %2182 = tail call ptr @realloc(ptr noundef %2172, i64 noundef %2181) #27
  store ptr %2182, ptr %3, align 8, !tbaa !46
  %2183 = icmp eq ptr %2182, null
  br i1 %2183, label %2725, label %2184

2184:                                             ; preds = %2179
  %2185 = icmp eq ptr %2172, %2182
  %2186 = ptrtoint ptr %2182 to i64
  br i1 %2185, label %2202, label %2187

2187:                                             ; preds = %2184
  %2188 = sub i64 %2186, %2171
  %2189 = shl i64 %2188, 32
  %2190 = ashr exact i64 %2189, 32
  %2191 = getelementptr inbounds i8, ptr %2173, i64 %2190
  %2192 = getelementptr inbounds i8, ptr %2176, i64 %2190
  %2193 = icmp eq ptr %2177, null
  %2194 = getelementptr inbounds i8, ptr %2177, i64 %2190
  %2195 = select i1 %2193, ptr null, ptr %2194
  %2196 = icmp eq ptr %2175, null
  %2197 = getelementptr inbounds i8, ptr %2175, i64 %2190
  %2198 = select i1 %2196, ptr null, ptr %2197
  %2199 = icmp eq ptr %2174, null
  %2200 = getelementptr inbounds i8, ptr %2174, i64 %2190
  %2201 = select i1 %2199, ptr null, ptr %2200
  br label %2202

2202:                                             ; preds = %2184, %2187
  %2203 = phi ptr [ %2195, %2187 ], [ %2177, %2184 ]
  %2204 = phi ptr [ %2192, %2187 ], [ %2176, %2184 ]
  %2205 = phi ptr [ %2198, %2187 ], [ %2175, %2184 ]
  %2206 = phi ptr [ %2201, %2187 ], [ %2174, %2184 ]
  %2207 = phi ptr [ %2191, %2187 ], [ %2173, %2184 ]
  %2208 = ptrtoint ptr %2207 to i64
  %2209 = add i64 %2208, 1
  %2210 = sub i64 %2209, %2186
  %2211 = load i64, ptr %21, align 8, !tbaa !113
  %2212 = icmp ugt i64 %2210, %2211
  br i1 %2212, label %2169, label %2213, !llvm.loop !147

2213:                                             ; preds = %2202, %2161
  %2214 = phi ptr [ %54, %2161 ], [ %2203, %2202 ]
  %2215 = phi ptr [ %53, %2161 ], [ %2204, %2202 ]
  %2216 = phi ptr [ %52, %2161 ], [ %2205, %2202 ]
  %2217 = phi ptr [ %51, %2161 ], [ %2206, %2202 ]
  %2218 = phi ptr [ %49, %2161 ], [ %2207, %2202 ]
  %2219 = getelementptr inbounds i8, ptr %2218, i64 1
  store i8 28, ptr %2218, align 1, !tbaa !48
  br label %2648

2220:                                             ; preds = %1302
  %2221 = and i64 %2, 524288
  %2222 = icmp eq i64 %2221, 0
  br i1 %2222, label %2223, label %2486

2223:                                             ; preds = %2220
  %2224 = load ptr, ptr %3, align 8, !tbaa !46
  %2225 = ptrtoint ptr %49 to i64
  %2226 = ptrtoint ptr %2224 to i64
  %2227 = add i64 %2225, 1
  %2228 = sub i64 %2227, %2226
  %2229 = load i64, ptr %21, align 8, !tbaa !113
  %2230 = icmp ugt i64 %2228, %2229
  br i1 %2230, label %2231, label %2275

2231:                                             ; preds = %2223, %2264
  %2232 = phi i64 [ %2273, %2264 ], [ %2229, %2223 ]
  %2233 = phi i64 [ %2248, %2264 ], [ %2226, %2223 ]
  %2234 = phi ptr [ %2244, %2264 ], [ %2224, %2223 ]
  %2235 = phi ptr [ %2269, %2264 ], [ %49, %2223 ]
  %2236 = phi ptr [ %2268, %2264 ], [ %51, %2223 ]
  %2237 = phi ptr [ %2267, %2264 ], [ %52, %2223 ]
  %2238 = phi ptr [ %2266, %2264 ], [ %53, %2223 ]
  %2239 = phi ptr [ %2265, %2264 ], [ %54, %2223 ]
  %2240 = icmp eq i64 %2232, 65536
  br i1 %2240, label %2725, label %2241

2241:                                             ; preds = %2231
  %2242 = shl i64 %2232, 1
  %2243 = tail call i64 @llvm.umin.i64(i64 %2242, i64 65536)
  store i64 %2243, ptr %21, align 8, !tbaa !113
  %2244 = tail call ptr @realloc(ptr noundef %2234, i64 noundef %2243) #27
  store ptr %2244, ptr %3, align 8, !tbaa !46
  %2245 = icmp eq ptr %2244, null
  br i1 %2245, label %2725, label %2246

2246:                                             ; preds = %2241
  %2247 = icmp eq ptr %2234, %2244
  %2248 = ptrtoint ptr %2244 to i64
  br i1 %2247, label %2264, label %2249

2249:                                             ; preds = %2246
  %2250 = sub i64 %2248, %2233
  %2251 = shl i64 %2250, 32
  %2252 = ashr exact i64 %2251, 32
  %2253 = getelementptr inbounds i8, ptr %2235, i64 %2252
  %2254 = getelementptr inbounds i8, ptr %2238, i64 %2252
  %2255 = icmp eq ptr %2239, null
  %2256 = getelementptr inbounds i8, ptr %2239, i64 %2252
  %2257 = select i1 %2255, ptr null, ptr %2256
  %2258 = icmp eq ptr %2237, null
  %2259 = getelementptr inbounds i8, ptr %2237, i64 %2252
  %2260 = select i1 %2258, ptr null, ptr %2259
  %2261 = icmp eq ptr %2236, null
  %2262 = getelementptr inbounds i8, ptr %2236, i64 %2252
  %2263 = select i1 %2261, ptr null, ptr %2262
  br label %2264

2264:                                             ; preds = %2246, %2249
  %2265 = phi ptr [ %2257, %2249 ], [ %2239, %2246 ]
  %2266 = phi ptr [ %2254, %2249 ], [ %2238, %2246 ]
  %2267 = phi ptr [ %2260, %2249 ], [ %2237, %2246 ]
  %2268 = phi ptr [ %2263, %2249 ], [ %2236, %2246 ]
  %2269 = phi ptr [ %2253, %2249 ], [ %2235, %2246 ]
  %2270 = ptrtoint ptr %2269 to i64
  %2271 = add i64 %2270, 1
  %2272 = sub i64 %2271, %2248
  %2273 = load i64, ptr %21, align 8, !tbaa !113
  %2274 = icmp ugt i64 %2272, %2273
  br i1 %2274, label %2231, label %2275, !llvm.loop !148

2275:                                             ; preds = %2264, %2223
  %2276 = phi ptr [ %54, %2223 ], [ %2265, %2264 ]
  %2277 = phi ptr [ %53, %2223 ], [ %2266, %2264 ]
  %2278 = phi ptr [ %52, %2223 ], [ %2267, %2264 ]
  %2279 = phi ptr [ %51, %2223 ], [ %2268, %2264 ]
  %2280 = phi ptr [ %49, %2223 ], [ %2269, %2264 ]
  %2281 = getelementptr inbounds i8, ptr %2280, i64 1
  store i8 29, ptr %2280, align 1, !tbaa !48
  br label %2648

2282:                                             ; preds = %1302
  %2283 = and i64 %2, 524288
  %2284 = icmp eq i64 %2283, 0
  br i1 %2284, label %2285, label %2486

2285:                                             ; preds = %2282
  %2286 = load ptr, ptr %3, align 8, !tbaa !46
  %2287 = ptrtoint ptr %49 to i64
  %2288 = ptrtoint ptr %2286 to i64
  %2289 = add i64 %2287, 1
  %2290 = sub i64 %2289, %2288
  %2291 = load i64, ptr %21, align 8, !tbaa !113
  %2292 = icmp ugt i64 %2290, %2291
  br i1 %2292, label %2293, label %2337

2293:                                             ; preds = %2285, %2326
  %2294 = phi i64 [ %2335, %2326 ], [ %2291, %2285 ]
  %2295 = phi i64 [ %2310, %2326 ], [ %2288, %2285 ]
  %2296 = phi ptr [ %2306, %2326 ], [ %2286, %2285 ]
  %2297 = phi ptr [ %2331, %2326 ], [ %49, %2285 ]
  %2298 = phi ptr [ %2330, %2326 ], [ %51, %2285 ]
  %2299 = phi ptr [ %2329, %2326 ], [ %52, %2285 ]
  %2300 = phi ptr [ %2328, %2326 ], [ %53, %2285 ]
  %2301 = phi ptr [ %2327, %2326 ], [ %54, %2285 ]
  %2302 = icmp eq i64 %2294, 65536
  br i1 %2302, label %2725, label %2303

2303:                                             ; preds = %2293
  %2304 = shl i64 %2294, 1
  %2305 = tail call i64 @llvm.umin.i64(i64 %2304, i64 65536)
  store i64 %2305, ptr %21, align 8, !tbaa !113
  %2306 = tail call ptr @realloc(ptr noundef %2296, i64 noundef %2305) #27
  store ptr %2306, ptr %3, align 8, !tbaa !46
  %2307 = icmp eq ptr %2306, null
  br i1 %2307, label %2725, label %2308

2308:                                             ; preds = %2303
  %2309 = icmp eq ptr %2296, %2306
  %2310 = ptrtoint ptr %2306 to i64
  br i1 %2309, label %2326, label %2311

2311:                                             ; preds = %2308
  %2312 = sub i64 %2310, %2295
  %2313 = shl i64 %2312, 32
  %2314 = ashr exact i64 %2313, 32
  %2315 = getelementptr inbounds i8, ptr %2297, i64 %2314
  %2316 = getelementptr inbounds i8, ptr %2300, i64 %2314
  %2317 = icmp eq ptr %2301, null
  %2318 = getelementptr inbounds i8, ptr %2301, i64 %2314
  %2319 = select i1 %2317, ptr null, ptr %2318
  %2320 = icmp eq ptr %2299, null
  %2321 = getelementptr inbounds i8, ptr %2299, i64 %2314
  %2322 = select i1 %2320, ptr null, ptr %2321
  %2323 = icmp eq ptr %2298, null
  %2324 = getelementptr inbounds i8, ptr %2298, i64 %2314
  %2325 = select i1 %2323, ptr null, ptr %2324
  br label %2326

2326:                                             ; preds = %2308, %2311
  %2327 = phi ptr [ %2319, %2311 ], [ %2301, %2308 ]
  %2328 = phi ptr [ %2316, %2311 ], [ %2300, %2308 ]
  %2329 = phi ptr [ %2322, %2311 ], [ %2299, %2308 ]
  %2330 = phi ptr [ %2325, %2311 ], [ %2298, %2308 ]
  %2331 = phi ptr [ %2315, %2311 ], [ %2297, %2308 ]
  %2332 = ptrtoint ptr %2331 to i64
  %2333 = add i64 %2332, 1
  %2334 = sub i64 %2333, %2310
  %2335 = load i64, ptr %21, align 8, !tbaa !113
  %2336 = icmp ugt i64 %2334, %2335
  br i1 %2336, label %2293, label %2337, !llvm.loop !149

2337:                                             ; preds = %2326, %2285
  %2338 = phi ptr [ %54, %2285 ], [ %2327, %2326 ]
  %2339 = phi ptr [ %53, %2285 ], [ %2328, %2326 ]
  %2340 = phi ptr [ %52, %2285 ], [ %2329, %2326 ]
  %2341 = phi ptr [ %51, %2285 ], [ %2330, %2326 ]
  %2342 = phi ptr [ %49, %2285 ], [ %2331, %2326 ]
  %2343 = getelementptr inbounds i8, ptr %2342, i64 1
  store i8 11, ptr %2342, align 1, !tbaa !48
  br label %2648

2344:                                             ; preds = %1302
  %2345 = and i64 %2, 524288
  %2346 = icmp eq i64 %2345, 0
  br i1 %2346, label %2347, label %2486

2347:                                             ; preds = %2344
  %2348 = load ptr, ptr %3, align 8, !tbaa !46
  %2349 = ptrtoint ptr %49 to i64
  %2350 = ptrtoint ptr %2348 to i64
  %2351 = add i64 %2349, 1
  %2352 = sub i64 %2351, %2350
  %2353 = load i64, ptr %21, align 8, !tbaa !113
  %2354 = icmp ugt i64 %2352, %2353
  br i1 %2354, label %2355, label %2399

2355:                                             ; preds = %2347, %2388
  %2356 = phi i64 [ %2397, %2388 ], [ %2353, %2347 ]
  %2357 = phi i64 [ %2372, %2388 ], [ %2350, %2347 ]
  %2358 = phi ptr [ %2368, %2388 ], [ %2348, %2347 ]
  %2359 = phi ptr [ %2393, %2388 ], [ %49, %2347 ]
  %2360 = phi ptr [ %2392, %2388 ], [ %51, %2347 ]
  %2361 = phi ptr [ %2391, %2388 ], [ %52, %2347 ]
  %2362 = phi ptr [ %2390, %2388 ], [ %53, %2347 ]
  %2363 = phi ptr [ %2389, %2388 ], [ %54, %2347 ]
  %2364 = icmp eq i64 %2356, 65536
  br i1 %2364, label %2725, label %2365

2365:                                             ; preds = %2355
  %2366 = shl i64 %2356, 1
  %2367 = tail call i64 @llvm.umin.i64(i64 %2366, i64 65536)
  store i64 %2367, ptr %21, align 8, !tbaa !113
  %2368 = tail call ptr @realloc(ptr noundef %2358, i64 noundef %2367) #27
  store ptr %2368, ptr %3, align 8, !tbaa !46
  %2369 = icmp eq ptr %2368, null
  br i1 %2369, label %2725, label %2370

2370:                                             ; preds = %2365
  %2371 = icmp eq ptr %2358, %2368
  %2372 = ptrtoint ptr %2368 to i64
  br i1 %2371, label %2388, label %2373

2373:                                             ; preds = %2370
  %2374 = sub i64 %2372, %2357
  %2375 = shl i64 %2374, 32
  %2376 = ashr exact i64 %2375, 32
  %2377 = getelementptr inbounds i8, ptr %2359, i64 %2376
  %2378 = getelementptr inbounds i8, ptr %2362, i64 %2376
  %2379 = icmp eq ptr %2363, null
  %2380 = getelementptr inbounds i8, ptr %2363, i64 %2376
  %2381 = select i1 %2379, ptr null, ptr %2380
  %2382 = icmp eq ptr %2361, null
  %2383 = getelementptr inbounds i8, ptr %2361, i64 %2376
  %2384 = select i1 %2382, ptr null, ptr %2383
  %2385 = icmp eq ptr %2360, null
  %2386 = getelementptr inbounds i8, ptr %2360, i64 %2376
  %2387 = select i1 %2385, ptr null, ptr %2386
  br label %2388

2388:                                             ; preds = %2370, %2373
  %2389 = phi ptr [ %2381, %2373 ], [ %2363, %2370 ]
  %2390 = phi ptr [ %2378, %2373 ], [ %2362, %2370 ]
  %2391 = phi ptr [ %2384, %2373 ], [ %2361, %2370 ]
  %2392 = phi ptr [ %2387, %2373 ], [ %2360, %2370 ]
  %2393 = phi ptr [ %2377, %2373 ], [ %2359, %2370 ]
  %2394 = ptrtoint ptr %2393 to i64
  %2395 = add i64 %2394, 1
  %2396 = sub i64 %2395, %2372
  %2397 = load i64, ptr %21, align 8, !tbaa !113
  %2398 = icmp ugt i64 %2396, %2397
  br i1 %2398, label %2355, label %2399, !llvm.loop !150

2399:                                             ; preds = %2388, %2347
  %2400 = phi ptr [ %54, %2347 ], [ %2389, %2388 ]
  %2401 = phi ptr [ %53, %2347 ], [ %2390, %2388 ]
  %2402 = phi ptr [ %52, %2347 ], [ %2391, %2388 ]
  %2403 = phi ptr [ %51, %2347 ], [ %2392, %2388 ]
  %2404 = phi ptr [ %49, %2347 ], [ %2393, %2388 ]
  %2405 = getelementptr inbounds i8, ptr %2404, i64 1
  store i8 12, ptr %2404, align 1, !tbaa !48
  br label %2648

2406:                                             ; preds = %1302, %1302, %1302, %1302, %1302, %1302, %1302, %1302, %1302
  %2407 = and i64 %2, 16384
  %2408 = icmp eq i64 %2407, 0
  br i1 %2408, label %2409, label %2486

2409:                                             ; preds = %2406
  %2410 = add nsw i8 %1304, -48
  %2411 = zext nneg i8 %2410 to i32
  %2412 = icmp ult i32 %46, %2411
  br i1 %2412, label %2413, label %2414

2413:                                             ; preds = %2409
  tail call void @free(ptr noundef %45) #23
  br label %2725

2414:                                             ; preds = %2409
  %2415 = tail call fastcc signext i8 @group_in_compile_stack(ptr %45, i64 %50, i32 noundef %2411) #23, !range !83
  %2416 = icmp eq i8 %2415, 0
  br i1 %2416, label %2417, label %2486

2417:                                             ; preds = %2414
  %2418 = load ptr, ptr %3, align 8, !tbaa !46
  %2419 = ptrtoint ptr %49 to i64
  %2420 = ptrtoint ptr %2418 to i64
  %2421 = add i64 %2419, 2
  %2422 = sub i64 %2421, %2420
  %2423 = load i64, ptr %21, align 8, !tbaa !113
  %2424 = icmp ugt i64 %2422, %2423
  br i1 %2424, label %2425, label %2469

2425:                                             ; preds = %2417, %2458
  %2426 = phi i64 [ %2467, %2458 ], [ %2423, %2417 ]
  %2427 = phi i64 [ %2442, %2458 ], [ %2420, %2417 ]
  %2428 = phi ptr [ %2438, %2458 ], [ %2418, %2417 ]
  %2429 = phi ptr [ %2463, %2458 ], [ %49, %2417 ]
  %2430 = phi ptr [ %2462, %2458 ], [ %51, %2417 ]
  %2431 = phi ptr [ %2461, %2458 ], [ %49, %2417 ]
  %2432 = phi ptr [ %2460, %2458 ], [ %53, %2417 ]
  %2433 = phi ptr [ %2459, %2458 ], [ %54, %2417 ]
  %2434 = icmp eq i64 %2426, 65536
  br i1 %2434, label %2725, label %2435

2435:                                             ; preds = %2425
  %2436 = shl i64 %2426, 1
  %2437 = tail call i64 @llvm.umin.i64(i64 %2436, i64 65536)
  store i64 %2437, ptr %21, align 8, !tbaa !113
  %2438 = tail call ptr @realloc(ptr noundef %2428, i64 noundef %2437) #27
  store ptr %2438, ptr %3, align 8, !tbaa !46
  %2439 = icmp eq ptr %2438, null
  br i1 %2439, label %2725, label %2440

2440:                                             ; preds = %2435
  %2441 = icmp eq ptr %2428, %2438
  %2442 = ptrtoint ptr %2438 to i64
  br i1 %2441, label %2458, label %2443

2443:                                             ; preds = %2440
  %2444 = sub i64 %2442, %2427
  %2445 = shl i64 %2444, 32
  %2446 = ashr exact i64 %2445, 32
  %2447 = getelementptr inbounds i8, ptr %2429, i64 %2446
  %2448 = getelementptr inbounds i8, ptr %2432, i64 %2446
  %2449 = icmp eq ptr %2433, null
  %2450 = getelementptr inbounds i8, ptr %2433, i64 %2446
  %2451 = select i1 %2449, ptr null, ptr %2450
  %2452 = icmp eq ptr %2431, null
  %2453 = getelementptr inbounds i8, ptr %2431, i64 %2446
  %2454 = select i1 %2452, ptr null, ptr %2453
  %2455 = icmp eq ptr %2430, null
  %2456 = getelementptr inbounds i8, ptr %2430, i64 %2446
  %2457 = select i1 %2455, ptr null, ptr %2456
  br label %2458

2458:                                             ; preds = %2440, %2443
  %2459 = phi ptr [ %2451, %2443 ], [ %2433, %2440 ]
  %2460 = phi ptr [ %2448, %2443 ], [ %2432, %2440 ]
  %2461 = phi ptr [ %2454, %2443 ], [ %2431, %2440 ]
  %2462 = phi ptr [ %2457, %2443 ], [ %2430, %2440 ]
  %2463 = phi ptr [ %2447, %2443 ], [ %2429, %2440 ]
  %2464 = ptrtoint ptr %2463 to i64
  %2465 = add i64 %2464, 2
  %2466 = sub i64 %2465, %2442
  %2467 = load i64, ptr %21, align 8, !tbaa !113
  %2468 = icmp ugt i64 %2466, %2467
  br i1 %2468, label %2425, label %2469, !llvm.loop !151

2469:                                             ; preds = %2458, %2417
  %2470 = phi ptr [ %54, %2417 ], [ %2459, %2458 ]
  %2471 = phi ptr [ %53, %2417 ], [ %2460, %2458 ]
  %2472 = phi ptr [ %49, %2417 ], [ %2461, %2458 ]
  %2473 = phi ptr [ %51, %2417 ], [ %2462, %2458 ]
  %2474 = phi ptr [ %49, %2417 ], [ %2463, %2458 ]
  %2475 = getelementptr inbounds i8, ptr %2474, i64 1
  store i8 8, ptr %2474, align 1, !tbaa !48
  %2476 = getelementptr inbounds i8, ptr %2474, i64 2
  store i8 %2410, ptr %2475, align 1, !tbaa !48
  br label %2648

2477:                                             ; preds = %1302, %1302
  %2478 = and i64 %2, 2
  %2479 = icmp eq i64 %2478, 0
  br i1 %2479, label %2480, label %208

2480:                                             ; preds = %1909, %1302, %2477, %1661, %1552, %1388, %1383, %1305
  %2481 = phi i8 [ %1304, %1302 ], [ %1304, %2477 ], [ 123, %1661 ], [ 124, %1552 ], [ 41, %1383 ], [ 41, %1388 ], [ 40, %1305 ], [ 123, %1909 ]
  br i1 %40, label %2482, label %2486

2482:                                             ; preds = %2480
  %2483 = zext i8 %2481 to i64
  %2484 = getelementptr inbounds i8, ptr %11, i64 %2483
  %2485 = load i8, ptr %2484, align 1, !tbaa !48
  br label %2486

2486:                                             ; preds = %1909, %2482, %2480, %61, %2414, %2406, %2344, %2282, %2220, %2158, %2096, %2034, %1972, %1910, %1555, %1465, %1296, %1293, %1290, %1287, %1284, %216, %205, %143, %76
  %2487 = phi ptr [ %54, %61 ], [ %54, %216 ], [ %54, %2406 ], [ %54, %2414 ], [ %54, %2344 ], [ %54, %2282 ], [ %54, %2220 ], [ %54, %2158 ], [ %54, %2096 ], [ %54, %2034 ], [ %54, %1972 ], [ %54, %1910 ], [ %54, %1555 ], [ %1459, %1465 ], [ %54, %1296 ], [ %54, %1293 ], [ %54, %1290 ], [ %54, %1287 ], [ %54, %1284 ], [ %54, %205 ], [ %54, %143 ], [ %54, %76 ], [ %54, %2480 ], [ %54, %2482 ], [ %54, %1909 ]
  %2488 = phi ptr [ %53, %61 ], [ %53, %216 ], [ %53, %2406 ], [ %53, %2414 ], [ %53, %2344 ], [ %53, %2282 ], [ %53, %2220 ], [ %53, %2158 ], [ %53, %2096 ], [ %53, %2034 ], [ %53, %1972 ], [ %53, %1910 ], [ %53, %1555 ], [ %1460, %1465 ], [ %53, %1296 ], [ %53, %1293 ], [ %53, %1290 ], [ %53, %1287 ], [ %53, %1284 ], [ %53, %205 ], [ %53, %143 ], [ %53, %76 ], [ %53, %2480 ], [ %53, %2482 ], [ %53, %1909 ]
  %2489 = phi ptr [ %52, %61 ], [ null, %216 ], [ %52, %2406 ], [ %52, %2414 ], [ %52, %2344 ], [ %52, %2282 ], [ %52, %2220 ], [ %52, %2158 ], [ %52, %2096 ], [ %52, %2034 ], [ %52, %1972 ], [ %52, %1910 ], [ %52, %1555 ], [ %1461, %1465 ], [ %52, %1296 ], [ %52, %1293 ], [ %52, %1290 ], [ %52, %1287 ], [ %52, %1284 ], [ %52, %205 ], [ %52, %143 ], [ %52, %76 ], [ %52, %2480 ], [ %52, %2482 ], [ %52, %1909 ]
  %2490 = phi ptr [ %51, %61 ], [ %51, %216 ], [ %51, %2406 ], [ %51, %2414 ], [ %51, %2344 ], [ %51, %2282 ], [ %51, %2220 ], [ %51, %2158 ], [ %51, %2096 ], [ %51, %2034 ], [ %51, %1972 ], [ %51, %1910 ], [ %51, %1555 ], [ %1462, %1465 ], [ %51, %1296 ], [ %51, %1293 ], [ %51, %1290 ], [ %51, %1287 ], [ %51, %1284 ], [ %51, %205 ], [ %51, %143 ], [ %51, %76 ], [ %51, %2480 ], [ %51, %2482 ], [ %51, %1909 ]
  %2491 = phi ptr [ %49, %61 ], [ %49, %216 ], [ %49, %2406 ], [ %49, %2414 ], [ %49, %2344 ], [ %49, %2282 ], [ %49, %2220 ], [ %49, %2158 ], [ %49, %2096 ], [ %49, %2034 ], [ %49, %1972 ], [ %49, %1910 ], [ %49, %1555 ], [ %1463, %1465 ], [ %49, %1296 ], [ %49, %1293 ], [ %49, %1290 ], [ %49, %1287 ], [ %49, %1284 ], [ %49, %205 ], [ %49, %143 ], [ %49, %76 ], [ %49, %2480 ], [ %49, %2482 ], [ %49, %1909 ]
  %2492 = phi i8 [ %62, %61 ], [ %210, %216 ], [ %1304, %2406 ], [ %1304, %2414 ], [ 39, %2344 ], [ 96, %2282 ], [ 66, %2220 ], [ 98, %2158 ], [ 62, %2096 ], [ 60, %2034 ], [ 87, %1972 ], [ 119, %1910 ], [ %1556, %1555 ], [ 41, %1465 ], [ 123, %1296 ], [ 124, %1293 ], [ 10, %1290 ], [ 41, %1287 ], [ 40, %1284 ], [ %62, %205 ], [ 36, %143 ], [ 94, %76 ], [ %2481, %2480 ], [ %2485, %2482 ], [ 123, %1909 ]
  %2493 = icmp eq ptr %2490, null
  br i1 %2493, label %2528, label %2494

2494:                                             ; preds = %2486
  %2495 = load i8, ptr %2490, align 1, !tbaa !48
  %2496 = zext i8 %2495 to i64
  %2497 = getelementptr inbounds i8, ptr %2490, i64 %2496
  %2498 = getelementptr inbounds i8, ptr %2497, i64 1
  %2499 = icmp ne ptr %2498, %2491
  %2500 = icmp eq i8 %2495, -1
  %2501 = or i1 %2500, %2499
  br i1 %2501, label %2528, label %2502

2502:                                             ; preds = %2494
  %2503 = load ptr, ptr %5, align 8, !tbaa !64
  %2504 = load i8, ptr %2503, align 1, !tbaa !48
  switch i8 %2504, label %2505 [
    i8 42, label %2528
    i8 94, label %2528
  ]

2505:                                             ; preds = %2502
  %2506 = and i64 %2, 2
  %2507 = icmp eq i64 %2506, 0
  br i1 %2507, label %2513, label %2508

2508:                                             ; preds = %2505
  %2509 = icmp eq i8 %2504, 92
  br i1 %2509, label %2510, label %2514

2510:                                             ; preds = %2508
  %2511 = getelementptr inbounds i8, ptr %2503, i64 1
  %2512 = load i8, ptr %2511, align 1, !tbaa !48
  switch i8 %2512, label %2514 [
    i8 43, label %2528
    i8 63, label %2528
  ]

2513:                                             ; preds = %2505
  switch i8 %2504, label %2514 [
    i8 43, label %2528
    i8 63, label %2528
  ]

2514:                                             ; preds = %2513, %2510, %2508
  %2515 = and i64 %2, 512
  %2516 = icmp eq i64 %2515, 0
  br i1 %2516, label %2582, label %2517

2517:                                             ; preds = %2514
  %2518 = and i64 %2, 4096
  %2519 = icmp eq i64 %2518, 0
  br i1 %2519, label %2522, label %2520

2520:                                             ; preds = %2517
  %2521 = icmp eq i8 %2504, 123
  br i1 %2521, label %2528, label %2582

2522:                                             ; preds = %2517
  %2523 = icmp eq i8 %2504, 92
  br i1 %2523, label %2524, label %2582

2524:                                             ; preds = %2522
  %2525 = getelementptr inbounds i8, ptr %2503, i64 1
  %2526 = load i8, ptr %2525, align 1, !tbaa !48
  %2527 = icmp eq i8 %2526, 123
  br i1 %2527, label %2528, label %2582

2528:                                             ; preds = %2513, %2513, %2510, %2510, %2502, %2502, %2524, %2520, %2494, %2486
  %2529 = load ptr, ptr %3, align 8, !tbaa !46
  %2530 = ptrtoint ptr %2491 to i64
  %2531 = ptrtoint ptr %2529 to i64
  %2532 = add i64 %2530, 2
  %2533 = sub i64 %2532, %2531
  %2534 = load i64, ptr %21, align 8, !tbaa !113
  %2535 = icmp ugt i64 %2533, %2534
  br i1 %2535, label %2536, label %2575

2536:                                             ; preds = %2528, %2565
  %2537 = phi i64 [ %2573, %2565 ], [ %2534, %2528 ]
  %2538 = phi i64 [ %2552, %2565 ], [ %2531, %2528 ]
  %2539 = phi ptr [ %2548, %2565 ], [ %2529, %2528 ]
  %2540 = phi ptr [ %2569, %2565 ], [ %2491, %2528 ]
  %2541 = phi ptr [ %2568, %2565 ], [ %2491, %2528 ]
  %2542 = phi ptr [ %2567, %2565 ], [ %2488, %2528 ]
  %2543 = phi ptr [ %2566, %2565 ], [ %2487, %2528 ]
  %2544 = icmp eq i64 %2537, 65536
  br i1 %2544, label %2725, label %2545

2545:                                             ; preds = %2536
  %2546 = shl i64 %2537, 1
  %2547 = tail call i64 @llvm.umin.i64(i64 %2546, i64 65536)
  store i64 %2547, ptr %21, align 8, !tbaa !113
  %2548 = tail call ptr @realloc(ptr noundef %2539, i64 noundef %2547) #27
  store ptr %2548, ptr %3, align 8, !tbaa !46
  %2549 = icmp eq ptr %2548, null
  br i1 %2549, label %2725, label %2550

2550:                                             ; preds = %2545
  %2551 = icmp eq ptr %2539, %2548
  %2552 = ptrtoint ptr %2548 to i64
  br i1 %2551, label %2565, label %2553

2553:                                             ; preds = %2550
  %2554 = sub i64 %2552, %2538
  %2555 = shl i64 %2554, 32
  %2556 = ashr exact i64 %2555, 32
  %2557 = getelementptr inbounds i8, ptr %2540, i64 %2556
  %2558 = getelementptr inbounds i8, ptr %2542, i64 %2556
  %2559 = icmp eq ptr %2543, null
  %2560 = getelementptr inbounds i8, ptr %2543, i64 %2556
  %2561 = select i1 %2559, ptr null, ptr %2560
  %2562 = icmp eq ptr %2541, null
  %2563 = getelementptr inbounds i8, ptr %2541, i64 %2556
  %2564 = select i1 %2562, ptr null, ptr %2563
  br label %2565

2565:                                             ; preds = %2550, %2553
  %2566 = phi ptr [ %2561, %2553 ], [ %2543, %2550 ]
  %2567 = phi ptr [ %2558, %2553 ], [ %2542, %2550 ]
  %2568 = phi ptr [ %2564, %2553 ], [ %2541, %2550 ]
  %2569 = phi ptr [ %2557, %2553 ], [ %2540, %2550 ]
  %2570 = ptrtoint ptr %2569 to i64
  %2571 = add i64 %2570, 2
  %2572 = sub i64 %2571, %2552
  %2573 = load i64, ptr %21, align 8, !tbaa !113
  %2574 = icmp ugt i64 %2572, %2573
  br i1 %2574, label %2536, label %2575, !llvm.loop !152

2575:                                             ; preds = %2565, %2528
  %2576 = phi ptr [ %2487, %2528 ], [ %2566, %2565 ]
  %2577 = phi ptr [ %2488, %2528 ], [ %2567, %2565 ]
  %2578 = phi ptr [ %2491, %2528 ], [ %2568, %2565 ]
  %2579 = phi ptr [ %2491, %2528 ], [ %2569, %2565 ]
  %2580 = getelementptr inbounds i8, ptr %2579, i64 1
  store i8 2, ptr %2579, align 1, !tbaa !48
  %2581 = getelementptr inbounds i8, ptr %2579, i64 2
  store i8 0, ptr %2580, align 1, !tbaa !48
  br label %2582

2582:                                             ; preds = %2514, %2520, %2522, %2524, %2575
  %2583 = phi ptr [ %2576, %2575 ], [ %2487, %2520 ], [ %2487, %2524 ], [ %2487, %2522 ], [ %2487, %2514 ]
  %2584 = phi ptr [ %2577, %2575 ], [ %2488, %2520 ], [ %2488, %2524 ], [ %2488, %2522 ], [ %2488, %2514 ]
  %2585 = phi ptr [ %2578, %2575 ], [ %2489, %2520 ], [ %2489, %2524 ], [ %2489, %2522 ], [ %2489, %2514 ]
  %2586 = phi ptr [ %2580, %2575 ], [ %2490, %2520 ], [ %2490, %2524 ], [ %2490, %2522 ], [ %2490, %2514 ]
  %2587 = phi ptr [ %2581, %2575 ], [ %2491, %2520 ], [ %2491, %2524 ], [ %2491, %2522 ], [ %2491, %2514 ]
  %2588 = load ptr, ptr %3, align 8, !tbaa !46
  %2589 = ptrtoint ptr %2587 to i64
  %2590 = ptrtoint ptr %2588 to i64
  %2591 = add i64 %2589, 1
  %2592 = sub i64 %2591, %2590
  %2593 = load i64, ptr %21, align 8, !tbaa !113
  %2594 = icmp ugt i64 %2592, %2593
  br i1 %2594, label %2595, label %2639

2595:                                             ; preds = %2582, %2628
  %2596 = phi i64 [ %2637, %2628 ], [ %2593, %2582 ]
  %2597 = phi i64 [ %2612, %2628 ], [ %2590, %2582 ]
  %2598 = phi ptr [ %2608, %2628 ], [ %2588, %2582 ]
  %2599 = phi ptr [ %2633, %2628 ], [ %2587, %2582 ]
  %2600 = phi ptr [ %2632, %2628 ], [ %2586, %2582 ]
  %2601 = phi ptr [ %2631, %2628 ], [ %2585, %2582 ]
  %2602 = phi ptr [ %2630, %2628 ], [ %2584, %2582 ]
  %2603 = phi ptr [ %2629, %2628 ], [ %2583, %2582 ]
  %2604 = icmp eq i64 %2596, 65536
  br i1 %2604, label %2725, label %2605

2605:                                             ; preds = %2595
  %2606 = shl i64 %2596, 1
  %2607 = tail call i64 @llvm.umin.i64(i64 %2606, i64 65536)
  store i64 %2607, ptr %21, align 8, !tbaa !113
  %2608 = tail call ptr @realloc(ptr noundef %2598, i64 noundef %2607) #27
  store ptr %2608, ptr %3, align 8, !tbaa !46
  %2609 = icmp eq ptr %2608, null
  br i1 %2609, label %2725, label %2610

2610:                                             ; preds = %2605
  %2611 = icmp eq ptr %2598, %2608
  %2612 = ptrtoint ptr %2608 to i64
  br i1 %2611, label %2628, label %2613

2613:                                             ; preds = %2610
  %2614 = sub i64 %2612, %2597
  %2615 = shl i64 %2614, 32
  %2616 = ashr exact i64 %2615, 32
  %2617 = getelementptr inbounds i8, ptr %2599, i64 %2616
  %2618 = getelementptr inbounds i8, ptr %2602, i64 %2616
  %2619 = icmp eq ptr %2603, null
  %2620 = getelementptr inbounds i8, ptr %2603, i64 %2616
  %2621 = select i1 %2619, ptr null, ptr %2620
  %2622 = icmp eq ptr %2601, null
  %2623 = getelementptr inbounds i8, ptr %2601, i64 %2616
  %2624 = select i1 %2622, ptr null, ptr %2623
  %2625 = icmp eq ptr %2600, null
  %2626 = getelementptr inbounds i8, ptr %2600, i64 %2616
  %2627 = select i1 %2625, ptr null, ptr %2626
  br label %2628

2628:                                             ; preds = %2610, %2613
  %2629 = phi ptr [ %2621, %2613 ], [ %2603, %2610 ]
  %2630 = phi ptr [ %2618, %2613 ], [ %2602, %2610 ]
  %2631 = phi ptr [ %2624, %2613 ], [ %2601, %2610 ]
  %2632 = phi ptr [ %2627, %2613 ], [ %2600, %2610 ]
  %2633 = phi ptr [ %2617, %2613 ], [ %2599, %2610 ]
  %2634 = ptrtoint ptr %2633 to i64
  %2635 = add i64 %2634, 1
  %2636 = sub i64 %2635, %2612
  %2637 = load i64, ptr %21, align 8, !tbaa !113
  %2638 = icmp ugt i64 %2636, %2637
  br i1 %2638, label %2595, label %2639, !llvm.loop !153

2639:                                             ; preds = %2628, %2582
  %2640 = phi ptr [ %2583, %2582 ], [ %2629, %2628 ]
  %2641 = phi ptr [ %2584, %2582 ], [ %2630, %2628 ]
  %2642 = phi ptr [ %2585, %2582 ], [ %2631, %2628 ]
  %2643 = phi ptr [ %2586, %2582 ], [ %2632, %2628 ]
  %2644 = phi ptr [ %2587, %2582 ], [ %2633, %2628 ]
  %2645 = getelementptr inbounds i8, ptr %2644, i64 1
  store i8 %2492, ptr %2644, align 1, !tbaa !48
  %2646 = load i8, ptr %2643, align 1, !tbaa !48
  %2647 = add i8 %2646, 1
  store i8 %2647, ptr %2643, align 1, !tbaa !48
  br label %2648

2648:                                             ; preds = %1889, %1875, %1815, %1469, %1543, %1280, %272, %492, %431, %1657, %1965, %2027, %2089, %2151, %2213, %2275, %2337, %2399, %2469, %2639, %542, %198, %131
  %2649 = phi ptr [ %2640, %2639 ], [ %2470, %2469 ], [ %2400, %2399 ], [ %2338, %2337 ], [ %2276, %2275 ], [ %2214, %2213 ], [ %2152, %2151 ], [ %2090, %2089 ], [ %2028, %2027 ], [ %1966, %1965 ], [ %1658, %1657 ], [ %724, %1280 ], [ %543, %542 ], [ %199, %198 ], [ %132, %131 ], [ %432, %431 ], [ %493, %492 ], [ %54, %272 ], [ %1544, %1543 ], [ %1484, %1469 ], [ %1816, %1815 ], [ %1876, %1875 ], [ %1876, %1889 ]
  %2650 = phi ptr [ %2641, %2639 ], [ %2471, %2469 ], [ %2401, %2399 ], [ %2339, %2337 ], [ %2277, %2275 ], [ %2215, %2213 ], [ %2153, %2151 ], [ %2091, %2089 ], [ %2029, %2027 ], [ %1967, %1965 ], [ %1660, %1657 ], [ %725, %1280 ], [ %544, %542 ], [ %200, %198 ], [ %133, %131 ], [ %433, %431 ], [ %494, %492 ], [ %53, %272 ], [ %1545, %1543 ], [ %1478, %1469 ], [ %1817, %1815 ], [ %1877, %1875 ], [ %1877, %1889 ]
  %2651 = phi ptr [ %2642, %2639 ], [ %2472, %2469 ], [ %2402, %2399 ], [ %2340, %2337 ], [ %2278, %2275 ], [ %2216, %2213 ], [ %2154, %2151 ], [ %2092, %2089 ], [ %2030, %2027 ], [ %1968, %1965 ], [ null, %1657 ], [ %726, %1280 ], [ %545, %542 ], [ %201, %198 ], [ %134, %131 ], [ %434, %431 ], [ %495, %492 ], [ null, %272 ], [ %1546, %1543 ], [ %1487, %1469 ], [ %1818, %1815 ], [ %1878, %1875 ], [ %1878, %1889 ]
  %2652 = phi ptr [ %2643, %2639 ], [ %2473, %2469 ], [ %2403, %2399 ], [ %2341, %2337 ], [ %2279, %2275 ], [ %2217, %2213 ], [ %2155, %2151 ], [ %2093, %2089 ], [ %2031, %2027 ], [ %1969, %1965 ], [ null, %1657 ], [ %727, %1280 ], [ %546, %542 ], [ %202, %198 ], [ %135, %131 ], [ null, %431 ], [ null, %492 ], [ %51, %272 ], [ null, %1543 ], [ null, %1469 ], [ null, %1815 ], [ null, %1875 ], [ null, %1889 ]
  %2653 = phi i64 [ %50, %2639 ], [ %50, %2469 ], [ %50, %2399 ], [ %50, %2337 ], [ %50, %2275 ], [ %50, %2213 ], [ %50, %2151 ], [ %50, %2089 ], [ %50, %2027 ], [ %50, %1965 ], [ %50, %1657 ], [ %50, %1280 ], [ %50, %542 ], [ %50, %198 ], [ %50, %131 ], [ %50, %431 ], [ %50, %492 ], [ %50, %272 ], [ %1473, %1543 ], [ %1473, %1469 ], [ %50, %1815 ], [ %50, %1875 ], [ %50, %1889 ]
  %2654 = phi ptr [ %2645, %2639 ], [ %2476, %2469 ], [ %2405, %2399 ], [ %2343, %2337 ], [ %2281, %2275 ], [ %2219, %2213 ], [ %2157, %2151 ], [ %2095, %2089 ], [ %2033, %2027 ], [ %1971, %1965 ], [ %1660, %1657 ], [ %1283, %1280 ], [ %548, %542 ], [ %204, %198 ], [ %137, %131 ], [ %439, %431 ], [ %497, %492 ], [ %49, %272 ], [ %1551, %1543 ], [ %1463, %1469 ], [ %1820, %1815 ], [ %1888, %1875 ], [ %1901, %1889 ]
  %2655 = load ptr, ptr %5, align 8, !tbaa !64
  %2656 = icmp eq ptr %2655, %9
  br i1 %2656, label %2667, label %47, !llvm.loop !154

2657:                                             ; preds = %1326, %1377
  %2658 = phi ptr [ %1382, %1377 ], [ %49, %1326 ]
  %2659 = and i64 %1329, -4294967296
  %2660 = add i64 %2659, 4294967296
  %2661 = and i64 %1329, 4294967295
  %2662 = or disjoint i64 %2660, %2661
  %2663 = load ptr, ptr %5, align 8, !tbaa !64
  %2664 = icmp eq ptr %2663, %9
  br i1 %2664, label %2665, label %41, !llvm.loop !154

2665:                                             ; preds = %2657
  %2666 = icmp ult i64 %2662, 4294967296
  br i1 %2666, label %2679, label %2677

2667:                                             ; preds = %2648
  %2668 = icmp ult i64 %2653, 4294967296
  %2669 = icmp eq ptr %2649, null
  br i1 %2669, label %2676, label %2670

2670:                                             ; preds = %2667
  %2671 = ptrtoint ptr %2654 to i64
  %2672 = ptrtoint ptr %2649 to i64
  %2673 = sub i64 %2671, %2672
  %2674 = trunc i64 %2673 to i32
  %2675 = add i32 %2674, -3
  tail call fastcc void @byte_store_op1(i32 noundef 14, ptr noundef nonnull %2649, i32 noundef %2675) #23
  br i1 %2668, label %2679, label %2677

2676:                                             ; preds = %2667
  br i1 %2668, label %2679, label %2677

2677:                                             ; preds = %2665, %2670, %2676
  %2678 = phi ptr [ %45, %2670 ], [ %45, %2676 ], [ %1328, %2665 ]
  tail call void @free(ptr noundef %2678) #23
  br label %2725

2679:                                             ; preds = %36, %2665, %2670, %2676
  %2680 = phi ptr [ %45, %2676 ], [ %45, %2670 ], [ %1328, %2665 ], [ %12, %36 ]
  %2681 = phi ptr [ %2654, %2676 ], [ %2654, %2670 ], [ %2658, %2665 ], [ %37, %36 ]
  %2682 = and i64 %2, 262144
  %2683 = icmp eq i64 %2682, 0
  br i1 %2683, label %2719, label %2684

2684:                                             ; preds = %2679
  %2685 = load ptr, ptr %3, align 8, !tbaa !46
  %2686 = ptrtoint ptr %2681 to i64
  %2687 = ptrtoint ptr %2685 to i64
  %2688 = add i64 %2686, 1
  %2689 = sub i64 %2688, %2687
  %2690 = load i64, ptr %21, align 8, !tbaa !113
  %2691 = icmp ugt i64 %2689, %2690
  br i1 %2691, label %2692, label %2716

2692:                                             ; preds = %2684, %2703
  %2693 = phi i64 [ %2714, %2703 ], [ %2690, %2684 ]
  %2694 = phi i64 [ %2705, %2703 ], [ %2687, %2684 ]
  %2695 = phi ptr [ %2701, %2703 ], [ %2685, %2684 ]
  %2696 = phi ptr [ %2710, %2703 ], [ %2681, %2684 ]
  %2697 = icmp eq i64 %2693, 65536
  br i1 %2697, label %2725, label %2698

2698:                                             ; preds = %2692
  %2699 = shl i64 %2693, 1
  %2700 = tail call i64 @llvm.umin.i64(i64 %2699, i64 65536)
  store i64 %2700, ptr %21, align 8, !tbaa !113
  %2701 = tail call ptr @realloc(ptr noundef %2695, i64 noundef %2700) #27
  store ptr %2701, ptr %3, align 8, !tbaa !46
  %2702 = icmp eq ptr %2701, null
  br i1 %2702, label %2725, label %2703

2703:                                             ; preds = %2698
  %2704 = icmp eq ptr %2695, %2701
  %2705 = ptrtoint ptr %2701 to i64
  %2706 = sub i64 %2705, %2694
  %2707 = shl i64 %2706, 32
  %2708 = ashr exact i64 %2707, 32
  %2709 = select i1 %2704, i64 0, i64 %2708
  %2710 = getelementptr inbounds i8, ptr %2696, i64 %2709
  %2711 = ptrtoint ptr %2710 to i64
  %2712 = add i64 %2711, 1
  %2713 = sub i64 %2712, %2705
  %2714 = load i64, ptr %21, align 8, !tbaa !113
  %2715 = icmp ugt i64 %2713, %2714
  br i1 %2715, label %2692, label %2716, !llvm.loop !155

2716:                                             ; preds = %2703, %2684
  %2717 = phi ptr [ %2681, %2684 ], [ %2710, %2703 ]
  %2718 = getelementptr inbounds i8, ptr %2717, i64 1
  store i8 1, ptr %2717, align 1, !tbaa !48
  br label %2719

2719:                                             ; preds = %2716, %2679
  %2720 = phi ptr [ %2718, %2716 ], [ %2681, %2679 ]
  tail call void @free(ptr noundef %2680) #23
  %2721 = load ptr, ptr %3, align 8, !tbaa !46
  %2722 = ptrtoint ptr %2720 to i64
  %2723 = ptrtoint ptr %2721 to i64
  %2724 = sub i64 %2722, %2723
  store i64 %2724, ptr %19, align 8, !tbaa !47
  br label %2725

2725:                                             ; preds = %1316, %1359, %1353, %2435, %2425, %2365, %2355, %2303, %2293, %2241, %2231, %2179, %2169, %2117, %2107, %2055, %2045, %1993, %1983, %1931, %1921, %1836, %1845, %1785, %1776, %1575, %1567, %1633, %1626, %1412, %1402, %1513, %1504, %581, %572, %621, %611, %689, %679, %827, %508, %498, %295, %286, %401, %392, %462, %453, %164, %154, %97, %87, %2545, %2536, %2605, %2595, %2698, %2692, %1758, %1765, %1906, %832, %1248, %1164, %1090, %819, %796, %764, %748, %559, %247, %4, %2719, %2677, %2413, %1468, %1391, %1301, %215, %34
  %2726 = phi i32 [ 5, %1301 ], [ 13, %215 ], [ 6, %2413 ], [ 16, %1391 ], [ 16, %1468 ], [ 0, %2719 ], [ 8, %2677 ], [ 12, %34 ], [ 12, %4 ], [ 5, %247 ], [ %1249, %1248 ], [ %1165, %1164 ], [ %1091, %1090 ], [ %817, %819 ], [ 11, %796 ], [ 5, %764 ], [ 7, %748 ], [ 7, %559 ], [ %830, %832 ], [ 13, %1758 ], [ 10, %1765 ], [ %1908, %1906 ], [ 15, %2692 ], [ 12, %2698 ], [ 15, %2595 ], [ 12, %2605 ], [ 15, %2536 ], [ 12, %2545 ], [ 15, %87 ], [ 12, %97 ], [ 15, %154 ], [ 12, %164 ], [ 15, %453 ], [ 12, %462 ], [ 15, %392 ], [ 12, %401 ], [ 15, %286 ], [ 12, %295 ], [ 15, %498 ], [ 12, %508 ], [ 14, %827 ], [ 15, %679 ], [ 12, %689 ], [ 15, %611 ], [ 12, %621 ], [ 15, %572 ], [ 12, %581 ], [ 15, %1504 ], [ 12, %1513 ], [ 15, %1402 ], [ 12, %1412 ], [ 15, %1626 ], [ 12, %1633 ], [ 15, %1567 ], [ 12, %1575 ], [ 15, %1776 ], [ 12, %1785 ], [ 12, %1845 ], [ 15, %1836 ], [ 15, %1921 ], [ 12, %1931 ], [ 15, %1983 ], [ 12, %1993 ], [ 15, %2045 ], [ 12, %2055 ], [ 15, %2107 ], [ 12, %2117 ], [ 15, %2169 ], [ 12, %2179 ], [ 15, %2231 ], [ 12, %2241 ], [ 15, %2293 ], [ 12, %2303 ], [ 15, %2355 ], [ 12, %2365 ], [ 15, %2425 ], [ 12, %2435 ], [ 15, %1353 ], [ 12, %1359 ], [ 12, %1316 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %2726
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_syntax_once() unnamed_addr #2 !prof !35 !PGOFuncName !156 {
  %1 = load i1, ptr @init_syntax_once.done, align 4
  br i1 %1, label %17, label %2

2:                                                ; preds = %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @re_syntax_table, i8 0, i64 256, i1 false)
  br label %3

3:                                                ; preds = %2, %13
  %4 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %5 = tail call ptr @__ctype_b_loc() #28
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  %8 = load i16, ptr %7, align 2, !tbaa !124
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %4
  store i8 1, ptr %12, align 1, !tbaa !48
  br label %13

13:                                               ; preds = %3, %11
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %16, label %3, !llvm.loop !157

16:                                               ; preds = %13
  store i8 1, ptr getelementptr inbounds ([256 x i8], ptr @re_syntax_table, i64 0, i64 95), align 1, !tbaa !48
  store i1 true, ptr @init_syntax_once.done, align 4
  br label %17

17:                                               ; preds = %0, %16
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i8 @byte_at_begline_loc_p(ptr noundef readnone %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #12 !prof !35 !PGOFuncName !158 {
  %4 = getelementptr inbounds i8, ptr %1, i64 -2
  %5 = icmp ugt ptr %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %1, i64 -3
  %8 = load i8, ptr %7, align 1, !tbaa !48
  %9 = icmp eq i8 %8, 92
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i1 [ false, %3 ], [ %9, %6 ]
  %12 = load i8, ptr %4, align 1, !tbaa !48
  switch i8 %12, label %21 [
    i8 40, label %13
    i8 124, label %17
  ]

13:                                               ; preds = %10
  %14 = and i64 %2, 8192
  %15 = icmp ne i64 %14, 0
  %16 = select i1 %15, i1 true, i1 %11
  br label %21

17:                                               ; preds = %10
  %18 = and i64 %2, 32768
  %19 = icmp ne i64 %18, 0
  %20 = select i1 %19, i1 true, i1 %11
  br label %21

21:                                               ; preds = %13, %10, %17
  %22 = phi i1 [ %20, %17 ], [ %16, %13 ], [ false, %10 ]
  %23 = zext i1 %22 to i8
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i8 @byte_at_endline_loc_p(ptr noundef readonly %0, ptr noundef readnone %1, i64 noundef %2) unnamed_addr #13 !prof !35 !PGOFuncName !159 {
  %4 = load i8, ptr %0, align 1, !tbaa !48
  %5 = icmp eq i8 %4, 92
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = icmp ult ptr %6, %1
  %8 = select i1 %7, ptr %6, ptr null
  %9 = and i64 %2, 8192
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = icmp eq i8 %4, 41
  br i1 %12, label %31, label %18

13:                                               ; preds = %3
  %14 = select i1 %5, i1 %7, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i8, ptr %8, align 1, !tbaa !48
  %17 = icmp eq i8 %16, 41
  br i1 %17, label %31, label %18

18:                                               ; preds = %15, %13, %11
  %19 = and i64 %2, 32768
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = icmp eq i8 %4, 124
  br label %28

23:                                               ; preds = %18
  %24 = select i1 %5, i1 %7, i1 false
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8, ptr %8, align 1, !tbaa !48
  %27 = icmp eq i8 %26, 124
  br label %28

28:                                               ; preds = %23, %25, %21
  %29 = phi i1 [ %22, %21 ], [ false, %23 ], [ %27, %25 ]
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %28, %15, %11
  %32 = phi i8 [ 1, %15 ], [ 1, %11 ], [ %30, %28 ]
  ret i8 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @byte_store_op1(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #14 !prof !35 !PGOFuncName !160 {
  %4 = trunc i32 %0 to i8
  store i8 %4, ptr %1, align 1, !tbaa !48
  %5 = trunc i32 %2 to i8
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !48
  %7 = lshr i32 %2, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !48
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @byte_insert_op1(i32 noundef %0, ptr noundef writeonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #15 !prof !35 !PGOFuncName !161 {
  %5 = icmp eq ptr %3, %1
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, ptr %3, i64 3
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %13, %8 ], [ %7, %6 ]
  %10 = phi ptr [ %11, %8 ], [ %3, %6 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !48
  %13 = getelementptr inbounds i8, ptr %9, i64 -1
  store i8 %12, ptr %13, align 1, !tbaa !48
  %14 = icmp eq ptr %11, %1
  br i1 %14, label %15, label %8, !llvm.loop !162

15:                                               ; preds = %8, %4
  tail call fastcc void @byte_store_op1(i32 noundef %0, ptr noundef %1, i32 noundef %2) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @byte_compile_range(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr noundef readonly %3, i64 noundef %4, ptr nocapture noundef %5) unnamed_addr #16 !prof !35 !PGOFuncName !163 {
  %7 = load ptr, ptr %1, align 8, !tbaa !64
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %60, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %10, ptr %1, align 8, !tbaa !64
  %11 = and i64 %4, 65536
  %12 = icmp eq i64 %11, 0
  %13 = select i1 %12, i32 0, i32 11
  %14 = icmp eq ptr %3, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = shl i32 %0, 24
  %17 = ashr exact i32 %16, 24
  br label %27

18:                                               ; preds = %9
  %19 = and i32 %0, 255
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %3, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !48
  %23 = sext i8 %22 to i32
  %24 = load i8, ptr %7, align 1, !tbaa !48
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i8, ptr %3, i64 %25
  br label %27

27:                                               ; preds = %15, %18
  %28 = phi i32 [ %23, %18 ], [ %17, %15 ]
  %29 = phi ptr [ %26, %18 ], [ %7, %15 ]
  %30 = load i8, ptr %29, align 1, !tbaa !48
  %31 = zext i8 %30 to i32
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %60, label %33

33:                                               ; preds = %27, %47
  %34 = phi i32 [ %58, %47 ], [ %28, %27 ]
  br i1 %14, label %43, label %35

35:                                               ; preds = %33
  %36 = and i32 %34, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %3, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !48
  %40 = and i8 %39, 7
  %41 = zext nneg i8 %40 to i32
  %42 = zext i8 %39 to i32
  br label %47

43:                                               ; preds = %33
  %44 = and i32 %34, 7
  %45 = shl i32 %34, 24
  %46 = ashr exact i32 %45, 24
  br label %47

47:                                               ; preds = %43, %35
  %48 = phi i32 [ %41, %35 ], [ %44, %43 ]
  %49 = phi i32 [ %42, %35 ], [ %46, %43 ]
  %50 = shl nuw nsw i32 1, %48
  %51 = lshr i32 %49, 3
  %52 = and i32 %51, 31
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %5, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !48
  %56 = trunc i32 %50 to i8
  %57 = or i8 %55, %56
  store i8 %57, ptr %54, align 1, !tbaa !48
  %58 = add nsw i32 %34, 1
  %59 = icmp eq i32 %34, %31
  br i1 %59, label %60, label %33, !llvm.loop !164

60:                                               ; preds = %47, %27, %6
  %61 = phi i32 [ 11, %6 ], [ %13, %27 ], [ 0, %47 ]
  ret i32 %61
}

; Function Attrs: optsize
declare ptr @__ctype_b_loc() local_unnamed_addr #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @byte_insert_op2(i32 noundef %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #15 !prof !35 !PGOFuncName !165 {
  %6 = icmp eq ptr %4, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %4, i64 5
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %14, %9 ], [ %8, %7 ]
  %11 = phi ptr [ %12, %9 ], [ %4, %7 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !48
  %14 = getelementptr inbounds i8, ptr %10, i64 -1
  store i8 %13, ptr %14, align 1, !tbaa !48
  %15 = icmp eq ptr %12, %1
  br i1 %15, label %16, label %9, !llvm.loop !166

16:                                               ; preds = %9, %5
  tail call fastcc void @byte_store_op2(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @byte_store_op2(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 !prof !35 !PGOFuncName !167 {
  %5 = trunc i32 %0 to i8
  store i8 %5, ptr %1, align 1, !tbaa !48
  %6 = trunc i32 %2 to i8
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !48
  %8 = lshr i32 %2, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !48
  %11 = trunc i32 %3 to i8
  %12 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !48
  %13 = lshr i32 %3, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !48
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef signext i8 @group_in_compile_stack(ptr nocapture readonly %0, i64 %1, i32 noundef %2) unnamed_addr #18 !prof !35 !PGOFuncName !168 {
  %4 = lshr i64 %1, 32
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi i64 [ %7, %10 ], [ %4, %3 ]
  %7 = add nsw i64 %6, -1
  %8 = and i64 %7, 2147483648
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = and i64 %7, 2147483647
  %12 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %0, i64 %11, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !132
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %5, !llvm.loop !169

15:                                               ; preds = %5, %10
  %16 = phi i8 [ 1, %10 ], [ 0, %5 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @xre_comp(ptr noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @re_comp_buf, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %2, label %5, label %7

5:                                                ; preds = %1
  %6 = select i1 %4, ptr @.str.29, ptr null
  br label %25

7:                                                ; preds = %1
  br i1 %4, label %8, label %14

8:                                                ; preds = %7
  %9 = tail call dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #26
  store ptr %9, ptr @re_comp_buf, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  store i64 200, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 1), align 8, !tbaa !113
  %12 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #26
  store ptr %12, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 4), align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %7
  %15 = load i8, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 7), align 8
  %16 = or i8 %15, -128
  store i8 %16, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 7), align 8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %18 = load i64, ptr @xre_syntax_options, align 8, !tbaa !36
  %19 = tail call fastcc i32 @byte_regex_compile(ptr noundef nonnull %0, i64 noundef %17, i64 noundef %18, ptr noundef nonnull @re_comp_buf) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  br label %25

25:                                               ; preds = %14, %11, %8, %5, %21
  %26 = phi ptr [ %24, %21 ], [ %6, %5 ], [ @.str.24, %8 ], [ @.str.24, %11 ], [ null, %14 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_exec(ptr noundef %0) local_unnamed_addr #2 !prof !35 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @xre_search(ptr noundef nonnull @re_comp_buf, ptr noundef %0, i32 noundef %3, i32 noundef 0, i32 noundef %3, ptr noundef null) #23
  %5 = icmp sgt i32 %4, -1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xregcomp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !prof !35 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 66246, i64 242428
  %7 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #26
  %8 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %7, ptr %8, align 8, !tbaa !42
  %9 = and i32 %2, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #26
  %13 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !59
  %14 = icmp eq ptr %12, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %11, %29
  %16 = phi i64 [ %34, %29 ], [ 0, %11 ]
  %17 = tail call ptr @__ctype_b_loc() #28
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds i16, ptr %18, i64 %16
  %20 = load i16, ptr %19, align 2, !tbaa !124
  %21 = and i16 %20, 256
  %22 = icmp eq i16 %21, 0
  %23 = trunc i64 %16 to i32
  br i1 %22, label %29, label %24

24:                                               ; preds = %15
  %25 = tail call ptr @__ctype_tolower_loc() #28
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = getelementptr inbounds i32, ptr %26, i64 %16
  %28 = load i32, ptr %27, align 4, !tbaa !57
  br label %29

29:                                               ; preds = %15, %24
  %30 = phi i32 [ %28, %24 ], [ %23, %15 ]
  %31 = trunc i32 %30 to i8
  %32 = load ptr, ptr %13, align 8, !tbaa !59
  %33 = getelementptr inbounds i8, ptr %32, i64 %16
  store i8 %31, ptr %33, align 1, !tbaa !48
  %34 = add nuw nsw i64 %16, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %38, label %15, !llvm.loop !170

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  store ptr null, ptr %37, align 8, !tbaa !59
  br label %38

38:                                               ; preds = %29, %36
  %39 = and i32 %2, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = and i64 %6, 242366
  %43 = or disjoint i64 %42, 256
  %44 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %45 = load i8, ptr %44, align 8
  %46 = or i8 %45, -128
  br label %51

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %49 = load i8, ptr %48, align 8
  %50 = and i8 %49, 127
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i8 [ %46, %41 ], [ %50, %47 ]
  %53 = phi i64 [ %43, %41 ], [ %6, %47 ]
  %54 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %55 = trunc i32 %2 to i8
  %56 = shl i8 %55, 1
  %57 = and i8 %56, 16
  %58 = and i8 %52, -17
  %59 = or disjoint i8 %58, %57
  store i8 %59, ptr %54, align 8
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %61 = tail call fastcc i32 @byte_regex_compile(ptr noundef %1, i64 noundef %60, i64 noundef %53, ptr noundef nonnull %0) #23
  %62 = icmp eq i32 %61, 16
  %63 = select i1 %62, i32 8, i32 %61
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = load ptr, ptr %8, align 8, !tbaa !42
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @xre_compile_fastmap(ptr noundef nonnull %0) #23, !range !40
  %70 = icmp eq i32 %69, -2
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr %8, align 8, !tbaa !42
  tail call void @free(ptr noundef %72) #23
  store ptr null, ptr %8, align 8, !tbaa !42
  br label %73

73:                                               ; preds = %11, %51, %65, %71, %68
  %74 = phi i32 [ 0, %68 ], [ 0, %71 ], [ 0, %65 ], [ %63, %51 ], [ 12, %11 ]
  ret i32 %74
}

; Function Attrs: optsize
declare ptr @__ctype_tolower_loc() local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xregexec(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #2 !prof !35 {
  %6 = alloca %struct.re_registers, align 8
  %7 = alloca %struct.re_pattern_buffer, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #25
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  %14 = icmp ne i64 %2, 0
  %15 = and i1 %14, %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !171
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %7, i64 0, i32 7
  %17 = trunc i32 %4 to i8
  %18 = load i8, ptr %16, align 8
  %19 = shl i8 %17, 5
  %20 = and i8 %18, -103
  %21 = and i8 %19, 96
  %22 = or disjoint i8 %21, %20
  %23 = or disjoint i8 %22, 4
  store i8 %23, ptr %16, align 8
  br i1 %15, label %24, label %30

24:                                               ; preds = %5
  %25 = trunc i64 %2 to i32
  store i32 %25, ptr %6, align 8, !tbaa !68
  %26 = shl i64 %2, 3
  %27 = tail call ptr @malloc(i64 noundef %26) #26
  %28 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !70
  %29 = icmp eq ptr %27, null
  br i1 %29, label %56, label %32

30:                                               ; preds = %5
  %31 = call i32 @xre_search(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %9, i32 noundef 0, i32 noundef %9, ptr noundef null) #23
  br label %53

32:                                               ; preds = %24
  %33 = getelementptr inbounds i32, ptr %27, i64 %2
  %34 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !71
  %35 = call i32 @xre_search(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %9, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %6) #23
  %36 = icmp sgt i32 %35, -1
  %37 = load ptr, ptr %28, align 8, !tbaa !70
  br i1 %36, label %38, label %52

38:                                               ; preds = %32
  %39 = load ptr, ptr %34, align 8, !tbaa !71
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %50, %40 ]
  %42 = phi i32 [ 0, %38 ], [ %49, %40 ]
  %43 = getelementptr inbounds i32, ptr %37, i64 %41
  %44 = load i32, ptr %43, align 4, !tbaa !57
  %45 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %41
  store i32 %44, ptr %45, align 4, !tbaa !172
  %46 = getelementptr inbounds i32, ptr %39, i64 %41
  %47 = load i32, ptr %46, align 4, !tbaa !57
  %48 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %41, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !174
  %49 = add i32 %42, 1
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %50, %2
  br i1 %51, label %40, label %52, !llvm.loop !175

52:                                               ; preds = %40, %32
  call void @free(ptr noundef %37) #23
  br label %53

53:                                               ; preds = %30, %52
  %54 = phi i32 [ %35, %52 ], [ %31, %30 ]
  %55 = lshr i32 %54, 31
  br label %56

56:                                               ; preds = %24, %53
  %57 = phi i32 [ %55, %53 ], [ 1, %24 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @xregerror(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #2 !prof !35 {
  %5 = icmp ugt i32 %0, 16
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @abort() #24
  unreachable

7:                                                ; preds = %4
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #23
  %12 = add i64 %11, 1
  %13 = icmp eq i64 %3, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = icmp ugt i64 %12, %3
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = add i64 %3, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %10, i64 %17, i1 false)
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  store i8 0, ptr %18, align 1, !tbaa !48
  br label %20

19:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %10, i64 %12, i1 false)
  br label %20

20:                                               ; preds = %16, %19, %7
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @xregfree(ptr nocapture noundef %0) local_unnamed_addr #20 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @free(ptr noundef nonnull %7) #23
  br label %10

10:                                               ; preds = %9, %5
  store ptr null, ptr %6, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -9
  store i8 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %15) #23
  br label %18

18:                                               ; preds = %17, %10
  store ptr null, ptr %14, align 8, !tbaa !59
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { optsize }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { nounwind }
attributes #26 = { optsize allocsize(0) }
attributes #27 = { optsize allocsize(1) }
attributes #28 = { nounwind optsize }

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
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{i32 -2, i32 1}
!41 = !{!"regex.c:byte_re_compile_fastmap"}
!42 = !{!43, !44, i64 32}
!43 = !{!"re_pattern_buffer", !44, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 40, !37, i64 48, !45, i64 56, !45, i64 56, !45, i64 56, !45, i64 56, !45, i64 56, !45, i64 56, !45, i64 56}
!44 = !{!"any pointer", !38, i64 0}
!45 = !{!"int", !38, i64 0}
!46 = !{!43, !44, i64 0}
!47 = !{!43, !37, i64 16}
!48 = !{!38, !38, i64 0}
!49 = distinct !{!49, !50, !51, !52}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = distinct !{!53, !50, !51, !52}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = !{!43, !37, i64 24}
!57 = !{!45, !45, i64 0}
!58 = !{!"regex.c:byte_re_search_2"}
!59 = !{!43, !44, i64 40}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = !{!"regex.c:byte_re_match_2_internal"}
!63 = !{!43, !37, i64 48}
!64 = !{!44, !44, i64 0}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !50}
!67 = distinct !{!67, !50}
!68 = !{!69, !45, i64 0}
!69 = !{!"re_registers", !45, i64 0, !44, i64 8, !44, i64 16}
!70 = !{!69, !44, i64 8}
!71 = !{!69, !44, i64 16}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, !50}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !50}
!83 = !{i8 0, i8 2}
!84 = distinct !{!84, !50}
!85 = distinct !{!85, !50}
!86 = distinct !{!86, !50}
!87 = distinct !{!87, !50}
!88 = distinct !{!88, !50}
!89 = !{i32 0, i32 2}
!90 = distinct !{!90, !50}
!91 = distinct !{!91, !50}
!92 = distinct !{!92, !50}
!93 = distinct !{!93, !50}
!94 = distinct !{!94, !50}
!95 = distinct !{!95, !50}
!96 = distinct !{!96, !50}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = !{!"regex.c:byte_group_match_null_string_p"}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50}
!107 = !{!"regex.c:byte_bcmp_translate"}
!108 = distinct !{!108, !50}
!109 = !{!"regex.c:byte_alt_match_null_string_p"}
!110 = distinct !{!110, !50}
!111 = !{!"regex.c:byte_common_op_match_null_string_p"}
!112 = !{!"regex.c:byte_regex_compile"}
!113 = !{!43, !37, i64 8}
!114 = distinct !{!114, !50}
!115 = distinct !{!115, !50}
!116 = distinct !{!116, !50}
!117 = distinct !{!117, !50}
!118 = distinct !{!118, !50}
!119 = distinct !{!119, !50}
!120 = distinct !{!120, !50}
!121 = distinct !{!121, !50}
!122 = distinct !{!122, !50}
!123 = !{i32 0, i32 12}
!124 = !{!125, !125, i64 0}
!125 = !{!"short", !38, i64 0}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50}
!128 = !{!129, !37, i64 0}
!129 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !45, i64 32}
!130 = !{!129, !37, i64 8}
!131 = !{!129, !37, i64 24}
!132 = !{!129, !45, i64 32}
!133 = !{!129, !37, i64 16}
!134 = distinct !{!134, !50}
!135 = distinct !{!135, !50}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = distinct !{!141, !50}
!142 = distinct !{!142, !50}
!143 = distinct !{!143, !50}
!144 = distinct !{!144, !50}
!145 = distinct !{!145, !50}
!146 = distinct !{!146, !50}
!147 = distinct !{!147, !50}
!148 = distinct !{!148, !50}
!149 = distinct !{!149, !50}
!150 = distinct !{!150, !50}
!151 = distinct !{!151, !50}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50}
!154 = distinct !{!154, !50}
!155 = distinct !{!155, !50}
!156 = !{!"regex.c:init_syntax_once"}
!157 = distinct !{!157, !50}
!158 = !{!"regex.c:byte_at_begline_loc_p"}
!159 = !{!"regex.c:byte_at_endline_loc_p"}
!160 = !{!"regex.c:byte_store_op1"}
!161 = !{!"regex.c:byte_insert_op1"}
!162 = distinct !{!162, !50}
!163 = !{!"regex.c:byte_compile_range"}
!164 = distinct !{!164, !50}
!165 = !{!"regex.c:byte_insert_op2"}
!166 = distinct !{!166, !50}
!167 = !{!"regex.c:byte_store_op2"}
!168 = !{!"regex.c:group_in_compile_stack"}
!169 = distinct !{!169, !50}
!170 = distinct !{!170, !50}
!171 = !{i64 0, i64 8, !64, i64 8, i64 8, !36, i64 16, i64 8, !36, i64 24, i64 8, !36, i64 32, i64 8, !64, i64 40, i64 8, !64, i64 48, i64 8, !36, i64 56, i64 4, !57, i64 56, i64 4, !57, i64 56, i64 4, !57, i64 56, i64 4, !57, i64 56, i64 4, !57, i64 56, i64 4, !57, i64 56, i64 4, !57}
!172 = !{!173, !45, i64 0}
!173 = !{!"", !45, i64 0, !45, i64 4}
!174 = !{!173, !45, i64 4}
!175 = distinct !{!175, !50}
