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

@xre_max_failures = dso_local local_unnamed_addr global i32 4000, align 4
@xre_syntax_options = dso_local local_unnamed_addr global i64 0, align 8
@re_error_msgid = internal unnamed_addr constant [17 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], align 16
@re_comp_buf = internal global %struct.re_pattern_buffer zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"No previous regular expression\00", align 1
@re_syntax_table = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@byte_reg_unset_dummy = internal global i8 0, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@init_syntax_once.done = internal unnamed_addr global i1 false, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"No match\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Invalid regular expression\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Invalid collation character\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Invalid character class name\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Trailing backslash\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Invalid back reference\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Unmatched [ or [^\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Unmatched ( or \\(\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Unmatched \\{\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Invalid content of \\{\\}\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Invalid range end\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Memory exhausted\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Invalid preceding regular expression\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Premature end of regular expression\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Regular expression too big\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Unmatched ) or \\)\00", align 1
@switch.table.byte_re_match_2_internal = private unnamed_addr constant [10 x i64] [i64 6, i64 8, i64 8, i64 8, i64 6, i64 6, i64 6, i64 8, i64 8, i64 8], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @xre_set_syntax(i64 noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @xre_syntax_options, align 8, !tbaa !5
  store i64 %0, ptr @xre_syntax_options, align 8, !tbaa !5
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @xre_compile_fastmap(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = tail call fastcc i32 @byte_re_compile_fastmap(ptr noundef %0) #23, !range !9
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @byte_re_compile_fastmap(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds i8, ptr %4, i64 %6
  %8 = alloca [40 x i8], align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %9 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, -10
  %12 = or disjoint i8 %11, 8
  store i8 %12, ptr %9, align 8
  %13 = getelementptr inbounds i8, ptr %3, i64 10
  %14 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %213, %1
  %16 = phi ptr [ %8, %1 ], [ %214, %213 ]
  %17 = phi i32 [ 5, %1 ], [ %215, %213 ]
  %18 = phi i32 [ 0, %1 ], [ %216, %213 ]
  %19 = phi ptr [ %4, %1 ], [ %217, %213 ]
  %20 = phi i8 [ 1, %1 ], [ %218, %213 ]
  %21 = icmp eq ptr %19, %7
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i8, ptr %19, align 1, !tbaa !16
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %34

25:                                               ; preds = %22, %15
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %379, label %27

27:                                               ; preds = %25
  %28 = load i8, ptr %9, align 8
  %29 = or i8 %28, %20
  store i8 %29, ptr %9, align 8
  %30 = add i32 %18, -1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %16, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  br label %213

34:                                               ; preds = %22
  %35 = getelementptr inbounds i8, ptr %19, i64 1
  switch i8 %23, label %378 [
    i8 8, label %379
    i8 2, label %208
    i8 4, label %219
    i8 5, label %243
    i8 24, label %122
    i8 25, label %36
    i8 3, label %278
    i8 0, label %213
    i8 9, label %213
    i8 10, label %213
    i8 11, label %213
    i8 12, label %213
    i8 28, label %213
    i8 29, label %213
    i8 26, label %213
    i8 27, label %213
    i8 20, label %213
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

36:                                               ; preds = %34, %119
  %37 = phi i64 [ %120, %119 ], [ 0, %34 ]
  %38 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %37
  %39 = load <16 x i8>, ptr %38, align 16, !tbaa !16
  %40 = icmp ne <16 x i8> %39, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %41 = extractelement <16 x i1> %40, i64 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %3, i64 %37
  store i8 1, ptr %43, align 1, !tbaa !16
  br label %44

44:                                               ; preds = %42, %36
  %45 = extractelement <16 x i1> %40, i64 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = or disjoint i64 %37, 1
  %48 = getelementptr inbounds i8, ptr %3, i64 %47
  store i8 1, ptr %48, align 1, !tbaa !16
  br label %49

49:                                               ; preds = %46, %44
  %50 = extractelement <16 x i1> %40, i64 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = or disjoint i64 %37, 2
  %53 = getelementptr inbounds i8, ptr %3, i64 %52
  store i8 1, ptr %53, align 1, !tbaa !16
  br label %54

54:                                               ; preds = %51, %49
  %55 = extractelement <16 x i1> %40, i64 3
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = or disjoint i64 %37, 3
  %58 = getelementptr inbounds i8, ptr %3, i64 %57
  store i8 1, ptr %58, align 1, !tbaa !16
  br label %59

59:                                               ; preds = %56, %54
  %60 = extractelement <16 x i1> %40, i64 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = or disjoint i64 %37, 4
  %63 = getelementptr inbounds i8, ptr %3, i64 %62
  store i8 1, ptr %63, align 1, !tbaa !16
  br label %64

64:                                               ; preds = %61, %59
  %65 = extractelement <16 x i1> %40, i64 5
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = or disjoint i64 %37, 5
  %68 = getelementptr inbounds i8, ptr %3, i64 %67
  store i8 1, ptr %68, align 1, !tbaa !16
  br label %69

69:                                               ; preds = %66, %64
  %70 = extractelement <16 x i1> %40, i64 6
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = or disjoint i64 %37, 6
  %73 = getelementptr inbounds i8, ptr %3, i64 %72
  store i8 1, ptr %73, align 1, !tbaa !16
  br label %74

74:                                               ; preds = %71, %69
  %75 = extractelement <16 x i1> %40, i64 7
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = or disjoint i64 %37, 7
  %78 = getelementptr inbounds i8, ptr %3, i64 %77
  store i8 1, ptr %78, align 1, !tbaa !16
  br label %79

79:                                               ; preds = %76, %74
  %80 = extractelement <16 x i1> %40, i64 8
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = or disjoint i64 %37, 8
  %83 = getelementptr inbounds i8, ptr %3, i64 %82
  store i8 1, ptr %83, align 1, !tbaa !16
  br label %84

84:                                               ; preds = %81, %79
  %85 = extractelement <16 x i1> %40, i64 9
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = or disjoint i64 %37, 9
  %88 = getelementptr inbounds i8, ptr %3, i64 %87
  store i8 1, ptr %88, align 1, !tbaa !16
  br label %89

89:                                               ; preds = %86, %84
  %90 = extractelement <16 x i1> %40, i64 10
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = or disjoint i64 %37, 10
  %93 = getelementptr inbounds i8, ptr %3, i64 %92
  store i8 1, ptr %93, align 1, !tbaa !16
  br label %94

94:                                               ; preds = %91, %89
  %95 = extractelement <16 x i1> %40, i64 11
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = or disjoint i64 %37, 11
  %98 = getelementptr inbounds i8, ptr %3, i64 %97
  store i8 1, ptr %98, align 1, !tbaa !16
  br label %99

99:                                               ; preds = %96, %94
  %100 = extractelement <16 x i1> %40, i64 12
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = or disjoint i64 %37, 12
  %103 = getelementptr inbounds i8, ptr %3, i64 %102
  store i8 1, ptr %103, align 1, !tbaa !16
  br label %104

104:                                              ; preds = %101, %99
  %105 = extractelement <16 x i1> %40, i64 13
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = or disjoint i64 %37, 13
  %108 = getelementptr inbounds i8, ptr %3, i64 %107
  store i8 1, ptr %108, align 1, !tbaa !16
  br label %109

109:                                              ; preds = %106, %104
  %110 = extractelement <16 x i1> %40, i64 14
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = or disjoint i64 %37, 14
  %113 = getelementptr inbounds i8, ptr %3, i64 %112
  store i8 1, ptr %113, align 1, !tbaa !16
  br label %114

114:                                              ; preds = %111, %109
  %115 = extractelement <16 x i1> %40, i64 15
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = or disjoint i64 %37, 15
  %118 = getelementptr inbounds i8, ptr %3, i64 %117
  store i8 1, ptr %118, align 1, !tbaa !16
  br label %119

119:                                              ; preds = %116, %114
  %120 = add nuw i64 %37, 16
  %121 = icmp eq i64 %120, 256
  br i1 %121, label %213, label %36, !llvm.loop !17

122:                                              ; preds = %34, %205
  %123 = phi i64 [ %206, %205 ], [ 0, %34 ]
  %124 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %123
  %125 = load <16 x i8>, ptr %124, align 16, !tbaa !16
  %126 = icmp eq <16 x i8> %125, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %127 = extractelement <16 x i1> %126, i64 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = getelementptr inbounds i8, ptr %3, i64 %123
  store i8 1, ptr %129, align 1, !tbaa !16
  br label %130

130:                                              ; preds = %128, %122
  %131 = extractelement <16 x i1> %126, i64 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = or disjoint i64 %123, 1
  %134 = getelementptr inbounds i8, ptr %3, i64 %133
  store i8 1, ptr %134, align 1, !tbaa !16
  br label %135

135:                                              ; preds = %132, %130
  %136 = extractelement <16 x i1> %126, i64 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = or disjoint i64 %123, 2
  %139 = getelementptr inbounds i8, ptr %3, i64 %138
  store i8 1, ptr %139, align 1, !tbaa !16
  br label %140

140:                                              ; preds = %137, %135
  %141 = extractelement <16 x i1> %126, i64 3
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = or disjoint i64 %123, 3
  %144 = getelementptr inbounds i8, ptr %3, i64 %143
  store i8 1, ptr %144, align 1, !tbaa !16
  br label %145

145:                                              ; preds = %142, %140
  %146 = extractelement <16 x i1> %126, i64 4
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = or disjoint i64 %123, 4
  %149 = getelementptr inbounds i8, ptr %3, i64 %148
  store i8 1, ptr %149, align 1, !tbaa !16
  br label %150

150:                                              ; preds = %147, %145
  %151 = extractelement <16 x i1> %126, i64 5
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = or disjoint i64 %123, 5
  %154 = getelementptr inbounds i8, ptr %3, i64 %153
  store i8 1, ptr %154, align 1, !tbaa !16
  br label %155

155:                                              ; preds = %152, %150
  %156 = extractelement <16 x i1> %126, i64 6
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = or disjoint i64 %123, 6
  %159 = getelementptr inbounds i8, ptr %3, i64 %158
  store i8 1, ptr %159, align 1, !tbaa !16
  br label %160

160:                                              ; preds = %157, %155
  %161 = extractelement <16 x i1> %126, i64 7
  br i1 %161, label %162, label %165

162:                                              ; preds = %160
  %163 = or disjoint i64 %123, 7
  %164 = getelementptr inbounds i8, ptr %3, i64 %163
  store i8 1, ptr %164, align 1, !tbaa !16
  br label %165

165:                                              ; preds = %162, %160
  %166 = extractelement <16 x i1> %126, i64 8
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = or disjoint i64 %123, 8
  %169 = getelementptr inbounds i8, ptr %3, i64 %168
  store i8 1, ptr %169, align 1, !tbaa !16
  br label %170

170:                                              ; preds = %167, %165
  %171 = extractelement <16 x i1> %126, i64 9
  br i1 %171, label %172, label %175

172:                                              ; preds = %170
  %173 = or disjoint i64 %123, 9
  %174 = getelementptr inbounds i8, ptr %3, i64 %173
  store i8 1, ptr %174, align 1, !tbaa !16
  br label %175

175:                                              ; preds = %172, %170
  %176 = extractelement <16 x i1> %126, i64 10
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = or disjoint i64 %123, 10
  %179 = getelementptr inbounds i8, ptr %3, i64 %178
  store i8 1, ptr %179, align 1, !tbaa !16
  br label %180

180:                                              ; preds = %177, %175
  %181 = extractelement <16 x i1> %126, i64 11
  br i1 %181, label %182, label %185

182:                                              ; preds = %180
  %183 = or disjoint i64 %123, 11
  %184 = getelementptr inbounds i8, ptr %3, i64 %183
  store i8 1, ptr %184, align 1, !tbaa !16
  br label %185

185:                                              ; preds = %182, %180
  %186 = extractelement <16 x i1> %126, i64 12
  br i1 %186, label %187, label %190

187:                                              ; preds = %185
  %188 = or disjoint i64 %123, 12
  %189 = getelementptr inbounds i8, ptr %3, i64 %188
  store i8 1, ptr %189, align 1, !tbaa !16
  br label %190

190:                                              ; preds = %187, %185
  %191 = extractelement <16 x i1> %126, i64 13
  br i1 %191, label %192, label %195

192:                                              ; preds = %190
  %193 = or disjoint i64 %123, 13
  %194 = getelementptr inbounds i8, ptr %3, i64 %193
  store i8 1, ptr %194, align 1, !tbaa !16
  br label %195

195:                                              ; preds = %192, %190
  %196 = extractelement <16 x i1> %126, i64 14
  br i1 %196, label %197, label %200

197:                                              ; preds = %195
  %198 = or disjoint i64 %123, 14
  %199 = getelementptr inbounds i8, ptr %3, i64 %198
  store i8 1, ptr %199, align 1, !tbaa !16
  br label %200

200:                                              ; preds = %197, %195
  %201 = extractelement <16 x i1> %126, i64 15
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = or disjoint i64 %123, 15
  %204 = getelementptr inbounds i8, ptr %3, i64 %203
  store i8 1, ptr %204, align 1, !tbaa !16
  br label %205

205:                                              ; preds = %202, %200
  %206 = add nuw i64 %123, 16
  %207 = icmp eq i64 %206, 256
  br i1 %207, label %213, label %122, !llvm.loop !21

208:                                              ; preds = %34
  %209 = getelementptr inbounds i8, ptr %19, i64 2
  %210 = load i8, ptr %209, align 1, !tbaa !16
  %211 = zext i8 %210 to i64
  %212 = getelementptr inbounds i8, ptr %3, i64 %211
  store i8 1, ptr %212, align 1, !tbaa !16
  br label %213

213:                                              ; preds = %119, %205, %276, %241, %208, %283, %284, %219, %246, %302, %315, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %27, %357, %374, %376, %288, %363, %300
  %214 = phi ptr [ %16, %27 ], [ %16, %376 ], [ %16, %374 ], [ %358, %357 ], [ %16, %363 ], [ %16, %288 ], [ %16, %300 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %34 ], [ %16, %315 ], [ %16, %302 ], [ %16, %246 ], [ %16, %219 ], [ %16, %284 ], [ %16, %283 ], [ %16, %208 ], [ %16, %241 ], [ %16, %276 ], [ %16, %205 ], [ %16, %119 ]
  %215 = phi i32 [ %17, %27 ], [ %17, %376 ], [ %17, %374 ], [ %359, %357 ], [ %17, %363 ], [ %17, %288 ], [ %17, %300 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %34 ], [ %17, %315 ], [ %17, %302 ], [ %17, %246 ], [ %17, %219 ], [ %17, %284 ], [ %17, %283 ], [ %17, %208 ], [ %17, %241 ], [ %17, %276 ], [ %17, %205 ], [ %17, %119 ]
  %216 = phi i32 [ %30, %27 ], [ %18, %376 ], [ %18, %374 ], [ %360, %357 ], [ %18, %363 ], [ %18, %288 ], [ %18, %300 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %18, %34 ], [ %321, %315 ], [ 0, %302 ], [ %18, %246 ], [ %18, %219 ], [ %18, %284 ], [ %18, %283 ], [ %18, %208 ], [ %18, %241 ], [ %18, %276 ], [ %18, %205 ], [ %18, %119 ]
  %217 = phi ptr [ %33, %27 ], [ %377, %376 ], [ %375, %374 ], [ %362, %357 ], [ %372, %363 ], [ %298, %288 ], [ %298, %300 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %35, %34 ], [ %313, %315 ], [ %313, %302 ], [ %7, %246 ], [ %7, %219 ], [ %7, %284 ], [ %7, %283 ], [ %7, %208 ], [ %7, %241 ], [ %7, %276 ], [ %7, %205 ], [ %7, %119 ]
  %218 = phi i8 [ 1, %27 ], [ %20, %376 ], [ %20, %374 ], [ %20, %357 ], [ %20, %363 ], [ %20, %288 ], [ %20, %300 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %34 ], [ %20, %315 ], [ %20, %302 ], [ 0, %246 ], [ 0, %219 ], [ 0, %284 ], [ 0, %283 ], [ 0, %208 ], [ 0, %241 ], [ 0, %276 ], [ 0, %205 ], [ 0, %119 ]
  br label %15

219:                                              ; preds = %34
  %220 = getelementptr inbounds i8, ptr %19, i64 2
  %221 = load i8, ptr %35, align 1, !tbaa !16
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %213, label %223

223:                                              ; preds = %219
  %224 = zext i8 %221 to i64
  %225 = shl nuw nsw i64 %224, 3
  br label %226

226:                                              ; preds = %223, %241
  %227 = phi i64 [ %225, %223 ], [ %228, %241 ]
  %228 = add nsw i64 %227, -1
  %229 = trunc i64 %228 to i32
  %230 = lshr i64 %228, 3
  %231 = and i64 %230, 536870911
  %232 = getelementptr inbounds i8, ptr %220, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !16
  %234 = zext i8 %233 to i32
  %235 = and i32 %229, 7
  %236 = shl nuw nsw i32 1, %235
  %237 = and i32 %236, %234
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %226
  %240 = getelementptr inbounds i8, ptr %3, i64 %228
  store i8 1, ptr %240, align 1, !tbaa !16
  br label %241

241:                                              ; preds = %226, %239
  %242 = icmp ugt i64 %227, 1
  br i1 %242, label %226, label %213, !llvm.loop !22

243:                                              ; preds = %34
  %244 = load i8, ptr %35, align 1, !tbaa !16
  %245 = icmp ult i8 %244, 32
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = shl nuw i8 %244, 3
  %248 = shl nuw i8 %244, 3
  %249 = zext i8 %248 to i64
  %250 = getelementptr i8, ptr %3, i64 %249
  %251 = sub nuw nsw i8 -8, %247
  %252 = zext i8 %251 to i64
  %253 = add nuw nsw i64 %252, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %250, i8 1, i64 %253, i1 false), !tbaa !16
  %254 = load i8, ptr %35, align 1, !tbaa !16
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %213, label %256

256:                                              ; preds = %243, %246
  %257 = phi i8 [ %254, %246 ], [ %244, %243 ]
  %258 = getelementptr inbounds i8, ptr %19, i64 2
  %259 = zext i8 %257 to i64
  %260 = shl nuw nsw i64 %259, 3
  br label %261

261:                                              ; preds = %256, %276
  %262 = phi i64 [ %260, %256 ], [ %263, %276 ]
  %263 = add nsw i64 %262, -1
  %264 = trunc i64 %263 to i32
  %265 = lshr i64 %263, 3
  %266 = and i64 %265, 536870911
  %267 = getelementptr inbounds i8, ptr %258, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !16
  %269 = zext i8 %268 to i32
  %270 = and i32 %264, 7
  %271 = shl nuw nsw i32 1, %270
  %272 = and i32 %271, %269
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %261
  %275 = getelementptr inbounds i8, ptr %3, i64 %263
  store i8 1, ptr %275, align 1, !tbaa !16
  br label %276

276:                                              ; preds = %261, %274
  %277 = icmp ugt i64 %262, 1
  br i1 %277, label %261, label %213, !llvm.loop !23

278:                                              ; preds = %34
  %279 = load i8, ptr %13, align 1, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 1, i64 256, i1 false), !tbaa !16
  %280 = load i64, ptr %14, align 8, !tbaa !24
  %281 = and i64 %280, 64
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  store i8 %279, ptr %13, align 1, !tbaa !16
  br label %213

284:                                              ; preds = %278
  %285 = load i8, ptr %9, align 8
  %286 = and i8 %285, 1
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %213, label %383

288:                                              ; preds = %34, %34, %34, %34, %34, %34
  %289 = load i8, ptr %35, align 1, !tbaa !16
  %290 = zext i8 %289 to i32
  %291 = getelementptr inbounds i8, ptr %19, i64 2
  %292 = load i8, ptr %291, align 1, !tbaa !16
  %293 = sext i8 %292 to i32
  %294 = shl nsw i32 %293, 8
  %295 = or disjoint i32 %294, %290
  %296 = getelementptr inbounds i8, ptr %19, i64 3
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i8, ptr %296, i64 %297
  %299 = icmp sgt i32 %295, 0
  br i1 %299, label %213, label %300

300:                                              ; preds = %288
  %301 = load i8, ptr %298, align 1, !tbaa !16
  switch i8 %301, label %213 [
    i8 15, label %302
    i8 21, label %302
  ]

302:                                              ; preds = %300, %300
  %303 = getelementptr inbounds i8, ptr %298, i64 1
  %304 = load i8, ptr %303, align 1, !tbaa !16
  %305 = zext i8 %304 to i32
  %306 = getelementptr inbounds i8, ptr %298, i64 2
  %307 = load i8, ptr %306, align 1, !tbaa !16
  %308 = sext i8 %307 to i32
  %309 = shl nsw i32 %308, 8
  %310 = or disjoint i32 %309, %305
  %311 = getelementptr inbounds i8, ptr %298, i64 3
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8, ptr %311, i64 %312
  %314 = icmp eq i32 %18, 0
  br i1 %314, label %213, label %315

315:                                              ; preds = %302
  %316 = add i32 %18, -1
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %16, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !16
  %320 = icmp eq ptr %319, %313
  %321 = select i1 %320, i32 %316, i32 %18
  br label %213

322:                                              ; preds = %363, %34, %34
  %323 = phi i1 [ true, %34 ], [ true, %34 ], [ false, %363 ]
  %324 = load i8, ptr %35, align 1, !tbaa !16
  %325 = zext i8 %324 to i32
  %326 = getelementptr inbounds i8, ptr %19, i64 2
  %327 = load i8, ptr %326, align 1, !tbaa !16
  %328 = sext i8 %327 to i32
  %329 = shl nsw i32 %328, 8
  %330 = or disjoint i32 %329, %325
  %331 = getelementptr inbounds i8, ptr %19, i64 3
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i8, ptr %331, i64 %332
  %334 = icmp ult ptr %333, %7
  br i1 %334, label %335, label %354

335:                                              ; preds = %322
  %336 = icmp eq i32 %18, %17
  br i1 %336, label %337, label %348

337:                                              ; preds = %335
  %338 = load i32, ptr @xre_max_failures, align 4, !tbaa !25
  %339 = mul nsw i32 %338, 19
  %340 = icmp ugt i32 %17, %339
  br i1 %340, label %383, label %341

341:                                              ; preds = %337
  %342 = shl i32 %17, 1
  %343 = zext i32 %342 to i64
  %344 = shl nuw nsw i64 %343, 3
  %345 = alloca i8, i64 %344, align 16
  %346 = zext i32 %17 to i64
  %347 = shl nuw nsw i64 %346, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %345, ptr align 8 %16, i64 %347, i1 false)
  br label %348

348:                                              ; preds = %341, %335
  %349 = phi ptr [ %345, %341 ], [ %16, %335 ]
  %350 = phi i32 [ %342, %341 ], [ %17, %335 ]
  %351 = add i32 %18, 1
  %352 = zext i32 %18 to i64
  %353 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %349, i64 %352
  store ptr %333, ptr %353, align 8, !tbaa !16
  br label %357

354:                                              ; preds = %322
  %355 = load i8, ptr %9, align 8
  %356 = or i8 %355, 1
  store i8 %356, ptr %9, align 8
  br label %357

357:                                              ; preds = %354, %348
  %358 = phi ptr [ %349, %348 ], [ %16, %354 ]
  %359 = phi i32 [ %350, %348 ], [ %17, %354 ]
  %360 = phi i32 [ %351, %348 ], [ %18, %354 ]
  %361 = getelementptr inbounds i8, ptr %19, i64 5
  %362 = select i1 %323, ptr %331, ptr %361
  br label %213

363:                                              ; preds = %34
  %364 = getelementptr inbounds i8, ptr %19, i64 3
  %365 = load i8, ptr %364, align 1, !tbaa !16
  %366 = zext i8 %365 to i32
  %367 = getelementptr inbounds i8, ptr %19, i64 4
  %368 = load i8, ptr %367, align 1, !tbaa !16
  %369 = sext i8 %368 to i32
  %370 = shl nsw i32 %369, 8
  %371 = or disjoint i32 %370, %366
  %372 = getelementptr inbounds i8, ptr %19, i64 5
  %373 = icmp eq i32 %371, 0
  br i1 %373, label %322, label %213

374:                                              ; preds = %34
  %375 = getelementptr inbounds i8, ptr %19, i64 5
  br label %213

376:                                              ; preds = %34, %34
  %377 = getelementptr inbounds i8, ptr %19, i64 3
  br label %213

378:                                              ; preds = %34
  tail call void @abort() #24
  unreachable

379:                                              ; preds = %25, %34
  %380 = phi i8 [ 1, %34 ], [ %20, %25 ]
  %381 = load i8, ptr %9, align 8
  %382 = or i8 %381, %380
  store i8 %382, ptr %9, align 8
  br label %383

383:                                              ; preds = %284, %337, %379
  %384 = phi i32 [ 0, %379 ], [ 0, %284 ], [ -2, %337 ]
  ret i32 %384
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @xre_set_registers(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
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
define dso_local i32 @xre_search(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = tail call i32 @xre_search_2(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %2) #23
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_search_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #2 {
  %10 = tail call fastcc i32 @byte_re_search_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #23
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @byte_re_search_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #2 {
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !26
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
  %27 = load i64, ptr %26, align 8, !tbaa !15
  %28 = icmp ne i64 %27, 0
  %29 = icmp sgt i32 %25, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %40

31:                                               ; preds = %18
  %32 = load ptr, ptr %0, align 8, !tbaa !14
  %33 = load i8, ptr %32, align 1, !tbaa !16
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
  %49 = tail call i32 @xre_compile_fastmap(ptr noundef nonnull %0) #23, !range !9
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %160, label %51

51:                                               ; preds = %48, %43, %40
  %52 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %53 = icmp ne i32 %2, 0
  %54 = icmp eq ptr %13, null
  %55 = sext i32 %2 to i64
  %56 = sub nsw i64 0, %55
  %57 = getelementptr inbounds i8, ptr %3, i64 %56
  br label %58

58:                                               ; preds = %154, %51
  %59 = phi i32 [ %41, %51 ], [ %157, %154 ]
  %60 = phi i32 [ %5, %51 ], [ %159, %154 ]
  %61 = icmp slt i32 %60, %14
  %62 = select i1 %42, i1 %61, i1 false
  br i1 %62, label %63, label %134

63:                                               ; preds = %58
  %64 = load i8, ptr %52, align 8
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %134

67:                                               ; preds = %63
  %68 = icmp sgt i32 %59, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %67
  %70 = icmp sge i32 %60, %2
  %71 = add i32 %60, %59
  %72 = icmp slt i32 %71, %2
  %73 = select i1 %70, i1 true, i1 %72
  %74 = sub i32 %59, %2
  %75 = add i32 %74, %60
  %76 = select i1 %73, i32 0, i32 %75
  %77 = icmp slt i32 %60, %2
  %78 = select i1 %77, ptr %1, ptr %57
  %79 = sext i32 %60 to i64
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  %81 = icmp sgt i32 %59, %76
  br i1 %54, label %83, label %82

82:                                               ; preds = %69
  br i1 %81, label %84, label %111

83:                                               ; preds = %69
  br i1 %81, label %99, label %111

84:                                               ; preds = %82, %95
  %85 = phi ptr [ %96, %95 ], [ %80, %82 ]
  %86 = phi i32 [ %97, %95 ], [ %59, %82 ]
  %87 = load i8, ptr %85, align 1, !tbaa !16
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds i8, ptr %13, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !16
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds i8, ptr %11, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !16
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %84
  %96 = getelementptr inbounds i8, ptr %85, i64 1
  %97 = add nsw i32 %86, -1
  %98 = icmp sgt i32 %97, %76
  br i1 %98, label %84, label %111, !llvm.loop !27

99:                                               ; preds = %83, %107
  %100 = phi ptr [ %108, %107 ], [ %80, %83 ]
  %101 = phi i32 [ %109, %107 ], [ %59, %83 ]
  %102 = load i8, ptr %100, align 1, !tbaa !16
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds i8, ptr %11, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !16
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = getelementptr inbounds i8, ptr %100, i64 1
  %109 = add nsw i32 %101, -1
  %110 = icmp sgt i32 %109, %76
  br i1 %110, label %99, label %111, !llvm.loop !28

111:                                              ; preds = %95, %84, %107, %99, %82, %83
  %112 = phi i32 [ %59, %83 ], [ %59, %82 ], [ %76, %107 ], [ %101, %99 ], [ %76, %95 ], [ %86, %84 ]
  %113 = sub i32 %71, %112
  br label %134

114:                                              ; preds = %67
  %115 = icmp slt i32 %60, %2
  %116 = select i1 %53, i1 %115, i1 false
  %117 = sub nsw i32 %60, %2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %3, i64 %118
  %120 = sext i32 %60 to i64
  %121 = getelementptr inbounds i8, ptr %1, i64 %120
  %122 = select i1 %116, ptr %121, ptr %119
  %123 = load i8, ptr %122, align 1, !tbaa !16
  br i1 %54, label %128, label %124

124:                                              ; preds = %114
  %125 = zext i8 %123 to i64
  %126 = getelementptr inbounds i8, ptr %13, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !16
  br label %128

128:                                              ; preds = %114, %124
  %129 = phi i8 [ %127, %124 ], [ %123, %114 ]
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i8, ptr %11, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !16
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %128, %111, %63, %58
  %135 = phi i32 [ %59, %63 ], [ %112, %111 ], [ %59, %128 ], [ %59, %58 ]
  %136 = phi i32 [ %60, %63 ], [ %113, %111 ], [ %60, %128 ], [ %60, %58 ]
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
  %151 = phi i32 [ %135, %148 ], [ %59, %128 ]
  %152 = phi i32 [ %136, %148 ], [ %60, %128 ]
  %153 = icmp eq i32 %151, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = icmp sgt i32 %151, 0
  %156 = select i1 %155, i32 -1, i32 1
  %157 = add nsw i32 %156, %151
  %158 = select i1 %155, i32 1, i32 -1
  %159 = add nsw i32 %158, %152
  br label %58

160:                                              ; preds = %150, %148, %145, %141, %48, %38, %9
  %161 = phi i32 [ -1, %9 ], [ -1, %38 ], [ -2, %48 ], [ -1, %150 ], [ -2, %148 ], [ %136, %145 ], [ -1, %141 ]
  ret i32 %161
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_match(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %2) #23
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @byte_re_match_2_internal(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #2 {
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %10 = load ptr, ptr %0, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !29
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
  br i1 %35, label %1717, label %41

36:                                               ; preds = %8
  %37 = icmp slt i32 %5, 0
  %38 = add nsw i32 %4, %2
  %39 = icmp slt i32 %38, %5
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %1717, label %55

41:                                               ; preds = %21
  %42 = icmp ugt i64 %18, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %41, %43
  %44 = phi i64 [ %53, %43 ], [ 1, %41 ]
  %45 = getelementptr inbounds ptr, ptr %26, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %45, align 8, !tbaa !30
  %46 = getelementptr inbounds ptr, ptr %25, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %46, align 8, !tbaa !30
  %47 = getelementptr inbounds ptr, ptr %24, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %47, align 8, !tbaa !30
  %48 = getelementptr inbounds ptr, ptr %23, i64 %44
  store ptr @byte_reg_unset_dummy, ptr %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %union.byte_register_info_type, ptr %29, i64 %44
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, -32
  %52 = or disjoint i8 %51, 3
  store i8 %52, ptr %49, align 8
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %44, %17
  br i1 %54, label %55, label %43, !llvm.loop !31

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
  %101 = icmp eq i32 %71, 0
  %102 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %103 = icmp eq ptr %15, null
  %104 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 3
  %105 = icmp ne i32 %73, 0
  br label %106

106:                                              ; preds = %1708, %70
  %107 = phi i32 [ %1625, %1708 ], [ 0, %70 ]
  %108 = phi ptr [ %1624, %1708 ], [ null, %70 ]
  %109 = phi i64 [ %1644, %1708 ], [ 256, %70 ]
  %110 = phi i64 [ %1649, %1708 ], [ 257, %70 ]
  %111 = phi ptr [ %1623, %1708 ], [ %19, %70 ]
  %112 = phi i32 [ %1622, %1708 ], [ 5, %70 ]
  %113 = phi i32 [ %1672, %1708 ], [ 0, %70 ]
  %114 = phi ptr [ %1626, %1708 ], [ null, %70 ]
  %115 = phi ptr [ %1639, %1708 ], [ %10, %70 ]
  %116 = phi ptr [ %1712, %1708 ], [ %94, %70 ]
  %117 = phi ptr [ %1635, %1708 ], [ %95, %70 ]
  %118 = icmp eq ptr %115, %13
  br i1 %118, label %119, label %334

119:                                              ; preds = %1596, %106
  %120 = phi ptr [ %111, %106 ], [ %1600, %1596 ]
  %121 = phi i32 [ %112, %106 ], [ %1601, %1596 ]
  %122 = phi i32 [ %113, %106 ], [ %1602, %1596 ]
  %123 = phi ptr [ %114, %106 ], [ %1603, %1596 ]
  %124 = phi ptr [ %116, %106 ], [ %1605, %1596 ]
  %125 = phi ptr [ %117, %106 ], [ %1606, %1596 ]
  %126 = icmp eq ptr %125, %85
  br i1 %126, label %172, label %127

127:                                              ; preds = %119
  %128 = icmp ule ptr %74, %108
  %129 = select i1 %105, i1 %128, i1 false
  %130 = icmp ule ptr %108, %76
  %131 = select i1 %129, i1 %130, i1 false
  %132 = icmp eq ptr %124, %86
  %133 = xor i1 %131, %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %127
  %135 = icmp ugt ptr %125, %108
  br label %138

136:                                              ; preds = %127
  %137 = xor i1 %132, true
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i1 [ %135, %134 ], [ %137, %136 ]
  %140 = icmp eq i32 %122, 0
  %141 = icmp eq i32 %107, 0
  %142 = select i1 %141, i1 true, i1 %139
  br i1 %140, label %155, label %143

143:                                              ; preds = %138
  br i1 %142, label %144, label %1618

144:                                              ; preds = %143
  br i1 %56, label %145, label %1618

145:                                              ; preds = %144, %145
  %146 = phi i64 [ %153, %145 ], [ 1, %144 ]
  %147 = getelementptr inbounds ptr, ptr %57, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !30
  %149 = getelementptr inbounds ptr, ptr %62, i64 %146
  store ptr %148, ptr %149, align 8, !tbaa !30
  %150 = getelementptr inbounds ptr, ptr %58, i64 %146
  %151 = load ptr, ptr %150, align 8, !tbaa !30
  %152 = getelementptr inbounds ptr, ptr %63, i64 %146
  store ptr %151, ptr %152, align 8, !tbaa !30
  %153 = add nuw nsw i64 %146, 1
  %154 = icmp eq i64 %146, %17
  br i1 %154, label %1608, label %145, !llvm.loop !32

155:                                              ; preds = %138
  br i1 %142, label %172, label %156

156:                                              ; preds = %1713, %155
  %157 = phi ptr [ %108, %155 ], [ %1714, %1713 ]
  %158 = icmp ult ptr %157, %74
  %159 = icmp ugt ptr %157, %76
  %160 = select i1 %158, i1 true, i1 %159
  %161 = select i1 %160, ptr %85, ptr %86
  br i1 %56, label %162, label %172

162:                                              ; preds = %156, %162
  %163 = phi i64 [ %170, %162 ], [ 1, %156 ]
  %164 = getelementptr inbounds ptr, ptr %62, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !30
  %166 = getelementptr inbounds ptr, ptr %57, i64 %163
  store ptr %165, ptr %166, align 8, !tbaa !30
  %167 = getelementptr inbounds ptr, ptr %63, i64 %163
  %168 = load ptr, ptr %167, align 8, !tbaa !30
  %169 = getelementptr inbounds ptr, ptr %58, i64 %163
  store ptr %168, ptr %169, align 8, !tbaa !30
  %170 = add nuw nsw i64 %163, 1
  %171 = icmp eq i64 %163, %17
  br i1 %171, label %172, label %162, !llvm.loop !33

172:                                              ; preds = %119, %334, %162, %156, %155
  %173 = phi ptr [ %124, %155 ], [ %161, %156 ], [ %161, %162 ], [ %336, %334 ], [ %124, %119 ]
  %174 = phi ptr [ %125, %155 ], [ %157, %156 ], [ %157, %162 ], [ %335, %334 ], [ %85, %119 ]
  %175 = icmp eq ptr %6, null
  br i1 %175, label %324, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr %102, align 8
  %178 = and i8 %177, 16
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %324

180:                                              ; preds = %176
  %181 = lshr i8 %177, 1
  %182 = and i8 %181, 3
  switch i8 %182, label %222 [
    i8 0, label %183
    i8 1, label %200
  ]

183:                                              ; preds = %180
  %184 = add i64 %17, 2
  %185 = tail call i64 @llvm.umax.i64(i64 %184, i64 30)
  %186 = trunc i64 %185 to i32
  store i32 %186, ptr %6, align 8, !tbaa !34
  %187 = shl i64 %185, 2
  %188 = and i64 %187, 17179869180
  %189 = tail call ptr @malloc(i64 noundef %188) #26
  %190 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  store ptr %189, ptr %190, align 8, !tbaa !36
  %191 = tail call ptr @malloc(i64 noundef %188) #26
  %192 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  store ptr %191, ptr %192, align 8, !tbaa !37
  %193 = icmp eq ptr %189, null
  %194 = icmp eq ptr %191, null
  %195 = or i1 %193, %194
  br i1 %195, label %1717, label %196

196:                                              ; preds = %183
  %197 = load i8, ptr %102, align 8
  %198 = and i8 %197, -7
  %199 = or disjoint i8 %198, 2
  store i8 %199, ptr %102, align 8
  br label %222

200:                                              ; preds = %180
  %201 = load i32, ptr %6, align 8, !tbaa !34
  %202 = zext i32 %201 to i64
  %203 = add i64 %17, 2
  %204 = icmp ugt i64 %203, %202
  br i1 %204, label %205, label %224

205:                                              ; preds = %200
  %206 = trunc i64 %203 to i32
  store i32 %206, ptr %6, align 8, !tbaa !34
  %207 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !36
  %209 = shl i64 %203, 2
  %210 = and i64 %209, 17179869180
  %211 = tail call ptr @realloc(ptr noundef %208, i64 noundef %210) #27
  store ptr %211, ptr %207, align 8, !tbaa !36
  %212 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !37
  %214 = load i32, ptr %6, align 8, !tbaa !34
  %215 = zext i32 %214 to i64
  %216 = shl nuw nsw i64 %215, 2
  %217 = tail call ptr @realloc(ptr noundef %213, i64 noundef %216) #27
  store ptr %217, ptr %212, align 8, !tbaa !37
  %218 = load ptr, ptr %207, align 8, !tbaa !36
  %219 = icmp eq ptr %218, null
  %220 = icmp eq ptr %217, null
  %221 = or i1 %220, %219
  br i1 %221, label %1717, label %222

222:                                              ; preds = %196, %180, %205
  %223 = load i32, ptr %6, align 8, !tbaa !34
  br label %224

224:                                              ; preds = %222, %200
  %225 = phi i32 [ %223, %222 ], [ %201, %200 ]
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %243, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !36
  store i32 %5, ptr %229, align 4, !tbaa !25
  %230 = icmp eq ptr %173, %86
  %231 = ptrtoint ptr %174 to i64
  %232 = ptrtoint ptr %74 to i64
  %233 = sub i64 %231, %232
  %234 = trunc i64 %233 to i32
  %235 = ptrtoint ptr %72 to i64
  %236 = sub i64 %231, %235
  %237 = trunc i64 %236 to i32
  %238 = add i32 %73, %237
  %239 = select i1 %230, i32 %234, i32 %238
  %240 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !37
  store i32 %239, ptr %241, align 4, !tbaa !25
  %242 = load i32, ptr %6, align 8, !tbaa !34
  br label %243

243:                                              ; preds = %227, %224
  %244 = phi i32 [ %242, %227 ], [ 0, %224 ]
  %245 = zext i32 %244 to i64
  %246 = tail call i64 @llvm.umin.i64(i64 %18, i64 %245)
  %247 = icmp ugt i64 %246, 1
  br i1 %247, label %248, label %305

248:                                              ; preds = %243
  %249 = ptrtoint ptr %74 to i64
  %250 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %251 = ptrtoint ptr %72 to i64
  %252 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  br label %253

253:                                              ; preds = %248, %295
  %254 = phi i64 [ 1, %248 ], [ %300, %295 ]
  %255 = getelementptr inbounds ptr, ptr %57, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !30
  %257 = icmp eq ptr %256, @byte_reg_unset_dummy
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds ptr, ptr %58, i64 %254
  %260 = load ptr, ptr %259, align 8, !tbaa !30
  %261 = icmp eq ptr %260, @byte_reg_unset_dummy
  br i1 %261, label %262, label %265

262:                                              ; preds = %258, %253
  %263 = load ptr, ptr %252, align 8, !tbaa !37
  %264 = getelementptr inbounds i32, ptr %263, i64 %254
  store i32 -1, ptr %264, align 4, !tbaa !25
  br label %295

265:                                              ; preds = %258
  %266 = icmp ugt ptr %74, %256
  %267 = or i1 %98, %266
  %268 = icmp ugt ptr %256, %76
  %269 = select i1 %267, i1 true, i1 %268
  %270 = ptrtoint ptr %256 to i64
  br i1 %269, label %276, label %271

271:                                              ; preds = %265
  %272 = sub i64 %270, %249
  %273 = trunc i64 %272 to i32
  %274 = load ptr, ptr %250, align 8, !tbaa !36
  %275 = getelementptr inbounds i32, ptr %274, i64 %254
  store i32 %273, ptr %275, align 4, !tbaa !25
  br label %282

276:                                              ; preds = %265
  %277 = sub i64 %270, %251
  %278 = trunc i64 %277 to i32
  %279 = add i32 %73, %278
  %280 = load ptr, ptr %250, align 8, !tbaa !36
  %281 = getelementptr inbounds i32, ptr %280, i64 %254
  store i32 %279, ptr %281, align 4, !tbaa !25
  br i1 %98, label %290, label %282

282:                                              ; preds = %271, %276
  %283 = icmp ugt ptr %74, %260
  %284 = icmp ugt ptr %260, %76
  %285 = select i1 %283, i1 true, i1 %284
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = ptrtoint ptr %260 to i64
  %288 = sub i64 %287, %249
  %289 = trunc i64 %288 to i32
  br label %295

290:                                              ; preds = %282, %276
  %291 = ptrtoint ptr %260 to i64
  %292 = sub i64 %291, %251
  %293 = trunc i64 %292 to i32
  %294 = add i32 %73, %293
  br label %295

295:                                              ; preds = %286, %290, %262
  %296 = phi ptr [ %250, %262 ], [ %252, %290 ], [ %252, %286 ]
  %297 = phi i32 [ -1, %262 ], [ %294, %290 ], [ %289, %286 ]
  %298 = load ptr, ptr %296, align 8, !tbaa !30
  %299 = getelementptr inbounds i32, ptr %298, i64 %254
  store i32 %297, ptr %299, align 4, !tbaa !25
  %300 = add nuw nsw i64 %254, 1
  %301 = load i32, ptr %6, align 8, !tbaa !34
  %302 = zext i32 %301 to i64
  %303 = tail call i64 @llvm.umin.i64(i64 %18, i64 %302)
  %304 = icmp ugt i64 %303, %300
  br i1 %304, label %253, label %305, !llvm.loop !38

305:                                              ; preds = %295, %243
  %306 = phi i32 [ %244, %243 ], [ %301, %295 ]
  %307 = trunc i64 %18 to i32
  %308 = icmp ugt i32 %306, %307
  br i1 %308, label %309, label %324

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !37
  %312 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  %313 = load ptr, ptr %312, align 8, !tbaa !36
  %314 = shl i64 %18, 32
  %315 = ashr exact i64 %314, 32
  br label %316

316:                                              ; preds = %309, %316
  %317 = phi i64 [ %315, %309 ], [ %320, %316 ]
  %318 = getelementptr inbounds i32, ptr %311, i64 %317
  store i32 -1, ptr %318, align 4, !tbaa !25
  %319 = getelementptr inbounds i32, ptr %313, i64 %317
  store i32 -1, ptr %319, align 4, !tbaa !25
  %320 = add nsw i64 %317, 1
  %321 = load i32, ptr %6, align 8, !tbaa !34
  %322 = trunc i64 %320 to i32
  %323 = icmp ugt i32 %321, %322
  br i1 %323, label %316, label %324, !llvm.loop !39

324:                                              ; preds = %316, %305, %176, %172
  %325 = sub nsw i64 0, %90
  %326 = getelementptr inbounds i8, ptr %174, i64 %325
  %327 = icmp eq ptr %173, %86
  %328 = getelementptr inbounds i8, ptr %72, i64 %83
  %329 = select i1 %327, ptr %74, ptr %328
  %330 = ptrtoint ptr %326 to i64
  %331 = ptrtoint ptr %329 to i64
  %332 = sub i64 %330, %331
  %333 = trunc i64 %332 to i32
  br label %1717

334:                                              ; preds = %106, %1596
  %335 = phi ptr [ %1606, %1596 ], [ %117, %106 ]
  %336 = phi ptr [ %1605, %1596 ], [ %116, %106 ]
  %337 = phi ptr [ %1604, %1596 ], [ %115, %106 ]
  %338 = phi ptr [ %1603, %1596 ], [ %114, %106 ]
  %339 = phi i32 [ %1602, %1596 ], [ %113, %106 ]
  %340 = phi i32 [ %1601, %1596 ], [ %112, %106 ]
  %341 = phi ptr [ %1600, %1596 ], [ %111, %106 ]
  %342 = phi i64 [ %1599, %1596 ], [ %110, %106 ]
  %343 = phi i64 [ %1598, %1596 ], [ %109, %106 ]
  %344 = phi i32 [ %1597, %1596 ], [ 0, %106 ]
  %345 = getelementptr inbounds i8, ptr %337, i64 1
  %346 = load i8, ptr %337, align 1, !tbaa !16
  switch i8 %346, label %1595 [
    i8 0, label %1596
    i8 1, label %172
    i8 2, label %367
    i8 3, label %431
    i8 4, label %475
    i8 5, label %475
    i8 6, label %525
    i8 7, label %573
    i8 8, label %766
    i8 9, label %849
    i8 10, label %863
    i8 11, label %877
    i8 12, label %880
    i8 16, label %882
    i8 15, label %956
    i8 18, label %1050
    i8 17, label %1225
    i8 13, label %1257
    i8 14, label %1257
    i8 19, label %357
    i8 20, label %347
    i8 21, label %1380
    i8 22, label %1399
    i8 23, label %1416
    i8 28, label %1433
    i8 29, label %1459
    i8 26, label %1485
    i8 27, label %1511
    i8 24, label %1537
    i8 25, label %1566
  ]

347:                                              ; preds = %334
  %348 = sub i64 %343, %342
  %349 = mul i64 %348, 3
  %350 = add i64 %349, 7
  %351 = sub i32 %340, %339
  %352 = zext i32 %351 to i64
  %353 = icmp ugt i64 %350, %352
  br i1 %353, label %354, label %1326

354:                                              ; preds = %347
  %355 = load i32, ptr @xre_max_failures, align 4, !tbaa !25
  %356 = mul nsw i32 %355, 19
  br label %1330

357:                                              ; preds = %334
  %358 = sub i64 %343, %342
  %359 = mul i64 %358, 3
  %360 = add i64 %359, 7
  %361 = sub i32 %340, %339
  %362 = zext i32 %361 to i64
  %363 = icmp ugt i64 %360, %362
  br i1 %363, label %364, label %1272

364:                                              ; preds = %357
  %365 = load i32, ptr @xre_max_failures, align 4, !tbaa !25
  %366 = mul nsw i32 %365, 19
  br label %1276

367:                                              ; preds = %334
  %368 = getelementptr inbounds i8, ptr %337, i64 2
  %369 = load i8, ptr %345, align 1, !tbaa !16
  %370 = zext i8 %369 to i32
  %371 = getelementptr i8, ptr %337, i64 3
  %372 = add nsw i32 %370, -1
  %373 = zext i32 %372 to i64
  %374 = getelementptr i8, ptr %371, i64 %373
  br i1 %103, label %398, label %375

375:                                              ; preds = %367, %394
  %376 = phi ptr [ %395, %394 ], [ %368, %367 ]
  %377 = phi ptr [ %381, %394 ], [ %336, %367 ]
  %378 = phi ptr [ %387, %394 ], [ %335, %367 ]
  %379 = phi i32 [ %396, %394 ], [ %370, %367 ]
  br label %380

380:                                              ; preds = %384, %375
  %381 = phi ptr [ %377, %375 ], [ %85, %384 ]
  %382 = phi ptr [ %378, %375 ], [ %72, %384 ]
  %383 = icmp eq ptr %382, %381
  br i1 %383, label %384, label %386

384:                                              ; preds = %380
  %385 = icmp eq ptr %381, %85
  br i1 %385, label %1608, label %380, !llvm.loop !40

386:                                              ; preds = %380
  %387 = getelementptr inbounds i8, ptr %382, i64 1
  %388 = load i8, ptr %382, align 1, !tbaa !16
  %389 = zext i8 %388 to i64
  %390 = getelementptr inbounds i8, ptr %15, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !16
  %392 = load i8, ptr %376, align 1, !tbaa !16
  %393 = icmp eq i8 %391, %392
  br i1 %393, label %394, label %1608

394:                                              ; preds = %386
  %395 = getelementptr inbounds i8, ptr %376, i64 1
  %396 = add nsw i32 %379, -1
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %418, label %375, !llvm.loop !41

398:                                              ; preds = %367, %414
  %399 = phi ptr [ %415, %414 ], [ %368, %367 ]
  %400 = phi ptr [ %404, %414 ], [ %336, %367 ]
  %401 = phi ptr [ %410, %414 ], [ %335, %367 ]
  %402 = phi i32 [ %416, %414 ], [ %370, %367 ]
  br label %403

403:                                              ; preds = %407, %398
  %404 = phi ptr [ %400, %398 ], [ %85, %407 ]
  %405 = phi ptr [ %401, %398 ], [ %72, %407 ]
  %406 = icmp eq ptr %405, %404
  br i1 %406, label %407, label %409

407:                                              ; preds = %403
  %408 = icmp eq ptr %404, %85
  br i1 %408, label %1608, label %403, !llvm.loop !42

409:                                              ; preds = %403
  %410 = getelementptr inbounds i8, ptr %405, i64 1
  %411 = load i8, ptr %405, align 1, !tbaa !16
  %412 = load i8, ptr %399, align 1, !tbaa !16
  %413 = icmp eq i8 %411, %412
  br i1 %413, label %414, label %1608

414:                                              ; preds = %409
  %415 = getelementptr inbounds i8, ptr %399, i64 1
  %416 = add nsw i32 %402, -1
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %398, !llvm.loop !43

418:                                              ; preds = %394, %414
  %419 = phi ptr [ %404, %414 ], [ %381, %394 ]
  %420 = phi ptr [ %410, %414 ], [ %387, %394 ]
  %421 = icmp ne i32 %344, 0
  %422 = icmp ugt i64 %342, %343
  %423 = select i1 %421, i1 true, i1 %422
  br i1 %423, label %1596, label %424

424:                                              ; preds = %418, %424
  %425 = phi i64 [ %429, %424 ], [ %342, %418 ]
  %426 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %425
  %427 = load i8, ptr %426, align 8
  %428 = or i8 %427, 24
  store i8 %428, ptr %426, align 8
  %429 = add i64 %425, 1
  %430 = icmp ugt i64 %429, %343
  br i1 %430, label %1596, label %424, !llvm.loop !44

431:                                              ; preds = %334, %435
  %432 = phi ptr [ %85, %435 ], [ %336, %334 ]
  %433 = phi ptr [ %72, %435 ], [ %335, %334 ]
  %434 = icmp eq ptr %433, %432
  br i1 %434, label %435, label %437

435:                                              ; preds = %431
  %436 = icmp eq ptr %432, %85
  br i1 %436, label %1608, label %431, !llvm.loop !45

437:                                              ; preds = %431
  %438 = load i64, ptr %104, align 8, !tbaa !24
  %439 = and i64 %438, 64
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %450

441:                                              ; preds = %437
  br i1 %103, label %446, label %442

442:                                              ; preds = %441
  %443 = load i8, ptr %433, align 1, !tbaa !16
  %444 = zext i8 %443 to i64
  %445 = getelementptr inbounds i8, ptr %15, i64 %444
  br label %446

446:                                              ; preds = %441, %442
  %447 = phi ptr [ %445, %442 ], [ %433, %441 ]
  %448 = load i8, ptr %447, align 1, !tbaa !16
  %449 = icmp eq i8 %448, 10
  br i1 %449, label %1608, label %450

450:                                              ; preds = %446, %437
  %451 = and i64 %438, 128
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %462, label %453

453:                                              ; preds = %450
  br i1 %103, label %458, label %454

454:                                              ; preds = %453
  %455 = load i8, ptr %433, align 1, !tbaa !16
  %456 = zext i8 %455 to i64
  %457 = getelementptr inbounds i8, ptr %15, i64 %456
  br label %458

458:                                              ; preds = %453, %454
  %459 = phi ptr [ %457, %454 ], [ %433, %453 ]
  %460 = load i8, ptr %459, align 1, !tbaa !16
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %1608, label %462

462:                                              ; preds = %450, %458
  %463 = icmp ne i32 %344, 0
  %464 = icmp ugt i64 %342, %343
  %465 = select i1 %463, i1 true, i1 %464
  br i1 %465, label %473, label %466

466:                                              ; preds = %462, %466
  %467 = phi i64 [ %471, %466 ], [ %342, %462 ]
  %468 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %467
  %469 = load i8, ptr %468, align 8
  %470 = or i8 %469, 24
  store i8 %470, ptr %468, align 8
  %471 = add i64 %467, 1
  %472 = icmp ugt i64 %471, %343
  br i1 %472, label %473, label %466, !llvm.loop !46

473:                                              ; preds = %466, %462
  %474 = getelementptr inbounds i8, ptr %433, i64 1
  br label %1596

475:                                              ; preds = %334, %334
  %476 = icmp eq i8 %346, 5
  br label %477

477:                                              ; preds = %481, %475
  %478 = phi ptr [ %336, %475 ], [ %85, %481 ]
  %479 = phi ptr [ %335, %475 ], [ %72, %481 ]
  %480 = icmp eq ptr %479, %478
  br i1 %480, label %481, label %483

481:                                              ; preds = %477
  %482 = icmp eq ptr %478, %85
  br i1 %482, label %1608, label %477, !llvm.loop !47

483:                                              ; preds = %477
  br i1 %103, label %488, label %484

484:                                              ; preds = %483
  %485 = load i8, ptr %479, align 1, !tbaa !16
  %486 = zext i8 %485 to i64
  %487 = getelementptr inbounds i8, ptr %15, i64 %486
  br label %488

488:                                              ; preds = %483, %484
  %489 = phi ptr [ %487, %484 ], [ %479, %483 ]
  %490 = load i8, ptr %489, align 1, !tbaa !16
  %491 = zext i8 %490 to i32
  %492 = load i8, ptr %345, align 1, !tbaa !16
  %493 = zext i8 %492 to i32
  %494 = shl nuw nsw i32 %493, 3
  %495 = icmp ugt i32 %494, %491
  br i1 %495, label %496, label %508

496:                                              ; preds = %488
  %497 = lshr i32 %491, 3
  %498 = zext nneg i32 %497 to i64
  %499 = getelementptr i8, ptr %345, i64 %498
  %500 = getelementptr i8, ptr %499, i64 1
  %501 = load i8, ptr %500, align 1, !tbaa !16
  %502 = zext i8 %501 to i32
  %503 = and i32 %491, 7
  %504 = shl nuw nsw i32 1, %503
  %505 = and i32 %504, %502
  %506 = icmp ne i32 %505, 0
  %507 = xor i1 %476, %506
  br i1 %507, label %509, label %1608

508:                                              ; preds = %488
  br i1 %476, label %509, label %1608

509:                                              ; preds = %496, %508
  %510 = zext i8 %492 to i64
  %511 = getelementptr i8, ptr %345, i64 %510
  %512 = getelementptr i8, ptr %511, i64 1
  %513 = icmp ne i32 %344, 0
  %514 = icmp ugt i64 %342, %343
  %515 = select i1 %513, i1 true, i1 %514
  br i1 %515, label %523, label %516

516:                                              ; preds = %509, %516
  %517 = phi i64 [ %521, %516 ], [ %342, %509 ]
  %518 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %517
  %519 = load i8, ptr %518, align 8
  %520 = or i8 %519, 24
  store i8 %520, ptr %518, align 8
  %521 = add i64 %517, 1
  %522 = icmp ugt i64 %521, %343
  br i1 %522, label %523, label %516, !llvm.loop !48

523:                                              ; preds = %516, %509
  %524 = getelementptr inbounds i8, ptr %479, i64 1
  br label %1596

525:                                              ; preds = %334
  store ptr %345, ptr %9, align 8, !tbaa !30
  %526 = load i8, ptr %345, align 1, !tbaa !16
  %527 = zext i8 %526 to i64
  %528 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %527
  %529 = load i8, ptr %528, align 8
  %530 = and i8 %529, 3
  %531 = icmp eq i8 %530, 3
  br i1 %531, label %532, label %544

532:                                              ; preds = %525
  %533 = call fastcc signext i8 @byte_group_match_null_string_p(ptr noundef nonnull %9, ptr noundef %13, ptr noundef nonnull %61) #23, !range !49
  %534 = load i8, ptr %345, align 1, !tbaa !16
  %535 = zext i8 %534 to i64
  %536 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %535
  %537 = load i8, ptr %536, align 8
  %538 = and i8 %537, -4
  %539 = or disjoint i8 %538, %533
  store i8 %539, ptr %536, align 8
  %540 = load i8, ptr %345, align 1, !tbaa !16
  %541 = zext i8 %540 to i64
  %542 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %541
  %543 = load i8, ptr %542, align 8
  br label %544

544:                                              ; preds = %532, %525
  %545 = phi i64 [ %541, %532 ], [ %527, %525 ]
  %546 = phi i8 [ %543, %532 ], [ %529, %525 ]
  %547 = and i8 %546, 3
  %548 = icmp eq i8 %547, 0
  %549 = getelementptr inbounds ptr, ptr %57, i64 %545
  %550 = load ptr, ptr %549, align 8, !tbaa !30
  %551 = icmp eq ptr %550, @byte_reg_unset_dummy
  %552 = select i1 %551, ptr %335, ptr %550
  %553 = select i1 %548, ptr %550, ptr %552
  %554 = getelementptr inbounds ptr, ptr %59, i64 %545
  store ptr %553, ptr %554, align 8, !tbaa !30
  %555 = load i8, ptr %345, align 1, !tbaa !16
  %556 = zext i8 %555 to i64
  %557 = getelementptr inbounds ptr, ptr %57, i64 %556
  store ptr %335, ptr %557, align 8, !tbaa !30
  %558 = load i8, ptr %345, align 1, !tbaa !16
  %559 = zext i8 %558 to i64
  %560 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %559
  %561 = load i8, ptr %560, align 8
  %562 = or i8 %561, 4
  store i8 %562, ptr %560, align 8
  %563 = load i8, ptr %345, align 1, !tbaa !16
  %564 = zext i8 %563 to i64
  %565 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %564
  %566 = load i8, ptr %565, align 8
  %567 = and i8 %566, -9
  store i8 %567, ptr %565, align 8
  %568 = load i8, ptr %345, align 1, !tbaa !16
  %569 = zext i8 %568 to i64
  %570 = icmp eq i64 %342, 257
  %571 = select i1 %570, i64 %569, i64 %342
  %572 = getelementptr inbounds i8, ptr %337, i64 3
  br label %1596

573:                                              ; preds = %334
  %574 = load i8, ptr %345, align 1, !tbaa !16
  %575 = zext i8 %574 to i64
  %576 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %575
  %577 = load i8, ptr %576, align 8
  %578 = and i8 %577, 3
  %579 = icmp eq i8 %578, 0
  %580 = getelementptr inbounds ptr, ptr %58, i64 %575
  %581 = load ptr, ptr %580, align 8, !tbaa !30
  %582 = icmp eq ptr %581, @byte_reg_unset_dummy
  %583 = select i1 %582, ptr %335, ptr %581
  %584 = select i1 %579, ptr %581, ptr %583
  %585 = getelementptr inbounds ptr, ptr %60, i64 %575
  store ptr %584, ptr %585, align 8, !tbaa !30
  %586 = load i8, ptr %345, align 1, !tbaa !16
  %587 = zext i8 %586 to i64
  %588 = getelementptr inbounds ptr, ptr %58, i64 %587
  store ptr %335, ptr %588, align 8, !tbaa !30
  %589 = load i8, ptr %345, align 1, !tbaa !16
  %590 = zext i8 %589 to i64
  %591 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %590
  %592 = load i8, ptr %591, align 8
  %593 = and i8 %592, -5
  store i8 %593, ptr %591, align 8
  %594 = icmp eq i64 %342, %343
  %595 = load i8, ptr %345, align 1, !tbaa !16
  br i1 %594, label %606, label %596

596:                                              ; preds = %573, %600
  %597 = phi i8 [ %598, %600 ], [ %595, %573 ]
  %598 = add i8 %597, -1
  %599 = icmp eq i8 %598, 0
  br i1 %599, label %606, label %600

600:                                              ; preds = %596
  %601 = zext i8 %598 to i64
  %602 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %601
  %603 = load i8, ptr %602, align 8
  %604 = and i8 %603, 4
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %596, label %606, !llvm.loop !50

606:                                              ; preds = %600, %596, %573
  %607 = phi i64 [ 256, %573 ], [ %601, %600 ], [ 256, %596 ]
  %608 = phi i64 [ 257, %573 ], [ %342, %600 ], [ 257, %596 ]
  %609 = zext i8 %595 to i64
  %610 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %609
  %611 = load i8, ptr %610, align 8
  %612 = and i8 %611, 8
  %613 = icmp eq i8 %612, 0
  %614 = icmp eq ptr %338, %337
  %615 = select i1 %613, i1 true, i1 %614
  br i1 %615, label %616, label %764

616:                                              ; preds = %606
  %617 = getelementptr inbounds i8, ptr %337, i64 3
  %618 = icmp ult ptr %617, %13
  br i1 %618, label %619, label %764

619:                                              ; preds = %616
  %620 = getelementptr inbounds i8, ptr %337, i64 4
  store ptr %620, ptr %9, align 8, !tbaa !30
  %621 = load i8, ptr %617, align 1, !tbaa !16
  %622 = add i8 %621, -13
  %623 = icmp ult i8 %622, 10
  br i1 %623, label %624, label %764

624:                                              ; preds = %619
  %625 = zext nneg i8 %622 to i16
  %626 = lshr i16 625, %625
  %627 = and i16 %626, 1
  %628 = icmp eq i16 %627, 0
  br i1 %628, label %764, label %629

629:                                              ; preds = %624
  %630 = zext nneg i8 %622 to i64
  %631 = getelementptr inbounds [10 x i64], ptr @switch.table.byte_re_match_2_internal, i64 0, i64 %630
  %632 = load i64, ptr %631, align 8
  %633 = load i8, ptr %620, align 1, !tbaa !16
  %634 = zext i8 %633 to i32
  %635 = getelementptr inbounds i8, ptr %337, i64 5
  %636 = load i8, ptr %635, align 1, !tbaa !16
  %637 = sext i8 %636 to i32
  %638 = shl nsw i32 %637, 8
  %639 = or disjoint i32 %638, %634
  %640 = getelementptr inbounds i8, ptr %337, i64 %632
  %641 = sext i32 %639 to i64
  %642 = getelementptr inbounds i8, ptr %640, i64 %641
  store ptr %642, ptr %9, align 8, !tbaa !30
  %643 = icmp slt i32 %639, 0
  br i1 %643, label %644, label %764

644:                                              ; preds = %629
  %645 = load i8, ptr %642, align 1, !tbaa !16
  %646 = icmp eq i8 %645, 15
  br i1 %646, label %647, label %764

647:                                              ; preds = %644
  %648 = getelementptr inbounds i8, ptr %642, i64 3
  %649 = load i8, ptr %648, align 1, !tbaa !16
  %650 = icmp eq i8 %649, 6
  br i1 %650, label %651, label %764

651:                                              ; preds = %647
  %652 = getelementptr inbounds i8, ptr %642, i64 4
  %653 = load i8, ptr %652, align 1, !tbaa !16
  %654 = load i8, ptr %345, align 1, !tbaa !16
  %655 = icmp eq i8 %653, %654
  br i1 %655, label %656, label %764

656:                                              ; preds = %651
  %657 = getelementptr inbounds i8, ptr %642, i64 3
  %658 = zext i8 %653 to i64
  %659 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %658
  %660 = load i8, ptr %659, align 8
  %661 = and i8 %660, 16
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %689, label %663

663:                                              ; preds = %656
  %664 = and i8 %660, -17
  store i8 %664, ptr %659, align 8
  %665 = getelementptr inbounds i8, ptr %337, i64 2
  %666 = load i8, ptr %665, align 1, !tbaa !16
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %689, label %668

668:                                              ; preds = %663
  %669 = load i8, ptr %345, align 1, !tbaa !16
  %670 = zext i8 %669 to i64
  br label %671

671:                                              ; preds = %668, %681
  %672 = phi i64 [ %670, %668 ], [ %682, %681 ]
  %673 = getelementptr inbounds ptr, ptr %59, i64 %672
  %674 = load ptr, ptr %673, align 8, !tbaa !30
  %675 = getelementptr inbounds ptr, ptr %57, i64 %672
  store ptr %674, ptr %675, align 8, !tbaa !30
  %676 = getelementptr inbounds ptr, ptr %60, i64 %672
  %677 = load ptr, ptr %676, align 8, !tbaa !30
  %678 = icmp ult ptr %677, %674
  br i1 %678, label %681, label %679

679:                                              ; preds = %671
  %680 = getelementptr inbounds ptr, ptr %58, i64 %672
  store ptr %677, ptr %680, align 8, !tbaa !30
  br label %681

681:                                              ; preds = %671, %679
  %682 = add nuw nsw i64 %672, 1
  %683 = load i8, ptr %345, align 1, !tbaa !16
  %684 = zext i8 %683 to i64
  %685 = load i8, ptr %665, align 1, !tbaa !16
  %686 = zext i8 %685 to i64
  %687 = add nuw nsw i64 %686, %684
  %688 = icmp ult i64 %682, %687
  br i1 %688, label %671, label %689, !llvm.loop !51

689:                                              ; preds = %681, %663, %656
  %690 = getelementptr inbounds i8, ptr %642, i64 1
  store ptr %690, ptr %9, align 8, !tbaa !30
  %691 = load i8, ptr %690, align 1, !tbaa !16
  %692 = zext i8 %691 to i32
  %693 = getelementptr inbounds i8, ptr %642, i64 2
  %694 = load i8, ptr %693, align 1, !tbaa !16
  %695 = sext i8 %694 to i32
  %696 = shl nsw i32 %695, 8
  %697 = or disjoint i32 %696, %692
  store ptr %657, ptr %9, align 8, !tbaa !30
  %698 = sub i64 %607, %608
  %699 = mul i64 %698, 3
  %700 = add i64 %699, 7
  %701 = sub i32 %340, %339
  %702 = zext i32 %701 to i64
  %703 = icmp ugt i64 %700, %702
  br i1 %703, label %704, label %707

704:                                              ; preds = %689
  %705 = load i32, ptr @xre_max_failures, align 4, !tbaa !25
  %706 = mul nsw i32 %705, 19
  br label %711

707:                                              ; preds = %715, %689
  %708 = phi ptr [ %341, %689 ], [ %719, %715 ]
  %709 = phi i32 [ %340, %689 ], [ %716, %715 ]
  %710 = icmp ugt i64 %608, %607
  br i1 %710, label %745, label %725

711:                                              ; preds = %704, %715
  %712 = phi i32 [ %340, %704 ], [ %716, %715 ]
  %713 = phi ptr [ %341, %704 ], [ %719, %715 ]
  %714 = icmp ugt i32 %712, %706
  br i1 %714, label %1717, label %715

715:                                              ; preds = %711
  %716 = shl i32 %712, 1
  %717 = zext i32 %716 to i64
  %718 = shl nuw nsw i64 %717, 3
  %719 = alloca i8, i64 %718, align 16
  %720 = zext i32 %712 to i64
  %721 = shl nuw nsw i64 %720, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %719, ptr align 8 %713, i64 %721, i1 false)
  %722 = sub i32 %716, %339
  %723 = zext i32 %722 to i64
  %724 = icmp ugt i64 %700, %723
  br i1 %724, label %711, label %707

725:                                              ; preds = %707, %725
  %726 = phi i32 [ %738, %725 ], [ %339, %707 ]
  %727 = phi i64 [ %743, %725 ], [ %608, %707 ]
  %728 = getelementptr inbounds ptr, ptr %57, i64 %727
  %729 = load ptr, ptr %728, align 8, !tbaa !30
  %730 = add i32 %726, 1
  %731 = zext i32 %726 to i64
  %732 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %708, i64 %731
  store ptr %729, ptr %732, align 8, !tbaa !16
  %733 = getelementptr inbounds ptr, ptr %58, i64 %727
  %734 = load ptr, ptr %733, align 8, !tbaa !30
  %735 = add i32 %726, 2
  %736 = zext i32 %730 to i64
  %737 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %708, i64 %736
  store ptr %734, ptr %737, align 8, !tbaa !16
  %738 = add i32 %726, 3
  %739 = zext i32 %735 to i64
  %740 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %708, i64 %739
  %741 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %727
  %742 = load i64, ptr %741, align 8
  store i64 %742, ptr %740, align 8
  %743 = add i64 %727, 1
  %744 = icmp eq i64 %727, %607
  br i1 %744, label %745, label %725, !llvm.loop !52

745:                                              ; preds = %725, %707
  %746 = phi i32 [ %339, %707 ], [ %738, %725 ]
  %747 = trunc i64 %608 to i32
  %748 = add i32 %746, 1
  %749 = zext i32 %746 to i64
  %750 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %708, i64 %749
  store i32 %747, ptr %750, align 8, !tbaa !16
  %751 = trunc i64 %607 to i32
  %752 = add i32 %746, 2
  %753 = zext i32 %748 to i64
  %754 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %708, i64 %753
  store i32 %751, ptr %754, align 8, !tbaa !16
  %755 = load ptr, ptr %9, align 8, !tbaa !30
  %756 = sext i32 %697 to i64
  %757 = getelementptr inbounds i8, ptr %755, i64 %756
  %758 = add i32 %746, 3
  %759 = zext i32 %752 to i64
  %760 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %708, i64 %759
  store ptr %757, ptr %760, align 8, !tbaa !16
  %761 = add i32 %746, 4
  %762 = zext i32 %758 to i64
  %763 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %708, i64 %762
  store ptr %335, ptr %763, align 8, !tbaa !16
  br label %1608

764:                                              ; preds = %624, %619, %629, %644, %647, %651, %606, %616
  %765 = getelementptr inbounds i8, ptr %337, i64 3
  br label %1596

766:                                              ; preds = %334
  %767 = getelementptr inbounds i8, ptr %337, i64 2
  %768 = load i8, ptr %345, align 1, !tbaa !16
  %769 = zext i8 %768 to i64
  %770 = getelementptr inbounds ptr, ptr %57, i64 %769
  %771 = load ptr, ptr %770, align 8, !tbaa !30
  %772 = icmp eq ptr %771, @byte_reg_unset_dummy
  br i1 %772, label %1608, label %773

773:                                              ; preds = %766
  %774 = getelementptr inbounds ptr, ptr %58, i64 %769
  %775 = load ptr, ptr %774, align 8, !tbaa !30
  %776 = icmp eq ptr %775, @byte_reg_unset_dummy
  br i1 %776, label %1608, label %777

777:                                              ; preds = %773
  br i1 %98, label %786, label %778

778:                                              ; preds = %777
  %779 = icmp ule ptr %74, %771
  %780 = icmp ule ptr %771, %76
  %781 = select i1 %779, i1 %780, i1 false
  %782 = icmp ule ptr %74, %775
  %783 = icmp ule ptr %775, %76
  %784 = select i1 %782, i1 %783, i1 false
  %785 = xor i1 %781, %784
  br i1 %785, label %787, label %786

786:                                              ; preds = %777, %778
  br label %787

787:                                              ; preds = %778, %786
  %788 = phi ptr [ %775, %786 ], [ %86, %778 ]
  %789 = icmp ugt i64 %342, %343
  br label %790

790:                                              ; preds = %841, %787
  %791 = phi i32 [ %344, %787 ], [ 1, %841 ]
  %792 = phi ptr [ %771, %787 ], [ %838, %841 ]
  %793 = phi ptr [ %788, %787 ], [ %798, %841 ]
  %794 = phi ptr [ %336, %787 ], [ %807, %841 ]
  %795 = phi ptr [ %335, %787 ], [ %837, %841 ]
  br label %796

796:                                              ; preds = %802, %790
  %797 = phi ptr [ %792, %790 ], [ %72, %802 ]
  %798 = phi ptr [ %793, %790 ], [ %803, %802 ]
  %799 = icmp ne ptr %797, %798
  %800 = icmp eq ptr %798, %85
  %801 = select i1 %799, i1 true, i1 %800
  br i1 %801, label %805, label %802

802:                                              ; preds = %796
  %803 = load ptr, ptr %774, align 8, !tbaa !30
  %804 = icmp eq ptr %797, %803
  br i1 %804, label %1596, label %796, !llvm.loop !53

805:                                              ; preds = %796
  br i1 %799, label %806, label %1596

806:                                              ; preds = %805, %810
  %807 = phi ptr [ %85, %810 ], [ %794, %805 ]
  %808 = phi ptr [ %72, %810 ], [ %795, %805 ]
  %809 = icmp eq ptr %808, %807
  br i1 %809, label %810, label %812

810:                                              ; preds = %806
  %811 = icmp eq ptr %807, %85
  br i1 %811, label %1608, label %806, !llvm.loop !54

812:                                              ; preds = %806
  %813 = ptrtoint ptr %807 to i64
  %814 = ptrtoint ptr %808 to i64
  %815 = sub i64 %813, %814
  %816 = shl i64 %815, 32
  %817 = ashr exact i64 %816, 32
  %818 = ptrtoint ptr %798 to i64
  %819 = ptrtoint ptr %797 to i64
  %820 = sub i64 %818, %819
  %821 = icmp sgt i64 %817, %820
  %822 = select i1 %821, i64 %820, i64 %815
  br i1 %103, label %830, label %823

823:                                              ; preds = %812
  %824 = trunc i64 %822 to i32
  %825 = tail call fastcc i32 @byte_bcmp_translate(ptr noundef %808, ptr noundef %797, i32 noundef %824, ptr noundef nonnull %15) #23, !range !55
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %1608

827:                                              ; preds = %823
  %828 = shl i64 %822, 32
  %829 = ashr exact i64 %828, 32
  br label %835

830:                                              ; preds = %812
  %831 = shl i64 %822, 32
  %832 = ashr exact i64 %831, 32
  %833 = tail call i32 @bcmp(ptr %808, ptr %797, i64 %832)
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %1608

835:                                              ; preds = %827, %830
  %836 = phi i64 [ %829, %827 ], [ %832, %830 ]
  %837 = getelementptr inbounds i8, ptr %808, i64 %836
  %838 = getelementptr inbounds i8, ptr %797, i64 %836
  %839 = icmp ne i32 %791, 0
  %840 = select i1 %839, i1 true, i1 %789
  br i1 %840, label %841, label %842

841:                                              ; preds = %842, %835
  br label %790

842:                                              ; preds = %835, %842
  %843 = phi i64 [ %847, %842 ], [ %342, %835 ]
  %844 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %843
  %845 = load i8, ptr %844, align 8
  %846 = or i8 %845, 24
  store i8 %846, ptr %844, align 8
  %847 = add i64 %843, 1
  %848 = icmp ugt i64 %847, %343
  br i1 %848, label %841, label %842, !llvm.loop !56

849:                                              ; preds = %334
  %850 = icmp ne ptr %335, %99
  %851 = and i1 %100, %850
  br i1 %851, label %856, label %852

852:                                              ; preds = %849
  %853 = load i8, ptr %102, align 8
  %854 = and i8 %853, 32
  %855 = icmp eq i8 %854, 0
  br i1 %855, label %1596, label %1608

856:                                              ; preds = %849
  %857 = getelementptr inbounds i8, ptr %335, i64 -1
  %858 = load i8, ptr %857, align 1, !tbaa !16
  %859 = icmp eq i8 %858, 10
  br i1 %859, label %860, label %1608

860:                                              ; preds = %856
  %861 = load i8, ptr %102, align 8
  %862 = icmp sgt i8 %861, -1
  br i1 %862, label %1608, label %1596

863:                                              ; preds = %334
  %864 = icmp eq ptr %335, %78
  br i1 %864, label %865, label %869

865:                                              ; preds = %863
  %866 = load i8, ptr %102, align 8
  %867 = and i8 %866, 64
  %868 = icmp eq i8 %867, 0
  br i1 %868, label %1596, label %1608

869:                                              ; preds = %863
  %870 = icmp eq ptr %335, %76
  %871 = select i1 %870, ptr %72, ptr %335
  %872 = load i8, ptr %871, align 1, !tbaa !16
  %873 = icmp eq i8 %872, 10
  br i1 %873, label %874, label %1608

874:                                              ; preds = %869
  %875 = load i8, ptr %102, align 8
  %876 = icmp sgt i8 %875, -1
  br i1 %876, label %1608, label %1596

877:                                              ; preds = %334
  %878 = icmp ne ptr %335, %99
  %879 = and i1 %100, %878
  br i1 %879, label %1608, label %1596

880:                                              ; preds = %334
  %881 = icmp eq ptr %335, %78
  br i1 %881, label %1596, label %1608

882:                                              ; preds = %334
  %883 = load i8, ptr %345, align 1, !tbaa !16
  %884 = zext i8 %883 to i32
  %885 = getelementptr inbounds i8, ptr %337, i64 2
  %886 = load i8, ptr %885, align 1, !tbaa !16
  %887 = sext i8 %886 to i32
  %888 = shl nsw i32 %887, 8
  %889 = or disjoint i32 %888, %884
  %890 = getelementptr inbounds i8, ptr %337, i64 3
  %891 = sub i64 %343, %342
  %892 = mul i64 %891, 3
  %893 = add i64 %892, 7
  %894 = sub i32 %340, %339
  %895 = zext i32 %894 to i64
  %896 = icmp ugt i64 %893, %895
  br i1 %896, label %897, label %900

897:                                              ; preds = %882
  %898 = load i32, ptr @xre_max_failures, align 4, !tbaa !25
  %899 = mul nsw i32 %898, 19
  br label %904

900:                                              ; preds = %908, %882
  %901 = phi ptr [ %341, %882 ], [ %912, %908 ]
  %902 = phi i32 [ %340, %882 ], [ %909, %908 ]
  %903 = icmp ugt i64 %342, %343
  br i1 %903, label %938, label %918

904:                                              ; preds = %897, %908
  %905 = phi i32 [ %340, %897 ], [ %909, %908 ]
  %906 = phi ptr [ %341, %897 ], [ %912, %908 ]
  %907 = icmp ugt i32 %905, %899
  br i1 %907, label %1717, label %908

908:                                              ; preds = %904
  %909 = shl i32 %905, 1
  %910 = zext i32 %909 to i64
  %911 = shl nuw nsw i64 %910, 3
  %912 = alloca i8, i64 %911, align 16
  %913 = zext i32 %905 to i64
  %914 = shl nuw nsw i64 %913, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %912, ptr align 8 %906, i64 %914, i1 false)
  %915 = sub i32 %909, %339
  %916 = zext i32 %915 to i64
  %917 = icmp ugt i64 %893, %916
  br i1 %917, label %904, label %900

918:                                              ; preds = %900, %918
  %919 = phi i64 [ %936, %918 ], [ %342, %900 ]
  %920 = phi i32 [ %931, %918 ], [ %339, %900 ]
  %921 = getelementptr inbounds ptr, ptr %57, i64 %919
  %922 = load ptr, ptr %921, align 8, !tbaa !30
  %923 = add i32 %920, 1
  %924 = zext i32 %920 to i64
  %925 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %901, i64 %924
  store ptr %922, ptr %925, align 8, !tbaa !16
  %926 = getelementptr inbounds ptr, ptr %58, i64 %919
  %927 = load ptr, ptr %926, align 8, !tbaa !30
  %928 = add i32 %920, 2
  %929 = zext i32 %923 to i64
  %930 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %901, i64 %929
  store ptr %927, ptr %930, align 8, !tbaa !16
  %931 = add i32 %920, 3
  %932 = zext i32 %928 to i64
  %933 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %901, i64 %932
  %934 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %919
  %935 = load i64, ptr %934, align 8
  store i64 %935, ptr %933, align 8
  %936 = add i64 %919, 1
  %937 = icmp ugt i64 %936, %343
  br i1 %937, label %938, label %918, !llvm.loop !57

938:                                              ; preds = %918, %900
  %939 = phi i32 [ %339, %900 ], [ %931, %918 ]
  %940 = trunc i64 %342 to i32
  %941 = add i32 %939, 1
  %942 = zext i32 %939 to i64
  %943 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %901, i64 %942
  store i32 %940, ptr %943, align 8, !tbaa !16
  %944 = trunc i64 %343 to i32
  %945 = add i32 %939, 2
  %946 = zext i32 %941 to i64
  %947 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %901, i64 %946
  store i32 %944, ptr %947, align 8, !tbaa !16
  %948 = sext i32 %889 to i64
  %949 = getelementptr inbounds i8, ptr %890, i64 %948
  %950 = add i32 %939, 3
  %951 = zext i32 %945 to i64
  %952 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %901, i64 %951
  store ptr %949, ptr %952, align 8, !tbaa !16
  %953 = add i32 %939, 4
  %954 = zext i32 %950 to i64
  %955 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %901, i64 %954
  store ptr null, ptr %955, align 8, !tbaa !16
  br label %1596

956:                                              ; preds = %334, %1398
  %957 = load i8, ptr %345, align 1, !tbaa !16
  %958 = zext i8 %957 to i32
  %959 = getelementptr inbounds i8, ptr %337, i64 2
  %960 = load i8, ptr %959, align 1, !tbaa !16
  %961 = sext i8 %960 to i32
  %962 = shl nsw i32 %961, 8
  %963 = or disjoint i32 %962, %958
  %964 = getelementptr inbounds i8, ptr %337, i64 3
  store ptr %964, ptr %9, align 8, !tbaa !30
  %965 = icmp ult ptr %964, %13
  br i1 %965, label %966, label %982

966:                                              ; preds = %956, %969
  %967 = phi ptr [ %970, %969 ], [ %964, %956 ]
  %968 = load i8, ptr %967, align 1, !tbaa !16
  switch i8 %968, label %982 [
    i8 0, label %969
    i8 6, label %972
  ]

969:                                              ; preds = %966
  %970 = getelementptr inbounds i8, ptr %967, i64 1
  store ptr %970, ptr %9, align 8, !tbaa !30
  %971 = icmp ult ptr %970, %13
  br i1 %971, label %966, label %982, !llvm.loop !58

972:                                              ; preds = %966
  %973 = getelementptr inbounds i8, ptr %967, i64 1
  %974 = load i8, ptr %973, align 1, !tbaa !16
  %975 = zext i8 %974 to i64
  %976 = getelementptr inbounds i8, ptr %967, i64 2
  %977 = load i8, ptr %976, align 1, !tbaa !16
  %978 = zext i8 %977 to i64
  %979 = add nuw nsw i64 %978, %975
  %980 = icmp eq i64 %342, 257
  %981 = select i1 %980, i64 %975, i64 %342
  br label %982

982:                                              ; preds = %969, %966, %956, %972
  %983 = phi i64 [ %979, %972 ], [ %343, %956 ], [ %343, %966 ], [ %343, %969 ]
  %984 = phi i64 [ %981, %972 ], [ %342, %956 ], [ %342, %966 ], [ %342, %969 ]
  %985 = sub i64 %983, %984
  %986 = mul i64 %985, 3
  %987 = add i64 %986, 7
  %988 = sub i32 %340, %339
  %989 = zext i32 %988 to i64
  %990 = icmp ugt i64 %987, %989
  br i1 %990, label %991, label %994

991:                                              ; preds = %982
  %992 = load i32, ptr @xre_max_failures, align 4, !tbaa !25
  %993 = mul nsw i32 %992, 19
  br label %998

994:                                              ; preds = %1002, %982
  %995 = phi ptr [ %341, %982 ], [ %1006, %1002 ]
  %996 = phi i32 [ %340, %982 ], [ %1003, %1002 ]
  %997 = icmp ugt i64 %984, %983
  br i1 %997, label %1032, label %1012

998:                                              ; preds = %991, %1002
  %999 = phi i32 [ %340, %991 ], [ %1003, %1002 ]
  %1000 = phi ptr [ %341, %991 ], [ %1006, %1002 ]
  %1001 = icmp ugt i32 %999, %993
  br i1 %1001, label %1717, label %1002

1002:                                             ; preds = %998
  %1003 = shl i32 %999, 1
  %1004 = zext i32 %1003 to i64
  %1005 = shl nuw nsw i64 %1004, 3
  %1006 = alloca i8, i64 %1005, align 16
  %1007 = zext i32 %999 to i64
  %1008 = shl nuw nsw i64 %1007, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1006, ptr align 8 %1000, i64 %1008, i1 false)
  %1009 = sub i32 %1003, %339
  %1010 = zext i32 %1009 to i64
  %1011 = icmp ugt i64 %987, %1010
  br i1 %1011, label %998, label %994

1012:                                             ; preds = %994, %1012
  %1013 = phi i64 [ %1030, %1012 ], [ %984, %994 ]
  %1014 = phi i32 [ %1025, %1012 ], [ %339, %994 ]
  %1015 = getelementptr inbounds ptr, ptr %57, i64 %1013
  %1016 = load ptr, ptr %1015, align 8, !tbaa !30
  %1017 = add i32 %1014, 1
  %1018 = zext i32 %1014 to i64
  %1019 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %995, i64 %1018
  store ptr %1016, ptr %1019, align 8, !tbaa !16
  %1020 = getelementptr inbounds ptr, ptr %58, i64 %1013
  %1021 = load ptr, ptr %1020, align 8, !tbaa !30
  %1022 = add i32 %1014, 2
  %1023 = zext i32 %1017 to i64
  %1024 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %995, i64 %1023
  store ptr %1021, ptr %1024, align 8, !tbaa !16
  %1025 = add i32 %1014, 3
  %1026 = zext i32 %1022 to i64
  %1027 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %995, i64 %1026
  %1028 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1013
  %1029 = load i64, ptr %1028, align 8
  store i64 %1029, ptr %1027, align 8
  %1030 = add i64 %1013, 1
  %1031 = icmp ugt i64 %1030, %983
  br i1 %1031, label %1032, label %1012, !llvm.loop !59

1032:                                             ; preds = %1012, %994
  %1033 = phi i32 [ %339, %994 ], [ %1025, %1012 ]
  %1034 = trunc i64 %984 to i32
  %1035 = add i32 %1033, 1
  %1036 = zext i32 %1033 to i64
  %1037 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %995, i64 %1036
  store i32 %1034, ptr %1037, align 8, !tbaa !16
  %1038 = trunc i64 %983 to i32
  %1039 = add i32 %1033, 2
  %1040 = zext i32 %1035 to i64
  %1041 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %995, i64 %1040
  store i32 %1038, ptr %1041, align 8, !tbaa !16
  %1042 = sext i32 %963 to i64
  %1043 = getelementptr inbounds i8, ptr %964, i64 %1042
  %1044 = add i32 %1033, 3
  %1045 = zext i32 %1039 to i64
  %1046 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %995, i64 %1045
  store ptr %1043, ptr %1046, align 8, !tbaa !16
  %1047 = add i32 %1033, 4
  %1048 = zext i32 %1044 to i64
  %1049 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %995, i64 %1048
  store ptr %335, ptr %1049, align 8, !tbaa !16
  br label %1596

1050:                                             ; preds = %334
  %1051 = load i8, ptr %345, align 1, !tbaa !16
  %1052 = zext i8 %1051 to i32
  %1053 = getelementptr inbounds i8, ptr %337, i64 2
  %1054 = load i8, ptr %1053, align 1, !tbaa !16
  %1055 = sext i8 %1054 to i32
  %1056 = shl nsw i32 %1055, 8
  %1057 = or disjoint i32 %1056, %1052
  %1058 = getelementptr inbounds i8, ptr %337, i64 3
  br label %1059

1059:                                             ; preds = %1075, %1050
  %1060 = phi ptr [ %1058, %1050 ], [ %1076, %1075 ]
  %1061 = getelementptr inbounds i8, ptr %1060, i64 2
  %1062 = icmp ult ptr %1061, %13
  br i1 %1062, label %1063, label %1069

1063:                                             ; preds = %1059
  %1064 = load i8, ptr %1060, align 1, !tbaa !16
  %1065 = and i8 %1064, -2
  %1066 = icmp eq i8 %1065, 6
  br i1 %1066, label %1067, label %1069

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds i8, ptr %1060, i64 3
  br label %1075

1069:                                             ; preds = %1063, %1059
  %1070 = getelementptr inbounds i8, ptr %1060, i64 6
  %1071 = icmp ult ptr %1070, %13
  br i1 %1071, label %1072, label %1077

1072:                                             ; preds = %1069
  %1073 = load i8, ptr %1060, align 1, !tbaa !16
  %1074 = icmp eq i8 %1073, 19
  br i1 %1074, label %1075, label %1077

1075:                                             ; preds = %1072, %1067
  %1076 = phi ptr [ %1068, %1067 ], [ %1070, %1072 ]
  br label %1059

1077:                                             ; preds = %1069, %1072
  %1078 = sext i32 %1057 to i64
  %1079 = getelementptr inbounds i8, ptr %1058, i64 %1078
  store ptr %1079, ptr %9, align 8, !tbaa !30
  %1080 = icmp eq ptr %1060, %13
  br i1 %1080, label %1224, label %1081

1081:                                             ; preds = %1077
  %1082 = load i8, ptr %1060, align 1, !tbaa !16
  %1083 = icmp eq i8 %1082, 2
  br i1 %1083, label %1089, label %1084

1084:                                             ; preds = %1081
  %1085 = load i8, ptr %102, align 8
  %1086 = icmp slt i8 %1085, 0
  %1087 = icmp eq i8 %1082, 10
  %1088 = and i1 %1087, %1086
  br i1 %1088, label %1091, label %1124

1089:                                             ; preds = %1081
  %1090 = load i8, ptr %1061, align 1, !tbaa !16
  br label %1091

1091:                                             ; preds = %1084, %1089
  %1092 = phi i8 [ %1090, %1089 ], [ 10, %1084 ]
  %1093 = getelementptr inbounds i8, ptr %1079, i64 3
  %1094 = load i8, ptr %1093, align 1, !tbaa !16
  %1095 = icmp eq i8 %1094, 2
  br i1 %1095, label %1096, label %1100

1096:                                             ; preds = %1091
  %1097 = getelementptr inbounds i8, ptr %1079, i64 5
  %1098 = load i8, ptr %1097, align 1, !tbaa !16
  %1099 = icmp eq i8 %1098, %1092
  br i1 %1099, label %1220, label %1224

1100:                                             ; preds = %1091
  %1101 = and i8 %1094, -2
  %1102 = icmp eq i8 %1101, 4
  br i1 %1102, label %1103, label %1220

1103:                                             ; preds = %1100
  %1104 = icmp eq i8 %1094, 5
  %1105 = zext i8 %1092 to i32
  %1106 = getelementptr inbounds i8, ptr %1079, i64 4
  %1107 = load i8, ptr %1106, align 1, !tbaa !16
  %1108 = zext i8 %1107 to i32
  %1109 = shl nuw nsw i32 %1108, 3
  %1110 = icmp ugt i32 %1109, %1105
  br i1 %1110, label %1111, label %1123

1111:                                             ; preds = %1103
  %1112 = lshr i32 %1105, 3
  %1113 = zext nneg i32 %1112 to i64
  %1114 = getelementptr i8, ptr %1079, i64 %1113
  %1115 = getelementptr i8, ptr %1114, i64 5
  %1116 = load i8, ptr %1115, align 1, !tbaa !16
  %1117 = zext i8 %1116 to i32
  %1118 = and i32 %1105, 7
  %1119 = shl nuw nsw i32 1, %1118
  %1120 = and i32 %1119, %1117
  %1121 = icmp ne i32 %1120, 0
  %1122 = xor i1 %1104, %1121
  br i1 %1122, label %1220, label %1224

1123:                                             ; preds = %1103
  br i1 %1104, label %1220, label %1224

1124:                                             ; preds = %1084
  %1125 = icmp eq i8 %1082, 4
  br i1 %1125, label %1126, label %1220

1126:                                             ; preds = %1124
  %1127 = getelementptr inbounds i8, ptr %1079, i64 3
  %1128 = load i8, ptr %1127, align 1, !tbaa !16
  switch i8 %1128, label %1220 [
    i8 2, label %1150
    i8 5, label %1141
    i8 4, label %1129
  ]

1129:                                             ; preds = %1126
  %1130 = getelementptr inbounds i8, ptr %1060, i64 1
  %1131 = load i8, ptr %1130, align 1, !tbaa !16
  %1132 = zext i8 %1131 to i32
  %1133 = getelementptr i8, ptr %1079, i64 5
  %1134 = icmp eq i8 %1131, 0
  br i1 %1134, label %1212, label %1135

1135:                                             ; preds = %1129
  %1136 = getelementptr inbounds i8, ptr %1079, i64 4
  %1137 = load i8, ptr %1136, align 1, !tbaa !16
  %1138 = zext i8 %1137 to i32
  %1139 = zext i8 %1137 to i64
  %1140 = zext i8 %1131 to i64
  br label %1196

1141:                                             ; preds = %1126
  %1142 = getelementptr inbounds i8, ptr %1079, i64 4
  %1143 = getelementptr inbounds i8, ptr %1060, i64 1
  %1144 = load i8, ptr %1143, align 1, !tbaa !16
  %1145 = zext i8 %1144 to i32
  %1146 = getelementptr i8, ptr %1079, i64 5
  %1147 = icmp eq i8 %1144, 0
  br i1 %1147, label %1193, label %1148

1148:                                             ; preds = %1141
  %1149 = zext i8 %1144 to i64
  br label %1170

1150:                                             ; preds = %1126
  %1151 = getelementptr inbounds i8, ptr %1060, i64 1
  %1152 = load i8, ptr %1151, align 1, !tbaa !16
  %1153 = zext i8 %1152 to i32
  %1154 = shl nuw nsw i32 %1153, 3
  %1155 = getelementptr inbounds i8, ptr %1079, i64 5
  %1156 = load i8, ptr %1155, align 1, !tbaa !16
  %1157 = zext i8 %1156 to i32
  %1158 = icmp ugt i32 %1154, %1157
  br i1 %1158, label %1159, label %1224

1159:                                             ; preds = %1150
  %1160 = lshr i32 %1157, 3
  %1161 = add nuw nsw i32 %1160, 2
  %1162 = zext nneg i32 %1161 to i64
  %1163 = getelementptr inbounds i8, ptr %1060, i64 %1162
  %1164 = load i8, ptr %1163, align 1, !tbaa !16
  %1165 = zext i8 %1164 to i32
  %1166 = and i32 %1157, 7
  %1167 = shl nuw nsw i32 1, %1166
  %1168 = and i32 %1167, %1165
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1224, label %1220

1170:                                             ; preds = %1148, %1188
  %1171 = phi i64 [ 0, %1148 ], [ %1189, %1188 ]
  %1172 = add nuw nsw i64 %1171, 2
  %1173 = getelementptr inbounds i8, ptr %1060, i64 %1172
  %1174 = load i8, ptr %1173, align 1, !tbaa !16
  %1175 = zext i8 %1174 to i32
  %1176 = icmp eq i8 %1174, 0
  br i1 %1176, label %1188, label %1177

1177:                                             ; preds = %1170
  %1178 = load i8, ptr %1142, align 1, !tbaa !16
  %1179 = zext i8 %1178 to i64
  %1180 = icmp ult i64 %1171, %1179
  br i1 %1180, label %1181, label %1191

1181:                                             ; preds = %1177
  %1182 = getelementptr i8, ptr %1146, i64 %1171
  %1183 = load i8, ptr %1182, align 1, !tbaa !16
  %1184 = zext i8 %1183 to i32
  %1185 = xor i32 %1184, -1
  %1186 = and i32 %1185, %1175
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1188, label %1191

1188:                                             ; preds = %1170, %1181
  %1189 = add nuw nsw i64 %1171, 1
  %1190 = icmp eq i64 %1189, %1149
  br i1 %1190, label %1224, label %1170, !llvm.loop !60

1191:                                             ; preds = %1177, %1181
  %1192 = trunc i64 %1171 to i32
  br label %1193

1193:                                             ; preds = %1191, %1141
  %1194 = phi i32 [ 0, %1141 ], [ %1192, %1191 ]
  %1195 = icmp eq i32 %1194, %1145
  br i1 %1195, label %1224, label %1220

1196:                                             ; preds = %1135, %1207
  %1197 = phi i64 [ 0, %1135 ], [ %1208, %1207 ]
  %1198 = icmp eq i64 %1197, %1139
  br i1 %1198, label %1212, label %1199

1199:                                             ; preds = %1196
  %1200 = add nuw nsw i64 %1197, 2
  %1201 = getelementptr inbounds i8, ptr %1060, i64 %1200
  %1202 = load i8, ptr %1201, align 1, !tbaa !16
  %1203 = getelementptr i8, ptr %1133, i64 %1197
  %1204 = load i8, ptr %1203, align 1, !tbaa !16
  %1205 = and i8 %1204, %1202
  %1206 = icmp eq i8 %1205, 0
  br i1 %1206, label %1207, label %1210

1207:                                             ; preds = %1199
  %1208 = add nuw nsw i64 %1197, 1
  %1209 = icmp eq i64 %1208, %1140
  br i1 %1209, label %1224, label %1196, !llvm.loop !61

1210:                                             ; preds = %1199
  %1211 = trunc i64 %1197 to i32
  br label %1212

1212:                                             ; preds = %1196, %1210, %1129
  %1213 = phi i32 [ 0, %1129 ], [ %1211, %1210 ], [ %1138, %1196 ]
  %1214 = icmp eq i32 %1213, %1132
  br i1 %1214, label %1224, label %1215

1215:                                             ; preds = %1212
  %1216 = getelementptr inbounds i8, ptr %1079, i64 4
  %1217 = load i8, ptr %1216, align 1, !tbaa !16
  %1218 = zext i8 %1217 to i32
  %1219 = icmp eq i32 %1213, %1218
  br i1 %1219, label %1224, label %1220

1220:                                             ; preds = %1126, %1159, %1096, %1111, %1100, %1215, %1193, %1123, %1124
  %1221 = load i8, ptr %337, align 1, !tbaa !16
  %1222 = icmp eq i8 %1221, 17
  br i1 %1222, label %1225, label %1223

1223:                                             ; preds = %1220
  store i8 13, ptr %337, align 1, !tbaa !16
  br label %1257

1224:                                             ; preds = %1207, %1188, %1212, %1215, %1193, %1150, %1159, %1123, %1111, %1096, %1077
  store i8 17, ptr %337, align 1, !tbaa !16
  br label %1225

1225:                                             ; preds = %1224, %1220, %334
  %1226 = add i32 %339, -3
  %1227 = zext i32 %1226 to i64
  %1228 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %341, i64 %1227
  %1229 = load i32, ptr %1228, align 8, !tbaa !16
  %1230 = add i32 %339, -4
  %1231 = zext i32 %1230 to i64
  %1232 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %341, i64 %1231
  %1233 = load i32, ptr %1232, align 8, !tbaa !16
  %1234 = sext i32 %1233 to i64
  %1235 = icmp ult i32 %1229, %1233
  br i1 %1235, label %1257, label %1236

1236:                                             ; preds = %1225
  %1237 = sext i32 %1229 to i64
  br label %1238

1238:                                             ; preds = %1236, %1238
  %1239 = phi i64 [ %1255, %1238 ], [ %1237, %1236 ]
  %1240 = phi i32 [ %1251, %1238 ], [ %1230, %1236 ]
  %1241 = getelementptr inbounds %union.byte_register_info_type, ptr %65, i64 %1239
  %1242 = add i32 %1240, -1
  %1243 = zext i32 %1242 to i64
  %1244 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %341, i64 %1243
  %1245 = load i64, ptr %1244, align 8
  store i64 %1245, ptr %1241, align 8
  %1246 = add i32 %1240, -2
  %1247 = zext i32 %1246 to i64
  %1248 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %341, i64 %1247
  %1249 = load ptr, ptr %1248, align 8, !tbaa !16
  %1250 = getelementptr inbounds ptr, ptr %64, i64 %1239
  store ptr %1249, ptr %1250, align 8, !tbaa !30
  %1251 = add i32 %1240, -3
  %1252 = zext i32 %1251 to i64
  %1253 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %341, i64 %1252
  %1254 = load ptr, ptr %1253, align 8, !tbaa !16
  store ptr %1254, ptr %1250, align 8, !tbaa !30
  %1255 = add i64 %1239, -1
  %1256 = icmp ult i64 %1255, %1234
  br i1 %1256, label %1257, label %1238, !llvm.loop !62

1257:                                             ; preds = %1238, %1225, %1310, %334, %1223, %1409, %334
  %1258 = phi i32 [ %344, %1409 ], [ %344, %1310 ], [ %344, %334 ], [ %344, %334 ], [ %344, %1223 ], [ 0, %1225 ], [ 0, %1238 ]
  %1259 = phi ptr [ %341, %1409 ], [ %1273, %1310 ], [ %341, %334 ], [ %341, %334 ], [ %341, %1223 ], [ %341, %1225 ], [ %341, %1238 ]
  %1260 = phi i32 [ %340, %1409 ], [ %1274, %1310 ], [ %340, %334 ], [ %340, %334 ], [ %340, %1223 ], [ %340, %1225 ], [ %340, %1238 ]
  %1261 = phi i32 [ %339, %1409 ], [ %1323, %1310 ], [ %339, %334 ], [ %339, %334 ], [ %339, %1223 ], [ %1230, %1225 ], [ %1251, %1238 ]
  %1262 = load i8, ptr %345, align 1, !tbaa !16
  %1263 = zext i8 %1262 to i32
  %1264 = getelementptr inbounds i8, ptr %337, i64 2
  %1265 = load i8, ptr %1264, align 1, !tbaa !16
  %1266 = sext i8 %1265 to i32
  %1267 = shl nsw i32 %1266, 8
  %1268 = or disjoint i32 %1267, %1263
  %1269 = getelementptr inbounds i8, ptr %337, i64 3
  %1270 = sext i32 %1268 to i64
  %1271 = getelementptr inbounds i8, ptr %1269, i64 %1270
  br label %1596

1272:                                             ; preds = %1280, %357
  %1273 = phi ptr [ %341, %357 ], [ %1284, %1280 ]
  %1274 = phi i32 [ %340, %357 ], [ %1281, %1280 ]
  %1275 = icmp ugt i64 %342, %343
  br i1 %1275, label %1310, label %1290

1276:                                             ; preds = %364, %1280
  %1277 = phi i32 [ %340, %364 ], [ %1281, %1280 ]
  %1278 = phi ptr [ %341, %364 ], [ %1284, %1280 ]
  %1279 = icmp ugt i32 %1277, %366
  br i1 %1279, label %1717, label %1280

1280:                                             ; preds = %1276
  %1281 = shl i32 %1277, 1
  %1282 = zext i32 %1281 to i64
  %1283 = shl nuw nsw i64 %1282, 3
  %1284 = alloca i8, i64 %1283, align 16
  %1285 = zext i32 %1277 to i64
  %1286 = shl nuw nsw i64 %1285, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1284, ptr align 8 %1278, i64 %1286, i1 false)
  %1287 = sub i32 %1281, %339
  %1288 = zext i32 %1287 to i64
  %1289 = icmp ugt i64 %360, %1288
  br i1 %1289, label %1276, label %1272

1290:                                             ; preds = %1272, %1290
  %1291 = phi i64 [ %1308, %1290 ], [ %342, %1272 ]
  %1292 = phi i32 [ %1303, %1290 ], [ %339, %1272 ]
  %1293 = getelementptr inbounds ptr, ptr %57, i64 %1291
  %1294 = load ptr, ptr %1293, align 8, !tbaa !30
  %1295 = add i32 %1292, 1
  %1296 = zext i32 %1292 to i64
  %1297 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1273, i64 %1296
  store ptr %1294, ptr %1297, align 8, !tbaa !16
  %1298 = getelementptr inbounds ptr, ptr %58, i64 %1291
  %1299 = load ptr, ptr %1298, align 8, !tbaa !30
  %1300 = add i32 %1292, 2
  %1301 = zext i32 %1295 to i64
  %1302 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1273, i64 %1301
  store ptr %1299, ptr %1302, align 8, !tbaa !16
  %1303 = add i32 %1292, 3
  %1304 = zext i32 %1300 to i64
  %1305 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1273, i64 %1304
  %1306 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1291
  %1307 = load i64, ptr %1306, align 8
  store i64 %1307, ptr %1305, align 8
  %1308 = add i64 %1291, 1
  %1309 = icmp ugt i64 %1308, %343
  br i1 %1309, label %1310, label %1290, !llvm.loop !63

1310:                                             ; preds = %1290, %1272
  %1311 = phi i32 [ %339, %1272 ], [ %1303, %1290 ]
  %1312 = trunc i64 %342 to i32
  %1313 = add i32 %1311, 1
  %1314 = zext i32 %1311 to i64
  %1315 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1273, i64 %1314
  store i32 %1312, ptr %1315, align 8, !tbaa !16
  %1316 = trunc i64 %343 to i32
  %1317 = add i32 %1311, 2
  %1318 = zext i32 %1313 to i64
  %1319 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1273, i64 %1318
  store i32 %1316, ptr %1319, align 8, !tbaa !16
  %1320 = add i32 %1311, 3
  %1321 = zext i32 %1317 to i64
  %1322 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1273, i64 %1321
  store ptr null, ptr %1322, align 8, !tbaa !16
  %1323 = add i32 %1311, 4
  %1324 = zext i32 %1320 to i64
  %1325 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1273, i64 %1324
  store ptr null, ptr %1325, align 8, !tbaa !16
  br label %1257

1326:                                             ; preds = %1334, %347
  %1327 = phi ptr [ %341, %347 ], [ %1338, %1334 ]
  %1328 = phi i32 [ %340, %347 ], [ %1335, %1334 ]
  %1329 = icmp ugt i64 %342, %343
  br i1 %1329, label %1364, label %1344

1330:                                             ; preds = %354, %1334
  %1331 = phi i32 [ %340, %354 ], [ %1335, %1334 ]
  %1332 = phi ptr [ %341, %354 ], [ %1338, %1334 ]
  %1333 = icmp ugt i32 %1331, %356
  br i1 %1333, label %1717, label %1334

1334:                                             ; preds = %1330
  %1335 = shl i32 %1331, 1
  %1336 = zext i32 %1335 to i64
  %1337 = shl nuw nsw i64 %1336, 3
  %1338 = alloca i8, i64 %1337, align 16
  %1339 = zext i32 %1331 to i64
  %1340 = shl nuw nsw i64 %1339, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %1338, ptr align 8 %1332, i64 %1340, i1 false)
  %1341 = sub i32 %1335, %339
  %1342 = zext i32 %1341 to i64
  %1343 = icmp ugt i64 %350, %1342
  br i1 %1343, label %1330, label %1326

1344:                                             ; preds = %1326, %1344
  %1345 = phi i64 [ %1362, %1344 ], [ %342, %1326 ]
  %1346 = phi i32 [ %1357, %1344 ], [ %339, %1326 ]
  %1347 = getelementptr inbounds ptr, ptr %57, i64 %1345
  %1348 = load ptr, ptr %1347, align 8, !tbaa !30
  %1349 = add i32 %1346, 1
  %1350 = zext i32 %1346 to i64
  %1351 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1327, i64 %1350
  store ptr %1348, ptr %1351, align 8, !tbaa !16
  %1352 = getelementptr inbounds ptr, ptr %58, i64 %1345
  %1353 = load ptr, ptr %1352, align 8, !tbaa !30
  %1354 = add i32 %1346, 2
  %1355 = zext i32 %1349 to i64
  %1356 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1327, i64 %1355
  store ptr %1353, ptr %1356, align 8, !tbaa !16
  %1357 = add i32 %1346, 3
  %1358 = zext i32 %1354 to i64
  %1359 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1327, i64 %1358
  %1360 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1345
  %1361 = load i64, ptr %1360, align 8
  store i64 %1361, ptr %1359, align 8
  %1362 = add i64 %1345, 1
  %1363 = icmp ugt i64 %1362, %343
  br i1 %1363, label %1364, label %1344, !llvm.loop !64

1364:                                             ; preds = %1344, %1326
  %1365 = phi i32 [ %339, %1326 ], [ %1357, %1344 ]
  %1366 = trunc i64 %342 to i32
  %1367 = add i32 %1365, 1
  %1368 = zext i32 %1365 to i64
  %1369 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1327, i64 %1368
  store i32 %1366, ptr %1369, align 8, !tbaa !16
  %1370 = trunc i64 %343 to i32
  %1371 = add i32 %1365, 2
  %1372 = zext i32 %1367 to i64
  %1373 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1327, i64 %1372
  store i32 %1370, ptr %1373, align 8, !tbaa !16
  %1374 = add i32 %1365, 3
  %1375 = zext i32 %1371 to i64
  %1376 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1327, i64 %1375
  store ptr null, ptr %1376, align 8, !tbaa !16
  %1377 = add i32 %1365, 4
  %1378 = zext i32 %1374 to i64
  %1379 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1327, i64 %1378
  store ptr null, ptr %1379, align 8, !tbaa !16
  br label %1596

1380:                                             ; preds = %334
  %1381 = getelementptr inbounds i8, ptr %337, i64 3
  %1382 = load i8, ptr %1381, align 1, !tbaa !16
  %1383 = zext i8 %1382 to i32
  %1384 = getelementptr inbounds i8, ptr %337, i64 4
  %1385 = load i8, ptr %1384, align 1, !tbaa !16
  %1386 = sext i8 %1385 to i32
  %1387 = shl nsw i32 %1386, 8
  %1388 = or disjoint i32 %1387, %1383
  %1389 = icmp sgt i32 %1388, 0
  br i1 %1389, label %1390, label %1396

1390:                                             ; preds = %1380
  %1391 = add nsw i32 %1388, -1
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, ptr %1381, align 1, !tbaa !16
  %1393 = lshr i32 %1391, 8
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, ptr %1384, align 1, !tbaa !16
  %1395 = getelementptr inbounds i8, ptr %337, i64 5
  br label %1596

1396:                                             ; preds = %1380
  %1397 = icmp eq i32 %1388, 0
  br i1 %1397, label %1398, label %1596

1398:                                             ; preds = %1396
  store i8 0, ptr %1381, align 1, !tbaa !16
  store i8 0, ptr %1384, align 1, !tbaa !16
  br label %956

1399:                                             ; preds = %334
  %1400 = getelementptr inbounds i8, ptr %337, i64 3
  %1401 = load i8, ptr %1400, align 1, !tbaa !16
  %1402 = zext i8 %1401 to i32
  %1403 = getelementptr inbounds i8, ptr %337, i64 4
  %1404 = load i8, ptr %1403, align 1, !tbaa !16
  %1405 = sext i8 %1404 to i32
  %1406 = shl nsw i32 %1405, 8
  %1407 = or disjoint i32 %1406, %1402
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1414, label %1409

1409:                                             ; preds = %1399
  %1410 = add nsw i32 %1407, -1
  %1411 = trunc i32 %1410 to i8
  store i8 %1411, ptr %1400, align 1, !tbaa !16
  %1412 = lshr i32 %1410, 8
  %1413 = trunc i32 %1412 to i8
  store i8 %1413, ptr %1403, align 1, !tbaa !16
  br label %1257

1414:                                             ; preds = %1399
  %1415 = getelementptr inbounds i8, ptr %337, i64 5
  br label %1596

1416:                                             ; preds = %334
  %1417 = load i8, ptr %345, align 1, !tbaa !16
  %1418 = zext i8 %1417 to i32
  %1419 = getelementptr inbounds i8, ptr %337, i64 2
  %1420 = load i8, ptr %1419, align 1, !tbaa !16
  %1421 = sext i8 %1420 to i32
  %1422 = shl nsw i32 %1421, 8
  %1423 = or disjoint i32 %1422, %1418
  %1424 = getelementptr inbounds i8, ptr %337, i64 3
  %1425 = sext i32 %1423 to i64
  %1426 = getelementptr inbounds i8, ptr %1424, i64 %1425
  store ptr %1426, ptr %9, align 8, !tbaa !30
  %1427 = load i8, ptr %1424, align 1, !tbaa !16
  %1428 = getelementptr inbounds i8, ptr %337, i64 4
  %1429 = load i8, ptr %1428, align 1, !tbaa !16
  %1430 = getelementptr inbounds i8, ptr %337, i64 5
  store i8 %1427, ptr %1426, align 1, !tbaa !16
  %1431 = load ptr, ptr %9, align 8, !tbaa !30
  %1432 = getelementptr inbounds i8, ptr %1431, i64 1
  store i8 %1429, ptr %1432, align 1, !tbaa !16
  br label %1596

1433:                                             ; preds = %334
  %1434 = icmp eq ptr %335, %99
  %1435 = or i1 %101, %1434
  %1436 = icmp eq ptr %335, %78
  %1437 = select i1 %1435, i1 true, i1 %1436
  br i1 %1437, label %1596, label %1438

1438:                                             ; preds = %1433
  %1439 = getelementptr inbounds i8, ptr %335, i64 -1
  %1440 = icmp eq ptr %1439, %76
  %1441 = icmp eq ptr %335, %72
  %1442 = select i1 %1441, ptr %97, ptr %1439
  %1443 = select i1 %1440, ptr %72, ptr %1442
  %1444 = load i8, ptr %1443, align 1, !tbaa !16
  %1445 = zext i8 %1444 to i64
  %1446 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1445
  %1447 = load i8, ptr %1446, align 1, !tbaa !16
  %1448 = icmp eq i8 %1447, 1
  %1449 = icmp eq ptr %335, %76
  %1450 = icmp eq ptr %335, %96
  %1451 = select i1 %1450, ptr %97, ptr %335
  %1452 = select i1 %1449, ptr %72, ptr %1451
  %1453 = load i8, ptr %1452, align 1, !tbaa !16
  %1454 = zext i8 %1453 to i64
  %1455 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1454
  %1456 = load i8, ptr %1455, align 1, !tbaa !16
  %1457 = icmp ne i8 %1456, 1
  %1458 = xor i1 %1448, %1457
  br i1 %1458, label %1608, label %1596

1459:                                             ; preds = %334
  %1460 = icmp eq ptr %335, %99
  %1461 = or i1 %101, %1460
  %1462 = icmp eq ptr %335, %78
  %1463 = select i1 %1461, i1 true, i1 %1462
  br i1 %1463, label %1608, label %1464

1464:                                             ; preds = %1459
  %1465 = getelementptr inbounds i8, ptr %335, i64 -1
  %1466 = icmp eq ptr %1465, %76
  %1467 = icmp eq ptr %335, %72
  %1468 = select i1 %1467, ptr %97, ptr %1465
  %1469 = select i1 %1466, ptr %72, ptr %1468
  %1470 = load i8, ptr %1469, align 1, !tbaa !16
  %1471 = zext i8 %1470 to i64
  %1472 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1471
  %1473 = load i8, ptr %1472, align 1, !tbaa !16
  %1474 = icmp eq i8 %1473, 1
  %1475 = icmp eq ptr %335, %76
  %1476 = icmp eq ptr %335, %96
  %1477 = select i1 %1476, ptr %97, ptr %335
  %1478 = select i1 %1475, ptr %72, ptr %1477
  %1479 = load i8, ptr %1478, align 1, !tbaa !16
  %1480 = zext i8 %1479 to i64
  %1481 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1480
  %1482 = load i8, ptr %1481, align 1, !tbaa !16
  %1483 = icmp ne i8 %1482, 1
  %1484 = xor i1 %1474, %1483
  br i1 %1484, label %1596, label %1608

1485:                                             ; preds = %334
  %1486 = icmp eq ptr %335, %78
  br i1 %1486, label %1608, label %1487

1487:                                             ; preds = %1485
  %1488 = icmp eq ptr %335, %76
  %1489 = icmp eq ptr %335, %96
  %1490 = select i1 %1489, ptr %97, ptr %335
  %1491 = select i1 %1488, ptr %72, ptr %1490
  %1492 = load i8, ptr %1491, align 1, !tbaa !16
  %1493 = zext i8 %1492 to i64
  %1494 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1493
  %1495 = load i8, ptr %1494, align 1, !tbaa !16
  %1496 = icmp eq i8 %1495, 1
  br i1 %1496, label %1497, label %1608

1497:                                             ; preds = %1487
  %1498 = icmp ne ptr %335, %99
  %1499 = and i1 %100, %1498
  br i1 %1499, label %1500, label %1596

1500:                                             ; preds = %1497
  %1501 = getelementptr inbounds i8, ptr %335, i64 -1
  %1502 = icmp eq ptr %1501, %76
  %1503 = icmp eq ptr %335, %72
  %1504 = select i1 %1503, ptr %97, ptr %1501
  %1505 = select i1 %1502, ptr %72, ptr %1504
  %1506 = load i8, ptr %1505, align 1, !tbaa !16
  %1507 = zext i8 %1506 to i64
  %1508 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1507
  %1509 = load i8, ptr %1508, align 1, !tbaa !16
  %1510 = icmp eq i8 %1509, 1
  br i1 %1510, label %1608, label %1596

1511:                                             ; preds = %334
  %1512 = icmp ne ptr %335, %99
  %1513 = and i1 %100, %1512
  br i1 %1513, label %1514, label %1608

1514:                                             ; preds = %1511
  %1515 = getelementptr inbounds i8, ptr %335, i64 -1
  %1516 = icmp eq ptr %1515, %76
  %1517 = icmp eq ptr %335, %72
  %1518 = select i1 %1517, ptr %97, ptr %1515
  %1519 = select i1 %1516, ptr %72, ptr %1518
  %1520 = load i8, ptr %1519, align 1, !tbaa !16
  %1521 = zext i8 %1520 to i64
  %1522 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1521
  %1523 = load i8, ptr %1522, align 1, !tbaa !16
  %1524 = icmp eq i8 %1523, 1
  br i1 %1524, label %1525, label %1608

1525:                                             ; preds = %1514
  %1526 = icmp eq ptr %335, %78
  br i1 %1526, label %1596, label %1527

1527:                                             ; preds = %1525
  %1528 = icmp eq ptr %335, %76
  %1529 = icmp eq ptr %335, %96
  %1530 = select i1 %1529, ptr %97, ptr %335
  %1531 = select i1 %1528, ptr %72, ptr %1530
  %1532 = load i8, ptr %1531, align 1, !tbaa !16
  %1533 = zext i8 %1532 to i64
  %1534 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1533
  %1535 = load i8, ptr %1534, align 1, !tbaa !16
  %1536 = icmp eq i8 %1535, 1
  br i1 %1536, label %1608, label %1596

1537:                                             ; preds = %334, %1541
  %1538 = phi ptr [ %85, %1541 ], [ %336, %334 ]
  %1539 = phi ptr [ %72, %1541 ], [ %335, %334 ]
  %1540 = icmp eq ptr %1539, %1538
  br i1 %1540, label %1541, label %1543

1541:                                             ; preds = %1537
  %1542 = icmp eq ptr %1538, %85
  br i1 %1542, label %1608, label %1537, !llvm.loop !65

1543:                                             ; preds = %1537
  %1544 = icmp eq ptr %1539, %76
  %1545 = icmp eq ptr %1539, %96
  %1546 = select i1 %1545, ptr %97, ptr %1539
  %1547 = select i1 %1544, ptr %72, ptr %1546
  %1548 = load i8, ptr %1547, align 1, !tbaa !16
  %1549 = zext i8 %1548 to i64
  %1550 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1549
  %1551 = load i8, ptr %1550, align 1, !tbaa !16
  %1552 = icmp eq i8 %1551, 1
  br i1 %1552, label %1553, label %1608

1553:                                             ; preds = %1543
  %1554 = icmp ne i32 %344, 0
  %1555 = icmp ugt i64 %342, %343
  %1556 = select i1 %1554, i1 true, i1 %1555
  br i1 %1556, label %1564, label %1557

1557:                                             ; preds = %1553, %1557
  %1558 = phi i64 [ %1562, %1557 ], [ %342, %1553 ]
  %1559 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1558
  %1560 = load i8, ptr %1559, align 8
  %1561 = or i8 %1560, 24
  store i8 %1561, ptr %1559, align 8
  %1562 = add i64 %1558, 1
  %1563 = icmp ugt i64 %1562, %343
  br i1 %1563, label %1564, label %1557, !llvm.loop !66

1564:                                             ; preds = %1557, %1553
  %1565 = getelementptr inbounds i8, ptr %1539, i64 1
  br label %1596

1566:                                             ; preds = %334, %1570
  %1567 = phi ptr [ %85, %1570 ], [ %336, %334 ]
  %1568 = phi ptr [ %72, %1570 ], [ %335, %334 ]
  %1569 = icmp eq ptr %1568, %1567
  br i1 %1569, label %1570, label %1572

1570:                                             ; preds = %1566
  %1571 = icmp eq ptr %1567, %85
  br i1 %1571, label %1608, label %1566, !llvm.loop !67

1572:                                             ; preds = %1566
  %1573 = icmp eq ptr %1568, %76
  %1574 = icmp eq ptr %1568, %96
  %1575 = select i1 %1574, ptr %97, ptr %1568
  %1576 = select i1 %1573, ptr %72, ptr %1575
  %1577 = load i8, ptr %1576, align 1, !tbaa !16
  %1578 = zext i8 %1577 to i64
  %1579 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %1578
  %1580 = load i8, ptr %1579, align 1, !tbaa !16
  %1581 = icmp eq i8 %1580, 1
  br i1 %1581, label %1608, label %1582

1582:                                             ; preds = %1572
  %1583 = icmp ne i32 %344, 0
  %1584 = icmp ugt i64 %342, %343
  %1585 = select i1 %1583, i1 true, i1 %1584
  br i1 %1585, label %1593, label %1586

1586:                                             ; preds = %1582, %1586
  %1587 = phi i64 [ %1591, %1586 ], [ %342, %1582 ]
  %1588 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1587
  %1589 = load i8, ptr %1588, align 8
  %1590 = or i8 %1589, 24
  store i8 %1590, ptr %1588, align 8
  %1591 = add i64 %1587, 1
  %1592 = icmp ugt i64 %1591, %343
  br i1 %1592, label %1593, label %1586, !llvm.loop !68

1593:                                             ; preds = %1586, %1582
  %1594 = getelementptr inbounds i8, ptr %1568, i64 1
  br label %1596

1595:                                             ; preds = %334
  tail call void @abort() #24
  unreachable

1596:                                             ; preds = %805, %424, %802, %938, %1032, %1364, %1464, %1438, %1433, %523, %1525, %1527, %1497, %1500, %1390, %1396, %880, %877, %874, %865, %860, %852, %418, %334, %1593, %1564, %1416, %1414, %1257, %764, %544, %473
  %1597 = phi i32 [ 1, %1593 ], [ 1, %1564 ], [ %344, %1525 ], [ %344, %1527 ], [ %344, %1500 ], [ %344, %1497 ], [ %344, %1416 ], [ %1258, %1257 ], [ %344, %1414 ], [ %344, %1390 ], [ %344, %1032 ], [ %344, %1396 ], [ %344, %1364 ], [ %344, %938 ], [ %344, %880 ], [ %344, %877 ], [ %344, %865 ], [ %344, %874 ], [ %344, %860 ], [ %344, %852 ], [ 0, %764 ], [ 0, %544 ], [ 1, %473 ], [ 1, %418 ], [ %344, %334 ], [ 1, %523 ], [ %344, %1433 ], [ %344, %1438 ], [ %344, %1464 ], [ %791, %802 ], [ 1, %424 ], [ %791, %805 ]
  %1598 = phi i64 [ %343, %1593 ], [ %343, %1564 ], [ %343, %1525 ], [ %343, %1527 ], [ %343, %1500 ], [ %343, %1497 ], [ %343, %1416 ], [ %343, %1257 ], [ %343, %1414 ], [ %343, %1390 ], [ %983, %1032 ], [ %343, %1396 ], [ %343, %1364 ], [ %343, %938 ], [ %343, %880 ], [ %343, %877 ], [ %343, %865 ], [ %343, %874 ], [ %343, %860 ], [ %343, %852 ], [ %607, %764 ], [ %569, %544 ], [ %343, %473 ], [ %343, %418 ], [ %343, %334 ], [ %343, %523 ], [ %343, %1433 ], [ %343, %1438 ], [ %343, %1464 ], [ %343, %802 ], [ %343, %424 ], [ %343, %805 ]
  %1599 = phi i64 [ %342, %1593 ], [ %342, %1564 ], [ %342, %1525 ], [ %342, %1527 ], [ %342, %1500 ], [ %342, %1497 ], [ %342, %1416 ], [ %342, %1257 ], [ %342, %1414 ], [ %342, %1390 ], [ %984, %1032 ], [ %342, %1396 ], [ %342, %1364 ], [ %342, %938 ], [ %342, %880 ], [ %342, %877 ], [ %342, %865 ], [ %342, %874 ], [ %342, %860 ], [ %342, %852 ], [ %608, %764 ], [ %571, %544 ], [ %342, %473 ], [ %342, %418 ], [ %342, %334 ], [ %342, %523 ], [ %342, %1433 ], [ %342, %1438 ], [ %342, %1464 ], [ %342, %802 ], [ %342, %424 ], [ %342, %805 ]
  %1600 = phi ptr [ %341, %1593 ], [ %341, %1564 ], [ %341, %1525 ], [ %341, %1527 ], [ %341, %1500 ], [ %341, %1497 ], [ %341, %1416 ], [ %1259, %1257 ], [ %341, %1414 ], [ %341, %1390 ], [ %995, %1032 ], [ %341, %1396 ], [ %1327, %1364 ], [ %901, %938 ], [ %341, %880 ], [ %341, %877 ], [ %341, %865 ], [ %341, %874 ], [ %341, %860 ], [ %341, %852 ], [ %341, %764 ], [ %341, %544 ], [ %341, %473 ], [ %341, %418 ], [ %341, %334 ], [ %341, %523 ], [ %341, %1433 ], [ %341, %1438 ], [ %341, %1464 ], [ %341, %802 ], [ %341, %424 ], [ %341, %805 ]
  %1601 = phi i32 [ %340, %1593 ], [ %340, %1564 ], [ %340, %1525 ], [ %340, %1527 ], [ %340, %1500 ], [ %340, %1497 ], [ %340, %1416 ], [ %1260, %1257 ], [ %340, %1414 ], [ %340, %1390 ], [ %996, %1032 ], [ %340, %1396 ], [ %1328, %1364 ], [ %902, %938 ], [ %340, %880 ], [ %340, %877 ], [ %340, %865 ], [ %340, %874 ], [ %340, %860 ], [ %340, %852 ], [ %340, %764 ], [ %340, %544 ], [ %340, %473 ], [ %340, %418 ], [ %340, %334 ], [ %340, %523 ], [ %340, %1433 ], [ %340, %1438 ], [ %340, %1464 ], [ %340, %802 ], [ %340, %424 ], [ %340, %805 ]
  %1602 = phi i32 [ %339, %1593 ], [ %339, %1564 ], [ %339, %1525 ], [ %339, %1527 ], [ %339, %1500 ], [ %339, %1497 ], [ %339, %1416 ], [ %1261, %1257 ], [ %339, %1414 ], [ %339, %1390 ], [ %1047, %1032 ], [ %339, %1396 ], [ %1377, %1364 ], [ %953, %938 ], [ %339, %880 ], [ %339, %877 ], [ %339, %865 ], [ %339, %874 ], [ %339, %860 ], [ %339, %852 ], [ %339, %764 ], [ %339, %544 ], [ %339, %473 ], [ %339, %418 ], [ %339, %334 ], [ %339, %523 ], [ %339, %1433 ], [ %339, %1438 ], [ %339, %1464 ], [ %339, %802 ], [ %339, %424 ], [ %339, %805 ]
  %1603 = phi ptr [ %338, %1593 ], [ %338, %1564 ], [ %338, %1525 ], [ %338, %1527 ], [ %338, %1500 ], [ %338, %1497 ], [ %338, %1416 ], [ %338, %1257 ], [ %338, %1414 ], [ %338, %1390 ], [ %338, %1032 ], [ %338, %1396 ], [ %338, %1364 ], [ %338, %938 ], [ %338, %880 ], [ %338, %877 ], [ %338, %865 ], [ %338, %874 ], [ %338, %860 ], [ %338, %852 ], [ %338, %764 ], [ %572, %544 ], [ %338, %473 ], [ %338, %418 ], [ %338, %334 ], [ %338, %523 ], [ %338, %1433 ], [ %338, %1438 ], [ %338, %1464 ], [ %338, %802 ], [ %338, %424 ], [ %338, %805 ]
  %1604 = phi ptr [ %345, %1593 ], [ %345, %1564 ], [ %345, %1525 ], [ %345, %1527 ], [ %345, %1500 ], [ %345, %1497 ], [ %1430, %1416 ], [ %1271, %1257 ], [ %1415, %1414 ], [ %1395, %1390 ], [ %964, %1032 ], [ %345, %1396 ], [ %345, %1364 ], [ %890, %938 ], [ %345, %880 ], [ %345, %877 ], [ %345, %865 ], [ %345, %874 ], [ %345, %860 ], [ %345, %852 ], [ %765, %764 ], [ %572, %544 ], [ %345, %473 ], [ %374, %418 ], [ %345, %334 ], [ %512, %523 ], [ %345, %1433 ], [ %345, %1438 ], [ %345, %1464 ], [ %767, %802 ], [ %374, %424 ], [ %767, %805 ]
  %1605 = phi ptr [ %1567, %1593 ], [ %1538, %1564 ], [ %336, %1525 ], [ %336, %1527 ], [ %336, %1500 ], [ %336, %1497 ], [ %336, %1416 ], [ %336, %1257 ], [ %336, %1414 ], [ %336, %1390 ], [ %336, %1032 ], [ %336, %1396 ], [ %336, %1364 ], [ %336, %938 ], [ %336, %880 ], [ %336, %877 ], [ %336, %865 ], [ %336, %874 ], [ %336, %860 ], [ %336, %852 ], [ %336, %764 ], [ %336, %544 ], [ %432, %473 ], [ %419, %418 ], [ %336, %334 ], [ %478, %523 ], [ %336, %1433 ], [ %336, %1438 ], [ %336, %1464 ], [ %794, %802 ], [ %419, %424 ], [ %794, %805 ]
  %1606 = phi ptr [ %1594, %1593 ], [ %1565, %1564 ], [ %78, %1525 ], [ %335, %1527 ], [ %335, %1500 ], [ %335, %1497 ], [ %335, %1416 ], [ %335, %1257 ], [ %335, %1414 ], [ %335, %1390 ], [ %335, %1032 ], [ %335, %1396 ], [ %335, %1364 ], [ %335, %938 ], [ %78, %880 ], [ %335, %877 ], [ %78, %865 ], [ %335, %874 ], [ %335, %860 ], [ %335, %852 ], [ %335, %764 ], [ %335, %544 ], [ %474, %473 ], [ %420, %418 ], [ %335, %334 ], [ %524, %523 ], [ %335, %1433 ], [ %335, %1438 ], [ %335, %1464 ], [ %795, %802 ], [ %420, %424 ], [ %795, %805 ]
  %1607 = icmp eq ptr %1604, %13
  br i1 %1607, label %119, label %334

1608:                                             ; preds = %877, %880, %1543, %1572, %1438, %1511, %1514, %1527, %1485, %1487, %1500, %1459, %1464, %865, %874, %869, %852, %860, %856, %773, %766, %508, %496, %446, %458, %145, %1570, %1541, %830, %823, %481, %435, %386, %409, %810, %384, %407, %745
  %1609 = phi ptr [ %338, %745 ], [ %338, %407 ], [ %338, %384 ], [ %338, %810 ], [ %338, %409 ], [ %338, %386 ], [ %338, %435 ], [ %338, %481 ], [ %338, %823 ], [ %338, %830 ], [ %338, %1541 ], [ %338, %1570 ], [ %123, %145 ], [ %338, %458 ], [ %338, %446 ], [ %338, %496 ], [ %338, %508 ], [ %338, %766 ], [ %338, %773 ], [ %338, %856 ], [ %338, %860 ], [ %338, %852 ], [ %338, %869 ], [ %338, %874 ], [ %338, %865 ], [ %338, %1464 ], [ %338, %1459 ], [ %338, %1500 ], [ %338, %1487 ], [ %338, %1485 ], [ %338, %1527 ], [ %338, %1514 ], [ %338, %1511 ], [ %338, %1438 ], [ %338, %1572 ], [ %338, %1543 ], [ %338, %880 ], [ %338, %877 ]
  %1610 = phi i32 [ %107, %745 ], [ %107, %407 ], [ %107, %384 ], [ %107, %810 ], [ %107, %409 ], [ %107, %386 ], [ %107, %435 ], [ %107, %481 ], [ %107, %823 ], [ %107, %830 ], [ %107, %1541 ], [ %107, %1570 ], [ 1, %145 ], [ %107, %458 ], [ %107, %446 ], [ %107, %496 ], [ %107, %508 ], [ %107, %766 ], [ %107, %773 ], [ %107, %856 ], [ %107, %860 ], [ %107, %852 ], [ %107, %869 ], [ %107, %874 ], [ %107, %865 ], [ %107, %1464 ], [ %107, %1459 ], [ %107, %1500 ], [ %107, %1487 ], [ %107, %1485 ], [ %107, %1527 ], [ %107, %1514 ], [ %107, %1511 ], [ %107, %1438 ], [ %107, %1572 ], [ %107, %1543 ], [ %107, %880 ], [ %107, %877 ]
  %1611 = phi ptr [ %108, %745 ], [ %108, %407 ], [ %108, %384 ], [ %108, %810 ], [ %108, %409 ], [ %108, %386 ], [ %108, %435 ], [ %108, %481 ], [ %108, %823 ], [ %108, %830 ], [ %108, %1541 ], [ %108, %1570 ], [ %125, %145 ], [ %108, %458 ], [ %108, %446 ], [ %108, %496 ], [ %108, %508 ], [ %108, %766 ], [ %108, %773 ], [ %108, %856 ], [ %108, %860 ], [ %108, %852 ], [ %108, %869 ], [ %108, %874 ], [ %108, %865 ], [ %108, %1464 ], [ %108, %1459 ], [ %108, %1500 ], [ %108, %1487 ], [ %108, %1485 ], [ %108, %1527 ], [ %108, %1514 ], [ %108, %1511 ], [ %108, %1438 ], [ %108, %1572 ], [ %108, %1543 ], [ %108, %880 ], [ %108, %877 ]
  %1612 = phi ptr [ %708, %745 ], [ %341, %407 ], [ %341, %384 ], [ %341, %810 ], [ %341, %409 ], [ %341, %386 ], [ %341, %435 ], [ %341, %481 ], [ %341, %823 ], [ %341, %830 ], [ %341, %1541 ], [ %341, %1570 ], [ %120, %145 ], [ %341, %458 ], [ %341, %446 ], [ %341, %496 ], [ %341, %508 ], [ %341, %766 ], [ %341, %773 ], [ %341, %856 ], [ %341, %860 ], [ %341, %852 ], [ %341, %869 ], [ %341, %874 ], [ %341, %865 ], [ %341, %1464 ], [ %341, %1459 ], [ %341, %1500 ], [ %341, %1487 ], [ %341, %1485 ], [ %341, %1527 ], [ %341, %1514 ], [ %341, %1511 ], [ %341, %1438 ], [ %341, %1572 ], [ %341, %1543 ], [ %341, %880 ], [ %341, %877 ]
  %1613 = phi i32 [ %709, %745 ], [ %340, %407 ], [ %340, %384 ], [ %340, %810 ], [ %340, %409 ], [ %340, %386 ], [ %340, %435 ], [ %340, %481 ], [ %340, %823 ], [ %340, %830 ], [ %340, %1541 ], [ %340, %1570 ], [ %121, %145 ], [ %340, %458 ], [ %340, %446 ], [ %340, %496 ], [ %340, %508 ], [ %340, %766 ], [ %340, %773 ], [ %340, %856 ], [ %340, %860 ], [ %340, %852 ], [ %340, %869 ], [ %340, %874 ], [ %340, %865 ], [ %340, %1464 ], [ %340, %1459 ], [ %340, %1500 ], [ %340, %1487 ], [ %340, %1485 ], [ %340, %1527 ], [ %340, %1514 ], [ %340, %1511 ], [ %340, %1438 ], [ %340, %1572 ], [ %340, %1543 ], [ %340, %880 ], [ %340, %877 ]
  %1614 = phi i32 [ %761, %745 ], [ %339, %407 ], [ %339, %384 ], [ %339, %810 ], [ %339, %409 ], [ %339, %386 ], [ %339, %435 ], [ %339, %481 ], [ %339, %823 ], [ %339, %830 ], [ %339, %1541 ], [ %339, %1570 ], [ %122, %145 ], [ %339, %458 ], [ %339, %446 ], [ %339, %496 ], [ %339, %508 ], [ %339, %766 ], [ %339, %773 ], [ %339, %856 ], [ %339, %860 ], [ %339, %852 ], [ %339, %869 ], [ %339, %874 ], [ %339, %865 ], [ %339, %1464 ], [ %339, %1459 ], [ %339, %1500 ], [ %339, %1487 ], [ %339, %1485 ], [ %339, %1527 ], [ %339, %1514 ], [ %339, %1511 ], [ %339, %1438 ], [ %339, %1572 ], [ %339, %1543 ], [ %339, %880 ], [ %339, %877 ]
  %1615 = phi ptr [ %336, %745 ], [ %85, %407 ], [ %85, %384 ], [ %85, %810 ], [ %404, %409 ], [ %381, %386 ], [ %85, %435 ], [ %85, %481 ], [ %807, %823 ], [ %807, %830 ], [ %85, %1541 ], [ %85, %1570 ], [ %124, %145 ], [ %336, %877 ], [ %336, %880 ], [ %1538, %1543 ], [ %1567, %1572 ], [ %336, %1438 ], [ %336, %1511 ], [ %336, %1514 ], [ %336, %1527 ], [ %336, %1485 ], [ %336, %1487 ], [ %336, %1500 ], [ %336, %1459 ], [ %336, %1464 ], [ %336, %865 ], [ %336, %874 ], [ %336, %869 ], [ %336, %852 ], [ %336, %860 ], [ %336, %856 ], [ %336, %773 ], [ %336, %766 ], [ %478, %508 ], [ %478, %496 ], [ %432, %446 ], [ %432, %458 ]
  %1616 = phi ptr [ %335, %745 ], [ %85, %407 ], [ %85, %384 ], [ %85, %810 ], [ %410, %409 ], [ %387, %386 ], [ %85, %435 ], [ %85, %481 ], [ %808, %823 ], [ %808, %830 ], [ %85, %1541 ], [ %85, %1570 ], [ %125, %145 ], [ %335, %877 ], [ %335, %880 ], [ %1539, %1543 ], [ %1568, %1572 ], [ %335, %1438 ], [ %335, %1511 ], [ %335, %1514 ], [ %335, %1527 ], [ %78, %1485 ], [ %335, %1487 ], [ %335, %1500 ], [ %335, %1459 ], [ %335, %1464 ], [ %78, %865 ], [ %335, %874 ], [ %335, %869 ], [ %335, %852 ], [ %335, %860 ], [ %335, %856 ], [ %335, %773 ], [ %335, %766 ], [ %479, %508 ], [ %479, %496 ], [ %433, %446 ], [ %433, %458 ]
  %1617 = icmp eq i32 %1614, 0
  br i1 %1617, label %1713, label %1618

1618:                                             ; preds = %143, %144, %1608
  %1619 = phi ptr [ %1616, %1608 ], [ %125, %144 ], [ %125, %143 ]
  %1620 = phi ptr [ %1615, %1608 ], [ %124, %144 ], [ %124, %143 ]
  %1621 = phi i32 [ %1614, %1608 ], [ %122, %144 ], [ %122, %143 ]
  %1622 = phi i32 [ %1613, %1608 ], [ %121, %144 ], [ %121, %143 ]
  %1623 = phi ptr [ %1612, %1608 ], [ %120, %144 ], [ %120, %143 ]
  %1624 = phi ptr [ %1611, %1608 ], [ %125, %144 ], [ %108, %143 ]
  %1625 = phi i32 [ %1610, %1608 ], [ 1, %144 ], [ 1, %143 ]
  %1626 = phi ptr [ %1609, %1608 ], [ %123, %144 ], [ %123, %143 ]
  br label %1627

1627:                                             ; preds = %1618, %1674
  %1628 = phi ptr [ %1635, %1674 ], [ %1619, %1618 ]
  %1629 = phi i32 [ %1672, %1674 ], [ %1621, %1618 ]
  %1630 = add i32 %1629, -1
  %1631 = zext i32 %1630 to i64
  %1632 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1623, i64 %1631
  %1633 = load ptr, ptr %1632, align 8, !tbaa !16
  %1634 = icmp eq ptr %1633, null
  %1635 = select i1 %1634, ptr %1628, ptr %1633
  %1636 = add i32 %1629, -2
  %1637 = zext i32 %1636 to i64
  %1638 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1623, i64 %1637
  %1639 = load ptr, ptr %1638, align 8, !tbaa !16
  %1640 = add i32 %1629, -3
  %1641 = zext i32 %1640 to i64
  %1642 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1623, i64 %1641
  %1643 = load i32, ptr %1642, align 8, !tbaa !16
  %1644 = sext i32 %1643 to i64
  %1645 = add i32 %1629, -4
  %1646 = zext i32 %1645 to i64
  %1647 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1623, i64 %1646
  %1648 = load i32, ptr %1647, align 8, !tbaa !16
  %1649 = sext i32 %1648 to i64
  %1650 = icmp ult i32 %1643, %1648
  br i1 %1650, label %1671, label %1651

1651:                                             ; preds = %1627, %1651
  %1652 = phi i64 [ %1669, %1651 ], [ %1644, %1627 ]
  %1653 = phi i32 [ %1664, %1651 ], [ %1645, %1627 ]
  %1654 = getelementptr inbounds %union.byte_register_info_type, ptr %61, i64 %1652
  %1655 = add i32 %1653, -1
  %1656 = zext i32 %1655 to i64
  %1657 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1623, i64 %1656
  %1658 = load i64, ptr %1657, align 8
  store i64 %1658, ptr %1654, align 8
  %1659 = add i32 %1653, -2
  %1660 = zext i32 %1659 to i64
  %1661 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1623, i64 %1660
  %1662 = load ptr, ptr %1661, align 8, !tbaa !16
  %1663 = getelementptr inbounds ptr, ptr %58, i64 %1652
  store ptr %1662, ptr %1663, align 8, !tbaa !30
  %1664 = add i32 %1653, -3
  %1665 = zext i32 %1664 to i64
  %1666 = getelementptr inbounds %union.byte_fail_stack_elt, ptr %1623, i64 %1665
  %1667 = load ptr, ptr %1666, align 8, !tbaa !16
  %1668 = getelementptr inbounds ptr, ptr %57, i64 %1652
  store ptr %1667, ptr %1668, align 8, !tbaa !30
  %1669 = add i64 %1652, -1
  %1670 = icmp ult i64 %1669, %1649
  br i1 %1670, label %1671, label %1651, !llvm.loop !69

1671:                                             ; preds = %1651, %1627
  %1672 = phi i32 [ %1645, %1627 ], [ %1664, %1651 ]
  %1673 = icmp eq ptr %1639, null
  br i1 %1673, label %1674, label %1676

1674:                                             ; preds = %1706, %1704, %1671
  %1675 = icmp eq i32 %1672, 0
  br i1 %1675, label %1713, label %1627

1676:                                             ; preds = %1671
  %1677 = icmp ult ptr %1639, %13
  br i1 %1677, label %1678, label %1708

1678:                                             ; preds = %1676
  %1679 = load i8, ptr %1639, align 1, !tbaa !16
  %1680 = add i8 %1679, -13
  %1681 = icmp ult i8 %1680, 10
  br i1 %1681, label %1682, label %1708

1682:                                             ; preds = %1678
  %1683 = zext nneg i8 %1680 to i16
  %1684 = lshr i16 561, %1683
  %1685 = and i16 %1684, 1
  %1686 = icmp eq i16 %1685, 0
  br i1 %1686, label %1708, label %1687

1687:                                             ; preds = %1682
  %1688 = zext nneg i8 %1680 to i10
  %1689 = lshr i10 49, %1688
  %1690 = and i10 %1689, 1
  %1691 = icmp eq i10 %1690, 0
  %1692 = getelementptr inbounds i8, ptr %1639, i64 1
  %1693 = load i8, ptr %1692, align 1, !tbaa !16
  %1694 = zext i8 %1693 to i32
  %1695 = getelementptr inbounds i8, ptr %1639, i64 2
  %1696 = load i8, ptr %1695, align 1, !tbaa !16
  %1697 = sext i8 %1696 to i32
  %1698 = shl nsw i32 %1697, 8
  %1699 = or disjoint i32 %1698, %1694
  %1700 = getelementptr inbounds i8, ptr %1639, i64 3
  %1701 = sext i32 %1699 to i64
  %1702 = getelementptr inbounds i8, ptr %1700, i64 %1701
  store ptr %1702, ptr %9, align 8, !tbaa !30
  %1703 = load i8, ptr %1702, align 1, !tbaa !16
  br i1 %1691, label %1704, label %1706

1704:                                             ; preds = %1687
  %1705 = icmp eq i8 %1703, 21
  br i1 %1705, label %1674, label %1708

1706:                                             ; preds = %1687
  %1707 = icmp eq i8 %1703, 15
  br i1 %1707, label %1674, label %1708

1708:                                             ; preds = %1682, %1678, %1704, %1706, %1676
  %1709 = icmp ult ptr %1635, %74
  %1710 = icmp ugt ptr %1635, %76
  %1711 = select i1 %1709, i1 true, i1 %1710
  %1712 = select i1 %1711, ptr %1620, ptr %86
  br label %106

1713:                                             ; preds = %1608, %1674
  %1714 = phi ptr [ %1624, %1674 ], [ %1611, %1608 ]
  %1715 = phi i32 [ %1625, %1674 ], [ %1610, %1608 ]
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1717, label %156

1717:                                             ; preds = %711, %1330, %1276, %998, %904, %36, %1713, %205, %183, %21, %324
  %1718 = phi i32 [ %333, %324 ], [ -1, %21 ], [ -2, %183 ], [ -2, %205 ], [ -1, %1713 ], [ -1, %36 ], [ -2, %904 ], [ -2, %998 ], [ -2, %1276 ], [ -2, %1330 ], [ -2, %711 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  ret i32 %1718
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_match_2(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #2 {
  %9 = tail call fastcc i32 @byte_re_match_2_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #23
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @xre_compile_pattern(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.re_pattern_buffer, ptr %2, i64 0, i32 7
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 105
  %7 = or disjoint i8 %6, -128
  store i8 %7, ptr %4, align 8
  %8 = load i64, ptr @xre_syntax_options, align 8, !tbaa !5
  %9 = tail call fastcc i32 @byte_regex_compile(ptr noundef %0, i64 noundef %1, i64 noundef %8, ptr noundef %2) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  br label %15

15:                                               ; preds = %3, %11
  %16 = phi ptr [ %14, %11 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @byte_regex_compile(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca [17 x i8], align 16
  %8 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %9 = getelementptr inbounds i8, ptr %0, i64 %1
  %10 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = tail call dereferenceable_or_null(1280) ptr @malloc(i64 noundef 1280) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %2688, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 3
  store i64 %2, ptr %15, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 7
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, -105
  store i8 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 2
  store i64 0, ptr %19, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 6
  store i64 0, ptr %20, align 8, !tbaa !29
  tail call fastcc void @init_syntax_once() #23
  %21 = getelementptr inbounds %struct.re_pattern_buffer, ptr %3, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !70
  %23 = icmp eq i64 %22, 0
  %24 = load ptr, ptr %3, align 8, !tbaa !14
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
  store ptr %32, ptr %3, align 8, !tbaa !14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %12) #23
  br label %2688

35:                                               ; preds = %31
  store i64 32, ptr %21, align 8, !tbaa !70
  br label %36

36:                                               ; preds = %35, %14
  %37 = phi ptr [ %32, %35 ], [ %24, %14 ]
  %38 = icmp eq i64 %1, 0
  br i1 %38, label %2642, label %39

39:                                               ; preds = %36
  %40 = icmp ne ptr %11, null
  %41 = and i64 %2, 2
  %42 = icmp eq i64 %41, 0
  %43 = and i64 %2, 16384
  %44 = icmp eq i64 %43, 0
  %45 = and i64 %2, 524288
  %46 = icmp eq i64 %45, 0
  %47 = and i64 %2, 4608
  %48 = icmp eq i64 %47, 512
  %49 = and i64 %2, 33792
  %50 = icmp eq i64 %49, 0
  %51 = and i64 %2, 8192
  %52 = icmp eq i64 %51, 0
  %53 = and i64 %2, 131072
  %54 = icmp eq i64 %53, 0
  %55 = icmp eq i64 %47, 4608
  %56 = and i64 %2, 4096
  %57 = icmp eq i64 %56, 0
  %58 = and i64 %2, 2097184
  %59 = icmp eq i64 %58, 32
  %60 = and i64 %2, 16
  %61 = icmp eq i64 %60, 0
  %62 = and i64 %2, 2097152
  %63 = icmp eq i64 %62, 0
  %64 = and i64 %2, 32768
  %65 = icmp eq i64 %64, 0
  %66 = and i64 %2, 2048
  %67 = icmp eq i64 %66, 0
  %68 = and i64 %2, 1024
  %69 = icmp eq i64 %68, 0
  %70 = and i64 %2, 256
  %71 = icmp eq i64 %70, 0
  %72 = and i64 %2, 1
  %73 = icmp ne i64 %72, 0
  %74 = and i64 %2, 4
  %75 = icmp ne i64 %74, 0
  %76 = and i64 %2, 1026
  %77 = icmp eq i64 %76, 0
  %78 = and i64 %2, 32
  %79 = icmp eq i64 %78, 0
  %80 = getelementptr inbounds i8, ptr %11, i64 46
  %81 = getelementptr inbounds i8, ptr %11, i64 10
  %82 = and i64 %2, 64
  %83 = icmp eq i64 %82, 0
  %84 = and i64 %2, 8
  %85 = icmp eq i64 %84, 0
  %86 = and i64 %2, 512
  %87 = icmp eq i64 %86, 0
  br label %88

88:                                               ; preds = %2620, %39
  %89 = phi ptr [ %2626, %2620 ], [ %0, %39 ]
  %90 = phi ptr [ %2621, %2620 ], [ %37, %39 ]
  %91 = phi i64 [ %2625, %2620 ], [ 32, %39 ]
  %92 = phi ptr [ %1337, %2620 ], [ %12, %39 ]
  %93 = phi i32 [ %1320, %2620 ], [ 0, %39 ]
  br label %94

94:                                               ; preds = %88, %2611
  %95 = phi ptr [ %2618, %2611 ], [ %89, %88 ]
  %96 = phi ptr [ %2617, %2611 ], [ %90, %88 ]
  %97 = phi i64 [ %2616, %2611 ], [ %91, %88 ]
  %98 = phi ptr [ %2615, %2611 ], [ null, %88 ]
  %99 = phi ptr [ %2614, %2611 ], [ null, %88 ]
  %100 = phi ptr [ %2613, %2611 ], [ %90, %88 ]
  %101 = phi ptr [ %2612, %2611 ], [ null, %88 ]
  %102 = getelementptr inbounds i8, ptr %95, i64 1
  store ptr %102, ptr %5, align 8, !tbaa !30
  %103 = load i8, ptr %95, align 1, !tbaa !16
  br i1 %40, label %104, label %108

104:                                              ; preds = %94
  %105 = zext i8 %103 to i64
  %106 = getelementptr inbounds i8, ptr %11, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !16
  br label %108

108:                                              ; preds = %104, %94
  %109 = phi i8 [ %107, %104 ], [ %103, %94 ]
  switch i8 %109, label %2455 [
    i8 94, label %118
    i8 36, label %183
    i8 43, label %248
    i8 63, label %248
    i8 42, label %249
    i8 46, label %110
    i8 91, label %579
    i8 40, label %1305
    i8 41, label %1306
    i8 10, label %1307
    i8 124, label %1308
    i8 123, label %1309
    i8 92, label %1310
  ]

110:                                              ; preds = %108
  %111 = load ptr, ptr %3, align 8, !tbaa !14
  %112 = ptrtoint ptr %96 to i64
  %113 = ptrtoint ptr %111 to i64
  %114 = add i64 %112, 1
  %115 = sub i64 %114, %113
  %116 = load i64, ptr %21, align 8, !tbaa !70
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %528, label %572

118:                                              ; preds = %108
  %119 = icmp ne ptr %95, %0
  %120 = and i1 %85, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = tail call fastcc signext i8 @byte_at_begline_loc_p(ptr noundef %0, ptr noundef nonnull %102, i64 noundef %2) #23, !range !49
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %2455, label %124

124:                                              ; preds = %118, %121
  %125 = load ptr, ptr %3, align 8, !tbaa !14
  %126 = ptrtoint ptr %96 to i64
  %127 = ptrtoint ptr %125 to i64
  %128 = add i64 %126, 1
  %129 = sub i64 %128, %127
  %130 = load i64, ptr %21, align 8, !tbaa !70
  %131 = icmp ugt i64 %129, %130
  br i1 %131, label %132, label %176

132:                                              ; preds = %124, %165
  %133 = phi i64 [ %174, %165 ], [ %130, %124 ]
  %134 = phi i64 [ %149, %165 ], [ %127, %124 ]
  %135 = phi ptr [ %145, %165 ], [ %125, %124 ]
  %136 = phi ptr [ %170, %165 ], [ %96, %124 ]
  %137 = phi ptr [ %169, %165 ], [ %98, %124 ]
  %138 = phi ptr [ %168, %165 ], [ %99, %124 ]
  %139 = phi ptr [ %167, %165 ], [ %100, %124 ]
  %140 = phi ptr [ %166, %165 ], [ %101, %124 ]
  %141 = icmp eq i64 %133, 65536
  br i1 %141, label %2688, label %142

142:                                              ; preds = %132
  %143 = shl i64 %133, 1
  %144 = tail call i64 @llvm.umin.i64(i64 %143, i64 65536)
  store i64 %144, ptr %21, align 8, !tbaa !70
  %145 = tail call ptr @realloc(ptr noundef %135, i64 noundef %144) #27
  store ptr %145, ptr %3, align 8, !tbaa !14
  %146 = icmp eq ptr %145, null
  br i1 %146, label %2688, label %147

147:                                              ; preds = %142
  %148 = icmp eq ptr %135, %145
  %149 = ptrtoint ptr %145 to i64
  br i1 %148, label %165, label %150

150:                                              ; preds = %147
  %151 = sub i64 %149, %134
  %152 = shl i64 %151, 32
  %153 = ashr exact i64 %152, 32
  %154 = getelementptr inbounds i8, ptr %136, i64 %153
  %155 = getelementptr inbounds i8, ptr %139, i64 %153
  %156 = icmp eq ptr %140, null
  %157 = getelementptr inbounds i8, ptr %140, i64 %153
  %158 = select i1 %156, ptr null, ptr %157
  %159 = icmp eq ptr %138, null
  %160 = getelementptr inbounds i8, ptr %138, i64 %153
  %161 = select i1 %159, ptr null, ptr %160
  %162 = icmp eq ptr %137, null
  %163 = getelementptr inbounds i8, ptr %137, i64 %153
  %164 = select i1 %162, ptr null, ptr %163
  br label %165

165:                                              ; preds = %147, %150
  %166 = phi ptr [ %158, %150 ], [ %140, %147 ]
  %167 = phi ptr [ %155, %150 ], [ %139, %147 ]
  %168 = phi ptr [ %161, %150 ], [ %138, %147 ]
  %169 = phi ptr [ %164, %150 ], [ %137, %147 ]
  %170 = phi ptr [ %154, %150 ], [ %136, %147 ]
  %171 = ptrtoint ptr %170 to i64
  %172 = add i64 %171, 1
  %173 = sub i64 %172, %149
  %174 = load i64, ptr %21, align 8, !tbaa !70
  %175 = icmp ugt i64 %173, %174
  br i1 %175, label %132, label %176, !llvm.loop !71

176:                                              ; preds = %165, %124
  %177 = phi ptr [ %101, %124 ], [ %166, %165 ]
  %178 = phi ptr [ %100, %124 ], [ %167, %165 ]
  %179 = phi ptr [ %99, %124 ], [ %168, %165 ]
  %180 = phi ptr [ %98, %124 ], [ %169, %165 ]
  %181 = phi ptr [ %96, %124 ], [ %170, %165 ]
  %182 = getelementptr inbounds i8, ptr %181, i64 1
  store i8 9, ptr %181, align 1, !tbaa !16
  br label %2611

183:                                              ; preds = %108
  %184 = icmp ne ptr %102, %9
  %185 = and i1 %85, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = tail call fastcc signext i8 @byte_at_endline_loc_p(ptr noundef nonnull %102, ptr noundef nonnull %9, i64 noundef %2) #23, !range !49
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %2455, label %189

189:                                              ; preds = %183, %186
  %190 = load ptr, ptr %3, align 8, !tbaa !14
  %191 = ptrtoint ptr %96 to i64
  %192 = ptrtoint ptr %190 to i64
  %193 = add i64 %191, 1
  %194 = sub i64 %193, %192
  %195 = load i64, ptr %21, align 8, !tbaa !70
  %196 = icmp ugt i64 %194, %195
  br i1 %196, label %197, label %241

197:                                              ; preds = %189, %230
  %198 = phi i64 [ %239, %230 ], [ %195, %189 ]
  %199 = phi i64 [ %214, %230 ], [ %192, %189 ]
  %200 = phi ptr [ %210, %230 ], [ %190, %189 ]
  %201 = phi ptr [ %235, %230 ], [ %96, %189 ]
  %202 = phi ptr [ %234, %230 ], [ %98, %189 ]
  %203 = phi ptr [ %233, %230 ], [ %99, %189 ]
  %204 = phi ptr [ %232, %230 ], [ %100, %189 ]
  %205 = phi ptr [ %231, %230 ], [ %101, %189 ]
  %206 = icmp eq i64 %198, 65536
  br i1 %206, label %2688, label %207

207:                                              ; preds = %197
  %208 = shl i64 %198, 1
  %209 = tail call i64 @llvm.umin.i64(i64 %208, i64 65536)
  store i64 %209, ptr %21, align 8, !tbaa !70
  %210 = tail call ptr @realloc(ptr noundef %200, i64 noundef %209) #27
  store ptr %210, ptr %3, align 8, !tbaa !14
  %211 = icmp eq ptr %210, null
  br i1 %211, label %2688, label %212

212:                                              ; preds = %207
  %213 = icmp eq ptr %200, %210
  %214 = ptrtoint ptr %210 to i64
  br i1 %213, label %230, label %215

215:                                              ; preds = %212
  %216 = sub i64 %214, %199
  %217 = shl i64 %216, 32
  %218 = ashr exact i64 %217, 32
  %219 = getelementptr inbounds i8, ptr %201, i64 %218
  %220 = getelementptr inbounds i8, ptr %204, i64 %218
  %221 = icmp eq ptr %205, null
  %222 = getelementptr inbounds i8, ptr %205, i64 %218
  %223 = select i1 %221, ptr null, ptr %222
  %224 = icmp eq ptr %203, null
  %225 = getelementptr inbounds i8, ptr %203, i64 %218
  %226 = select i1 %224, ptr null, ptr %225
  %227 = icmp eq ptr %202, null
  %228 = getelementptr inbounds i8, ptr %202, i64 %218
  %229 = select i1 %227, ptr null, ptr %228
  br label %230

230:                                              ; preds = %212, %215
  %231 = phi ptr [ %223, %215 ], [ %205, %212 ]
  %232 = phi ptr [ %220, %215 ], [ %204, %212 ]
  %233 = phi ptr [ %226, %215 ], [ %203, %212 ]
  %234 = phi ptr [ %229, %215 ], [ %202, %212 ]
  %235 = phi ptr [ %219, %215 ], [ %201, %212 ]
  %236 = ptrtoint ptr %235 to i64
  %237 = add i64 %236, 1
  %238 = sub i64 %237, %214
  %239 = load i64, ptr %21, align 8, !tbaa !70
  %240 = icmp ugt i64 %238, %239
  br i1 %240, label %197, label %241, !llvm.loop !72

241:                                              ; preds = %230, %189
  %242 = phi ptr [ %101, %189 ], [ %231, %230 ]
  %243 = phi ptr [ %100, %189 ], [ %232, %230 ]
  %244 = phi ptr [ %99, %189 ], [ %233, %230 ]
  %245 = phi ptr [ %98, %189 ], [ %234, %230 ]
  %246 = phi ptr [ %96, %189 ], [ %235, %230 ]
  %247 = getelementptr inbounds i8, ptr %246, i64 1
  store i8 10, ptr %246, align 1, !tbaa !16
  br label %2611

248:                                              ; preds = %108, %108
  br i1 %77, label %249, label %2455

249:                                              ; preds = %248, %2448, %108
  %250 = phi ptr [ %1314, %2448 ], [ %102, %108 ], [ %102, %248 ]
  %251 = phi i8 [ %1315, %2448 ], [ %109, %108 ], [ %109, %248 ]
  %252 = icmp eq ptr %99, null
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  br i1 %79, label %255, label %254

254:                                              ; preds = %253
  tail call void @free(ptr noundef %92) #23
  br label %2688

255:                                              ; preds = %253
  br i1 %61, label %2455, label %256

256:                                              ; preds = %255, %249
  %257 = icmp ne i8 %251, 43
  %258 = zext i1 %257 to i32
  %259 = icmp ne i8 %251, 63
  %260 = zext i1 %259 to i32
  %261 = icmp eq ptr %250, %9
  br i1 %261, label %303, label %262

262:                                              ; preds = %256, %293
  %263 = phi i32 [ %301, %293 ], [ %260, %256 ]
  %264 = phi i32 [ %298, %293 ], [ %258, %256 ]
  %265 = phi ptr [ %294, %293 ], [ %250, %256 ]
  %266 = getelementptr inbounds i8, ptr %265, i64 1
  %267 = load i8, ptr %265, align 1, !tbaa !16
  br i1 %40, label %268, label %272

268:                                              ; preds = %262
  %269 = zext i8 %267 to i64
  %270 = getelementptr inbounds i8, ptr %11, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !16
  br label %272

272:                                              ; preds = %268, %262
  %273 = phi i8 [ %271, %268 ], [ %267, %262 ]
  %274 = icmp eq i8 %273, 42
  br i1 %274, label %293, label %275

275:                                              ; preds = %272
  br i1 %42, label %276, label %277

276:                                              ; preds = %275
  switch i8 %273, label %292 [
    i8 63, label %293
    i8 43, label %293
  ]

277:                                              ; preds = %275
  %278 = icmp eq i8 %273, 92
  br i1 %278, label %279, label %292

279:                                              ; preds = %277
  %280 = icmp eq ptr %266, %9
  br i1 %280, label %281, label %282

281:                                              ; preds = %279
  tail call void @free(ptr noundef %92) #23
  br label %2688

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %265, i64 2
  %284 = load i8, ptr %266, align 1, !tbaa !16
  br i1 %40, label %285, label %289

285:                                              ; preds = %282
  %286 = zext i8 %284 to i64
  %287 = getelementptr inbounds i8, ptr %11, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !16
  br label %289

289:                                              ; preds = %285, %282
  %290 = phi i8 [ %288, %285 ], [ %284, %282 ]
  switch i8 %290, label %291 [
    i8 63, label %293
    i8 43, label %293
  ]

291:                                              ; preds = %289
  store ptr %265, ptr %5, align 8, !tbaa !30
  br label %306

292:                                              ; preds = %276, %277
  store ptr %265, ptr %5, align 8, !tbaa !30
  br label %306

293:                                              ; preds = %289, %289, %276, %276, %272
  %294 = phi ptr [ %266, %272 ], [ %266, %276 ], [ %266, %276 ], [ %283, %289 ], [ %283, %289 ]
  %295 = phi i8 [ 42, %272 ], [ %273, %276 ], [ %273, %276 ], [ %290, %289 ], [ %290, %289 ]
  %296 = icmp ne i8 %295, 43
  %297 = zext i1 %296 to i32
  %298 = or i32 %264, %297
  %299 = icmp ne i8 %295, 63
  %300 = zext i1 %299 to i32
  %301 = or i32 %263, %300
  %302 = icmp eq ptr %294, %9
  br i1 %302, label %303, label %262

303:                                              ; preds = %293, %256
  %304 = phi i32 [ %258, %256 ], [ %298, %293 ]
  %305 = phi i32 [ %260, %256 ], [ %301, %293 ]
  store ptr %9, ptr %5, align 8, !tbaa !30
  br label %306

306:                                              ; preds = %303, %292, %291
  %307 = phi ptr [ %9, %303 ], [ %265, %292 ], [ %265, %291 ]
  %308 = phi i32 [ %304, %303 ], [ %264, %292 ], [ %264, %291 ]
  %309 = phi i32 [ %305, %303 ], [ %263, %292 ], [ %263, %291 ]
  br i1 %252, label %2611, label %310

310:                                              ; preds = %306
  %311 = icmp eq i32 %309, 0
  %312 = load ptr, ptr %3, align 8, !tbaa !14
  %313 = load i64, ptr %21, align 8, !tbaa !70
  br i1 %311, label %409, label %314

314:                                              ; preds = %310
  %315 = ptrtoint ptr %96 to i64
  %316 = ptrtoint ptr %312 to i64
  %317 = add i64 %315, 3
  %318 = sub i64 %317, %316
  %319 = icmp ugt i64 %318, %313
  br i1 %319, label %320, label %359

320:                                              ; preds = %314, %349
  %321 = phi i64 [ %357, %349 ], [ %313, %314 ]
  %322 = phi i64 [ %336, %349 ], [ %316, %314 ]
  %323 = phi ptr [ %332, %349 ], [ %312, %314 ]
  %324 = phi ptr [ %353, %349 ], [ %96, %314 ]
  %325 = phi ptr [ %352, %349 ], [ %99, %314 ]
  %326 = phi ptr [ %351, %349 ], [ %100, %314 ]
  %327 = phi ptr [ %350, %349 ], [ %101, %314 ]
  %328 = icmp eq i64 %321, 65536
  br i1 %328, label %2688, label %329

329:                                              ; preds = %320
  %330 = shl i64 %321, 1
  %331 = tail call i64 @llvm.umin.i64(i64 %330, i64 65536)
  store i64 %331, ptr %21, align 8, !tbaa !70
  %332 = tail call ptr @realloc(ptr noundef %323, i64 noundef %331) #27
  store ptr %332, ptr %3, align 8, !tbaa !14
  %333 = icmp eq ptr %332, null
  br i1 %333, label %2688, label %334

334:                                              ; preds = %329
  %335 = icmp eq ptr %323, %332
  %336 = ptrtoint ptr %332 to i64
  br i1 %335, label %349, label %337

337:                                              ; preds = %334
  %338 = sub i64 %336, %322
  %339 = shl i64 %338, 32
  %340 = ashr exact i64 %339, 32
  %341 = getelementptr inbounds i8, ptr %324, i64 %340
  %342 = getelementptr inbounds i8, ptr %326, i64 %340
  %343 = icmp eq ptr %327, null
  %344 = getelementptr inbounds i8, ptr %327, i64 %340
  %345 = select i1 %343, ptr null, ptr %344
  %346 = icmp eq ptr %325, null
  %347 = getelementptr inbounds i8, ptr %325, i64 %340
  %348 = select i1 %346, ptr null, ptr %347
  br label %349

349:                                              ; preds = %334, %337
  %350 = phi ptr [ %345, %337 ], [ %327, %334 ]
  %351 = phi ptr [ %342, %337 ], [ %326, %334 ]
  %352 = phi ptr [ %348, %337 ], [ %325, %334 ]
  %353 = phi ptr [ %341, %337 ], [ %324, %334 ]
  %354 = ptrtoint ptr %353 to i64
  %355 = add i64 %354, 3
  %356 = sub i64 %355, %336
  %357 = load i64, ptr %21, align 8, !tbaa !70
  %358 = icmp ugt i64 %356, %357
  br i1 %358, label %320, label %359, !llvm.loop !73

359:                                              ; preds = %349, %314
  %360 = phi ptr [ %101, %314 ], [ %350, %349 ]
  %361 = phi ptr [ %100, %314 ], [ %351, %349 ]
  %362 = phi ptr [ %99, %314 ], [ %352, %349 ]
  %363 = phi ptr [ %96, %314 ], [ %353, %349 ]
  %364 = phi i64 [ %315, %314 ], [ %354, %349 ]
  %365 = getelementptr inbounds i8, ptr %307, i64 -2
  br i1 %40, label %366, label %372

366:                                              ; preds = %359
  %367 = load i8, ptr %365, align 1, !tbaa !16
  %368 = zext i8 %367 to i64
  %369 = getelementptr inbounds i8, ptr %11, i64 %368
  %370 = load i8, ptr %80, align 1, !tbaa !16
  %371 = sext i8 %370 to i32
  br label %372

372:                                              ; preds = %359, %366
  %373 = phi ptr [ %369, %366 ], [ %365, %359 ]
  %374 = phi i32 [ %371, %366 ], [ 46, %359 ]
  %375 = load i8, ptr %373, align 1, !tbaa !16
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %374, %376
  %378 = icmp ne i32 %308, 0
  %379 = select i1 %377, i1 %378, i1 false
  %380 = icmp ult ptr %307, %9
  %381 = select i1 %379, i1 %380, i1 false
  br i1 %381, label %382, label %396

382:                                              ; preds = %372
  br i1 %40, label %383, label %389

383:                                              ; preds = %382
  %384 = load i8, ptr %307, align 1, !tbaa !16
  %385 = zext i8 %384 to i64
  %386 = getelementptr inbounds i8, ptr %11, i64 %385
  %387 = load i8, ptr %81, align 1, !tbaa !16
  %388 = sext i8 %387 to i32
  br label %389

389:                                              ; preds = %382, %383
  %390 = phi ptr [ %386, %383 ], [ %307, %382 ]
  %391 = phi i32 [ %388, %383 ], [ 10, %382 ]
  %392 = load i8, ptr %390, align 1, !tbaa !16
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %391, %393
  %395 = and i1 %83, %394
  br i1 %395, label %398, label %396

396:                                              ; preds = %389, %372
  %397 = getelementptr inbounds i8, ptr %362, i64 -3
  br label %398

398:                                              ; preds = %389, %396
  %399 = phi ptr [ %397, %396 ], [ %362, %389 ]
  %400 = phi i32 [ 18, %396 ], [ 13, %389 ]
  %401 = phi i32 [ 0, %396 ], [ 1, %389 ]
  %402 = ptrtoint ptr %399 to i64
  %403 = sub i64 %402, %364
  %404 = trunc i64 %403 to i32
  %405 = add i32 %404, -3
  tail call fastcc void @byte_store_op1(i32 noundef %400, ptr noundef %363, i32 noundef %405) #23
  %406 = getelementptr inbounds i8, ptr %363, i64 3
  %407 = load ptr, ptr %3, align 8, !tbaa !14
  %408 = load i64, ptr %21, align 8, !tbaa !70
  br label %409

409:                                              ; preds = %398, %310
  %410 = phi i64 [ %408, %398 ], [ %313, %310 ]
  %411 = phi ptr [ %407, %398 ], [ %312, %310 ]
  %412 = phi i32 [ %401, %398 ], [ 0, %310 ]
  %413 = phi ptr [ %360, %398 ], [ %101, %310 ]
  %414 = phi ptr [ %361, %398 ], [ %100, %310 ]
  %415 = phi ptr [ %362, %398 ], [ %99, %310 ]
  %416 = phi ptr [ %406, %398 ], [ %96, %310 ]
  %417 = ptrtoint ptr %416 to i64
  %418 = ptrtoint ptr %411 to i64
  %419 = add i64 %417, 3
  %420 = sub i64 %419, %418
  %421 = icmp ugt i64 %420, %410
  br i1 %421, label %422, label %461

422:                                              ; preds = %409, %451
  %423 = phi i64 [ %459, %451 ], [ %410, %409 ]
  %424 = phi i64 [ %438, %451 ], [ %418, %409 ]
  %425 = phi ptr [ %434, %451 ], [ %411, %409 ]
  %426 = phi ptr [ %455, %451 ], [ %416, %409 ]
  %427 = phi ptr [ %454, %451 ], [ %415, %409 ]
  %428 = phi ptr [ %453, %451 ], [ %414, %409 ]
  %429 = phi ptr [ %452, %451 ], [ %413, %409 ]
  %430 = icmp eq i64 %423, 65536
  br i1 %430, label %2688, label %431

431:                                              ; preds = %422
  %432 = shl i64 %423, 1
  %433 = tail call i64 @llvm.umin.i64(i64 %432, i64 65536)
  store i64 %433, ptr %21, align 8, !tbaa !70
  %434 = tail call ptr @realloc(ptr noundef %425, i64 noundef %433) #27
  store ptr %434, ptr %3, align 8, !tbaa !14
  %435 = icmp eq ptr %434, null
  br i1 %435, label %2688, label %436

436:                                              ; preds = %431
  %437 = icmp eq ptr %425, %434
  %438 = ptrtoint ptr %434 to i64
  br i1 %437, label %451, label %439

439:                                              ; preds = %436
  %440 = sub i64 %438, %424
  %441 = shl i64 %440, 32
  %442 = ashr exact i64 %441, 32
  %443 = getelementptr inbounds i8, ptr %426, i64 %442
  %444 = getelementptr inbounds i8, ptr %428, i64 %442
  %445 = icmp eq ptr %429, null
  %446 = getelementptr inbounds i8, ptr %429, i64 %442
  %447 = select i1 %445, ptr null, ptr %446
  %448 = icmp eq ptr %427, null
  %449 = getelementptr inbounds i8, ptr %427, i64 %442
  %450 = select i1 %448, ptr null, ptr %449
  br label %451

451:                                              ; preds = %436, %439
  %452 = phi ptr [ %447, %439 ], [ %429, %436 ]
  %453 = phi ptr [ %444, %439 ], [ %428, %436 ]
  %454 = phi ptr [ %450, %439 ], [ %427, %436 ]
  %455 = phi ptr [ %443, %439 ], [ %426, %436 ]
  %456 = ptrtoint ptr %455 to i64
  %457 = add i64 %456, 3
  %458 = sub i64 %457, %438
  %459 = load i64, ptr %21, align 8, !tbaa !70
  %460 = icmp ugt i64 %458, %459
  br i1 %460, label %422, label %461, !llvm.loop !74

461:                                              ; preds = %451, %409
  %462 = phi ptr [ %413, %409 ], [ %452, %451 ]
  %463 = phi ptr [ %414, %409 ], [ %453, %451 ]
  %464 = phi ptr [ %415, %409 ], [ %454, %451 ]
  %465 = phi ptr [ %416, %409 ], [ %455, %451 ]
  %466 = and i32 %412, 255
  %467 = icmp eq i32 %466, 0
  %468 = select i1 %467, i32 15, i32 16
  %469 = getelementptr inbounds i8, ptr %465, i64 3
  %470 = ptrtoint ptr %469 to i64
  %471 = ptrtoint ptr %464 to i64
  %472 = sub i64 %470, %471
  %473 = trunc i64 %472 to i32
  %474 = add i32 %473, -3
  tail call fastcc void @byte_insert_op1(i32 noundef %468, ptr noundef %464, i32 noundef %474, ptr noundef %465) #23
  %475 = icmp eq i32 %308, 0
  br i1 %475, label %476, label %2611

476:                                              ; preds = %461
  %477 = load ptr, ptr %3, align 8, !tbaa !14
  %478 = ptrtoint ptr %477 to i64
  %479 = add i64 %470, 3
  %480 = sub i64 %479, %478
  %481 = load i64, ptr %21, align 8, !tbaa !70
  %482 = icmp ugt i64 %480, %481
  br i1 %482, label %483, label %522

483:                                              ; preds = %476, %512
  %484 = phi i64 [ %520, %512 ], [ %481, %476 ]
  %485 = phi i64 [ %499, %512 ], [ %478, %476 ]
  %486 = phi ptr [ %495, %512 ], [ %477, %476 ]
  %487 = phi ptr [ %516, %512 ], [ %469, %476 ]
  %488 = phi ptr [ %515, %512 ], [ %464, %476 ]
  %489 = phi ptr [ %514, %512 ], [ %463, %476 ]
  %490 = phi ptr [ %513, %512 ], [ %462, %476 ]
  %491 = icmp eq i64 %484, 65536
  br i1 %491, label %2688, label %492

492:                                              ; preds = %483
  %493 = shl i64 %484, 1
  %494 = tail call i64 @llvm.umin.i64(i64 %493, i64 65536)
  store i64 %494, ptr %21, align 8, !tbaa !70
  %495 = tail call ptr @realloc(ptr noundef %486, i64 noundef %494) #27
  store ptr %495, ptr %3, align 8, !tbaa !14
  %496 = icmp eq ptr %495, null
  br i1 %496, label %2688, label %497

497:                                              ; preds = %492
  %498 = icmp eq ptr %486, %495
  %499 = ptrtoint ptr %495 to i64
  br i1 %498, label %512, label %500

500:                                              ; preds = %497
  %501 = sub i64 %499, %485
  %502 = shl i64 %501, 32
  %503 = ashr exact i64 %502, 32
  %504 = getelementptr inbounds i8, ptr %487, i64 %503
  %505 = getelementptr inbounds i8, ptr %489, i64 %503
  %506 = icmp eq ptr %490, null
  %507 = getelementptr inbounds i8, ptr %490, i64 %503
  %508 = select i1 %506, ptr null, ptr %507
  %509 = icmp eq ptr %488, null
  %510 = getelementptr inbounds i8, ptr %488, i64 %503
  %511 = select i1 %509, ptr null, ptr %510
  br label %512

512:                                              ; preds = %497, %500
  %513 = phi ptr [ %508, %500 ], [ %490, %497 ]
  %514 = phi ptr [ %505, %500 ], [ %489, %497 ]
  %515 = phi ptr [ %511, %500 ], [ %488, %497 ]
  %516 = phi ptr [ %504, %500 ], [ %487, %497 ]
  %517 = ptrtoint ptr %516 to i64
  %518 = add i64 %517, 3
  %519 = sub i64 %518, %499
  %520 = load i64, ptr %21, align 8, !tbaa !70
  %521 = icmp ugt i64 %519, %520
  br i1 %521, label %483, label %522, !llvm.loop !75

522:                                              ; preds = %512, %476
  %523 = phi ptr [ %462, %476 ], [ %513, %512 ]
  %524 = phi ptr [ %463, %476 ], [ %514, %512 ]
  %525 = phi ptr [ %464, %476 ], [ %515, %512 ]
  %526 = phi ptr [ %469, %476 ], [ %516, %512 ]
  tail call fastcc void @byte_insert_op1(i32 noundef 19, ptr noundef %525, i32 noundef 3, ptr noundef %526) #23
  %527 = getelementptr inbounds i8, ptr %526, i64 3
  br label %2611

528:                                              ; preds = %110, %561
  %529 = phi i64 [ %570, %561 ], [ %116, %110 ]
  %530 = phi i64 [ %545, %561 ], [ %113, %110 ]
  %531 = phi ptr [ %541, %561 ], [ %111, %110 ]
  %532 = phi ptr [ %566, %561 ], [ %96, %110 ]
  %533 = phi ptr [ %565, %561 ], [ %98, %110 ]
  %534 = phi ptr [ %564, %561 ], [ %96, %110 ]
  %535 = phi ptr [ %563, %561 ], [ %100, %110 ]
  %536 = phi ptr [ %562, %561 ], [ %101, %110 ]
  %537 = icmp eq i64 %529, 65536
  br i1 %537, label %2688, label %538

538:                                              ; preds = %528
  %539 = shl i64 %529, 1
  %540 = tail call i64 @llvm.umin.i64(i64 %539, i64 65536)
  store i64 %540, ptr %21, align 8, !tbaa !70
  %541 = tail call ptr @realloc(ptr noundef %531, i64 noundef %540) #27
  store ptr %541, ptr %3, align 8, !tbaa !14
  %542 = icmp eq ptr %541, null
  br i1 %542, label %2688, label %543

543:                                              ; preds = %538
  %544 = icmp eq ptr %531, %541
  %545 = ptrtoint ptr %541 to i64
  br i1 %544, label %561, label %546

546:                                              ; preds = %543
  %547 = sub i64 %545, %530
  %548 = shl i64 %547, 32
  %549 = ashr exact i64 %548, 32
  %550 = getelementptr inbounds i8, ptr %532, i64 %549
  %551 = getelementptr inbounds i8, ptr %535, i64 %549
  %552 = icmp eq ptr %536, null
  %553 = getelementptr inbounds i8, ptr %536, i64 %549
  %554 = select i1 %552, ptr null, ptr %553
  %555 = icmp eq ptr %534, null
  %556 = getelementptr inbounds i8, ptr %534, i64 %549
  %557 = select i1 %555, ptr null, ptr %556
  %558 = icmp eq ptr %533, null
  %559 = getelementptr inbounds i8, ptr %533, i64 %549
  %560 = select i1 %558, ptr null, ptr %559
  br label %561

561:                                              ; preds = %543, %546
  %562 = phi ptr [ %554, %546 ], [ %536, %543 ]
  %563 = phi ptr [ %551, %546 ], [ %535, %543 ]
  %564 = phi ptr [ %557, %546 ], [ %534, %543 ]
  %565 = phi ptr [ %560, %546 ], [ %533, %543 ]
  %566 = phi ptr [ %550, %546 ], [ %532, %543 ]
  %567 = ptrtoint ptr %566 to i64
  %568 = add i64 %567, 1
  %569 = sub i64 %568, %545
  %570 = load i64, ptr %21, align 8, !tbaa !70
  %571 = icmp ugt i64 %569, %570
  br i1 %571, label %528, label %572, !llvm.loop !76

572:                                              ; preds = %561, %110
  %573 = phi ptr [ %101, %110 ], [ %562, %561 ]
  %574 = phi ptr [ %100, %110 ], [ %563, %561 ]
  %575 = phi ptr [ %96, %110 ], [ %564, %561 ]
  %576 = phi ptr [ %98, %110 ], [ %565, %561 ]
  %577 = phi ptr [ %96, %110 ], [ %566, %561 ]
  %578 = getelementptr inbounds i8, ptr %577, i64 1
  store i8 3, ptr %577, align 1, !tbaa !16
  br label %2611

579:                                              ; preds = %108
  %580 = icmp eq ptr %102, %9
  br i1 %580, label %589, label %581

581:                                              ; preds = %579
  %582 = load ptr, ptr %3, align 8, !tbaa !14
  %583 = ptrtoint ptr %96 to i64
  %584 = ptrtoint ptr %582 to i64
  %585 = add i64 %583, 34
  %586 = sub i64 %585, %584
  %587 = load i64, ptr %21, align 8, !tbaa !70
  %588 = icmp ugt i64 %586, %587
  br i1 %588, label %602, label %590

589:                                              ; preds = %579
  tail call void @free(ptr noundef %92) #23
  br label %2688

590:                                              ; preds = %631, %581
  %591 = phi i64 [ %584, %581 ], [ %618, %631 ]
  %592 = phi i64 [ %583, %581 ], [ %636, %631 ]
  %593 = phi i64 [ %587, %581 ], [ %639, %631 ]
  %594 = phi ptr [ %582, %581 ], [ %614, %631 ]
  %595 = phi ptr [ %101, %581 ], [ %632, %631 ]
  %596 = phi ptr [ %100, %581 ], [ %633, %631 ]
  %597 = phi ptr [ %98, %581 ], [ %634, %631 ]
  %598 = phi ptr [ %96, %581 ], [ %635, %631 ]
  %599 = add i64 %592, 1
  %600 = sub i64 %599, %591
  %601 = icmp ugt i64 %600, %593
  br i1 %601, label %641, label %685

602:                                              ; preds = %581, %631
  %603 = phi i64 [ %639, %631 ], [ %587, %581 ]
  %604 = phi i64 [ %618, %631 ], [ %584, %581 ]
  %605 = phi ptr [ %614, %631 ], [ %582, %581 ]
  %606 = phi ptr [ %635, %631 ], [ %96, %581 ]
  %607 = phi ptr [ %634, %631 ], [ %98, %581 ]
  %608 = phi ptr [ %633, %631 ], [ %100, %581 ]
  %609 = phi ptr [ %632, %631 ], [ %101, %581 ]
  %610 = icmp eq i64 %603, 65536
  br i1 %610, label %2688, label %611

611:                                              ; preds = %602
  %612 = shl i64 %603, 1
  %613 = tail call i64 @llvm.umin.i64(i64 %612, i64 65536)
  store i64 %613, ptr %21, align 8, !tbaa !70
  %614 = tail call ptr @realloc(ptr noundef %605, i64 noundef %613) #27
  store ptr %614, ptr %3, align 8, !tbaa !14
  %615 = icmp eq ptr %614, null
  br i1 %615, label %2688, label %616

616:                                              ; preds = %611
  %617 = icmp eq ptr %605, %614
  %618 = ptrtoint ptr %614 to i64
  br i1 %617, label %631, label %619

619:                                              ; preds = %616
  %620 = sub i64 %618, %604
  %621 = shl i64 %620, 32
  %622 = ashr exact i64 %621, 32
  %623 = getelementptr inbounds i8, ptr %606, i64 %622
  %624 = getelementptr inbounds i8, ptr %608, i64 %622
  %625 = icmp eq ptr %609, null
  %626 = getelementptr inbounds i8, ptr %609, i64 %622
  %627 = select i1 %625, ptr null, ptr %626
  %628 = icmp eq ptr %607, null
  %629 = getelementptr inbounds i8, ptr %607, i64 %622
  %630 = select i1 %628, ptr null, ptr %629
  br label %631

631:                                              ; preds = %616, %619
  %632 = phi ptr [ %627, %619 ], [ %609, %616 ]
  %633 = phi ptr [ %624, %619 ], [ %608, %616 ]
  %634 = phi ptr [ %630, %619 ], [ %607, %616 ]
  %635 = phi ptr [ %623, %619 ], [ %606, %616 ]
  %636 = ptrtoint ptr %635 to i64
  %637 = add i64 %636, 34
  %638 = sub i64 %637, %618
  %639 = load i64, ptr %21, align 8, !tbaa !70
  %640 = icmp ugt i64 %638, %639
  br i1 %640, label %602, label %590, !llvm.loop !77

641:                                              ; preds = %590, %674
  %642 = phi i64 [ %683, %674 ], [ %593, %590 ]
  %643 = phi i64 [ %658, %674 ], [ %591, %590 ]
  %644 = phi ptr [ %654, %674 ], [ %594, %590 ]
  %645 = phi ptr [ %679, %674 ], [ %598, %590 ]
  %646 = phi ptr [ %678, %674 ], [ %597, %590 ]
  %647 = phi ptr [ %677, %674 ], [ %598, %590 ]
  %648 = phi ptr [ %676, %674 ], [ %596, %590 ]
  %649 = phi ptr [ %675, %674 ], [ %595, %590 ]
  %650 = icmp eq i64 %642, 65536
  br i1 %650, label %2688, label %651

651:                                              ; preds = %641
  %652 = shl i64 %642, 1
  %653 = tail call i64 @llvm.umin.i64(i64 %652, i64 65536)
  store i64 %653, ptr %21, align 8, !tbaa !70
  %654 = tail call ptr @realloc(ptr noundef %644, i64 noundef %653) #27
  store ptr %654, ptr %3, align 8, !tbaa !14
  %655 = icmp eq ptr %654, null
  br i1 %655, label %2688, label %656

656:                                              ; preds = %651
  %657 = icmp eq ptr %644, %654
  %658 = ptrtoint ptr %654 to i64
  br i1 %657, label %674, label %659

659:                                              ; preds = %656
  %660 = sub i64 %658, %643
  %661 = shl i64 %660, 32
  %662 = ashr exact i64 %661, 32
  %663 = getelementptr inbounds i8, ptr %645, i64 %662
  %664 = getelementptr inbounds i8, ptr %648, i64 %662
  %665 = icmp eq ptr %649, null
  %666 = getelementptr inbounds i8, ptr %649, i64 %662
  %667 = select i1 %665, ptr null, ptr %666
  %668 = icmp eq ptr %647, null
  %669 = getelementptr inbounds i8, ptr %647, i64 %662
  %670 = select i1 %668, ptr null, ptr %669
  %671 = icmp eq ptr %646, null
  %672 = getelementptr inbounds i8, ptr %646, i64 %662
  %673 = select i1 %671, ptr null, ptr %672
  br label %674

674:                                              ; preds = %656, %659
  %675 = phi ptr [ %667, %659 ], [ %649, %656 ]
  %676 = phi ptr [ %664, %659 ], [ %648, %656 ]
  %677 = phi ptr [ %670, %659 ], [ %647, %656 ]
  %678 = phi ptr [ %673, %659 ], [ %646, %656 ]
  %679 = phi ptr [ %663, %659 ], [ %645, %656 ]
  %680 = ptrtoint ptr %679 to i64
  %681 = add i64 %680, 1
  %682 = sub i64 %681, %658
  %683 = load i64, ptr %21, align 8, !tbaa !70
  %684 = icmp ugt i64 %682, %683
  br i1 %684, label %641, label %685, !llvm.loop !78

685:                                              ; preds = %674, %590
  %686 = phi ptr [ %595, %590 ], [ %675, %674 ]
  %687 = phi ptr [ %596, %590 ], [ %676, %674 ]
  %688 = phi ptr [ %598, %590 ], [ %677, %674 ]
  %689 = phi ptr [ %597, %590 ], [ %678, %674 ]
  %690 = phi ptr [ %598, %590 ], [ %679, %674 ]
  %691 = load i8, ptr %102, align 1, !tbaa !16
  %692 = icmp eq i8 %691, 94
  %693 = select i1 %692, i8 5, i8 4
  %694 = getelementptr inbounds i8, ptr %690, i64 1
  store i8 %693, ptr %690, align 1, !tbaa !16
  %695 = load ptr, ptr %5, align 8, !tbaa !30
  %696 = load i8, ptr %695, align 1, !tbaa !16
  %697 = icmp eq i8 %696, 94
  br i1 %697, label %698, label %700

698:                                              ; preds = %685
  %699 = getelementptr inbounds i8, ptr %695, i64 1
  store ptr %699, ptr %5, align 8, !tbaa !30
  br label %700

700:                                              ; preds = %698, %685
  %701 = phi ptr [ %699, %698 ], [ %695, %685 ]
  %702 = load ptr, ptr %3, align 8, !tbaa !14
  %703 = ptrtoint ptr %694 to i64
  %704 = ptrtoint ptr %702 to i64
  %705 = add i64 %703, 1
  %706 = sub i64 %705, %704
  %707 = load i64, ptr %21, align 8, !tbaa !70
  %708 = icmp ugt i64 %706, %707
  br i1 %708, label %709, label %753

709:                                              ; preds = %700, %742
  %710 = phi i64 [ %751, %742 ], [ %707, %700 ]
  %711 = phi i64 [ %726, %742 ], [ %704, %700 ]
  %712 = phi ptr [ %722, %742 ], [ %702, %700 ]
  %713 = phi ptr [ %747, %742 ], [ %694, %700 ]
  %714 = phi ptr [ %746, %742 ], [ %689, %700 ]
  %715 = phi ptr [ %745, %742 ], [ %688, %700 ]
  %716 = phi ptr [ %744, %742 ], [ %687, %700 ]
  %717 = phi ptr [ %743, %742 ], [ %686, %700 ]
  %718 = icmp eq i64 %710, 65536
  br i1 %718, label %2688, label %719

719:                                              ; preds = %709
  %720 = shl i64 %710, 1
  %721 = tail call i64 @llvm.umin.i64(i64 %720, i64 65536)
  store i64 %721, ptr %21, align 8, !tbaa !70
  %722 = tail call ptr @realloc(ptr noundef %712, i64 noundef %721) #27
  store ptr %722, ptr %3, align 8, !tbaa !14
  %723 = icmp eq ptr %722, null
  br i1 %723, label %2688, label %724

724:                                              ; preds = %719
  %725 = icmp eq ptr %712, %722
  %726 = ptrtoint ptr %722 to i64
  br i1 %725, label %742, label %727

727:                                              ; preds = %724
  %728 = sub i64 %726, %711
  %729 = shl i64 %728, 32
  %730 = ashr exact i64 %729, 32
  %731 = getelementptr inbounds i8, ptr %713, i64 %730
  %732 = getelementptr inbounds i8, ptr %716, i64 %730
  %733 = icmp eq ptr %717, null
  %734 = getelementptr inbounds i8, ptr %717, i64 %730
  %735 = select i1 %733, ptr null, ptr %734
  %736 = icmp eq ptr %715, null
  %737 = getelementptr inbounds i8, ptr %715, i64 %730
  %738 = select i1 %736, ptr null, ptr %737
  %739 = icmp eq ptr %714, null
  %740 = getelementptr inbounds i8, ptr %714, i64 %730
  %741 = select i1 %739, ptr null, ptr %740
  br label %742

742:                                              ; preds = %724, %727
  %743 = phi ptr [ %735, %727 ], [ %717, %724 ]
  %744 = phi ptr [ %732, %727 ], [ %716, %724 ]
  %745 = phi ptr [ %738, %727 ], [ %715, %724 ]
  %746 = phi ptr [ %741, %727 ], [ %714, %724 ]
  %747 = phi ptr [ %731, %727 ], [ %713, %724 ]
  %748 = ptrtoint ptr %747 to i64
  %749 = add i64 %748, 1
  %750 = sub i64 %749, %726
  %751 = load i64, ptr %21, align 8, !tbaa !70
  %752 = icmp ugt i64 %750, %751
  br i1 %752, label %709, label %753, !llvm.loop !79

753:                                              ; preds = %742, %700
  %754 = phi ptr [ %686, %700 ], [ %743, %742 ]
  %755 = phi ptr [ %687, %700 ], [ %744, %742 ]
  %756 = phi ptr [ %688, %700 ], [ %745, %742 ]
  %757 = phi ptr [ %689, %700 ], [ %746, %742 ]
  %758 = phi ptr [ %694, %700 ], [ %747, %742 ]
  %759 = getelementptr inbounds i8, ptr %758, i64 1
  store i8 32, ptr %758, align 1, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %759, i8 0, i64 32, i1 false)
  %760 = getelementptr inbounds i8, ptr %758, i64 -1
  %761 = load i8, ptr %760, align 1, !tbaa !16
  %762 = icmp ne i8 %761, 5
  %763 = or i1 %71, %762
  br i1 %763, label %766, label %764

764:                                              ; preds = %753
  %765 = getelementptr inbounds i8, ptr %758, i64 2
  store i8 4, ptr %765, align 1, !tbaa !16
  br label %766

766:                                              ; preds = %764, %753
  %767 = load ptr, ptr %5, align 8, !tbaa !30
  %768 = icmp eq ptr %767, %9
  br i1 %768, label %777, label %769

769:                                              ; preds = %766
  %770 = getelementptr inbounds i8, ptr %758, i64 12
  %771 = getelementptr inbounds i8, ptr %758, i64 6
  %772 = getelementptr inbounds i8, ptr %758, i64 8
  br label %773

773:                                              ; preds = %769, %1282
  %774 = phi ptr [ %767, %769 ], [ %1285, %1282 ]
  %775 = phi i8 [ 0, %769 ], [ %1284, %1282 ]
  %776 = phi i32 [ -1, %769 ], [ %1283, %1282 ]
  br label %778

777:                                              ; preds = %766, %1282, %801
  tail call void @free(ptr noundef %92) #23
  br label %2688

778:                                              ; preds = %773, %801
  %779 = phi ptr [ %774, %773 ], [ %811, %801 ]
  %780 = phi i32 [ %776, %773 ], [ %803, %801 ]
  %781 = getelementptr inbounds i8, ptr %779, i64 1
  store ptr %781, ptr %5, align 8, !tbaa !30
  %782 = load i8, ptr %779, align 1, !tbaa !16
  br i1 %40, label %783, label %787

783:                                              ; preds = %778
  %784 = zext i8 %782 to i64
  %785 = getelementptr inbounds i8, ptr %11, i64 %784
  %786 = load i8, ptr %785, align 1, !tbaa !16
  br label %787

787:                                              ; preds = %783, %778
  %788 = phi i8 [ %786, %783 ], [ %782, %778 ]
  %789 = icmp eq i8 %788, 92
  %790 = select i1 %73, i1 %789, i1 false
  br i1 %790, label %791, label %813

791:                                              ; preds = %787
  %792 = icmp eq ptr %781, %9
  br i1 %792, label %793, label %794

793:                                              ; preds = %791
  tail call void @free(ptr noundef %92) #23
  br label %2688

794:                                              ; preds = %791
  %795 = getelementptr inbounds i8, ptr %779, i64 2
  store ptr %795, ptr %5, align 8, !tbaa !30
  %796 = load i8, ptr %781, align 1, !tbaa !16
  br i1 %40, label %797, label %801

797:                                              ; preds = %794
  %798 = zext i8 %796 to i64
  %799 = getelementptr inbounds i8, ptr %11, i64 %798
  %800 = load i8, ptr %799, align 1, !tbaa !16
  br label %801

801:                                              ; preds = %797, %794
  %802 = phi i8 [ %800, %797 ], [ %796, %794 ]
  %803 = zext i8 %802 to i32
  %804 = and i8 %802, 7
  %805 = shl nuw i8 1, %804
  %806 = lshr i32 %803, 3
  %807 = zext nneg i32 %806 to i64
  %808 = getelementptr inbounds i8, ptr %759, i64 %807
  %809 = load i8, ptr %808, align 1, !tbaa !16
  %810 = or i8 %805, %809
  store i8 %810, ptr %808, align 1, !tbaa !16
  %811 = load ptr, ptr %5, align 8, !tbaa !30
  %812 = icmp eq ptr %811, %9
  br i1 %812, label %777, label %778

813:                                              ; preds = %787
  %814 = zext i8 %788 to i32
  %815 = icmp ne i8 %788, 93
  %816 = icmp eq ptr %779, %701
  %817 = select i1 %815, i1 true, i1 %816
  br i1 %817, label %818, label %1287

818:                                              ; preds = %813
  %819 = icmp ne i8 %775, 0
  %820 = icmp eq i8 %788, 45
  %821 = select i1 %819, i1 %820, i1 false
  br i1 %821, label %822, label %826

822:                                              ; preds = %818
  %823 = load i8, ptr %781, align 1, !tbaa !16
  %824 = icmp eq i8 %823, 93
  br i1 %824, label %827, label %825

825:                                              ; preds = %822
  tail call void @free(ptr noundef %92) #23
  br label %2688

826:                                              ; preds = %818
  br i1 %820, label %827, label %849

827:                                              ; preds = %822, %826
  %828 = getelementptr inbounds i8, ptr %779, i64 -1
  %829 = icmp ult ptr %828, %0
  br i1 %829, label %833, label %830

830:                                              ; preds = %827
  %831 = load i8, ptr %828, align 1, !tbaa !16
  %832 = icmp eq i8 %831, 91
  br i1 %832, label %849, label %833

833:                                              ; preds = %830, %827
  %834 = getelementptr inbounds i8, ptr %779, i64 -2
  %835 = icmp ult ptr %834, %0
  br i1 %835, label %842, label %836

836:                                              ; preds = %833
  %837 = load i8, ptr %834, align 1, !tbaa !16
  %838 = icmp eq i8 %837, 91
  br i1 %838, label %839, label %842

839:                                              ; preds = %836
  %840 = load i8, ptr %828, align 1, !tbaa !16
  %841 = icmp eq i8 %840, 94
  br i1 %841, label %849, label %842

842:                                              ; preds = %839, %836, %833
  %843 = load i8, ptr %781, align 1, !tbaa !16
  %844 = icmp eq i8 %843, 93
  br i1 %844, label %1273, label %845

845:                                              ; preds = %842
  %846 = call fastcc i32 @byte_compile_range(i32 noundef %780, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef %11, i64 noundef %2, ptr noundef nonnull %759) #23, !range !80
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %1282, label %848

848:                                              ; preds = %845
  tail call void @free(ptr noundef %92) #23
  br label %2688

849:                                              ; preds = %839, %830, %826
  %850 = load i8, ptr %781, align 1, !tbaa !16
  %851 = icmp eq i8 %850, 45
  br i1 %851, label %852, label %862

852:                                              ; preds = %849
  %853 = getelementptr inbounds i8, ptr %779, i64 2
  %854 = load i8, ptr %853, align 1, !tbaa !16
  %855 = icmp eq i8 %854, 93
  br i1 %855, label %862, label %856

856:                                              ; preds = %852
  %857 = icmp eq ptr %781, %9
  br i1 %857, label %2688, label %858

858:                                              ; preds = %856
  store ptr %853, ptr %5, align 8, !tbaa !30
  %859 = call fastcc i32 @byte_compile_range(i32 noundef %814, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef %11, i64 noundef %2, ptr noundef nonnull %759) #23, !range !80
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %1282, label %861

861:                                              ; preds = %858
  tail call void @free(ptr noundef %92) #23
  br label %2688

862:                                              ; preds = %852, %849
  %863 = icmp eq i8 %788, 91
  %864 = select i1 %75, i1 %863, i1 false
  br i1 %864, label %865, label %1273

865:                                              ; preds = %862
  switch i8 %850, label %1273 [
    i8 58, label %866
    i8 61, label %1120
    i8 46, label %1196
  ]

866:                                              ; preds = %865
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #25
  %867 = icmp eq ptr %781, %9
  br i1 %867, label %1115, label %868

868:                                              ; preds = %866
  %869 = getelementptr inbounds i8, ptr %779, i64 2
  store ptr %869, ptr %5, align 8, !tbaa !30
  %870 = icmp eq ptr %869, %9
  br i1 %870, label %1113, label %871

871:                                              ; preds = %868, %897
  %872 = phi i8 [ %898, %897 ], [ 0, %868 ]
  %873 = phi ptr [ %874, %897 ], [ %869, %868 ]
  %874 = getelementptr inbounds i8, ptr %873, i64 1
  %875 = load i8, ptr %873, align 1, !tbaa !16
  br i1 %40, label %876, label %880

876:                                              ; preds = %871
  %877 = zext i8 %875 to i64
  %878 = getelementptr inbounds i8, ptr %11, i64 %877
  %879 = load i8, ptr %878, align 1, !tbaa !16
  br label %880

880:                                              ; preds = %876, %871
  %881 = phi i8 [ %879, %876 ], [ %875, %871 ]
  %882 = icmp eq i8 %881, 58
  br i1 %882, label %883, label %888

883:                                              ; preds = %880
  %884 = load i8, ptr %874, align 1, !tbaa !16
  %885 = icmp eq i8 %884, 93
  %886 = icmp eq ptr %874, %9
  %887 = select i1 %885, i1 true, i1 %886
  br i1 %887, label %903, label %890

888:                                              ; preds = %880
  %889 = icmp eq ptr %874, %9
  br i1 %889, label %900, label %890

890:                                              ; preds = %883, %888
  %891 = icmp ult i8 %872, 6
  br i1 %891, label %892, label %896

892:                                              ; preds = %890
  %893 = add nuw nsw i8 %872, 1
  %894 = zext nneg i8 %872 to i64
  %895 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %894
  store i8 %881, ptr %895, align 1, !tbaa !16
  br label %897

896:                                              ; preds = %890
  store i8 0, ptr %6, align 1, !tbaa !16
  br label %897

897:                                              ; preds = %896, %892
  %898 = phi i8 [ %893, %892 ], [ %872, %896 ]
  %899 = icmp eq ptr %874, %9
  br i1 %899, label %1115, label %871

900:                                              ; preds = %888
  %901 = zext i8 %872 to i64
  %902 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %901
  store i8 0, ptr %902, align 1, !tbaa !16
  br label %1101

903:                                              ; preds = %883
  store ptr %874, ptr %5, align 8, !tbaa !30
  %904 = zext i8 %872 to i64
  %905 = getelementptr inbounds [7 x i8], ptr %6, i64 0, i64 %904
  store i8 0, ptr %905, align 1, !tbaa !16
  %906 = load i8, ptr %874, align 1, !tbaa !16
  %907 = icmp eq i8 %906, 93
  br i1 %907, label %908, label %1101

908:                                              ; preds = %903
  %909 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.1, i64 6)
  %910 = icmp eq i32 %909, 0
  %911 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.2, i64 6)
  %912 = icmp eq i32 %911, 0
  %913 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.3, i64 6)
  %914 = icmp eq i32 %913, 0
  %915 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.4, i64 6)
  %916 = icmp eq i32 %915, 0
  %917 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.5, i64 6)
  %918 = icmp eq i32 %917, 0
  %919 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.6, i64 6)
  %920 = icmp eq i32 %919, 0
  %921 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.7, i64 6)
  %922 = icmp eq i32 %921, 0
  %923 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.8, i64 6)
  %924 = icmp eq i32 %923, 0
  %925 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.9, i64 6)
  %926 = icmp eq i32 %925, 0
  %927 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.10, i64 6)
  %928 = icmp eq i32 %927, 0
  %929 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.11, i64 6)
  %930 = icmp eq i32 %929, 0
  %931 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.12, i64 7)
  %932 = icmp eq i32 %931, 0
  %933 = select i1 %912, i1 true, i1 %930
  %934 = select i1 %933, i1 true, i1 %922
  %935 = select i1 %934, i1 true, i1 %918
  %936 = select i1 %935, i1 true, i1 %910
  %937 = select i1 %936, i1 true, i1 %932
  %938 = select i1 %937, i1 true, i1 %928
  %939 = select i1 %938, i1 true, i1 %924
  %940 = select i1 %939, i1 true, i1 %926
  %941 = select i1 %940, i1 true, i1 %920
  %942 = select i1 %941, i1 true, i1 %916
  %943 = select i1 %942, i1 true, i1 %914
  br i1 %943, label %944, label %1113

944:                                              ; preds = %908
  br i1 %886, label %1115, label %945

945:                                              ; preds = %944
  %946 = getelementptr inbounds i8, ptr %873, i64 2
  store ptr %946, ptr %5, align 8, !tbaa !30
  %947 = icmp eq ptr %946, %9
  br i1 %947, label %1113, label %948

948:                                              ; preds = %945
  %949 = select i1 %930, i1 true, i1 %922
  %950 = select i1 %40, i1 %949, i1 false
  br label %951

951:                                              ; preds = %948, %1098
  %952 = phi i64 [ 0, %948 ], [ %1099, %1098 ]
  br i1 %910, label %953, label %960

953:                                              ; preds = %951
  %954 = tail call ptr @__ctype_b_loc() #28
  %955 = load ptr, ptr %954, align 8, !tbaa !30
  %956 = getelementptr inbounds i16, ptr %955, i64 %952
  %957 = load i16, ptr %956, align 2, !tbaa !81
  %958 = and i16 %957, 8
  %959 = icmp eq i16 %958, 0
  br i1 %959, label %960, label %984

960:                                              ; preds = %953, %951
  br i1 %912, label %961, label %968

961:                                              ; preds = %960
  %962 = tail call ptr @__ctype_b_loc() #28
  %963 = load ptr, ptr %962, align 8, !tbaa !30
  %964 = getelementptr inbounds i16, ptr %963, i64 %952
  %965 = load i16, ptr %964, align 2, !tbaa !81
  %966 = and i16 %965, 1024
  %967 = icmp eq i16 %966, 0
  br i1 %967, label %968, label %984

968:                                              ; preds = %961, %960
  br i1 %914, label %969, label %976

969:                                              ; preds = %968
  %970 = tail call ptr @__ctype_b_loc() #28
  %971 = load ptr, ptr %970, align 8, !tbaa !30
  %972 = getelementptr inbounds i16, ptr %971, i64 %952
  %973 = load i16, ptr %972, align 2, !tbaa !81
  %974 = and i16 %973, 1
  %975 = icmp eq i16 %974, 0
  br i1 %975, label %976, label %984

976:                                              ; preds = %969, %968
  br i1 %916, label %977, label %993

977:                                              ; preds = %976
  %978 = tail call ptr @__ctype_b_loc() #28
  %979 = load ptr, ptr %978, align 8, !tbaa !30
  %980 = getelementptr inbounds i16, ptr %979, i64 %952
  %981 = load i16, ptr %980, align 2, !tbaa !81
  %982 = and i16 %981, 2
  %983 = icmp eq i16 %982, 0
  br i1 %983, label %993, label %984

984:                                              ; preds = %977, %969, %961, %953
  %985 = trunc i64 %952 to i8
  %986 = and i8 %985, 7
  %987 = shl nuw i8 1, %986
  %988 = lshr i64 %952, 3
  %989 = and i64 %988, 536870911
  %990 = getelementptr inbounds i8, ptr %759, i64 %989
  %991 = load i8, ptr %990, align 1, !tbaa !16
  %992 = or i8 %991, %987
  store i8 %992, ptr %990, align 1, !tbaa !16
  br label %993

993:                                              ; preds = %984, %977, %976
  br i1 %918, label %994, label %1001

994:                                              ; preds = %993
  %995 = tail call ptr @__ctype_b_loc() #28
  %996 = load ptr, ptr %995, align 8, !tbaa !30
  %997 = getelementptr inbounds i16, ptr %996, i64 %952
  %998 = load i16, ptr %997, align 2, !tbaa !81
  %999 = and i16 %998, 2048
  %1000 = icmp eq i16 %999, 0
  br i1 %1000, label %1001, label %1024

1001:                                             ; preds = %994, %993
  br i1 %920, label %1002, label %1008

1002:                                             ; preds = %1001
  %1003 = tail call ptr @__ctype_b_loc() #28
  %1004 = load ptr, ptr %1003, align 8, !tbaa !30
  %1005 = getelementptr inbounds i16, ptr %1004, i64 %952
  %1006 = load i16, ptr %1005, align 2, !tbaa !81
  %1007 = icmp sgt i16 %1006, -1
  br i1 %1007, label %1008, label %1024

1008:                                             ; preds = %1002, %1001
  br i1 %922, label %1009, label %1016

1009:                                             ; preds = %1008
  %1010 = tail call ptr @__ctype_b_loc() #28
  %1011 = load ptr, ptr %1010, align 8, !tbaa !30
  %1012 = getelementptr inbounds i16, ptr %1011, i64 %952
  %1013 = load i16, ptr %1012, align 2, !tbaa !81
  %1014 = and i16 %1013, 512
  %1015 = icmp eq i16 %1014, 0
  br i1 %1015, label %1016, label %1024

1016:                                             ; preds = %1009, %1008
  br i1 %924, label %1017, label %1033

1017:                                             ; preds = %1016
  %1018 = tail call ptr @__ctype_b_loc() #28
  %1019 = load ptr, ptr %1018, align 8, !tbaa !30
  %1020 = getelementptr inbounds i16, ptr %1019, i64 %952
  %1021 = load i16, ptr %1020, align 2, !tbaa !81
  %1022 = and i16 %1021, 16384
  %1023 = icmp eq i16 %1022, 0
  br i1 %1023, label %1033, label %1024

1024:                                             ; preds = %1017, %1009, %1002, %994
  %1025 = trunc i64 %952 to i8
  %1026 = and i8 %1025, 7
  %1027 = shl nuw i8 1, %1026
  %1028 = lshr i64 %952, 3
  %1029 = and i64 %1028, 536870911
  %1030 = getelementptr inbounds i8, ptr %759, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !16
  %1032 = or i8 %1031, %1027
  store i8 %1032, ptr %1030, align 1, !tbaa !16
  br label %1033

1033:                                             ; preds = %1024, %1017, %1016
  br i1 %926, label %1034, label %1041

1034:                                             ; preds = %1033
  %1035 = tail call ptr @__ctype_b_loc() #28
  %1036 = load ptr, ptr %1035, align 8, !tbaa !30
  %1037 = getelementptr inbounds i16, ptr %1036, i64 %952
  %1038 = load i16, ptr %1037, align 2, !tbaa !81
  %1039 = and i16 %1038, 4
  %1040 = icmp eq i16 %1039, 0
  br i1 %1040, label %1041, label %1065

1041:                                             ; preds = %1034, %1033
  br i1 %928, label %1042, label %1049

1042:                                             ; preds = %1041
  %1043 = tail call ptr @__ctype_b_loc() #28
  %1044 = load ptr, ptr %1043, align 8, !tbaa !30
  %1045 = getelementptr inbounds i16, ptr %1044, i64 %952
  %1046 = load i16, ptr %1045, align 2, !tbaa !81
  %1047 = and i16 %1046, 8192
  %1048 = icmp eq i16 %1047, 0
  br i1 %1048, label %1049, label %1065

1049:                                             ; preds = %1042, %1041
  br i1 %930, label %1050, label %1057

1050:                                             ; preds = %1049
  %1051 = tail call ptr @__ctype_b_loc() #28
  %1052 = load ptr, ptr %1051, align 8, !tbaa !30
  %1053 = getelementptr inbounds i16, ptr %1052, i64 %952
  %1054 = load i16, ptr %1053, align 2, !tbaa !81
  %1055 = and i16 %1054, 256
  %1056 = icmp eq i16 %1055, 0
  br i1 %1056, label %1057, label %1065

1057:                                             ; preds = %1050, %1049
  br i1 %932, label %1058, label %1074

1058:                                             ; preds = %1057
  %1059 = tail call ptr @__ctype_b_loc() #28
  %1060 = load ptr, ptr %1059, align 8, !tbaa !30
  %1061 = getelementptr inbounds i16, ptr %1060, i64 %952
  %1062 = load i16, ptr %1061, align 2, !tbaa !81
  %1063 = and i16 %1062, 4096
  %1064 = icmp eq i16 %1063, 0
  br i1 %1064, label %1074, label %1065

1065:                                             ; preds = %1058, %1050, %1042, %1034
  %1066 = trunc i64 %952 to i8
  %1067 = and i8 %1066, 7
  %1068 = shl nuw i8 1, %1067
  %1069 = lshr i64 %952, 3
  %1070 = and i64 %1069, 536870911
  %1071 = getelementptr inbounds i8, ptr %759, i64 %1070
  %1072 = load i8, ptr %1071, align 1, !tbaa !16
  %1073 = or i8 %1072, %1068
  store i8 %1073, ptr %1071, align 1, !tbaa !16
  br label %1074

1074:                                             ; preds = %1065, %1058, %1057
  br i1 %950, label %1075, label %1098

1075:                                             ; preds = %1074
  %1076 = tail call ptr @__ctype_b_loc() #28
  %1077 = load ptr, ptr %1076, align 8, !tbaa !30
  %1078 = getelementptr inbounds i16, ptr %1077, i64 %952
  %1079 = load i16, ptr %1078, align 2, !tbaa !81
  %1080 = and i16 %1079, 256
  %1081 = icmp eq i16 %1080, 0
  br i1 %1081, label %1082, label %1089

1082:                                             ; preds = %1075
  %1083 = tail call ptr @__ctype_b_loc() #28
  %1084 = load ptr, ptr %1083, align 8, !tbaa !30
  %1085 = getelementptr inbounds i16, ptr %1084, i64 %952
  %1086 = load i16, ptr %1085, align 2, !tbaa !81
  %1087 = and i16 %1086, 512
  %1088 = icmp eq i16 %1087, 0
  br i1 %1088, label %1098, label %1089

1089:                                             ; preds = %1082, %1075
  %1090 = trunc i64 %952 to i8
  %1091 = and i8 %1090, 7
  %1092 = shl nuw i8 1, %1091
  %1093 = lshr i64 %952, 3
  %1094 = and i64 %1093, 536870911
  %1095 = getelementptr inbounds i8, ptr %759, i64 %1094
  %1096 = load i8, ptr %1095, align 1, !tbaa !16
  %1097 = or i8 %1096, %1092
  store i8 %1097, ptr %1095, align 1, !tbaa !16
  br label %1098

1098:                                             ; preds = %1074, %1082, %1089
  %1099 = add nuw nsw i64 %952, 1
  %1100 = icmp eq i64 %1099, 256
  br i1 %1100, label %1117, label %951, !llvm.loop !83

1101:                                             ; preds = %900, %903
  %1102 = phi ptr [ %9, %900 ], [ %874, %903 ]
  %1103 = icmp eq i8 %872, -1
  %1104 = zext i8 %872 to i64
  %1105 = sub nsw i64 0, %1104
  %1106 = getelementptr i8, ptr %1102, i64 -1
  %1107 = getelementptr i8, ptr %1106, i64 %1105
  %1108 = select i1 %1103, ptr %1102, ptr %1107
  store ptr %1108, ptr %5, align 8, !tbaa !30
  %1109 = load i8, ptr %770, align 1, !tbaa !16
  %1110 = or i8 %1109, 8
  store i8 %1110, ptr %770, align 1, !tbaa !16
  %1111 = load i8, ptr %772, align 1, !tbaa !16
  %1112 = or i8 %1111, 4
  store i8 %1112, ptr %772, align 1, !tbaa !16
  br label %1117

1113:                                             ; preds = %945, %908, %868
  %1114 = phi i32 [ 7, %868 ], [ 4, %908 ], [ 7, %945 ]
  tail call void @free(ptr noundef %92) #23
  br label %1115

1115:                                             ; preds = %866, %944, %897, %1113
  %1116 = phi i32 [ %1114, %1113 ], [ 14, %897 ], [ 14, %944 ], [ 14, %866 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #25
  br label %2688

1117:                                             ; preds = %1098, %1101
  %1118 = phi i32 [ 58, %1101 ], [ %780, %1098 ]
  %1119 = phi i8 [ 0, %1101 ], [ 1, %1098 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #25
  br label %1282

1120:                                             ; preds = %865
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %7) #25
  %1121 = icmp eq ptr %781, %9
  br i1 %1121, label %1187, label %1122

1122:                                             ; preds = %1120
  %1123 = getelementptr inbounds i8, ptr %779, i64 2
  store ptr %1123, ptr %5, align 8, !tbaa !30
  %1124 = icmp eq ptr %1123, %9
  br i1 %1124, label %1185, label %1125

1125:                                             ; preds = %1122, %1151
  %1126 = phi i8 [ %1152, %1151 ], [ 0, %1122 ]
  %1127 = phi ptr [ %1128, %1151 ], [ %1123, %1122 ]
  %1128 = getelementptr inbounds i8, ptr %1127, i64 1
  %1129 = load i8, ptr %1127, align 1, !tbaa !16
  br i1 %40, label %1130, label %1134

1130:                                             ; preds = %1125
  %1131 = zext i8 %1129 to i64
  %1132 = getelementptr inbounds i8, ptr %11, i64 %1131
  %1133 = load i8, ptr %1132, align 1, !tbaa !16
  br label %1134

1134:                                             ; preds = %1130, %1125
  %1135 = phi i8 [ %1133, %1130 ], [ %1129, %1125 ]
  %1136 = icmp eq i8 %1135, 61
  br i1 %1136, label %1137, label %1142

1137:                                             ; preds = %1134
  %1138 = load i8, ptr %1128, align 1, !tbaa !16
  %1139 = icmp eq i8 %1138, 93
  %1140 = icmp eq ptr %1128, %9
  %1141 = select i1 %1139, i1 true, i1 %1140
  br i1 %1141, label %1157, label %1144

1142:                                             ; preds = %1134
  %1143 = icmp eq ptr %1128, %9
  br i1 %1143, label %1154, label %1144

1144:                                             ; preds = %1137, %1142
  %1145 = icmp ult i8 %1126, 16
  br i1 %1145, label %1146, label %1150

1146:                                             ; preds = %1144
  %1147 = add nuw nsw i8 %1126, 1
  %1148 = zext nneg i8 %1126 to i64
  %1149 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1148
  store i8 %1135, ptr %1149, align 1, !tbaa !16
  br label %1151

1150:                                             ; preds = %1144
  store i8 0, ptr %7, align 16, !tbaa !16
  br label %1151

1151:                                             ; preds = %1150, %1146
  %1152 = phi i8 [ %1147, %1146 ], [ %1126, %1150 ]
  %1153 = icmp eq ptr %1128, %9
  br i1 %1153, label %1187, label %1125

1154:                                             ; preds = %1142
  %1155 = zext i8 %1126 to i64
  %1156 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1155
  store i8 0, ptr %1156, align 1, !tbaa !16
  br label %1175

1157:                                             ; preds = %1137
  store ptr %1128, ptr %5, align 8, !tbaa !30
  %1158 = zext i8 %1126 to i64
  %1159 = getelementptr inbounds [17 x i8], ptr %7, i64 0, i64 %1158
  store i8 0, ptr %1159, align 1, !tbaa !16
  %1160 = load i8, ptr %1128, align 1, !tbaa !16
  %1161 = icmp eq i8 %1160, 93
  %1162 = load i8, ptr %7, align 16
  %1163 = icmp ne i8 %1162, 0
  %1164 = select i1 %1161, i1 %1163, i1 false
  br i1 %1164, label %1165, label %1175

1165:                                             ; preds = %1157
  %1166 = icmp eq i8 %1126, 1
  br i1 %1166, label %1167, label %1185

1167:                                             ; preds = %1165
  br i1 %1140, label %1187, label %1168

1168:                                             ; preds = %1167
  %1169 = getelementptr inbounds i8, ptr %1127, i64 2
  store ptr %1169, ptr %5, align 8, !tbaa !30
  %1170 = and i8 %1162, 7
  %1171 = shl nuw i8 1, %1170
  %1172 = lshr i8 %1162, 3
  %1173 = zext nneg i8 %1172 to i64
  %1174 = getelementptr inbounds i8, ptr %759, i64 %1173
  br label %1189

1175:                                             ; preds = %1154, %1157
  %1176 = phi ptr [ %9, %1154 ], [ %1128, %1157 ]
  %1177 = icmp eq i8 %1126, -1
  %1178 = zext i8 %1126 to i64
  %1179 = sub nsw i64 0, %1178
  %1180 = getelementptr i8, ptr %1176, i64 -1
  %1181 = getelementptr i8, ptr %1180, i64 %1179
  %1182 = select i1 %1177, ptr %1176, ptr %1181
  store ptr %1182, ptr %5, align 8, !tbaa !30
  %1183 = load i8, ptr %770, align 1, !tbaa !16
  %1184 = or i8 %1183, 8
  store i8 %1184, ptr %770, align 1, !tbaa !16
  br label %1189

1185:                                             ; preds = %1165, %1122
  %1186 = phi i32 [ 7, %1122 ], [ 3, %1165 ]
  tail call void @free(ptr noundef %92) #23
  br label %1187

1187:                                             ; preds = %1120, %1167, %1151, %1185
  %1188 = phi i32 [ %1186, %1185 ], [ 14, %1151 ], [ 14, %1167 ], [ 14, %1120 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %7) #25
  br label %2688

1189:                                             ; preds = %1168, %1175
  %1190 = phi ptr [ %1174, %1168 ], [ %772, %1175 ]
  %1191 = phi i8 [ %1171, %1168 ], [ 32, %1175 ]
  %1192 = phi i32 [ %780, %1168 ], [ 61, %1175 ]
  %1193 = phi i8 [ 1, %1168 ], [ 0, %1175 ]
  %1194 = load i8, ptr %1190, align 1, !tbaa !16
  %1195 = or i8 %1194, %1191
  store i8 %1195, ptr %1190, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %7) #25
  br label %1282

1196:                                             ; preds = %865
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #25
  %1197 = icmp eq ptr %781, %9
  br i1 %1197, label %1269, label %1198

1198:                                             ; preds = %1196
  %1199 = getelementptr inbounds i8, ptr %779, i64 2
  store ptr %1199, ptr %5, align 8, !tbaa !30
  %1200 = icmp eq ptr %1199, %9
  br i1 %1200, label %1267, label %1201

1201:                                             ; preds = %1198, %1227
  %1202 = phi i8 [ %1228, %1227 ], [ 0, %1198 ]
  %1203 = phi ptr [ %1204, %1227 ], [ %1199, %1198 ]
  %1204 = getelementptr inbounds i8, ptr %1203, i64 1
  %1205 = load i8, ptr %1203, align 1, !tbaa !16
  br i1 %40, label %1206, label %1210

1206:                                             ; preds = %1201
  %1207 = zext i8 %1205 to i64
  %1208 = getelementptr inbounds i8, ptr %11, i64 %1207
  %1209 = load i8, ptr %1208, align 1, !tbaa !16
  br label %1210

1210:                                             ; preds = %1206, %1201
  %1211 = phi i8 [ %1209, %1206 ], [ %1205, %1201 ]
  %1212 = icmp eq i8 %1211, 46
  br i1 %1212, label %1213, label %1218

1213:                                             ; preds = %1210
  %1214 = load i8, ptr %1204, align 1, !tbaa !16
  %1215 = icmp eq i8 %1214, 93
  %1216 = icmp eq ptr %1204, %9
  %1217 = select i1 %1215, i1 true, i1 %1216
  br i1 %1217, label %1233, label %1220

1218:                                             ; preds = %1210
  %1219 = icmp eq ptr %1204, %9
  br i1 %1219, label %1230, label %1220

1220:                                             ; preds = %1213, %1218
  %1221 = icmp sgt i8 %1202, -1
  br i1 %1221, label %1222, label %1226

1222:                                             ; preds = %1220
  %1223 = zext nneg i8 %1202 to i64
  %1224 = add nuw i8 %1202, 1
  %1225 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1223
  store i8 %1211, ptr %1225, align 1, !tbaa !16
  br label %1227

1226:                                             ; preds = %1220
  store i8 0, ptr %8, align 16, !tbaa !16
  br label %1227

1227:                                             ; preds = %1226, %1222
  %1228 = phi i8 [ %1224, %1222 ], [ %1202, %1226 ]
  %1229 = icmp eq ptr %1204, %9
  br i1 %1229, label %1269, label %1201

1230:                                             ; preds = %1218
  %1231 = zext i8 %1202 to i64
  %1232 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1231
  store i8 0, ptr %1232, align 1, !tbaa !16
  br label %1255

1233:                                             ; preds = %1213
  store ptr %1204, ptr %5, align 8, !tbaa !30
  %1234 = zext i8 %1202 to i64
  %1235 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 %1234
  store i8 0, ptr %1235, align 1, !tbaa !16
  %1236 = load i8, ptr %1204, align 1, !tbaa !16
  %1237 = icmp eq i8 %1236, 93
  %1238 = load i8, ptr %8, align 16
  %1239 = icmp ne i8 %1238, 0
  %1240 = select i1 %1237, i1 %1239, i1 false
  br i1 %1240, label %1241, label %1255

1241:                                             ; preds = %1233
  %1242 = icmp eq i8 %1202, 1
  br i1 %1242, label %1243, label %1267

1243:                                             ; preds = %1241
  br i1 %1216, label %1269, label %1244

1244:                                             ; preds = %1243
  %1245 = getelementptr inbounds i8, ptr %1203, i64 2
  store ptr %1245, ptr %5, align 8, !tbaa !30
  %1246 = and i8 %1238, 7
  %1247 = shl nuw i8 1, %1246
  %1248 = lshr i8 %1238, 3
  %1249 = zext nneg i8 %1248 to i64
  %1250 = getelementptr inbounds i8, ptr %759, i64 %1249
  %1251 = load i8, ptr %1250, align 1, !tbaa !16
  %1252 = or i8 %1251, %1247
  store i8 %1252, ptr %1250, align 1, !tbaa !16
  %1253 = load i8, ptr %8, align 16, !tbaa !16
  %1254 = zext i8 %1253 to i32
  br label %1271

1255:                                             ; preds = %1230, %1233
  %1256 = phi ptr [ %9, %1230 ], [ %1204, %1233 ]
  %1257 = icmp eq i8 %1202, -1
  %1258 = zext i8 %1202 to i64
  %1259 = sub nsw i64 0, %1258
  %1260 = getelementptr i8, ptr %1256, i64 -1
  %1261 = getelementptr i8, ptr %1260, i64 %1259
  %1262 = select i1 %1257, ptr %1256, ptr %1261
  store ptr %1262, ptr %5, align 8, !tbaa !30
  %1263 = load i8, ptr %770, align 1, !tbaa !16
  %1264 = or i8 %1263, 8
  store i8 %1264, ptr %770, align 1, !tbaa !16
  %1265 = load i8, ptr %771, align 1, !tbaa !16
  %1266 = or i8 %1265, 64
  store i8 %1266, ptr %771, align 1, !tbaa !16
  br label %1271

1267:                                             ; preds = %1241, %1198
  %1268 = phi i32 [ 7, %1198 ], [ 3, %1241 ]
  tail call void @free(ptr noundef %92) #23
  br label %1269

1269:                                             ; preds = %1196, %1243, %1227, %1267
  %1270 = phi i32 [ %1268, %1267 ], [ 14, %1227 ], [ 14, %1243 ], [ 14, %1196 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #25
  br label %2688

1271:                                             ; preds = %1244, %1255
  %1272 = phi i32 [ %1254, %1244 ], [ 46, %1255 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #25
  br label %1282

1273:                                             ; preds = %865, %842, %862
  %1274 = phi i8 [ 91, %865 ], [ 45, %842 ], [ %788, %862 ]
  %1275 = and i8 %1274, 7
  %1276 = shl nuw i8 1, %1275
  %1277 = lshr i32 %814, 3
  %1278 = zext nneg i32 %1277 to i64
  %1279 = getelementptr inbounds i8, ptr %759, i64 %1278
  %1280 = load i8, ptr %1279, align 1, !tbaa !16
  %1281 = or i8 %1280, %1276
  store i8 %1281, ptr %1279, align 1, !tbaa !16
  br label %1282

1282:                                             ; preds = %845, %1271, %1189, %1117, %858, %1273
  %1283 = phi i32 [ %1118, %1117 ], [ %1192, %1189 ], [ %1272, %1271 ], [ %814, %1273 ], [ -1, %858 ], [ -1, %845 ]
  %1284 = phi i8 [ %1119, %1117 ], [ %1193, %1189 ], [ 0, %1271 ], [ 0, %1273 ], [ %775, %858 ], [ %775, %845 ]
  %1285 = load ptr, ptr %5, align 8, !tbaa !30
  %1286 = icmp eq ptr %1285, %9
  br i1 %1286, label %777, label %773

1287:                                             ; preds = %813
  %1288 = load i8, ptr %758, align 1, !tbaa !16
  %1289 = icmp eq i8 %1288, 0
  br i1 %1289, label %1301, label %1290

1290:                                             ; preds = %1287, %1298
  %1291 = phi i8 [ %1299, %1298 ], [ %1288, %1287 ]
  %1292 = zext i8 %1291 to i64
  %1293 = add nuw nsw i64 %1292, 4294967295
  %1294 = and i64 %1293, 4294967295
  %1295 = getelementptr inbounds i8, ptr %759, i64 %1294
  %1296 = load i8, ptr %1295, align 1, !tbaa !16
  %1297 = icmp eq i8 %1296, 0
  br i1 %1297, label %1298, label %1301

1298:                                             ; preds = %1290
  %1299 = add i8 %1291, -1
  store i8 %1299, ptr %758, align 1, !tbaa !16
  %1300 = icmp eq i8 %1299, 0
  br i1 %1300, label %1301, label %1290, !llvm.loop !84

1301:                                             ; preds = %1298, %1290, %1287
  %1302 = phi i8 [ 0, %1287 ], [ %1291, %1290 ], [ 0, %1298 ]
  %1303 = zext i8 %1302 to i64
  %1304 = getelementptr inbounds i8, ptr %759, i64 %1303
  br label %2611

1305:                                             ; preds = %108
  br i1 %52, label %2455, label %1317

1306:                                             ; preds = %108
  br i1 %52, label %2455, label %1397

1307:                                             ; preds = %108
  br i1 %67, label %2455, label %1556

1308:                                             ; preds = %108
  br i1 %65, label %2455, label %1556

1309:                                             ; preds = %108
  br i1 %55, label %1661, label %2455

1310:                                             ; preds = %108
  %1311 = icmp eq ptr %102, %9
  br i1 %1311, label %1312, label %1313

1312:                                             ; preds = %1310
  tail call void @free(ptr noundef %92) #23
  br label %2688

1313:                                             ; preds = %1310
  %1314 = getelementptr inbounds i8, ptr %95, i64 2
  store ptr %1314, ptr %5, align 8, !tbaa !30
  %1315 = load i8, ptr %102, align 1, !tbaa !16
  switch i8 %1315, label %2449 [
    i8 40, label %1316
    i8 41, label %1392
    i8 124, label %1555
    i8 123, label %1660
    i8 119, label %1899
    i8 87, label %1959
    i8 60, label %2019
    i8 62, label %2079
    i8 98, label %2139
    i8 66, label %2199
    i8 96, label %2259
    i8 39, label %2319
    i8 49, label %2379
    i8 50, label %2379
    i8 51, label %2379
    i8 52, label %2379
    i8 53, label %2379
    i8 54, label %2379
    i8 55, label %2379
    i8 56, label %2379
    i8 57, label %2379
    i8 43, label %2448
    i8 63, label %2448
  ]

1316:                                             ; preds = %1313
  br i1 %52, label %1317, label %2449

1317:                                             ; preds = %1316, %1305
  %1318 = load i64, ptr %20, align 8, !tbaa !29
  %1319 = add i64 %1318, 1
  store i64 %1319, ptr %20, align 8, !tbaa !29
  %1320 = add i32 %93, 1
  %1321 = lshr i64 %97, 32
  %1322 = trunc i64 %1321 to i32
  %1323 = trunc i64 %97 to i32
  %1324 = icmp eq i32 %1322, %1323
  br i1 %1324, label %1325, label %1335

1325:                                             ; preds = %1317
  %1326 = shl i64 %97, 1
  %1327 = and i64 %1326, 4294967294
  %1328 = mul nuw nsw i64 %1327, 40
  %1329 = tail call ptr @realloc(ptr noundef %92, i64 noundef %1328) #27
  %1330 = icmp eq ptr %1329, null
  br i1 %1330, label %2688, label %1331

1331:                                             ; preds = %1325
  %1332 = and i64 %97, -4294967296
  %1333 = or disjoint i64 %1327, %1332
  %1334 = lshr i64 %97, 32
  br label %1335

1335:                                             ; preds = %1331, %1317
  %1336 = phi i64 [ %1334, %1331 ], [ %1321, %1317 ]
  %1337 = phi ptr [ %1329, %1331 ], [ %92, %1317 ]
  %1338 = phi i64 [ %1333, %1331 ], [ %97, %1317 ]
  %1339 = load ptr, ptr %3, align 8, !tbaa !14
  %1340 = ptrtoint ptr %100 to i64
  %1341 = ptrtoint ptr %1339 to i64
  %1342 = sub i64 %1340, %1341
  %1343 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1337, i64 %1336
  store i64 %1342, ptr %1343, align 8, !tbaa !85
  %1344 = icmp eq ptr %101, null
  %1345 = ptrtoint ptr %101 to i64
  %1346 = add i64 %1345, 1
  %1347 = sub i64 %1346, %1341
  %1348 = select i1 %1344, i64 0, i64 %1347
  %1349 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1337, i64 %1336, i32 1
  store i64 %1348, ptr %1349, align 8, !tbaa !87
  %1350 = ptrtoint ptr %96 to i64
  %1351 = sub i64 %1350, %1341
  %1352 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1337, i64 %1336, i32 3
  store i64 %1351, ptr %1352, align 8, !tbaa !88
  %1353 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1337, i64 %1336, i32 4
  store i32 %1320, ptr %1353, align 8, !tbaa !89
  %1354 = icmp ult i32 %1320, 256
  br i1 %1354, label %1355, label %2620

1355:                                             ; preds = %1335
  %1356 = add nsw i64 %1351, 2
  %1357 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %1337, i64 %1336, i32 2
  store i64 %1356, ptr %1357, align 8, !tbaa !90
  %1358 = add i64 %1350, 3
  %1359 = sub i64 %1358, %1341
  %1360 = load i64, ptr %21, align 8, !tbaa !70
  %1361 = icmp ugt i64 %1359, %1360
  br i1 %1361, label %1362, label %1386

1362:                                             ; preds = %1355, %1373
  %1363 = phi i64 [ %1384, %1373 ], [ %1360, %1355 ]
  %1364 = phi i64 [ %1375, %1373 ], [ %1341, %1355 ]
  %1365 = phi ptr [ %1371, %1373 ], [ %1339, %1355 ]
  %1366 = phi ptr [ %1380, %1373 ], [ %96, %1355 ]
  %1367 = icmp eq i64 %1363, 65536
  br i1 %1367, label %2688, label %1368

1368:                                             ; preds = %1362
  %1369 = shl i64 %1363, 1
  %1370 = tail call i64 @llvm.umin.i64(i64 %1369, i64 65536)
  store i64 %1370, ptr %21, align 8, !tbaa !70
  %1371 = tail call ptr @realloc(ptr noundef %1365, i64 noundef %1370) #27
  store ptr %1371, ptr %3, align 8, !tbaa !14
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %2688, label %1373

1373:                                             ; preds = %1368
  %1374 = icmp eq ptr %1365, %1371
  %1375 = ptrtoint ptr %1371 to i64
  %1376 = sub i64 %1375, %1364
  %1377 = shl i64 %1376, 32
  %1378 = ashr exact i64 %1377, 32
  %1379 = select i1 %1374, i64 0, i64 %1378
  %1380 = getelementptr inbounds i8, ptr %1366, i64 %1379
  %1381 = ptrtoint ptr %1380 to i64
  %1382 = add i64 %1381, 3
  %1383 = sub i64 %1382, %1375
  %1384 = load i64, ptr %21, align 8, !tbaa !70
  %1385 = icmp ugt i64 %1383, %1384
  br i1 %1385, label %1362, label %1386, !llvm.loop !91

1386:                                             ; preds = %1373, %1355
  %1387 = phi ptr [ %96, %1355 ], [ %1380, %1373 ]
  %1388 = getelementptr inbounds i8, ptr %1387, i64 1
  store i8 6, ptr %1387, align 1, !tbaa !16
  %1389 = trunc i32 %1320 to i8
  %1390 = getelementptr inbounds i8, ptr %1387, i64 2
  store i8 %1389, ptr %1388, align 1, !tbaa !16
  %1391 = getelementptr inbounds i8, ptr %1387, i64 3
  store i8 0, ptr %1390, align 1, !tbaa !16
  br label %2620

1392:                                             ; preds = %1313
  br i1 %52, label %1393, label %2449

1393:                                             ; preds = %1392
  %1394 = icmp ult i64 %97, 4294967296
  br i1 %1394, label %1395, label %1397

1395:                                             ; preds = %1393
  br i1 %54, label %1396, label %2449

1396:                                             ; preds = %1395
  tail call void @free(ptr noundef %92) #23
  br label %2688

1397:                                             ; preds = %1393, %1306
  %1398 = icmp eq ptr %101, null
  br i1 %1398, label %1463, label %1399

1399:                                             ; preds = %1397
  %1400 = load ptr, ptr %3, align 8, !tbaa !14
  %1401 = ptrtoint ptr %96 to i64
  %1402 = ptrtoint ptr %1400 to i64
  %1403 = add i64 %1401, 1
  %1404 = sub i64 %1403, %1402
  %1405 = load i64, ptr %21, align 8, !tbaa !70
  %1406 = icmp ugt i64 %1404, %1405
  br i1 %1406, label %1407, label %1451

1407:                                             ; preds = %1399, %1440
  %1408 = phi i64 [ %1449, %1440 ], [ %1405, %1399 ]
  %1409 = phi i64 [ %1424, %1440 ], [ %1402, %1399 ]
  %1410 = phi ptr [ %1420, %1440 ], [ %1400, %1399 ]
  %1411 = phi ptr [ %1445, %1440 ], [ %96, %1399 ]
  %1412 = phi ptr [ %1444, %1440 ], [ %98, %1399 ]
  %1413 = phi ptr [ %1443, %1440 ], [ %99, %1399 ]
  %1414 = phi ptr [ %1442, %1440 ], [ %100, %1399 ]
  %1415 = phi ptr [ %1441, %1440 ], [ %101, %1399 ]
  %1416 = icmp eq i64 %1408, 65536
  br i1 %1416, label %2688, label %1417

1417:                                             ; preds = %1407
  %1418 = shl i64 %1408, 1
  %1419 = tail call i64 @llvm.umin.i64(i64 %1418, i64 65536)
  store i64 %1419, ptr %21, align 8, !tbaa !70
  %1420 = tail call ptr @realloc(ptr noundef %1410, i64 noundef %1419) #27
  store ptr %1420, ptr %3, align 8, !tbaa !14
  %1421 = icmp eq ptr %1420, null
  br i1 %1421, label %2688, label %1422

1422:                                             ; preds = %1417
  %1423 = icmp eq ptr %1410, %1420
  %1424 = ptrtoint ptr %1420 to i64
  br i1 %1423, label %1440, label %1425

1425:                                             ; preds = %1422
  %1426 = sub i64 %1424, %1409
  %1427 = shl i64 %1426, 32
  %1428 = ashr exact i64 %1427, 32
  %1429 = getelementptr inbounds i8, ptr %1411, i64 %1428
  %1430 = getelementptr inbounds i8, ptr %1414, i64 %1428
  %1431 = icmp eq ptr %1415, null
  %1432 = getelementptr inbounds i8, ptr %1415, i64 %1428
  %1433 = select i1 %1431, ptr null, ptr %1432
  %1434 = icmp eq ptr %1413, null
  %1435 = getelementptr inbounds i8, ptr %1413, i64 %1428
  %1436 = select i1 %1434, ptr null, ptr %1435
  %1437 = icmp eq ptr %1412, null
  %1438 = getelementptr inbounds i8, ptr %1412, i64 %1428
  %1439 = select i1 %1437, ptr null, ptr %1438
  br label %1440

1440:                                             ; preds = %1422, %1425
  %1441 = phi ptr [ %1433, %1425 ], [ %1415, %1422 ]
  %1442 = phi ptr [ %1430, %1425 ], [ %1414, %1422 ]
  %1443 = phi ptr [ %1436, %1425 ], [ %1413, %1422 ]
  %1444 = phi ptr [ %1439, %1425 ], [ %1412, %1422 ]
  %1445 = phi ptr [ %1429, %1425 ], [ %1411, %1422 ]
  %1446 = ptrtoint ptr %1445 to i64
  %1447 = add i64 %1446, 1
  %1448 = sub i64 %1447, %1424
  %1449 = load i64, ptr %21, align 8, !tbaa !70
  %1450 = icmp ugt i64 %1448, %1449
  br i1 %1450, label %1407, label %1451, !llvm.loop !92

1451:                                             ; preds = %1440, %1399
  %1452 = phi ptr [ %101, %1399 ], [ %1441, %1440 ]
  %1453 = phi ptr [ %100, %1399 ], [ %1442, %1440 ]
  %1454 = phi ptr [ %99, %1399 ], [ %1443, %1440 ]
  %1455 = phi ptr [ %98, %1399 ], [ %1444, %1440 ]
  %1456 = phi ptr [ %96, %1399 ], [ %1445, %1440 ]
  %1457 = phi i64 [ %1401, %1399 ], [ %1446, %1440 ]
  %1458 = getelementptr inbounds i8, ptr %1456, i64 1
  store i8 20, ptr %1456, align 1, !tbaa !16
  %1459 = ptrtoint ptr %1452 to i64
  %1460 = sub i64 %1457, %1459
  %1461 = trunc i64 %1460 to i32
  %1462 = add i32 %1461, -3
  tail call fastcc void @byte_store_op1(i32 noundef 14, ptr noundef %1452, i32 noundef %1462) #23
  br label %1463

1463:                                             ; preds = %1451, %1397
  %1464 = phi ptr [ %1452, %1451 ], [ null, %1397 ]
  %1465 = phi ptr [ %1453, %1451 ], [ %100, %1397 ]
  %1466 = phi ptr [ %1454, %1451 ], [ %99, %1397 ]
  %1467 = phi ptr [ %1455, %1451 ], [ %98, %1397 ]
  %1468 = phi ptr [ %1458, %1451 ], [ %96, %1397 ]
  %1469 = icmp ult i64 %97, 4294967296
  br i1 %1469, label %1470, label %1472

1470:                                             ; preds = %1463
  br i1 %54, label %1471, label %2455

1471:                                             ; preds = %1470
  tail call void @free(ptr noundef %92) #23
  br label %2688

1472:                                             ; preds = %1463
  %1473 = and i64 %97, -4294967296
  %1474 = add i64 %1473, -4294967296
  %1475 = and i64 %97, 4294967295
  %1476 = or disjoint i64 %1474, %1475
  %1477 = load ptr, ptr %3, align 8, !tbaa !14
  %1478 = lshr exact i64 %1474, 32
  %1479 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %92, i64 %1478
  %1480 = load i64, ptr %1479, align 8, !tbaa !85
  %1481 = getelementptr inbounds i8, ptr %1477, i64 %1480
  %1482 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %92, i64 %1478, i32 1
  %1483 = load i64, ptr %1482, align 8, !tbaa !87
  %1484 = icmp eq i64 %1483, 0
  %1485 = getelementptr inbounds i8, ptr %1477, i64 %1483
  %1486 = getelementptr inbounds i8, ptr %1485, i64 -1
  %1487 = select i1 %1484, ptr null, ptr %1486
  %1488 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %92, i64 %1478, i32 3
  %1489 = load i64, ptr %1488, align 8, !tbaa !88
  %1490 = getelementptr inbounds i8, ptr %1477, i64 %1489
  %1491 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %92, i64 %1478, i32 4
  %1492 = load i32, ptr %1491, align 8, !tbaa !89
  %1493 = icmp ult i32 %1492, 256
  br i1 %1493, label %1494, label %2611

1494:                                             ; preds = %1472
  %1495 = getelementptr inbounds %struct.compile_stack_elt_t, ptr %92, i64 %1478, i32 2
  %1496 = load i64, ptr %1495, align 8, !tbaa !90
  %1497 = getelementptr inbounds i8, ptr %1477, i64 %1496
  %1498 = sub i32 %93, %1492
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, ptr %1497, align 1, !tbaa !16
  %1500 = load ptr, ptr %3, align 8, !tbaa !14
  %1501 = ptrtoint ptr %1468 to i64
  %1502 = ptrtoint ptr %1500 to i64
  %1503 = add i64 %1501, 3
  %1504 = sub i64 %1503, %1502
  %1505 = load i64, ptr %21, align 8, !tbaa !70
  %1506 = icmp ugt i64 %1504, %1505
  br i1 %1506, label %1507, label %1546

1507:                                             ; preds = %1494, %1536
  %1508 = phi i64 [ %1544, %1536 ], [ %1505, %1494 ]
  %1509 = phi i64 [ %1523, %1536 ], [ %1502, %1494 ]
  %1510 = phi ptr [ %1519, %1536 ], [ %1500, %1494 ]
  %1511 = phi ptr [ %1540, %1536 ], [ %1468, %1494 ]
  %1512 = phi ptr [ %1539, %1536 ], [ %1490, %1494 ]
  %1513 = phi ptr [ %1538, %1536 ], [ %1481, %1494 ]
  %1514 = phi ptr [ %1537, %1536 ], [ %1487, %1494 ]
  %1515 = icmp eq i64 %1508, 65536
  br i1 %1515, label %2688, label %1516

1516:                                             ; preds = %1507
  %1517 = shl i64 %1508, 1
  %1518 = tail call i64 @llvm.umin.i64(i64 %1517, i64 65536)
  store i64 %1518, ptr %21, align 8, !tbaa !70
  %1519 = tail call ptr @realloc(ptr noundef %1510, i64 noundef %1518) #27
  store ptr %1519, ptr %3, align 8, !tbaa !14
  %1520 = icmp eq ptr %1519, null
  br i1 %1520, label %2688, label %1521

1521:                                             ; preds = %1516
  %1522 = icmp eq ptr %1510, %1519
  %1523 = ptrtoint ptr %1519 to i64
  br i1 %1522, label %1536, label %1524

1524:                                             ; preds = %1521
  %1525 = sub i64 %1523, %1509
  %1526 = shl i64 %1525, 32
  %1527 = ashr exact i64 %1526, 32
  %1528 = getelementptr inbounds i8, ptr %1511, i64 %1527
  %1529 = getelementptr inbounds i8, ptr %1513, i64 %1527
  %1530 = icmp eq ptr %1514, null
  %1531 = getelementptr inbounds i8, ptr %1514, i64 %1527
  %1532 = select i1 %1530, ptr null, ptr %1531
  %1533 = icmp eq ptr %1512, null
  %1534 = getelementptr inbounds i8, ptr %1512, i64 %1527
  %1535 = select i1 %1533, ptr null, ptr %1534
  br label %1536

1536:                                             ; preds = %1521, %1524
  %1537 = phi ptr [ %1532, %1524 ], [ %1514, %1521 ]
  %1538 = phi ptr [ %1529, %1524 ], [ %1513, %1521 ]
  %1539 = phi ptr [ %1535, %1524 ], [ %1512, %1521 ]
  %1540 = phi ptr [ %1528, %1524 ], [ %1511, %1521 ]
  %1541 = ptrtoint ptr %1540 to i64
  %1542 = add i64 %1541, 3
  %1543 = sub i64 %1542, %1523
  %1544 = load i64, ptr %21, align 8, !tbaa !70
  %1545 = icmp ugt i64 %1543, %1544
  br i1 %1545, label %1507, label %1546, !llvm.loop !93

1546:                                             ; preds = %1536, %1494
  %1547 = phi ptr [ %1487, %1494 ], [ %1537, %1536 ]
  %1548 = phi ptr [ %1481, %1494 ], [ %1538, %1536 ]
  %1549 = phi ptr [ %1490, %1494 ], [ %1539, %1536 ]
  %1550 = phi ptr [ %1468, %1494 ], [ %1540, %1536 ]
  %1551 = getelementptr inbounds i8, ptr %1550, i64 1
  store i8 7, ptr %1550, align 1, !tbaa !16
  %1552 = trunc i32 %1492 to i8
  %1553 = getelementptr inbounds i8, ptr %1550, i64 2
  store i8 %1552, ptr %1551, align 1, !tbaa !16
  %1554 = getelementptr inbounds i8, ptr %1550, i64 3
  store i8 %1499, ptr %1553, align 1, !tbaa !16
  br label %2611

1555:                                             ; preds = %1313
  br i1 %50, label %1556, label %2449

1556:                                             ; preds = %1555, %1308, %1307
  %1557 = phi i8 [ 124, %1308 ], [ 10, %1307 ], [ 124, %1555 ]
  br i1 %69, label %1558, label %2455

1558:                                             ; preds = %1556
  %1559 = load ptr, ptr %3, align 8, !tbaa !14
  %1560 = ptrtoint ptr %96 to i64
  %1561 = ptrtoint ptr %1559 to i64
  %1562 = add i64 %1560, 3
  %1563 = sub i64 %1562, %1561
  %1564 = load i64, ptr %21, align 8, !tbaa !70
  %1565 = icmp ugt i64 %1563, %1564
  br i1 %1565, label %1566, label %1600

1566:                                             ; preds = %1558, %1591
  %1567 = phi i64 [ %1598, %1591 ], [ %1564, %1558 ]
  %1568 = phi i64 [ %1581, %1591 ], [ %1561, %1558 ]
  %1569 = phi ptr [ %1577, %1591 ], [ %1559, %1558 ]
  %1570 = phi ptr [ %1594, %1591 ], [ %96, %1558 ]
  %1571 = phi ptr [ %1593, %1591 ], [ %100, %1558 ]
  %1572 = phi ptr [ %1592, %1591 ], [ %101, %1558 ]
  %1573 = icmp eq i64 %1567, 65536
  br i1 %1573, label %2688, label %1574

1574:                                             ; preds = %1566
  %1575 = shl i64 %1567, 1
  %1576 = tail call i64 @llvm.umin.i64(i64 %1575, i64 65536)
  store i64 %1576, ptr %21, align 8, !tbaa !70
  %1577 = tail call ptr @realloc(ptr noundef %1569, i64 noundef %1576) #27
  store ptr %1577, ptr %3, align 8, !tbaa !14
  %1578 = icmp eq ptr %1577, null
  br i1 %1578, label %2688, label %1579

1579:                                             ; preds = %1574
  %1580 = icmp eq ptr %1569, %1577
  %1581 = ptrtoint ptr %1577 to i64
  br i1 %1580, label %1591, label %1582

1582:                                             ; preds = %1579
  %1583 = sub i64 %1581, %1568
  %1584 = shl i64 %1583, 32
  %1585 = ashr exact i64 %1584, 32
  %1586 = getelementptr inbounds i8, ptr %1570, i64 %1585
  %1587 = getelementptr inbounds i8, ptr %1571, i64 %1585
  %1588 = icmp eq ptr %1572, null
  %1589 = getelementptr inbounds i8, ptr %1572, i64 %1585
  %1590 = select i1 %1588, ptr null, ptr %1589
  br label %1591

1591:                                             ; preds = %1579, %1582
  %1592 = phi ptr [ %1590, %1582 ], [ %1572, %1579 ]
  %1593 = phi ptr [ %1587, %1582 ], [ %1571, %1579 ]
  %1594 = phi ptr [ %1586, %1582 ], [ %1570, %1579 ]
  %1595 = ptrtoint ptr %1594 to i64
  %1596 = add i64 %1595, 3
  %1597 = sub i64 %1596, %1581
  %1598 = load i64, ptr %21, align 8, !tbaa !70
  %1599 = icmp ugt i64 %1597, %1598
  br i1 %1599, label %1566, label %1600, !llvm.loop !94

1600:                                             ; preds = %1591, %1558
  %1601 = phi ptr [ %101, %1558 ], [ %1592, %1591 ]
  %1602 = phi ptr [ %100, %1558 ], [ %1593, %1591 ]
  %1603 = phi ptr [ %96, %1558 ], [ %1594, %1591 ]
  %1604 = getelementptr inbounds i8, ptr %1603, i64 6
  %1605 = ptrtoint ptr %1604 to i64
  %1606 = ptrtoint ptr %1602 to i64
  %1607 = sub i64 %1605, %1606
  %1608 = trunc i64 %1607 to i32
  %1609 = add i32 %1608, -3
  tail call fastcc void @byte_insert_op1(i32 noundef 15, ptr noundef %1602, i32 noundef %1609, ptr noundef %1603) #23
  %1610 = getelementptr inbounds i8, ptr %1603, i64 3
  %1611 = icmp eq ptr %1601, null
  %1612 = ptrtoint ptr %1610 to i64
  br i1 %1611, label %1618, label %1613

1613:                                             ; preds = %1600
  %1614 = ptrtoint ptr %1601 to i64
  %1615 = sub i64 %1612, %1614
  %1616 = trunc i64 %1615 to i32
  %1617 = add i32 %1616, -3
  tail call fastcc void @byte_store_op1(i32 noundef 14, ptr noundef nonnull %1601, i32 noundef %1617) #23
  br label %1618

1618:                                             ; preds = %1600, %1613
  %1619 = load ptr, ptr %3, align 8, !tbaa !14
  %1620 = ptrtoint ptr %1619 to i64
  %1621 = add i64 %1612, 3
  %1622 = sub i64 %1621, %1620
  %1623 = load i64, ptr %21, align 8, !tbaa !70
  %1624 = icmp ugt i64 %1622, %1623
  br i1 %1624, label %1625, label %1656

1625:                                             ; preds = %1618, %1648
  %1626 = phi i64 [ %1654, %1648 ], [ %1623, %1618 ]
  %1627 = phi i64 [ %1639, %1648 ], [ %1620, %1618 ]
  %1628 = phi ptr [ %1635, %1648 ], [ %1619, %1618 ]
  %1629 = phi ptr [ %1650, %1648 ], [ %1610, %1618 ]
  %1630 = phi ptr [ %1649, %1648 ], [ %1610, %1618 ]
  %1631 = icmp eq i64 %1626, 65536
  br i1 %1631, label %2688, label %1632

1632:                                             ; preds = %1625
  %1633 = shl i64 %1626, 1
  %1634 = tail call i64 @llvm.umin.i64(i64 %1633, i64 65536)
  store i64 %1634, ptr %21, align 8, !tbaa !70
  %1635 = tail call ptr @realloc(ptr noundef %1628, i64 noundef %1634) #27
  store ptr %1635, ptr %3, align 8, !tbaa !14
  %1636 = icmp eq ptr %1635, null
  br i1 %1636, label %2688, label %1637

1637:                                             ; preds = %1632
  %1638 = icmp eq ptr %1628, %1635
  %1639 = ptrtoint ptr %1635 to i64
  br i1 %1638, label %1648, label %1640

1640:                                             ; preds = %1637
  %1641 = sub i64 %1639, %1627
  %1642 = shl i64 %1641, 32
  %1643 = ashr exact i64 %1642, 32
  %1644 = getelementptr inbounds i8, ptr %1629, i64 %1643
  %1645 = icmp eq ptr %1630, null
  %1646 = getelementptr inbounds i8, ptr %1630, i64 %1643
  %1647 = select i1 %1645, ptr null, ptr %1646
  br label %1648

1648:                                             ; preds = %1637, %1640
  %1649 = phi ptr [ %1647, %1640 ], [ %1630, %1637 ]
  %1650 = phi ptr [ %1644, %1640 ], [ %1629, %1637 ]
  %1651 = ptrtoint ptr %1650 to i64
  %1652 = add i64 %1651, 3
  %1653 = sub i64 %1652, %1639
  %1654 = load i64, ptr %21, align 8, !tbaa !70
  %1655 = icmp ugt i64 %1653, %1654
  br i1 %1655, label %1625, label %1656, !llvm.loop !95

1656:                                             ; preds = %1648, %1618
  %1657 = phi ptr [ %1610, %1618 ], [ %1649, %1648 ]
  %1658 = phi ptr [ %1610, %1618 ], [ %1650, %1648 ]
  %1659 = getelementptr inbounds i8, ptr %1658, i64 3
  br label %2611

1660:                                             ; preds = %1313
  br i1 %48, label %1661, label %2449

1661:                                             ; preds = %1660, %1309
  %1662 = phi ptr [ %1314, %1660 ], [ %102, %1309 ]
  %1663 = icmp eq ptr %1662, %9
  br i1 %1663, label %1893, label %1664

1664:                                             ; preds = %1661, %1685
  %1665 = phi i32 [ %1686, %1685 ], [ -1, %1661 ]
  %1666 = phi ptr [ %1667, %1685 ], [ %1662, %1661 ]
  %1667 = getelementptr inbounds i8, ptr %1666, i64 1
  %1668 = load i8, ptr %1666, align 1, !tbaa !16
  br i1 %40, label %1669, label %1673

1669:                                             ; preds = %1664
  %1670 = zext i8 %1668 to i64
  %1671 = getelementptr inbounds i8, ptr %11, i64 %1670
  %1672 = load i8, ptr %1671, align 1, !tbaa !16
  br label %1673

1673:                                             ; preds = %1669, %1664
  %1674 = phi i8 [ %1672, %1669 ], [ %1668, %1664 ]
  %1675 = zext i8 %1674 to i32
  %1676 = add i8 %1674, -58
  %1677 = icmp ult i8 %1676, -10
  br i1 %1677, label %1688, label %1678

1678:                                             ; preds = %1673
  %1679 = icmp slt i32 %1665, 32768
  br i1 %1679, label %1680, label %1685

1680:                                             ; preds = %1678
  %1681 = tail call i32 @llvm.smax.i32(i32 %1665, i32 0)
  %1682 = mul nuw nsw i32 %1681, 10
  %1683 = add nsw i32 %1682, -48
  %1684 = add nsw i32 %1683, %1675
  br label %1685

1685:                                             ; preds = %1680, %1678
  %1686 = phi i32 [ %1684, %1680 ], [ %1665, %1678 ]
  %1687 = icmp eq ptr %1667, %9
  br i1 %1687, label %1723, label %1664, !llvm.loop !96

1688:                                             ; preds = %1673
  store ptr %1667, ptr %5, align 8, !tbaa !30
  %1689 = icmp eq i8 %1674, 44
  br i1 %1689, label %1690, label %1724

1690:                                             ; preds = %1688
  %1691 = icmp eq ptr %1667, %9
  br i1 %1691, label %1692, label %1693

1692:                                             ; preds = %1690
  store ptr %9, ptr %5, align 8, !tbaa !30
  br label %1724

1693:                                             ; preds = %1690, %1714
  %1694 = phi i32 [ %1715, %1714 ], [ -1, %1690 ]
  %1695 = phi ptr [ %1696, %1714 ], [ %1667, %1690 ]
  %1696 = getelementptr inbounds i8, ptr %1695, i64 1
  %1697 = load i8, ptr %1695, align 1, !tbaa !16
  br i1 %40, label %1698, label %1702

1698:                                             ; preds = %1693
  %1699 = zext i8 %1697 to i64
  %1700 = getelementptr inbounds i8, ptr %11, i64 %1699
  %1701 = load i8, ptr %1700, align 1, !tbaa !16
  br label %1702

1702:                                             ; preds = %1698, %1693
  %1703 = phi i8 [ %1701, %1698 ], [ %1697, %1693 ]
  %1704 = zext i8 %1703 to i32
  %1705 = add i8 %1703, -58
  %1706 = icmp ult i8 %1705, -10
  br i1 %1706, label %1717, label %1707

1707:                                             ; preds = %1702
  %1708 = icmp slt i32 %1694, 32768
  br i1 %1708, label %1709, label %1714

1709:                                             ; preds = %1707
  %1710 = tail call i32 @llvm.smax.i32(i32 %1694, i32 0)
  %1711 = mul nuw nsw i32 %1710, 10
  %1712 = add nsw i32 %1711, -48
  %1713 = add nsw i32 %1712, %1704
  br label %1714

1714:                                             ; preds = %1709, %1707
  %1715 = phi i32 [ %1713, %1709 ], [ %1694, %1707 ]
  %1716 = icmp eq ptr %1696, %9
  br i1 %1716, label %1717, label %1693, !llvm.loop !97

1717:                                             ; preds = %1714, %1702
  %1718 = phi ptr [ %1696, %1702 ], [ %9, %1714 ]
  %1719 = phi i32 [ %1694, %1702 ], [ %1715, %1714 ]
  %1720 = freeze i32 %1719
  store ptr %1718, ptr %5, align 8, !tbaa !30
  %1721 = icmp slt i32 %1720, 0
  %1722 = select i1 %1721, i32 32767, i32 %1720
  br label %1724

1723:                                             ; preds = %1685
  store ptr %9, ptr %5, align 8, !tbaa !30
  br label %1724

1724:                                             ; preds = %1717, %1692, %1723, %1688
  %1725 = phi ptr [ %1667, %1688 ], [ %9, %1723 ], [ %9, %1692 ], [ %1718, %1717 ]
  %1726 = phi i32 [ %1665, %1688 ], [ %1686, %1723 ], [ %1665, %1692 ], [ %1665, %1717 ]
  %1727 = phi i32 [ %1665, %1688 ], [ %1686, %1723 ], [ 32767, %1692 ], [ %1722, %1717 ]
  %1728 = phi i8 [ %1674, %1688 ], [ %1674, %1723 ], [ 44, %1692 ], [ %1703, %1717 ]
  %1729 = icmp slt i32 %1726, 0
  %1730 = icmp sgt i32 %1726, %1727
  %1731 = select i1 %1729, i1 true, i1 %1730
  br i1 %1731, label %1893, label %1732

1732:                                             ; preds = %1724
  br i1 %57, label %1733, label %1744

1733:                                             ; preds = %1732
  %1734 = icmp eq i8 %1728, 92
  br i1 %1734, label %1735, label %1893

1735:                                             ; preds = %1733
  %1736 = icmp eq ptr %1725, %9
  br i1 %1736, label %1893, label %1737

1737:                                             ; preds = %1735
  %1738 = getelementptr inbounds i8, ptr %1725, i64 1
  store ptr %1738, ptr %5, align 8, !tbaa !30
  %1739 = load i8, ptr %1725, align 1, !tbaa !16
  br i1 %40, label %1740, label %1744

1740:                                             ; preds = %1737
  %1741 = zext i8 %1739 to i64
  %1742 = getelementptr inbounds i8, ptr %11, i64 %1741
  %1743 = load i8, ptr %1742, align 1, !tbaa !16
  br label %1744

1744:                                             ; preds = %1737, %1740, %1732
  %1745 = phi ptr [ %1725, %1732 ], [ %1738, %1740 ], [ %1738, %1737 ]
  %1746 = phi i8 [ %1728, %1732 ], [ %1743, %1740 ], [ %1739, %1737 ]
  %1747 = icmp eq i8 %1746, 125
  br i1 %1747, label %1748, label %1893

1748:                                             ; preds = %1744
  %1749 = icmp eq ptr %99, null
  br i1 %1749, label %1750, label %1753

1750:                                             ; preds = %1748
  br i1 %59, label %1751, label %1752

1751:                                             ; preds = %1750
  tail call void @free(ptr noundef %92) #23
  br label %2688

1752:                                             ; preds = %1750
  br i1 %61, label %1898, label %1753

1753:                                             ; preds = %1752, %1748
  %1754 = phi ptr [ %99, %1748 ], [ %96, %1752 ]
  %1755 = icmp sgt i32 %1727, 32767
  br i1 %1755, label %1756, label %1757

1756:                                             ; preds = %1753
  tail call void @free(ptr noundef %92) #23
  br label %2688

1757:                                             ; preds = %1753
  %1758 = icmp eq i32 %1727, 0
  br i1 %1758, label %1759, label %1817

1759:                                             ; preds = %1757
  %1760 = load ptr, ptr %3, align 8, !tbaa !14
  %1761 = ptrtoint ptr %96 to i64
  %1762 = ptrtoint ptr %1760 to i64
  %1763 = add i64 %1761, 3
  %1764 = sub i64 %1763, %1762
  %1765 = load i64, ptr %21, align 8, !tbaa !70
  %1766 = icmp ugt i64 %1764, %1765
  br i1 %1766, label %1767, label %1806

1767:                                             ; preds = %1759, %1796
  %1768 = phi i64 [ %1804, %1796 ], [ %1765, %1759 ]
  %1769 = phi i64 [ %1783, %1796 ], [ %1762, %1759 ]
  %1770 = phi ptr [ %1779, %1796 ], [ %1760, %1759 ]
  %1771 = phi ptr [ %1800, %1796 ], [ %96, %1759 ]
  %1772 = phi ptr [ %1799, %1796 ], [ %1754, %1759 ]
  %1773 = phi ptr [ %1798, %1796 ], [ %100, %1759 ]
  %1774 = phi ptr [ %1797, %1796 ], [ %101, %1759 ]
  %1775 = icmp eq i64 %1768, 65536
  br i1 %1775, label %2688, label %1776

1776:                                             ; preds = %1767
  %1777 = shl i64 %1768, 1
  %1778 = tail call i64 @llvm.umin.i64(i64 %1777, i64 65536)
  store i64 %1778, ptr %21, align 8, !tbaa !70
  %1779 = tail call ptr @realloc(ptr noundef %1770, i64 noundef %1778) #27
  store ptr %1779, ptr %3, align 8, !tbaa !14
  %1780 = icmp eq ptr %1779, null
  br i1 %1780, label %2688, label %1781

1781:                                             ; preds = %1776
  %1782 = icmp eq ptr %1770, %1779
  %1783 = ptrtoint ptr %1779 to i64
  br i1 %1782, label %1796, label %1784

1784:                                             ; preds = %1781
  %1785 = sub i64 %1783, %1769
  %1786 = shl i64 %1785, 32
  %1787 = ashr exact i64 %1786, 32
  %1788 = getelementptr inbounds i8, ptr %1771, i64 %1787
  %1789 = getelementptr inbounds i8, ptr %1773, i64 %1787
  %1790 = icmp eq ptr %1774, null
  %1791 = getelementptr inbounds i8, ptr %1774, i64 %1787
  %1792 = select i1 %1790, ptr null, ptr %1791
  %1793 = icmp eq ptr %1772, null
  %1794 = getelementptr inbounds i8, ptr %1772, i64 %1787
  %1795 = select i1 %1793, ptr null, ptr %1794
  br label %1796

1796:                                             ; preds = %1781, %1784
  %1797 = phi ptr [ %1792, %1784 ], [ %1774, %1781 ]
  %1798 = phi ptr [ %1789, %1784 ], [ %1773, %1781 ]
  %1799 = phi ptr [ %1795, %1784 ], [ %1772, %1781 ]
  %1800 = phi ptr [ %1788, %1784 ], [ %1771, %1781 ]
  %1801 = ptrtoint ptr %1800 to i64
  %1802 = add i64 %1801, 3
  %1803 = sub i64 %1802, %1783
  %1804 = load i64, ptr %21, align 8, !tbaa !70
  %1805 = icmp ugt i64 %1803, %1804
  br i1 %1805, label %1767, label %1806, !llvm.loop !98

1806:                                             ; preds = %1796, %1759
  %1807 = phi ptr [ %101, %1759 ], [ %1797, %1796 ]
  %1808 = phi ptr [ %100, %1759 ], [ %1798, %1796 ]
  %1809 = phi ptr [ %1754, %1759 ], [ %1799, %1796 ]
  %1810 = phi ptr [ %96, %1759 ], [ %1800, %1796 ]
  %1811 = getelementptr inbounds i8, ptr %1810, i64 3
  %1812 = ptrtoint ptr %1811 to i64
  %1813 = ptrtoint ptr %1809 to i64
  %1814 = sub i64 %1812, %1813
  %1815 = trunc i64 %1814 to i32
  %1816 = add i32 %1815, -3
  tail call fastcc void @byte_insert_op1(i32 noundef 13, ptr noundef %1809, i32 noundef %1816, ptr noundef %1810) #23
  br label %2611

1817:                                             ; preds = %1757
  %1818 = icmp sgt i32 %1727, 1
  %1819 = select i1 %1818, i64 20, i64 10
  %1820 = load ptr, ptr %3, align 8, !tbaa !14
  %1821 = ptrtoint ptr %96 to i64
  %1822 = ptrtoint ptr %1820 to i64
  %1823 = add i64 %1819, %1821
  %1824 = sub i64 %1823, %1822
  %1825 = load i64, ptr %21, align 8, !tbaa !70
  %1826 = icmp ugt i64 %1824, %1825
  br i1 %1826, label %1827, label %1866

1827:                                             ; preds = %1817, %1856
  %1828 = phi i64 [ %1864, %1856 ], [ %1825, %1817 ]
  %1829 = phi i64 [ %1843, %1856 ], [ %1822, %1817 ]
  %1830 = phi ptr [ %1839, %1856 ], [ %1820, %1817 ]
  %1831 = phi ptr [ %1860, %1856 ], [ %96, %1817 ]
  %1832 = phi ptr [ %1859, %1856 ], [ %1754, %1817 ]
  %1833 = phi ptr [ %1858, %1856 ], [ %100, %1817 ]
  %1834 = phi ptr [ %1857, %1856 ], [ %101, %1817 ]
  %1835 = icmp eq i64 %1828, 65536
  br i1 %1835, label %2688, label %1836

1836:                                             ; preds = %1827
  %1837 = shl i64 %1828, 1
  %1838 = tail call i64 @llvm.umin.i64(i64 %1837, i64 65536)
  store i64 %1838, ptr %21, align 8, !tbaa !70
  %1839 = tail call ptr @realloc(ptr noundef %1830, i64 noundef %1838) #27
  store ptr %1839, ptr %3, align 8, !tbaa !14
  %1840 = icmp eq ptr %1839, null
  br i1 %1840, label %2688, label %1841

1841:                                             ; preds = %1836
  %1842 = icmp eq ptr %1830, %1839
  %1843 = ptrtoint ptr %1839 to i64
  br i1 %1842, label %1856, label %1844

1844:                                             ; preds = %1841
  %1845 = sub i64 %1843, %1829
  %1846 = shl i64 %1845, 32
  %1847 = ashr exact i64 %1846, 32
  %1848 = getelementptr inbounds i8, ptr %1831, i64 %1847
  %1849 = getelementptr inbounds i8, ptr %1833, i64 %1847
  %1850 = icmp eq ptr %1834, null
  %1851 = getelementptr inbounds i8, ptr %1834, i64 %1847
  %1852 = select i1 %1850, ptr null, ptr %1851
  %1853 = icmp eq ptr %1832, null
  %1854 = getelementptr inbounds i8, ptr %1832, i64 %1847
  %1855 = select i1 %1853, ptr null, ptr %1854
  br label %1856

1856:                                             ; preds = %1841, %1844
  %1857 = phi ptr [ %1852, %1844 ], [ %1834, %1841 ]
  %1858 = phi ptr [ %1849, %1844 ], [ %1833, %1841 ]
  %1859 = phi ptr [ %1855, %1844 ], [ %1832, %1841 ]
  %1860 = phi ptr [ %1848, %1844 ], [ %1831, %1841 ]
  %1861 = ptrtoint ptr %1860 to i64
  %1862 = add i64 %1819, %1861
  %1863 = sub i64 %1862, %1843
  %1864 = load i64, ptr %21, align 8, !tbaa !70
  %1865 = icmp ugt i64 %1863, %1864
  br i1 %1865, label %1827, label %1866, !llvm.loop !99

1866:                                             ; preds = %1856, %1817
  %1867 = phi ptr [ %101, %1817 ], [ %1857, %1856 ]
  %1868 = phi ptr [ %100, %1817 ], [ %1858, %1856 ]
  %1869 = phi ptr [ %1754, %1817 ], [ %1859, %1856 ]
  %1870 = phi ptr [ %96, %1817 ], [ %1860, %1856 ]
  %1871 = getelementptr inbounds i8, ptr %1870, i64 5
  %1872 = select i1 %1818, i64 5, i64 0
  %1873 = getelementptr inbounds i8, ptr %1871, i64 %1872
  %1874 = ptrtoint ptr %1873 to i64
  %1875 = ptrtoint ptr %1869 to i64
  %1876 = sub i64 %1874, %1875
  %1877 = trunc i64 %1876 to i32
  %1878 = add i32 %1877, -3
  tail call fastcc void @byte_insert_op2(i32 noundef 21, ptr noundef %1869, i32 noundef %1878, i32 noundef %1726, ptr noundef %1870) #23
  tail call fastcc void @byte_insert_op2(i32 noundef 23, ptr noundef %1869, i32 noundef 5, i32 noundef %1726, ptr noundef nonnull %1871) #23
  %1879 = getelementptr inbounds i8, ptr %1870, i64 10
  br i1 %1818, label %1880, label %2611

1880:                                             ; preds = %1866
  %1881 = getelementptr inbounds i8, ptr %1869, i64 5
  %1882 = ptrtoint ptr %1881 to i64
  %1883 = ptrtoint ptr %1879 to i64
  %1884 = sub i64 %1882, %1883
  %1885 = trunc i64 %1884 to i32
  %1886 = add i32 %1885, -3
  %1887 = add nsw i32 %1727, -1
  tail call fastcc void @byte_store_op2(i32 noundef 22, ptr noundef nonnull %1879, i32 noundef %1886, i32 noundef %1887) #23
  %1888 = getelementptr inbounds i8, ptr %1870, i64 15
  %1889 = ptrtoint ptr %1888 to i64
  %1890 = sub i64 %1889, %1875
  %1891 = trunc i64 %1890 to i32
  tail call fastcc void @byte_insert_op2(i32 noundef 23, ptr noundef %1869, i32 noundef %1891, i32 noundef %1887, ptr noundef nonnull %1888) #23
  %1892 = getelementptr inbounds i8, ptr %1870, i64 20
  br label %2611

1893:                                             ; preds = %1744, %1733, %1735, %1724, %1661
  %1894 = phi ptr [ %1745, %1744 ], [ %1725, %1733 ], [ %9, %1735 ], [ %1725, %1724 ], [ %9, %1661 ]
  br i1 %63, label %1895, label %1898

1895:                                             ; preds = %1893
  tail call void @free(ptr noundef %92) #23
  %1896 = icmp eq ptr %1894, %9
  %1897 = select i1 %1896, i32 9, i32 10
  br label %2688

1898:                                             ; preds = %1893, %1752
  store ptr %1662, ptr %5, align 8, !tbaa !30
  br i1 %57, label %2449, label %2455

1899:                                             ; preds = %1313
  br i1 %46, label %1900, label %2455

1900:                                             ; preds = %1899
  %1901 = load ptr, ptr %3, align 8, !tbaa !14
  %1902 = ptrtoint ptr %96 to i64
  %1903 = ptrtoint ptr %1901 to i64
  %1904 = add i64 %1902, 1
  %1905 = sub i64 %1904, %1903
  %1906 = load i64, ptr %21, align 8, !tbaa !70
  %1907 = icmp ugt i64 %1905, %1906
  br i1 %1907, label %1908, label %1952

1908:                                             ; preds = %1900, %1941
  %1909 = phi i64 [ %1950, %1941 ], [ %1906, %1900 ]
  %1910 = phi i64 [ %1925, %1941 ], [ %1903, %1900 ]
  %1911 = phi ptr [ %1921, %1941 ], [ %1901, %1900 ]
  %1912 = phi ptr [ %1946, %1941 ], [ %96, %1900 ]
  %1913 = phi ptr [ %1945, %1941 ], [ %98, %1900 ]
  %1914 = phi ptr [ %1944, %1941 ], [ %96, %1900 ]
  %1915 = phi ptr [ %1943, %1941 ], [ %100, %1900 ]
  %1916 = phi ptr [ %1942, %1941 ], [ %101, %1900 ]
  %1917 = icmp eq i64 %1909, 65536
  br i1 %1917, label %2688, label %1918

1918:                                             ; preds = %1908
  %1919 = shl i64 %1909, 1
  %1920 = tail call i64 @llvm.umin.i64(i64 %1919, i64 65536)
  store i64 %1920, ptr %21, align 8, !tbaa !70
  %1921 = tail call ptr @realloc(ptr noundef %1911, i64 noundef %1920) #27
  store ptr %1921, ptr %3, align 8, !tbaa !14
  %1922 = icmp eq ptr %1921, null
  br i1 %1922, label %2688, label %1923

1923:                                             ; preds = %1918
  %1924 = icmp eq ptr %1911, %1921
  %1925 = ptrtoint ptr %1921 to i64
  br i1 %1924, label %1941, label %1926

1926:                                             ; preds = %1923
  %1927 = sub i64 %1925, %1910
  %1928 = shl i64 %1927, 32
  %1929 = ashr exact i64 %1928, 32
  %1930 = getelementptr inbounds i8, ptr %1912, i64 %1929
  %1931 = getelementptr inbounds i8, ptr %1915, i64 %1929
  %1932 = icmp eq ptr %1916, null
  %1933 = getelementptr inbounds i8, ptr %1916, i64 %1929
  %1934 = select i1 %1932, ptr null, ptr %1933
  %1935 = icmp eq ptr %1914, null
  %1936 = getelementptr inbounds i8, ptr %1914, i64 %1929
  %1937 = select i1 %1935, ptr null, ptr %1936
  %1938 = icmp eq ptr %1913, null
  %1939 = getelementptr inbounds i8, ptr %1913, i64 %1929
  %1940 = select i1 %1938, ptr null, ptr %1939
  br label %1941

1941:                                             ; preds = %1923, %1926
  %1942 = phi ptr [ %1934, %1926 ], [ %1916, %1923 ]
  %1943 = phi ptr [ %1931, %1926 ], [ %1915, %1923 ]
  %1944 = phi ptr [ %1937, %1926 ], [ %1914, %1923 ]
  %1945 = phi ptr [ %1940, %1926 ], [ %1913, %1923 ]
  %1946 = phi ptr [ %1930, %1926 ], [ %1912, %1923 ]
  %1947 = ptrtoint ptr %1946 to i64
  %1948 = add i64 %1947, 1
  %1949 = sub i64 %1948, %1925
  %1950 = load i64, ptr %21, align 8, !tbaa !70
  %1951 = icmp ugt i64 %1949, %1950
  br i1 %1951, label %1908, label %1952, !llvm.loop !100

1952:                                             ; preds = %1941, %1900
  %1953 = phi ptr [ %101, %1900 ], [ %1942, %1941 ]
  %1954 = phi ptr [ %100, %1900 ], [ %1943, %1941 ]
  %1955 = phi ptr [ %96, %1900 ], [ %1944, %1941 ]
  %1956 = phi ptr [ %98, %1900 ], [ %1945, %1941 ]
  %1957 = phi ptr [ %96, %1900 ], [ %1946, %1941 ]
  %1958 = getelementptr inbounds i8, ptr %1957, i64 1
  store i8 24, ptr %1957, align 1, !tbaa !16
  br label %2611

1959:                                             ; preds = %1313
  br i1 %46, label %1960, label %2455

1960:                                             ; preds = %1959
  %1961 = load ptr, ptr %3, align 8, !tbaa !14
  %1962 = ptrtoint ptr %96 to i64
  %1963 = ptrtoint ptr %1961 to i64
  %1964 = add i64 %1962, 1
  %1965 = sub i64 %1964, %1963
  %1966 = load i64, ptr %21, align 8, !tbaa !70
  %1967 = icmp ugt i64 %1965, %1966
  br i1 %1967, label %1968, label %2012

1968:                                             ; preds = %1960, %2001
  %1969 = phi i64 [ %2010, %2001 ], [ %1966, %1960 ]
  %1970 = phi i64 [ %1985, %2001 ], [ %1963, %1960 ]
  %1971 = phi ptr [ %1981, %2001 ], [ %1961, %1960 ]
  %1972 = phi ptr [ %2006, %2001 ], [ %96, %1960 ]
  %1973 = phi ptr [ %2005, %2001 ], [ %98, %1960 ]
  %1974 = phi ptr [ %2004, %2001 ], [ %96, %1960 ]
  %1975 = phi ptr [ %2003, %2001 ], [ %100, %1960 ]
  %1976 = phi ptr [ %2002, %2001 ], [ %101, %1960 ]
  %1977 = icmp eq i64 %1969, 65536
  br i1 %1977, label %2688, label %1978

1978:                                             ; preds = %1968
  %1979 = shl i64 %1969, 1
  %1980 = tail call i64 @llvm.umin.i64(i64 %1979, i64 65536)
  store i64 %1980, ptr %21, align 8, !tbaa !70
  %1981 = tail call ptr @realloc(ptr noundef %1971, i64 noundef %1980) #27
  store ptr %1981, ptr %3, align 8, !tbaa !14
  %1982 = icmp eq ptr %1981, null
  br i1 %1982, label %2688, label %1983

1983:                                             ; preds = %1978
  %1984 = icmp eq ptr %1971, %1981
  %1985 = ptrtoint ptr %1981 to i64
  br i1 %1984, label %2001, label %1986

1986:                                             ; preds = %1983
  %1987 = sub i64 %1985, %1970
  %1988 = shl i64 %1987, 32
  %1989 = ashr exact i64 %1988, 32
  %1990 = getelementptr inbounds i8, ptr %1972, i64 %1989
  %1991 = getelementptr inbounds i8, ptr %1975, i64 %1989
  %1992 = icmp eq ptr %1976, null
  %1993 = getelementptr inbounds i8, ptr %1976, i64 %1989
  %1994 = select i1 %1992, ptr null, ptr %1993
  %1995 = icmp eq ptr %1974, null
  %1996 = getelementptr inbounds i8, ptr %1974, i64 %1989
  %1997 = select i1 %1995, ptr null, ptr %1996
  %1998 = icmp eq ptr %1973, null
  %1999 = getelementptr inbounds i8, ptr %1973, i64 %1989
  %2000 = select i1 %1998, ptr null, ptr %1999
  br label %2001

2001:                                             ; preds = %1983, %1986
  %2002 = phi ptr [ %1994, %1986 ], [ %1976, %1983 ]
  %2003 = phi ptr [ %1991, %1986 ], [ %1975, %1983 ]
  %2004 = phi ptr [ %1997, %1986 ], [ %1974, %1983 ]
  %2005 = phi ptr [ %2000, %1986 ], [ %1973, %1983 ]
  %2006 = phi ptr [ %1990, %1986 ], [ %1972, %1983 ]
  %2007 = ptrtoint ptr %2006 to i64
  %2008 = add i64 %2007, 1
  %2009 = sub i64 %2008, %1985
  %2010 = load i64, ptr %21, align 8, !tbaa !70
  %2011 = icmp ugt i64 %2009, %2010
  br i1 %2011, label %1968, label %2012, !llvm.loop !101

2012:                                             ; preds = %2001, %1960
  %2013 = phi ptr [ %101, %1960 ], [ %2002, %2001 ]
  %2014 = phi ptr [ %100, %1960 ], [ %2003, %2001 ]
  %2015 = phi ptr [ %96, %1960 ], [ %2004, %2001 ]
  %2016 = phi ptr [ %98, %1960 ], [ %2005, %2001 ]
  %2017 = phi ptr [ %96, %1960 ], [ %2006, %2001 ]
  %2018 = getelementptr inbounds i8, ptr %2017, i64 1
  store i8 25, ptr %2017, align 1, !tbaa !16
  br label %2611

2019:                                             ; preds = %1313
  br i1 %46, label %2020, label %2455

2020:                                             ; preds = %2019
  %2021 = load ptr, ptr %3, align 8, !tbaa !14
  %2022 = ptrtoint ptr %96 to i64
  %2023 = ptrtoint ptr %2021 to i64
  %2024 = add i64 %2022, 1
  %2025 = sub i64 %2024, %2023
  %2026 = load i64, ptr %21, align 8, !tbaa !70
  %2027 = icmp ugt i64 %2025, %2026
  br i1 %2027, label %2028, label %2072

2028:                                             ; preds = %2020, %2061
  %2029 = phi i64 [ %2070, %2061 ], [ %2026, %2020 ]
  %2030 = phi i64 [ %2045, %2061 ], [ %2023, %2020 ]
  %2031 = phi ptr [ %2041, %2061 ], [ %2021, %2020 ]
  %2032 = phi ptr [ %2066, %2061 ], [ %96, %2020 ]
  %2033 = phi ptr [ %2065, %2061 ], [ %98, %2020 ]
  %2034 = phi ptr [ %2064, %2061 ], [ %99, %2020 ]
  %2035 = phi ptr [ %2063, %2061 ], [ %100, %2020 ]
  %2036 = phi ptr [ %2062, %2061 ], [ %101, %2020 ]
  %2037 = icmp eq i64 %2029, 65536
  br i1 %2037, label %2688, label %2038

2038:                                             ; preds = %2028
  %2039 = shl i64 %2029, 1
  %2040 = tail call i64 @llvm.umin.i64(i64 %2039, i64 65536)
  store i64 %2040, ptr %21, align 8, !tbaa !70
  %2041 = tail call ptr @realloc(ptr noundef %2031, i64 noundef %2040) #27
  store ptr %2041, ptr %3, align 8, !tbaa !14
  %2042 = icmp eq ptr %2041, null
  br i1 %2042, label %2688, label %2043

2043:                                             ; preds = %2038
  %2044 = icmp eq ptr %2031, %2041
  %2045 = ptrtoint ptr %2041 to i64
  br i1 %2044, label %2061, label %2046

2046:                                             ; preds = %2043
  %2047 = sub i64 %2045, %2030
  %2048 = shl i64 %2047, 32
  %2049 = ashr exact i64 %2048, 32
  %2050 = getelementptr inbounds i8, ptr %2032, i64 %2049
  %2051 = getelementptr inbounds i8, ptr %2035, i64 %2049
  %2052 = icmp eq ptr %2036, null
  %2053 = getelementptr inbounds i8, ptr %2036, i64 %2049
  %2054 = select i1 %2052, ptr null, ptr %2053
  %2055 = icmp eq ptr %2034, null
  %2056 = getelementptr inbounds i8, ptr %2034, i64 %2049
  %2057 = select i1 %2055, ptr null, ptr %2056
  %2058 = icmp eq ptr %2033, null
  %2059 = getelementptr inbounds i8, ptr %2033, i64 %2049
  %2060 = select i1 %2058, ptr null, ptr %2059
  br label %2061

2061:                                             ; preds = %2043, %2046
  %2062 = phi ptr [ %2054, %2046 ], [ %2036, %2043 ]
  %2063 = phi ptr [ %2051, %2046 ], [ %2035, %2043 ]
  %2064 = phi ptr [ %2057, %2046 ], [ %2034, %2043 ]
  %2065 = phi ptr [ %2060, %2046 ], [ %2033, %2043 ]
  %2066 = phi ptr [ %2050, %2046 ], [ %2032, %2043 ]
  %2067 = ptrtoint ptr %2066 to i64
  %2068 = add i64 %2067, 1
  %2069 = sub i64 %2068, %2045
  %2070 = load i64, ptr %21, align 8, !tbaa !70
  %2071 = icmp ugt i64 %2069, %2070
  br i1 %2071, label %2028, label %2072, !llvm.loop !102

2072:                                             ; preds = %2061, %2020
  %2073 = phi ptr [ %101, %2020 ], [ %2062, %2061 ]
  %2074 = phi ptr [ %100, %2020 ], [ %2063, %2061 ]
  %2075 = phi ptr [ %99, %2020 ], [ %2064, %2061 ]
  %2076 = phi ptr [ %98, %2020 ], [ %2065, %2061 ]
  %2077 = phi ptr [ %96, %2020 ], [ %2066, %2061 ]
  %2078 = getelementptr inbounds i8, ptr %2077, i64 1
  store i8 26, ptr %2077, align 1, !tbaa !16
  br label %2611

2079:                                             ; preds = %1313
  br i1 %46, label %2080, label %2455

2080:                                             ; preds = %2079
  %2081 = load ptr, ptr %3, align 8, !tbaa !14
  %2082 = ptrtoint ptr %96 to i64
  %2083 = ptrtoint ptr %2081 to i64
  %2084 = add i64 %2082, 1
  %2085 = sub i64 %2084, %2083
  %2086 = load i64, ptr %21, align 8, !tbaa !70
  %2087 = icmp ugt i64 %2085, %2086
  br i1 %2087, label %2088, label %2132

2088:                                             ; preds = %2080, %2121
  %2089 = phi i64 [ %2130, %2121 ], [ %2086, %2080 ]
  %2090 = phi i64 [ %2105, %2121 ], [ %2083, %2080 ]
  %2091 = phi ptr [ %2101, %2121 ], [ %2081, %2080 ]
  %2092 = phi ptr [ %2126, %2121 ], [ %96, %2080 ]
  %2093 = phi ptr [ %2125, %2121 ], [ %98, %2080 ]
  %2094 = phi ptr [ %2124, %2121 ], [ %99, %2080 ]
  %2095 = phi ptr [ %2123, %2121 ], [ %100, %2080 ]
  %2096 = phi ptr [ %2122, %2121 ], [ %101, %2080 ]
  %2097 = icmp eq i64 %2089, 65536
  br i1 %2097, label %2688, label %2098

2098:                                             ; preds = %2088
  %2099 = shl i64 %2089, 1
  %2100 = tail call i64 @llvm.umin.i64(i64 %2099, i64 65536)
  store i64 %2100, ptr %21, align 8, !tbaa !70
  %2101 = tail call ptr @realloc(ptr noundef %2091, i64 noundef %2100) #27
  store ptr %2101, ptr %3, align 8, !tbaa !14
  %2102 = icmp eq ptr %2101, null
  br i1 %2102, label %2688, label %2103

2103:                                             ; preds = %2098
  %2104 = icmp eq ptr %2091, %2101
  %2105 = ptrtoint ptr %2101 to i64
  br i1 %2104, label %2121, label %2106

2106:                                             ; preds = %2103
  %2107 = sub i64 %2105, %2090
  %2108 = shl i64 %2107, 32
  %2109 = ashr exact i64 %2108, 32
  %2110 = getelementptr inbounds i8, ptr %2092, i64 %2109
  %2111 = getelementptr inbounds i8, ptr %2095, i64 %2109
  %2112 = icmp eq ptr %2096, null
  %2113 = getelementptr inbounds i8, ptr %2096, i64 %2109
  %2114 = select i1 %2112, ptr null, ptr %2113
  %2115 = icmp eq ptr %2094, null
  %2116 = getelementptr inbounds i8, ptr %2094, i64 %2109
  %2117 = select i1 %2115, ptr null, ptr %2116
  %2118 = icmp eq ptr %2093, null
  %2119 = getelementptr inbounds i8, ptr %2093, i64 %2109
  %2120 = select i1 %2118, ptr null, ptr %2119
  br label %2121

2121:                                             ; preds = %2103, %2106
  %2122 = phi ptr [ %2114, %2106 ], [ %2096, %2103 ]
  %2123 = phi ptr [ %2111, %2106 ], [ %2095, %2103 ]
  %2124 = phi ptr [ %2117, %2106 ], [ %2094, %2103 ]
  %2125 = phi ptr [ %2120, %2106 ], [ %2093, %2103 ]
  %2126 = phi ptr [ %2110, %2106 ], [ %2092, %2103 ]
  %2127 = ptrtoint ptr %2126 to i64
  %2128 = add i64 %2127, 1
  %2129 = sub i64 %2128, %2105
  %2130 = load i64, ptr %21, align 8, !tbaa !70
  %2131 = icmp ugt i64 %2129, %2130
  br i1 %2131, label %2088, label %2132, !llvm.loop !103

2132:                                             ; preds = %2121, %2080
  %2133 = phi ptr [ %101, %2080 ], [ %2122, %2121 ]
  %2134 = phi ptr [ %100, %2080 ], [ %2123, %2121 ]
  %2135 = phi ptr [ %99, %2080 ], [ %2124, %2121 ]
  %2136 = phi ptr [ %98, %2080 ], [ %2125, %2121 ]
  %2137 = phi ptr [ %96, %2080 ], [ %2126, %2121 ]
  %2138 = getelementptr inbounds i8, ptr %2137, i64 1
  store i8 27, ptr %2137, align 1, !tbaa !16
  br label %2611

2139:                                             ; preds = %1313
  br i1 %46, label %2140, label %2455

2140:                                             ; preds = %2139
  %2141 = load ptr, ptr %3, align 8, !tbaa !14
  %2142 = ptrtoint ptr %96 to i64
  %2143 = ptrtoint ptr %2141 to i64
  %2144 = add i64 %2142, 1
  %2145 = sub i64 %2144, %2143
  %2146 = load i64, ptr %21, align 8, !tbaa !70
  %2147 = icmp ugt i64 %2145, %2146
  br i1 %2147, label %2148, label %2192

2148:                                             ; preds = %2140, %2181
  %2149 = phi i64 [ %2190, %2181 ], [ %2146, %2140 ]
  %2150 = phi i64 [ %2165, %2181 ], [ %2143, %2140 ]
  %2151 = phi ptr [ %2161, %2181 ], [ %2141, %2140 ]
  %2152 = phi ptr [ %2186, %2181 ], [ %96, %2140 ]
  %2153 = phi ptr [ %2185, %2181 ], [ %98, %2140 ]
  %2154 = phi ptr [ %2184, %2181 ], [ %99, %2140 ]
  %2155 = phi ptr [ %2183, %2181 ], [ %100, %2140 ]
  %2156 = phi ptr [ %2182, %2181 ], [ %101, %2140 ]
  %2157 = icmp eq i64 %2149, 65536
  br i1 %2157, label %2688, label %2158

2158:                                             ; preds = %2148
  %2159 = shl i64 %2149, 1
  %2160 = tail call i64 @llvm.umin.i64(i64 %2159, i64 65536)
  store i64 %2160, ptr %21, align 8, !tbaa !70
  %2161 = tail call ptr @realloc(ptr noundef %2151, i64 noundef %2160) #27
  store ptr %2161, ptr %3, align 8, !tbaa !14
  %2162 = icmp eq ptr %2161, null
  br i1 %2162, label %2688, label %2163

2163:                                             ; preds = %2158
  %2164 = icmp eq ptr %2151, %2161
  %2165 = ptrtoint ptr %2161 to i64
  br i1 %2164, label %2181, label %2166

2166:                                             ; preds = %2163
  %2167 = sub i64 %2165, %2150
  %2168 = shl i64 %2167, 32
  %2169 = ashr exact i64 %2168, 32
  %2170 = getelementptr inbounds i8, ptr %2152, i64 %2169
  %2171 = getelementptr inbounds i8, ptr %2155, i64 %2169
  %2172 = icmp eq ptr %2156, null
  %2173 = getelementptr inbounds i8, ptr %2156, i64 %2169
  %2174 = select i1 %2172, ptr null, ptr %2173
  %2175 = icmp eq ptr %2154, null
  %2176 = getelementptr inbounds i8, ptr %2154, i64 %2169
  %2177 = select i1 %2175, ptr null, ptr %2176
  %2178 = icmp eq ptr %2153, null
  %2179 = getelementptr inbounds i8, ptr %2153, i64 %2169
  %2180 = select i1 %2178, ptr null, ptr %2179
  br label %2181

2181:                                             ; preds = %2163, %2166
  %2182 = phi ptr [ %2174, %2166 ], [ %2156, %2163 ]
  %2183 = phi ptr [ %2171, %2166 ], [ %2155, %2163 ]
  %2184 = phi ptr [ %2177, %2166 ], [ %2154, %2163 ]
  %2185 = phi ptr [ %2180, %2166 ], [ %2153, %2163 ]
  %2186 = phi ptr [ %2170, %2166 ], [ %2152, %2163 ]
  %2187 = ptrtoint ptr %2186 to i64
  %2188 = add i64 %2187, 1
  %2189 = sub i64 %2188, %2165
  %2190 = load i64, ptr %21, align 8, !tbaa !70
  %2191 = icmp ugt i64 %2189, %2190
  br i1 %2191, label %2148, label %2192, !llvm.loop !104

2192:                                             ; preds = %2181, %2140
  %2193 = phi ptr [ %101, %2140 ], [ %2182, %2181 ]
  %2194 = phi ptr [ %100, %2140 ], [ %2183, %2181 ]
  %2195 = phi ptr [ %99, %2140 ], [ %2184, %2181 ]
  %2196 = phi ptr [ %98, %2140 ], [ %2185, %2181 ]
  %2197 = phi ptr [ %96, %2140 ], [ %2186, %2181 ]
  %2198 = getelementptr inbounds i8, ptr %2197, i64 1
  store i8 28, ptr %2197, align 1, !tbaa !16
  br label %2611

2199:                                             ; preds = %1313
  br i1 %46, label %2200, label %2455

2200:                                             ; preds = %2199
  %2201 = load ptr, ptr %3, align 8, !tbaa !14
  %2202 = ptrtoint ptr %96 to i64
  %2203 = ptrtoint ptr %2201 to i64
  %2204 = add i64 %2202, 1
  %2205 = sub i64 %2204, %2203
  %2206 = load i64, ptr %21, align 8, !tbaa !70
  %2207 = icmp ugt i64 %2205, %2206
  br i1 %2207, label %2208, label %2252

2208:                                             ; preds = %2200, %2241
  %2209 = phi i64 [ %2250, %2241 ], [ %2206, %2200 ]
  %2210 = phi i64 [ %2225, %2241 ], [ %2203, %2200 ]
  %2211 = phi ptr [ %2221, %2241 ], [ %2201, %2200 ]
  %2212 = phi ptr [ %2246, %2241 ], [ %96, %2200 ]
  %2213 = phi ptr [ %2245, %2241 ], [ %98, %2200 ]
  %2214 = phi ptr [ %2244, %2241 ], [ %99, %2200 ]
  %2215 = phi ptr [ %2243, %2241 ], [ %100, %2200 ]
  %2216 = phi ptr [ %2242, %2241 ], [ %101, %2200 ]
  %2217 = icmp eq i64 %2209, 65536
  br i1 %2217, label %2688, label %2218

2218:                                             ; preds = %2208
  %2219 = shl i64 %2209, 1
  %2220 = tail call i64 @llvm.umin.i64(i64 %2219, i64 65536)
  store i64 %2220, ptr %21, align 8, !tbaa !70
  %2221 = tail call ptr @realloc(ptr noundef %2211, i64 noundef %2220) #27
  store ptr %2221, ptr %3, align 8, !tbaa !14
  %2222 = icmp eq ptr %2221, null
  br i1 %2222, label %2688, label %2223

2223:                                             ; preds = %2218
  %2224 = icmp eq ptr %2211, %2221
  %2225 = ptrtoint ptr %2221 to i64
  br i1 %2224, label %2241, label %2226

2226:                                             ; preds = %2223
  %2227 = sub i64 %2225, %2210
  %2228 = shl i64 %2227, 32
  %2229 = ashr exact i64 %2228, 32
  %2230 = getelementptr inbounds i8, ptr %2212, i64 %2229
  %2231 = getelementptr inbounds i8, ptr %2215, i64 %2229
  %2232 = icmp eq ptr %2216, null
  %2233 = getelementptr inbounds i8, ptr %2216, i64 %2229
  %2234 = select i1 %2232, ptr null, ptr %2233
  %2235 = icmp eq ptr %2214, null
  %2236 = getelementptr inbounds i8, ptr %2214, i64 %2229
  %2237 = select i1 %2235, ptr null, ptr %2236
  %2238 = icmp eq ptr %2213, null
  %2239 = getelementptr inbounds i8, ptr %2213, i64 %2229
  %2240 = select i1 %2238, ptr null, ptr %2239
  br label %2241

2241:                                             ; preds = %2223, %2226
  %2242 = phi ptr [ %2234, %2226 ], [ %2216, %2223 ]
  %2243 = phi ptr [ %2231, %2226 ], [ %2215, %2223 ]
  %2244 = phi ptr [ %2237, %2226 ], [ %2214, %2223 ]
  %2245 = phi ptr [ %2240, %2226 ], [ %2213, %2223 ]
  %2246 = phi ptr [ %2230, %2226 ], [ %2212, %2223 ]
  %2247 = ptrtoint ptr %2246 to i64
  %2248 = add i64 %2247, 1
  %2249 = sub i64 %2248, %2225
  %2250 = load i64, ptr %21, align 8, !tbaa !70
  %2251 = icmp ugt i64 %2249, %2250
  br i1 %2251, label %2208, label %2252, !llvm.loop !105

2252:                                             ; preds = %2241, %2200
  %2253 = phi ptr [ %101, %2200 ], [ %2242, %2241 ]
  %2254 = phi ptr [ %100, %2200 ], [ %2243, %2241 ]
  %2255 = phi ptr [ %99, %2200 ], [ %2244, %2241 ]
  %2256 = phi ptr [ %98, %2200 ], [ %2245, %2241 ]
  %2257 = phi ptr [ %96, %2200 ], [ %2246, %2241 ]
  %2258 = getelementptr inbounds i8, ptr %2257, i64 1
  store i8 29, ptr %2257, align 1, !tbaa !16
  br label %2611

2259:                                             ; preds = %1313
  br i1 %46, label %2260, label %2455

2260:                                             ; preds = %2259
  %2261 = load ptr, ptr %3, align 8, !tbaa !14
  %2262 = ptrtoint ptr %96 to i64
  %2263 = ptrtoint ptr %2261 to i64
  %2264 = add i64 %2262, 1
  %2265 = sub i64 %2264, %2263
  %2266 = load i64, ptr %21, align 8, !tbaa !70
  %2267 = icmp ugt i64 %2265, %2266
  br i1 %2267, label %2268, label %2312

2268:                                             ; preds = %2260, %2301
  %2269 = phi i64 [ %2310, %2301 ], [ %2266, %2260 ]
  %2270 = phi i64 [ %2285, %2301 ], [ %2263, %2260 ]
  %2271 = phi ptr [ %2281, %2301 ], [ %2261, %2260 ]
  %2272 = phi ptr [ %2306, %2301 ], [ %96, %2260 ]
  %2273 = phi ptr [ %2305, %2301 ], [ %98, %2260 ]
  %2274 = phi ptr [ %2304, %2301 ], [ %99, %2260 ]
  %2275 = phi ptr [ %2303, %2301 ], [ %100, %2260 ]
  %2276 = phi ptr [ %2302, %2301 ], [ %101, %2260 ]
  %2277 = icmp eq i64 %2269, 65536
  br i1 %2277, label %2688, label %2278

2278:                                             ; preds = %2268
  %2279 = shl i64 %2269, 1
  %2280 = tail call i64 @llvm.umin.i64(i64 %2279, i64 65536)
  store i64 %2280, ptr %21, align 8, !tbaa !70
  %2281 = tail call ptr @realloc(ptr noundef %2271, i64 noundef %2280) #27
  store ptr %2281, ptr %3, align 8, !tbaa !14
  %2282 = icmp eq ptr %2281, null
  br i1 %2282, label %2688, label %2283

2283:                                             ; preds = %2278
  %2284 = icmp eq ptr %2271, %2281
  %2285 = ptrtoint ptr %2281 to i64
  br i1 %2284, label %2301, label %2286

2286:                                             ; preds = %2283
  %2287 = sub i64 %2285, %2270
  %2288 = shl i64 %2287, 32
  %2289 = ashr exact i64 %2288, 32
  %2290 = getelementptr inbounds i8, ptr %2272, i64 %2289
  %2291 = getelementptr inbounds i8, ptr %2275, i64 %2289
  %2292 = icmp eq ptr %2276, null
  %2293 = getelementptr inbounds i8, ptr %2276, i64 %2289
  %2294 = select i1 %2292, ptr null, ptr %2293
  %2295 = icmp eq ptr %2274, null
  %2296 = getelementptr inbounds i8, ptr %2274, i64 %2289
  %2297 = select i1 %2295, ptr null, ptr %2296
  %2298 = icmp eq ptr %2273, null
  %2299 = getelementptr inbounds i8, ptr %2273, i64 %2289
  %2300 = select i1 %2298, ptr null, ptr %2299
  br label %2301

2301:                                             ; preds = %2283, %2286
  %2302 = phi ptr [ %2294, %2286 ], [ %2276, %2283 ]
  %2303 = phi ptr [ %2291, %2286 ], [ %2275, %2283 ]
  %2304 = phi ptr [ %2297, %2286 ], [ %2274, %2283 ]
  %2305 = phi ptr [ %2300, %2286 ], [ %2273, %2283 ]
  %2306 = phi ptr [ %2290, %2286 ], [ %2272, %2283 ]
  %2307 = ptrtoint ptr %2306 to i64
  %2308 = add i64 %2307, 1
  %2309 = sub i64 %2308, %2285
  %2310 = load i64, ptr %21, align 8, !tbaa !70
  %2311 = icmp ugt i64 %2309, %2310
  br i1 %2311, label %2268, label %2312, !llvm.loop !106

2312:                                             ; preds = %2301, %2260
  %2313 = phi ptr [ %101, %2260 ], [ %2302, %2301 ]
  %2314 = phi ptr [ %100, %2260 ], [ %2303, %2301 ]
  %2315 = phi ptr [ %99, %2260 ], [ %2304, %2301 ]
  %2316 = phi ptr [ %98, %2260 ], [ %2305, %2301 ]
  %2317 = phi ptr [ %96, %2260 ], [ %2306, %2301 ]
  %2318 = getelementptr inbounds i8, ptr %2317, i64 1
  store i8 11, ptr %2317, align 1, !tbaa !16
  br label %2611

2319:                                             ; preds = %1313
  br i1 %46, label %2320, label %2455

2320:                                             ; preds = %2319
  %2321 = load ptr, ptr %3, align 8, !tbaa !14
  %2322 = ptrtoint ptr %96 to i64
  %2323 = ptrtoint ptr %2321 to i64
  %2324 = add i64 %2322, 1
  %2325 = sub i64 %2324, %2323
  %2326 = load i64, ptr %21, align 8, !tbaa !70
  %2327 = icmp ugt i64 %2325, %2326
  br i1 %2327, label %2328, label %2372

2328:                                             ; preds = %2320, %2361
  %2329 = phi i64 [ %2370, %2361 ], [ %2326, %2320 ]
  %2330 = phi i64 [ %2345, %2361 ], [ %2323, %2320 ]
  %2331 = phi ptr [ %2341, %2361 ], [ %2321, %2320 ]
  %2332 = phi ptr [ %2366, %2361 ], [ %96, %2320 ]
  %2333 = phi ptr [ %2365, %2361 ], [ %98, %2320 ]
  %2334 = phi ptr [ %2364, %2361 ], [ %99, %2320 ]
  %2335 = phi ptr [ %2363, %2361 ], [ %100, %2320 ]
  %2336 = phi ptr [ %2362, %2361 ], [ %101, %2320 ]
  %2337 = icmp eq i64 %2329, 65536
  br i1 %2337, label %2688, label %2338

2338:                                             ; preds = %2328
  %2339 = shl i64 %2329, 1
  %2340 = tail call i64 @llvm.umin.i64(i64 %2339, i64 65536)
  store i64 %2340, ptr %21, align 8, !tbaa !70
  %2341 = tail call ptr @realloc(ptr noundef %2331, i64 noundef %2340) #27
  store ptr %2341, ptr %3, align 8, !tbaa !14
  %2342 = icmp eq ptr %2341, null
  br i1 %2342, label %2688, label %2343

2343:                                             ; preds = %2338
  %2344 = icmp eq ptr %2331, %2341
  %2345 = ptrtoint ptr %2341 to i64
  br i1 %2344, label %2361, label %2346

2346:                                             ; preds = %2343
  %2347 = sub i64 %2345, %2330
  %2348 = shl i64 %2347, 32
  %2349 = ashr exact i64 %2348, 32
  %2350 = getelementptr inbounds i8, ptr %2332, i64 %2349
  %2351 = getelementptr inbounds i8, ptr %2335, i64 %2349
  %2352 = icmp eq ptr %2336, null
  %2353 = getelementptr inbounds i8, ptr %2336, i64 %2349
  %2354 = select i1 %2352, ptr null, ptr %2353
  %2355 = icmp eq ptr %2334, null
  %2356 = getelementptr inbounds i8, ptr %2334, i64 %2349
  %2357 = select i1 %2355, ptr null, ptr %2356
  %2358 = icmp eq ptr %2333, null
  %2359 = getelementptr inbounds i8, ptr %2333, i64 %2349
  %2360 = select i1 %2358, ptr null, ptr %2359
  br label %2361

2361:                                             ; preds = %2343, %2346
  %2362 = phi ptr [ %2354, %2346 ], [ %2336, %2343 ]
  %2363 = phi ptr [ %2351, %2346 ], [ %2335, %2343 ]
  %2364 = phi ptr [ %2357, %2346 ], [ %2334, %2343 ]
  %2365 = phi ptr [ %2360, %2346 ], [ %2333, %2343 ]
  %2366 = phi ptr [ %2350, %2346 ], [ %2332, %2343 ]
  %2367 = ptrtoint ptr %2366 to i64
  %2368 = add i64 %2367, 1
  %2369 = sub i64 %2368, %2345
  %2370 = load i64, ptr %21, align 8, !tbaa !70
  %2371 = icmp ugt i64 %2369, %2370
  br i1 %2371, label %2328, label %2372, !llvm.loop !107

2372:                                             ; preds = %2361, %2320
  %2373 = phi ptr [ %101, %2320 ], [ %2362, %2361 ]
  %2374 = phi ptr [ %100, %2320 ], [ %2363, %2361 ]
  %2375 = phi ptr [ %99, %2320 ], [ %2364, %2361 ]
  %2376 = phi ptr [ %98, %2320 ], [ %2365, %2361 ]
  %2377 = phi ptr [ %96, %2320 ], [ %2366, %2361 ]
  %2378 = getelementptr inbounds i8, ptr %2377, i64 1
  store i8 12, ptr %2377, align 1, !tbaa !16
  br label %2611

2379:                                             ; preds = %1313, %1313, %1313, %1313, %1313, %1313, %1313, %1313, %1313
  br i1 %44, label %2380, label %2455

2380:                                             ; preds = %2379
  %2381 = add nsw i8 %1315, -48
  %2382 = zext nneg i8 %2381 to i32
  %2383 = icmp ult i32 %93, %2382
  br i1 %2383, label %2384, label %2385

2384:                                             ; preds = %2380
  tail call void @free(ptr noundef %92) #23
  br label %2688

2385:                                             ; preds = %2380
  %2386 = tail call fastcc signext i8 @group_in_compile_stack(ptr %92, i64 %97, i32 noundef %2382) #23, !range !49
  %2387 = icmp eq i8 %2386, 0
  br i1 %2387, label %2388, label %2455

2388:                                             ; preds = %2385
  %2389 = load ptr, ptr %3, align 8, !tbaa !14
  %2390 = ptrtoint ptr %96 to i64
  %2391 = ptrtoint ptr %2389 to i64
  %2392 = add i64 %2390, 2
  %2393 = sub i64 %2392, %2391
  %2394 = load i64, ptr %21, align 8, !tbaa !70
  %2395 = icmp ugt i64 %2393, %2394
  br i1 %2395, label %2396, label %2440

2396:                                             ; preds = %2388, %2429
  %2397 = phi i64 [ %2438, %2429 ], [ %2394, %2388 ]
  %2398 = phi i64 [ %2413, %2429 ], [ %2391, %2388 ]
  %2399 = phi ptr [ %2409, %2429 ], [ %2389, %2388 ]
  %2400 = phi ptr [ %2434, %2429 ], [ %96, %2388 ]
  %2401 = phi ptr [ %2433, %2429 ], [ %98, %2388 ]
  %2402 = phi ptr [ %2432, %2429 ], [ %96, %2388 ]
  %2403 = phi ptr [ %2431, %2429 ], [ %100, %2388 ]
  %2404 = phi ptr [ %2430, %2429 ], [ %101, %2388 ]
  %2405 = icmp eq i64 %2397, 65536
  br i1 %2405, label %2688, label %2406

2406:                                             ; preds = %2396
  %2407 = shl i64 %2397, 1
  %2408 = tail call i64 @llvm.umin.i64(i64 %2407, i64 65536)
  store i64 %2408, ptr %21, align 8, !tbaa !70
  %2409 = tail call ptr @realloc(ptr noundef %2399, i64 noundef %2408) #27
  store ptr %2409, ptr %3, align 8, !tbaa !14
  %2410 = icmp eq ptr %2409, null
  br i1 %2410, label %2688, label %2411

2411:                                             ; preds = %2406
  %2412 = icmp eq ptr %2399, %2409
  %2413 = ptrtoint ptr %2409 to i64
  br i1 %2412, label %2429, label %2414

2414:                                             ; preds = %2411
  %2415 = sub i64 %2413, %2398
  %2416 = shl i64 %2415, 32
  %2417 = ashr exact i64 %2416, 32
  %2418 = getelementptr inbounds i8, ptr %2400, i64 %2417
  %2419 = getelementptr inbounds i8, ptr %2403, i64 %2417
  %2420 = icmp eq ptr %2404, null
  %2421 = getelementptr inbounds i8, ptr %2404, i64 %2417
  %2422 = select i1 %2420, ptr null, ptr %2421
  %2423 = icmp eq ptr %2402, null
  %2424 = getelementptr inbounds i8, ptr %2402, i64 %2417
  %2425 = select i1 %2423, ptr null, ptr %2424
  %2426 = icmp eq ptr %2401, null
  %2427 = getelementptr inbounds i8, ptr %2401, i64 %2417
  %2428 = select i1 %2426, ptr null, ptr %2427
  br label %2429

2429:                                             ; preds = %2411, %2414
  %2430 = phi ptr [ %2422, %2414 ], [ %2404, %2411 ]
  %2431 = phi ptr [ %2419, %2414 ], [ %2403, %2411 ]
  %2432 = phi ptr [ %2425, %2414 ], [ %2402, %2411 ]
  %2433 = phi ptr [ %2428, %2414 ], [ %2401, %2411 ]
  %2434 = phi ptr [ %2418, %2414 ], [ %2400, %2411 ]
  %2435 = ptrtoint ptr %2434 to i64
  %2436 = add i64 %2435, 2
  %2437 = sub i64 %2436, %2413
  %2438 = load i64, ptr %21, align 8, !tbaa !70
  %2439 = icmp ugt i64 %2437, %2438
  br i1 %2439, label %2396, label %2440, !llvm.loop !108

2440:                                             ; preds = %2429, %2388
  %2441 = phi ptr [ %101, %2388 ], [ %2430, %2429 ]
  %2442 = phi ptr [ %100, %2388 ], [ %2431, %2429 ]
  %2443 = phi ptr [ %96, %2388 ], [ %2432, %2429 ]
  %2444 = phi ptr [ %98, %2388 ], [ %2433, %2429 ]
  %2445 = phi ptr [ %96, %2388 ], [ %2434, %2429 ]
  %2446 = getelementptr inbounds i8, ptr %2445, i64 1
  store i8 8, ptr %2445, align 1, !tbaa !16
  %2447 = getelementptr inbounds i8, ptr %2445, i64 2
  store i8 %2381, ptr %2446, align 1, !tbaa !16
  br label %2611

2448:                                             ; preds = %1313, %1313
  br i1 %42, label %2449, label %249

2449:                                             ; preds = %1898, %1313, %2448, %1660, %1555, %1395, %1392, %1316
  %2450 = phi i8 [ %1315, %1313 ], [ %1315, %2448 ], [ 123, %1660 ], [ 124, %1555 ], [ 41, %1392 ], [ 41, %1395 ], [ 40, %1316 ], [ 123, %1898 ]
  br i1 %40, label %2451, label %2455

2451:                                             ; preds = %2449
  %2452 = zext i8 %2450 to i64
  %2453 = getelementptr inbounds i8, ptr %11, i64 %2452
  %2454 = load i8, ptr %2453, align 1, !tbaa !16
  br label %2455

2455:                                             ; preds = %1898, %2451, %2449, %108, %2385, %2379, %2319, %2259, %2199, %2139, %2079, %2019, %1959, %1899, %1556, %1470, %1309, %1308, %1307, %1306, %1305, %255, %248, %186, %121
  %2456 = phi ptr [ %101, %108 ], [ %101, %255 ], [ %101, %2379 ], [ %101, %2385 ], [ %101, %2319 ], [ %101, %2259 ], [ %101, %2199 ], [ %101, %2139 ], [ %101, %2079 ], [ %101, %2019 ], [ %101, %1959 ], [ %101, %1899 ], [ %101, %1556 ], [ %1464, %1470 ], [ %101, %1309 ], [ %101, %1308 ], [ %101, %1307 ], [ %101, %1306 ], [ %101, %1305 ], [ %101, %248 ], [ %101, %186 ], [ %101, %121 ], [ %101, %2449 ], [ %101, %2451 ], [ %101, %1898 ]
  %2457 = phi ptr [ %100, %108 ], [ %100, %255 ], [ %100, %2379 ], [ %100, %2385 ], [ %100, %2319 ], [ %100, %2259 ], [ %100, %2199 ], [ %100, %2139 ], [ %100, %2079 ], [ %100, %2019 ], [ %100, %1959 ], [ %100, %1899 ], [ %100, %1556 ], [ %1465, %1470 ], [ %100, %1309 ], [ %100, %1308 ], [ %100, %1307 ], [ %100, %1306 ], [ %100, %1305 ], [ %100, %248 ], [ %100, %186 ], [ %100, %121 ], [ %100, %2449 ], [ %100, %2451 ], [ %100, %1898 ]
  %2458 = phi ptr [ %99, %108 ], [ null, %255 ], [ %99, %2379 ], [ %99, %2385 ], [ %99, %2319 ], [ %99, %2259 ], [ %99, %2199 ], [ %99, %2139 ], [ %99, %2079 ], [ %99, %2019 ], [ %99, %1959 ], [ %99, %1899 ], [ %99, %1556 ], [ %1466, %1470 ], [ %99, %1309 ], [ %99, %1308 ], [ %99, %1307 ], [ %99, %1306 ], [ %99, %1305 ], [ %99, %248 ], [ %99, %186 ], [ %99, %121 ], [ %99, %2449 ], [ %99, %2451 ], [ %99, %1898 ]
  %2459 = phi ptr [ %98, %108 ], [ %98, %255 ], [ %98, %2379 ], [ %98, %2385 ], [ %98, %2319 ], [ %98, %2259 ], [ %98, %2199 ], [ %98, %2139 ], [ %98, %2079 ], [ %98, %2019 ], [ %98, %1959 ], [ %98, %1899 ], [ %98, %1556 ], [ %1467, %1470 ], [ %98, %1309 ], [ %98, %1308 ], [ %98, %1307 ], [ %98, %1306 ], [ %98, %1305 ], [ %98, %248 ], [ %98, %186 ], [ %98, %121 ], [ %98, %2449 ], [ %98, %2451 ], [ %98, %1898 ]
  %2460 = phi ptr [ %96, %108 ], [ %96, %255 ], [ %96, %2379 ], [ %96, %2385 ], [ %96, %2319 ], [ %96, %2259 ], [ %96, %2199 ], [ %96, %2139 ], [ %96, %2079 ], [ %96, %2019 ], [ %96, %1959 ], [ %96, %1899 ], [ %96, %1556 ], [ %1468, %1470 ], [ %96, %1309 ], [ %96, %1308 ], [ %96, %1307 ], [ %96, %1306 ], [ %96, %1305 ], [ %96, %248 ], [ %96, %186 ], [ %96, %121 ], [ %96, %2449 ], [ %96, %2451 ], [ %96, %1898 ]
  %2461 = phi i8 [ %109, %108 ], [ %251, %255 ], [ %1315, %2379 ], [ %1315, %2385 ], [ 39, %2319 ], [ 96, %2259 ], [ 66, %2199 ], [ 98, %2139 ], [ 62, %2079 ], [ 60, %2019 ], [ 87, %1959 ], [ 119, %1899 ], [ %1557, %1556 ], [ 41, %1470 ], [ 123, %1309 ], [ 124, %1308 ], [ 10, %1307 ], [ 41, %1306 ], [ 40, %1305 ], [ %109, %248 ], [ 36, %186 ], [ 94, %121 ], [ %2450, %2449 ], [ %2454, %2451 ], [ 123, %1898 ]
  %2462 = icmp eq ptr %2459, null
  br i1 %2462, label %2491, label %2463

2463:                                             ; preds = %2455
  %2464 = load i8, ptr %2459, align 1, !tbaa !16
  %2465 = zext i8 %2464 to i64
  %2466 = getelementptr inbounds i8, ptr %2459, i64 %2465
  %2467 = getelementptr inbounds i8, ptr %2466, i64 1
  %2468 = icmp ne ptr %2467, %2460
  %2469 = icmp eq i8 %2464, -1
  %2470 = or i1 %2469, %2468
  br i1 %2470, label %2491, label %2471

2471:                                             ; preds = %2463
  %2472 = load ptr, ptr %5, align 8, !tbaa !30
  %2473 = load i8, ptr %2472, align 1, !tbaa !16
  switch i8 %2473, label %2474 [
    i8 42, label %2491
    i8 94, label %2491
  ]

2474:                                             ; preds = %2471
  br i1 %42, label %2480, label %2475

2475:                                             ; preds = %2474
  %2476 = icmp eq i8 %2473, 92
  br i1 %2476, label %2477, label %2481

2477:                                             ; preds = %2475
  %2478 = getelementptr inbounds i8, ptr %2472, i64 1
  %2479 = load i8, ptr %2478, align 1, !tbaa !16
  switch i8 %2479, label %2481 [
    i8 43, label %2491
    i8 63, label %2491
  ]

2480:                                             ; preds = %2474
  switch i8 %2473, label %2481 [
    i8 43, label %2491
    i8 63, label %2491
  ]

2481:                                             ; preds = %2480, %2477, %2475
  br i1 %87, label %2545, label %2482

2482:                                             ; preds = %2481
  br i1 %57, label %2485, label %2483

2483:                                             ; preds = %2482
  %2484 = icmp eq i8 %2473, 123
  br i1 %2484, label %2491, label %2545

2485:                                             ; preds = %2482
  %2486 = icmp eq i8 %2473, 92
  br i1 %2486, label %2487, label %2545

2487:                                             ; preds = %2485
  %2488 = getelementptr inbounds i8, ptr %2472, i64 1
  %2489 = load i8, ptr %2488, align 1, !tbaa !16
  %2490 = icmp eq i8 %2489, 123
  br i1 %2490, label %2491, label %2545

2491:                                             ; preds = %2480, %2480, %2477, %2477, %2471, %2471, %2487, %2483, %2463, %2455
  %2492 = load ptr, ptr %3, align 8, !tbaa !14
  %2493 = ptrtoint ptr %2460 to i64
  %2494 = ptrtoint ptr %2492 to i64
  %2495 = add i64 %2493, 2
  %2496 = sub i64 %2495, %2494
  %2497 = load i64, ptr %21, align 8, !tbaa !70
  %2498 = icmp ugt i64 %2496, %2497
  br i1 %2498, label %2499, label %2538

2499:                                             ; preds = %2491, %2528
  %2500 = phi i64 [ %2536, %2528 ], [ %2497, %2491 ]
  %2501 = phi i64 [ %2515, %2528 ], [ %2494, %2491 ]
  %2502 = phi ptr [ %2511, %2528 ], [ %2492, %2491 ]
  %2503 = phi ptr [ %2532, %2528 ], [ %2460, %2491 ]
  %2504 = phi ptr [ %2531, %2528 ], [ %2460, %2491 ]
  %2505 = phi ptr [ %2530, %2528 ], [ %2457, %2491 ]
  %2506 = phi ptr [ %2529, %2528 ], [ %2456, %2491 ]
  %2507 = icmp eq i64 %2500, 65536
  br i1 %2507, label %2688, label %2508

2508:                                             ; preds = %2499
  %2509 = shl i64 %2500, 1
  %2510 = tail call i64 @llvm.umin.i64(i64 %2509, i64 65536)
  store i64 %2510, ptr %21, align 8, !tbaa !70
  %2511 = tail call ptr @realloc(ptr noundef %2502, i64 noundef %2510) #27
  store ptr %2511, ptr %3, align 8, !tbaa !14
  %2512 = icmp eq ptr %2511, null
  br i1 %2512, label %2688, label %2513

2513:                                             ; preds = %2508
  %2514 = icmp eq ptr %2502, %2511
  %2515 = ptrtoint ptr %2511 to i64
  br i1 %2514, label %2528, label %2516

2516:                                             ; preds = %2513
  %2517 = sub i64 %2515, %2501
  %2518 = shl i64 %2517, 32
  %2519 = ashr exact i64 %2518, 32
  %2520 = getelementptr inbounds i8, ptr %2503, i64 %2519
  %2521 = getelementptr inbounds i8, ptr %2505, i64 %2519
  %2522 = icmp eq ptr %2506, null
  %2523 = getelementptr inbounds i8, ptr %2506, i64 %2519
  %2524 = select i1 %2522, ptr null, ptr %2523
  %2525 = icmp eq ptr %2504, null
  %2526 = getelementptr inbounds i8, ptr %2504, i64 %2519
  %2527 = select i1 %2525, ptr null, ptr %2526
  br label %2528

2528:                                             ; preds = %2513, %2516
  %2529 = phi ptr [ %2524, %2516 ], [ %2506, %2513 ]
  %2530 = phi ptr [ %2521, %2516 ], [ %2505, %2513 ]
  %2531 = phi ptr [ %2527, %2516 ], [ %2504, %2513 ]
  %2532 = phi ptr [ %2520, %2516 ], [ %2503, %2513 ]
  %2533 = ptrtoint ptr %2532 to i64
  %2534 = add i64 %2533, 2
  %2535 = sub i64 %2534, %2515
  %2536 = load i64, ptr %21, align 8, !tbaa !70
  %2537 = icmp ugt i64 %2535, %2536
  br i1 %2537, label %2499, label %2538, !llvm.loop !109

2538:                                             ; preds = %2528, %2491
  %2539 = phi ptr [ %2456, %2491 ], [ %2529, %2528 ]
  %2540 = phi ptr [ %2457, %2491 ], [ %2530, %2528 ]
  %2541 = phi ptr [ %2460, %2491 ], [ %2531, %2528 ]
  %2542 = phi ptr [ %2460, %2491 ], [ %2532, %2528 ]
  %2543 = getelementptr inbounds i8, ptr %2542, i64 1
  store i8 2, ptr %2542, align 1, !tbaa !16
  %2544 = getelementptr inbounds i8, ptr %2542, i64 2
  store i8 0, ptr %2543, align 1, !tbaa !16
  br label %2545

2545:                                             ; preds = %2481, %2483, %2485, %2487, %2538
  %2546 = phi ptr [ %2539, %2538 ], [ %2456, %2483 ], [ %2456, %2487 ], [ %2456, %2485 ], [ %2456, %2481 ]
  %2547 = phi ptr [ %2540, %2538 ], [ %2457, %2483 ], [ %2457, %2487 ], [ %2457, %2485 ], [ %2457, %2481 ]
  %2548 = phi ptr [ %2541, %2538 ], [ %2458, %2483 ], [ %2458, %2487 ], [ %2458, %2485 ], [ %2458, %2481 ]
  %2549 = phi ptr [ %2543, %2538 ], [ %2459, %2483 ], [ %2459, %2487 ], [ %2459, %2485 ], [ %2459, %2481 ]
  %2550 = phi ptr [ %2544, %2538 ], [ %2460, %2483 ], [ %2460, %2487 ], [ %2460, %2485 ], [ %2460, %2481 ]
  %2551 = load ptr, ptr %3, align 8, !tbaa !14
  %2552 = ptrtoint ptr %2550 to i64
  %2553 = ptrtoint ptr %2551 to i64
  %2554 = add i64 %2552, 1
  %2555 = sub i64 %2554, %2553
  %2556 = load i64, ptr %21, align 8, !tbaa !70
  %2557 = icmp ugt i64 %2555, %2556
  br i1 %2557, label %2558, label %2602

2558:                                             ; preds = %2545, %2591
  %2559 = phi i64 [ %2600, %2591 ], [ %2556, %2545 ]
  %2560 = phi i64 [ %2575, %2591 ], [ %2553, %2545 ]
  %2561 = phi ptr [ %2571, %2591 ], [ %2551, %2545 ]
  %2562 = phi ptr [ %2596, %2591 ], [ %2550, %2545 ]
  %2563 = phi ptr [ %2595, %2591 ], [ %2549, %2545 ]
  %2564 = phi ptr [ %2594, %2591 ], [ %2548, %2545 ]
  %2565 = phi ptr [ %2593, %2591 ], [ %2547, %2545 ]
  %2566 = phi ptr [ %2592, %2591 ], [ %2546, %2545 ]
  %2567 = icmp eq i64 %2559, 65536
  br i1 %2567, label %2688, label %2568

2568:                                             ; preds = %2558
  %2569 = shl i64 %2559, 1
  %2570 = tail call i64 @llvm.umin.i64(i64 %2569, i64 65536)
  store i64 %2570, ptr %21, align 8, !tbaa !70
  %2571 = tail call ptr @realloc(ptr noundef %2561, i64 noundef %2570) #27
  store ptr %2571, ptr %3, align 8, !tbaa !14
  %2572 = icmp eq ptr %2571, null
  br i1 %2572, label %2688, label %2573

2573:                                             ; preds = %2568
  %2574 = icmp eq ptr %2561, %2571
  %2575 = ptrtoint ptr %2571 to i64
  br i1 %2574, label %2591, label %2576

2576:                                             ; preds = %2573
  %2577 = sub i64 %2575, %2560
  %2578 = shl i64 %2577, 32
  %2579 = ashr exact i64 %2578, 32
  %2580 = getelementptr inbounds i8, ptr %2562, i64 %2579
  %2581 = getelementptr inbounds i8, ptr %2565, i64 %2579
  %2582 = icmp eq ptr %2566, null
  %2583 = getelementptr inbounds i8, ptr %2566, i64 %2579
  %2584 = select i1 %2582, ptr null, ptr %2583
  %2585 = icmp eq ptr %2564, null
  %2586 = getelementptr inbounds i8, ptr %2564, i64 %2579
  %2587 = select i1 %2585, ptr null, ptr %2586
  %2588 = icmp eq ptr %2563, null
  %2589 = getelementptr inbounds i8, ptr %2563, i64 %2579
  %2590 = select i1 %2588, ptr null, ptr %2589
  br label %2591

2591:                                             ; preds = %2573, %2576
  %2592 = phi ptr [ %2584, %2576 ], [ %2566, %2573 ]
  %2593 = phi ptr [ %2581, %2576 ], [ %2565, %2573 ]
  %2594 = phi ptr [ %2587, %2576 ], [ %2564, %2573 ]
  %2595 = phi ptr [ %2590, %2576 ], [ %2563, %2573 ]
  %2596 = phi ptr [ %2580, %2576 ], [ %2562, %2573 ]
  %2597 = ptrtoint ptr %2596 to i64
  %2598 = add i64 %2597, 1
  %2599 = sub i64 %2598, %2575
  %2600 = load i64, ptr %21, align 8, !tbaa !70
  %2601 = icmp ugt i64 %2599, %2600
  br i1 %2601, label %2558, label %2602, !llvm.loop !110

2602:                                             ; preds = %2591, %2545
  %2603 = phi ptr [ %2546, %2545 ], [ %2592, %2591 ]
  %2604 = phi ptr [ %2547, %2545 ], [ %2593, %2591 ]
  %2605 = phi ptr [ %2548, %2545 ], [ %2594, %2591 ]
  %2606 = phi ptr [ %2549, %2545 ], [ %2595, %2591 ]
  %2607 = phi ptr [ %2550, %2545 ], [ %2596, %2591 ]
  %2608 = getelementptr inbounds i8, ptr %2607, i64 1
  store i8 %2461, ptr %2607, align 1, !tbaa !16
  %2609 = load i8, ptr %2606, align 1, !tbaa !16
  %2610 = add i8 %2609, 1
  store i8 %2610, ptr %2606, align 1, !tbaa !16
  br label %2611

2611:                                             ; preds = %1880, %1866, %1806, %1472, %1546, %1301, %306, %522, %461, %1656, %1952, %2012, %2072, %2132, %2192, %2252, %2312, %2372, %2440, %2602, %572, %241, %176
  %2612 = phi ptr [ %2603, %2602 ], [ %2441, %2440 ], [ %2373, %2372 ], [ %2313, %2312 ], [ %2253, %2252 ], [ %2193, %2192 ], [ %2133, %2132 ], [ %2073, %2072 ], [ %2013, %2012 ], [ %1953, %1952 ], [ %1657, %1656 ], [ %754, %1301 ], [ %573, %572 ], [ %242, %241 ], [ %177, %176 ], [ %462, %461 ], [ %523, %522 ], [ %101, %306 ], [ %1547, %1546 ], [ %1487, %1472 ], [ %1807, %1806 ], [ %1867, %1866 ], [ %1867, %1880 ]
  %2613 = phi ptr [ %2604, %2602 ], [ %2442, %2440 ], [ %2374, %2372 ], [ %2314, %2312 ], [ %2254, %2252 ], [ %2194, %2192 ], [ %2134, %2132 ], [ %2074, %2072 ], [ %2014, %2012 ], [ %1954, %1952 ], [ %1659, %1656 ], [ %755, %1301 ], [ %574, %572 ], [ %243, %241 ], [ %178, %176 ], [ %463, %461 ], [ %524, %522 ], [ %100, %306 ], [ %1548, %1546 ], [ %1481, %1472 ], [ %1808, %1806 ], [ %1868, %1866 ], [ %1868, %1880 ]
  %2614 = phi ptr [ %2605, %2602 ], [ %2443, %2440 ], [ %2375, %2372 ], [ %2315, %2312 ], [ %2255, %2252 ], [ %2195, %2192 ], [ %2135, %2132 ], [ %2075, %2072 ], [ %2015, %2012 ], [ %1955, %1952 ], [ null, %1656 ], [ %756, %1301 ], [ %575, %572 ], [ %244, %241 ], [ %179, %176 ], [ %464, %461 ], [ %525, %522 ], [ null, %306 ], [ %1549, %1546 ], [ %1490, %1472 ], [ %1809, %1806 ], [ %1869, %1866 ], [ %1869, %1880 ]
  %2615 = phi ptr [ %2606, %2602 ], [ %2444, %2440 ], [ %2376, %2372 ], [ %2316, %2312 ], [ %2256, %2252 ], [ %2196, %2192 ], [ %2136, %2132 ], [ %2076, %2072 ], [ %2016, %2012 ], [ %1956, %1952 ], [ null, %1656 ], [ %757, %1301 ], [ %576, %572 ], [ %245, %241 ], [ %180, %176 ], [ null, %461 ], [ null, %522 ], [ %98, %306 ], [ null, %1546 ], [ null, %1472 ], [ null, %1806 ], [ null, %1866 ], [ null, %1880 ]
  %2616 = phi i64 [ %97, %2602 ], [ %97, %2440 ], [ %97, %2372 ], [ %97, %2312 ], [ %97, %2252 ], [ %97, %2192 ], [ %97, %2132 ], [ %97, %2072 ], [ %97, %2012 ], [ %97, %1952 ], [ %97, %1656 ], [ %97, %1301 ], [ %97, %572 ], [ %97, %241 ], [ %97, %176 ], [ %97, %461 ], [ %97, %522 ], [ %97, %306 ], [ %1476, %1546 ], [ %1476, %1472 ], [ %97, %1806 ], [ %97, %1866 ], [ %97, %1880 ]
  %2617 = phi ptr [ %2608, %2602 ], [ %2447, %2440 ], [ %2378, %2372 ], [ %2318, %2312 ], [ %2258, %2252 ], [ %2198, %2192 ], [ %2138, %2132 ], [ %2078, %2072 ], [ %2018, %2012 ], [ %1958, %1952 ], [ %1659, %1656 ], [ %1304, %1301 ], [ %578, %572 ], [ %247, %241 ], [ %182, %176 ], [ %469, %461 ], [ %527, %522 ], [ %96, %306 ], [ %1554, %1546 ], [ %1468, %1472 ], [ %1811, %1806 ], [ %1879, %1866 ], [ %1892, %1880 ]
  %2618 = load ptr, ptr %5, align 8, !tbaa !30
  %2619 = icmp eq ptr %2618, %9
  br i1 %2619, label %2630, label %94, !llvm.loop !111

2620:                                             ; preds = %1335, %1386
  %2621 = phi ptr [ %1391, %1386 ], [ %96, %1335 ]
  %2622 = and i64 %1338, -4294967296
  %2623 = add i64 %2622, 4294967296
  %2624 = and i64 %1338, 4294967295
  %2625 = or disjoint i64 %2623, %2624
  %2626 = load ptr, ptr %5, align 8, !tbaa !30
  %2627 = icmp eq ptr %2626, %9
  br i1 %2627, label %2628, label %88, !llvm.loop !111

2628:                                             ; preds = %2620
  %2629 = icmp ult i64 %2625, 4294967296
  br i1 %2629, label %2642, label %2640

2630:                                             ; preds = %2611
  %2631 = icmp ult i64 %2616, 4294967296
  %2632 = icmp eq ptr %2612, null
  br i1 %2632, label %2639, label %2633

2633:                                             ; preds = %2630
  %2634 = ptrtoint ptr %2617 to i64
  %2635 = ptrtoint ptr %2612 to i64
  %2636 = sub i64 %2634, %2635
  %2637 = trunc i64 %2636 to i32
  %2638 = add i32 %2637, -3
  tail call fastcc void @byte_store_op1(i32 noundef 14, ptr noundef nonnull %2612, i32 noundef %2638) #23
  br i1 %2631, label %2642, label %2640

2639:                                             ; preds = %2630
  br i1 %2631, label %2642, label %2640

2640:                                             ; preds = %2628, %2633, %2639
  %2641 = phi ptr [ %92, %2633 ], [ %92, %2639 ], [ %1337, %2628 ]
  tail call void @free(ptr noundef %2641) #23
  br label %2688

2642:                                             ; preds = %36, %2628, %2633, %2639
  %2643 = phi ptr [ %92, %2639 ], [ %92, %2633 ], [ %1337, %2628 ], [ %12, %36 ]
  %2644 = phi ptr [ %2617, %2639 ], [ %2617, %2633 ], [ %2621, %2628 ], [ %37, %36 ]
  %2645 = and i64 %2, 262144
  %2646 = icmp eq i64 %2645, 0
  br i1 %2646, label %2682, label %2647

2647:                                             ; preds = %2642
  %2648 = load ptr, ptr %3, align 8, !tbaa !14
  %2649 = ptrtoint ptr %2644 to i64
  %2650 = ptrtoint ptr %2648 to i64
  %2651 = add i64 %2649, 1
  %2652 = sub i64 %2651, %2650
  %2653 = load i64, ptr %21, align 8, !tbaa !70
  %2654 = icmp ugt i64 %2652, %2653
  br i1 %2654, label %2655, label %2679

2655:                                             ; preds = %2647, %2666
  %2656 = phi i64 [ %2677, %2666 ], [ %2653, %2647 ]
  %2657 = phi i64 [ %2668, %2666 ], [ %2650, %2647 ]
  %2658 = phi ptr [ %2664, %2666 ], [ %2648, %2647 ]
  %2659 = phi ptr [ %2673, %2666 ], [ %2644, %2647 ]
  %2660 = icmp eq i64 %2656, 65536
  br i1 %2660, label %2688, label %2661

2661:                                             ; preds = %2655
  %2662 = shl i64 %2656, 1
  %2663 = tail call i64 @llvm.umin.i64(i64 %2662, i64 65536)
  store i64 %2663, ptr %21, align 8, !tbaa !70
  %2664 = tail call ptr @realloc(ptr noundef %2658, i64 noundef %2663) #27
  store ptr %2664, ptr %3, align 8, !tbaa !14
  %2665 = icmp eq ptr %2664, null
  br i1 %2665, label %2688, label %2666

2666:                                             ; preds = %2661
  %2667 = icmp eq ptr %2658, %2664
  %2668 = ptrtoint ptr %2664 to i64
  %2669 = sub i64 %2668, %2657
  %2670 = shl i64 %2669, 32
  %2671 = ashr exact i64 %2670, 32
  %2672 = select i1 %2667, i64 0, i64 %2671
  %2673 = getelementptr inbounds i8, ptr %2659, i64 %2672
  %2674 = ptrtoint ptr %2673 to i64
  %2675 = add i64 %2674, 1
  %2676 = sub i64 %2675, %2668
  %2677 = load i64, ptr %21, align 8, !tbaa !70
  %2678 = icmp ugt i64 %2676, %2677
  br i1 %2678, label %2655, label %2679, !llvm.loop !112

2679:                                             ; preds = %2666, %2647
  %2680 = phi ptr [ %2644, %2647 ], [ %2673, %2666 ]
  %2681 = getelementptr inbounds i8, ptr %2680, i64 1
  store i8 1, ptr %2680, align 1, !tbaa !16
  br label %2682

2682:                                             ; preds = %2679, %2642
  %2683 = phi ptr [ %2681, %2679 ], [ %2644, %2642 ]
  tail call void @free(ptr noundef %2643) #23
  %2684 = load ptr, ptr %3, align 8, !tbaa !14
  %2685 = ptrtoint ptr %2683 to i64
  %2686 = ptrtoint ptr %2684 to i64
  %2687 = sub i64 %2685, %2686
  store i64 %2687, ptr %19, align 8, !tbaa !15
  br label %2688

2688:                                             ; preds = %1325, %1368, %1362, %2406, %2396, %2338, %2328, %2278, %2268, %2218, %2208, %2158, %2148, %2098, %2088, %2038, %2028, %1978, %1968, %1918, %1908, %1827, %1836, %1776, %1767, %1574, %1566, %1632, %1625, %1417, %1407, %1516, %1507, %611, %602, %651, %641, %719, %709, %856, %538, %528, %329, %320, %431, %422, %492, %483, %207, %197, %142, %132, %2508, %2499, %2568, %2558, %2661, %2655, %1751, %1756, %1895, %861, %1269, %1187, %1115, %848, %825, %793, %777, %589, %281, %4, %2682, %2640, %2384, %1471, %1396, %1312, %254, %34
  %2689 = phi i32 [ 5, %1312 ], [ 13, %254 ], [ 6, %2384 ], [ 16, %1396 ], [ 16, %1471 ], [ 0, %2682 ], [ 8, %2640 ], [ 12, %34 ], [ 12, %4 ], [ 5, %281 ], [ %1270, %1269 ], [ %1188, %1187 ], [ %1116, %1115 ], [ %846, %848 ], [ 11, %825 ], [ 5, %793 ], [ 7, %777 ], [ 7, %589 ], [ %859, %861 ], [ 13, %1751 ], [ 10, %1756 ], [ %1897, %1895 ], [ 15, %2655 ], [ 12, %2661 ], [ 15, %2558 ], [ 12, %2568 ], [ 15, %2499 ], [ 12, %2508 ], [ 15, %132 ], [ 12, %142 ], [ 15, %197 ], [ 12, %207 ], [ 15, %483 ], [ 12, %492 ], [ 15, %422 ], [ 12, %431 ], [ 15, %320 ], [ 12, %329 ], [ 15, %528 ], [ 12, %538 ], [ 14, %856 ], [ 15, %709 ], [ 12, %719 ], [ 15, %641 ], [ 12, %651 ], [ 15, %602 ], [ 12, %611 ], [ 15, %1507 ], [ 12, %1516 ], [ 15, %1407 ], [ 12, %1417 ], [ 15, %1625 ], [ 12, %1632 ], [ 15, %1566 ], [ 12, %1574 ], [ 15, %1767 ], [ 12, %1776 ], [ 12, %1836 ], [ 15, %1827 ], [ 15, %1908 ], [ 12, %1918 ], [ 15, %1968 ], [ 12, %1978 ], [ 15, %2028 ], [ 12, %2038 ], [ 15, %2088 ], [ 12, %2098 ], [ 15, %2148 ], [ 12, %2158 ], [ 15, %2208 ], [ 12, %2218 ], [ 15, %2268 ], [ 12, %2278 ], [ 15, %2328 ], [ 12, %2338 ], [ 15, %2396 ], [ 12, %2406 ], [ 15, %1362 ], [ 12, %1368 ], [ 12, %1325 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret i32 %2689
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @xre_comp(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @re_comp_buf, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %2, label %5, label %7

5:                                                ; preds = %1
  %6 = select i1 %4, ptr @.str, ptr null
  br label %25

7:                                                ; preds = %1
  br i1 %4, label %8, label %14

8:                                                ; preds = %7
  %9 = tail call dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #26
  store ptr %9, ptr @re_comp_buf, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  store i64 200, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 1), align 8, !tbaa !70
  %12 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #26
  store ptr %12, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 4), align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %7
  %15 = load i8, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 7), align 8
  %16 = or i8 %15, -128
  store i8 %16, ptr getelementptr inbounds (%struct.re_pattern_buffer, ptr @re_comp_buf, i64 0, i32 7), align 8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %18 = load i64, ptr @xre_syntax_options, align 8, !tbaa !5
  %19 = tail call fastcc i32 @byte_regex_compile(ptr noundef nonnull %0, i64 noundef %17, i64 noundef %18, ptr noundef nonnull @re_comp_buf) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  br label %25

25:                                               ; preds = %14, %11, %8, %5, %21
  %26 = phi ptr [ %24, %21 ], [ %6, %5 ], [ @.str.25, %8 ], [ @.str.25, %11 ], [ null, %14 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xre_exec(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @xre_search(ptr noundef nonnull @re_comp_buf, ptr noundef %0, i32 noundef %3, i32 noundef 0, i32 noundef %3, ptr noundef null) #23
  %5 = icmp sgt i32 %4, -1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xregcomp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i64 66246, i64 242428
  %7 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #26
  %8 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %7, ptr %8, align 8, !tbaa !10
  %9 = and i32 %2, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #26
  %13 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !26
  %14 = icmp eq ptr %12, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %11, %29
  %16 = phi i64 [ %34, %29 ], [ 0, %11 ]
  %17 = tail call ptr @__ctype_b_loc() #28
  %18 = load ptr, ptr %17, align 8, !tbaa !30
  %19 = getelementptr inbounds i16, ptr %18, i64 %16
  %20 = load i16, ptr %19, align 2, !tbaa !81
  %21 = and i16 %20, 256
  %22 = icmp eq i16 %21, 0
  %23 = trunc i64 %16 to i32
  br i1 %22, label %29, label %24

24:                                               ; preds = %15
  %25 = tail call ptr @__ctype_tolower_loc() #28
  %26 = load ptr, ptr %25, align 8, !tbaa !30
  %27 = getelementptr inbounds i32, ptr %26, i64 %16
  %28 = load i32, ptr %27, align 4, !tbaa !25
  br label %29

29:                                               ; preds = %15, %24
  %30 = phi i32 [ %28, %24 ], [ %23, %15 ]
  %31 = trunc i32 %30 to i8
  %32 = load ptr, ptr %13, align 8, !tbaa !26
  %33 = getelementptr inbounds i8, ptr %32, i64 %16
  store i8 %31, ptr %33, align 1, !tbaa !16
  %34 = add nuw nsw i64 %16, 1
  %35 = icmp eq i64 %34, 256
  br i1 %35, label %38, label %15, !llvm.loop !113

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  store ptr null, ptr %37, align 8, !tbaa !26
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
  %66 = load ptr, ptr %8, align 8, !tbaa !10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @xre_compile_fastmap(ptr noundef nonnull %0) #23, !range !9
  %70 = icmp eq i32 %69, -2
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr %8, align 8, !tbaa !10
  tail call void @free(ptr noundef %72) #23
  store ptr null, ptr %8, align 8, !tbaa !10
  br label %73

73:                                               ; preds = %11, %51, %65, %71, %68
  %74 = phi i32 [ 0, %68 ], [ 0, %71 ], [ 0, %65 ], [ %63, %51 ], [ 12, %11 ]
  ret i32 %74
}

; Function Attrs: optsize
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @__ctype_tolower_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @xregexec(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #2 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !114
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
  store i32 %25, ptr %6, align 8, !tbaa !34
  %26 = shl i64 %2, 3
  %27 = tail call ptr @malloc(i64 noundef %26) #26
  %28 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !36
  %29 = icmp eq ptr %27, null
  br i1 %29, label %56, label %32

30:                                               ; preds = %5
  %31 = call i32 @xre_search(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %9, i32 noundef 0, i32 noundef %9, ptr noundef null) #23
  br label %53

32:                                               ; preds = %24
  %33 = getelementptr inbounds i32, ptr %27, i64 %2
  %34 = getelementptr inbounds %struct.re_registers, ptr %6, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !37
  %35 = call i32 @xre_search(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %9, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %6) #23
  %36 = icmp sgt i32 %35, -1
  %37 = load ptr, ptr %28, align 8, !tbaa !36
  br i1 %36, label %38, label %52

38:                                               ; preds = %32
  %39 = load ptr, ptr %34, align 8, !tbaa !37
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ 0, %38 ], [ %50, %40 ]
  %42 = phi i32 [ 0, %38 ], [ %49, %40 ]
  %43 = getelementptr inbounds i32, ptr %37, i64 %41
  %44 = load i32, ptr %43, align 4, !tbaa !25
  %45 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %41
  store i32 %44, ptr %45, align 4, !tbaa !115
  %46 = getelementptr inbounds i32, ptr %39, i64 %41
  %47 = load i32, ptr %46, align 4, !tbaa !25
  %48 = getelementptr inbounds %struct.regmatch_t, ptr %3, i64 %41, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !117
  %49 = add i32 %42, 1
  %50 = zext i32 %49 to i64
  %51 = icmp ult i64 %50, %2
  br i1 %51, label %40, label %52, !llvm.loop !118

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @xregerror(i32 noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ugt i32 %0, 16
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @abort() #24
  unreachable

7:                                                ; preds = %4
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [17 x ptr], ptr @re_error_msgid, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !30
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
  store i8 0, ptr %18, align 1, !tbaa !16
  br label %20

19:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %10, i64 %12, i1 false)
  br label %20

20:                                               ; preds = %16, %19, %7
  ret i64 %12
}

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @xregfree(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @free(ptr noundef nonnull %7) #23
  br label %10

10:                                               ; preds = %9, %5
  store ptr null, ptr %6, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 7
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -9
  store i8 %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.re_pattern_buffer, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %15) #23
  br label %18

18:                                               ; preds = %17, %10
  store ptr null, ptr %14, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_group_match_null_string_p(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #13 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 2
  store ptr %6, ptr %4, align 8, !tbaa !30
  %7 = icmp ult ptr %6, %1
  br i1 %7, label %8, label %84

8:                                                ; preds = %3, %82
  %9 = phi ptr [ %83, %82 ], [ %6, %3 ]
  %10 = load i8, ptr %9, align 1, !tbaa !16
  switch i8 %10, label %73 [
    i8 15, label %11
    i8 7, label %71
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %12, ptr %4, align 8, !tbaa !30
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %9, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !16
  %17 = sext i8 %16 to i32
  %18 = shl nsw i32 %17, 8
  %19 = or disjoint i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %9, i64 3
  store ptr %20, ptr %4, align 8, !tbaa !30
  %21 = icmp sgt i32 %19, -1
  br i1 %21, label %22, label %79

22:                                               ; preds = %11
  %23 = zext nneg i32 %19 to i64
  %24 = getelementptr i8, ptr %20, i64 %23
  %25 = getelementptr i8, ptr %24, i64 -3
  %26 = load i8, ptr %25, align 1, !tbaa !16
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
  %36 = tail call fastcc signext i8 @byte_alt_match_null_string_p(ptr noundef nonnull %29, ptr noundef nonnull %35, ptr noundef %2) #23, !range !49
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %32, align 1, !tbaa !16
  %40 = icmp eq i8 %39, 15
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %32, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !16
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %32, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !16
  %47 = sext i8 %46 to i32
  %48 = shl nsw i32 %47, 8
  %49 = or disjoint i32 %48, %44
  %50 = getelementptr inbounds i8, ptr %32, i64 3
  %51 = sext i32 %49 to i64
  %52 = getelementptr i8, ptr %50, i64 %51
  %53 = getelementptr i8, ptr %52, i64 -3
  %54 = load i8, ptr %53, align 1, !tbaa !16
  %55 = icmp eq i8 %54, 14
  br i1 %55, label %27, label %56, !llvm.loop !119

56:                                               ; preds = %27, %38, %41
  %57 = phi ptr [ %32, %41 ], [ %29, %27 ], [ %32, %38 ]
  store ptr %57, ptr %4, align 8, !tbaa !30
  %58 = getelementptr inbounds i8, ptr %57, i64 -2
  %59 = load i8, ptr %58, align 1, !tbaa !16
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds i8, ptr %57, i64 -1
  %62 = load i8, ptr %61, align 1, !tbaa !16
  %63 = sext i8 %62 to i32
  %64 = shl nsw i32 %63, 8
  %65 = or disjoint i32 %64, %60
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %57, i64 %66
  %68 = tail call fastcc signext i8 @byte_alt_match_null_string_p(ptr noundef %57, ptr noundef %67, ptr noundef %2) #23, !range !49
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %56
  store ptr %67, ptr %4, align 8, !tbaa !30
  br label %79

71:                                               ; preds = %8
  %72 = getelementptr inbounds i8, ptr %9, i64 2
  store ptr %72, ptr %0, align 8, !tbaa !30
  br label %84

73:                                               ; preds = %8
  %74 = call fastcc signext i8 @byte_common_op_match_null_string_p(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %2) #23, !range !49
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
  br label %8, !llvm.loop !120

84:                                               ; preds = %56, %73, %79, %34, %3, %71
  %85 = phi i8 [ 1, %71 ], [ 0, %3 ], [ 0, %34 ], [ 0, %79 ], [ 0, %73 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %85
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @byte_bcmp_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #14 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %4, %19
  %7 = phi ptr [ %20, %19 ], [ %1, %4 ]
  %8 = phi ptr [ %21, %19 ], [ %0, %4 ]
  %9 = phi i32 [ %22, %19 ], [ %2, %4 ]
  %10 = load i8, ptr %8, align 1, !tbaa !16
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = load i8, ptr %7, align 1, !tbaa !16
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !16
  %18 = icmp eq i8 %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = getelementptr inbounds i8, ptr %8, i64 1
  %22 = add nsw i32 %9, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %6, !llvm.loop !121

24:                                               ; preds = %6, %19, %4
  %25 = phi i32 [ 0, %4 ], [ 0, %19 ], [ 1, %6 ]
  ret i32 %25
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_alt_match_null_string_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #13 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !30
  %5 = icmp ult ptr %0, %1
  br i1 %5, label %6, label %30

6:                                                ; preds = %3, %27
  %7 = phi ptr [ %28, %27 ], [ %0, %3 ]
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %9 = icmp eq i8 %8, 15
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %11, ptr %4, align 8, !tbaa !30
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %7, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !16
  %16 = sext i8 %15 to i32
  %17 = shl nsw i32 %16, 8
  %18 = or disjoint i32 %17, %13
  %19 = getelementptr inbounds i8, ptr %7, i64 3
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %21, ptr %4, align 8, !tbaa !30
  br label %27

22:                                               ; preds = %6
  %23 = call fastcc signext i8 @byte_common_op_match_null_string_p(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %2) #23, !range !49
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !30
  br label %27

27:                                               ; preds = %25, %10
  %28 = phi ptr [ %26, %25 ], [ %21, %10 ]
  %29 = icmp ult ptr %28, %1
  br i1 %29, label %6, label %30, !llvm.loop !122

30:                                               ; preds = %22, %27, %3
  %31 = phi i8 [ 1, %3 ], [ 1, %27 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %31
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef signext i8 @byte_common_op_match_null_string_p(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #13 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !30
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %4, align 8, !tbaa !30
  %7 = load i8, ptr %5, align 1, !tbaa !16
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
  %9 = load i8, ptr %6, align 1, !tbaa !16
  %10 = call fastcc signext i8 @byte_group_match_null_string_p(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #23, !range !49
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
  %22 = load ptr, ptr %4, align 8, !tbaa !30
  br label %63

23:                                               ; preds = %3
  %24 = load i8, ptr %6, align 1, !tbaa !16
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds i8, ptr %5, i64 2
  %27 = load i8, ptr %26, align 1, !tbaa !16
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
  %38 = load i8, ptr %37, align 1, !tbaa !16
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %5, i64 4
  %41 = load i8, ptr %40, align 1, !tbaa !16
  %42 = sext i8 %41 to i32
  %43 = shl nsw i32 %42, 8
  %44 = or disjoint i32 %43, %39
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %36
  %47 = load i8, ptr %6, align 1, !tbaa !16
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %5, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !16
  %51 = sext i8 %50 to i32
  %52 = shl nsw i32 %51, 8
  %53 = or disjoint i32 %52, %48
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %37, i64 %54
  br label %63

56:                                               ; preds = %3
  %57 = load i8, ptr %6, align 1, !tbaa !16
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %union.byte_register_info_type, ptr %2, i64 %58
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, 3
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %21, %56, %3, %3, %3, %3, %3, %3, %3, %3, %3, %46, %32
  %64 = phi ptr [ %22, %21 ], [ %6, %56 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %6, %3 ], [ %55, %46 ], [ %35, %32 ]
  store ptr %64, ptr %0, align 8, !tbaa !30
  br label %65

65:                                               ; preds = %3, %56, %36, %23, %19, %63
  %66 = phi i8 [ 1, %63 ], [ 0, %19 ], [ 0, %23 ], [ 0, %36 ], [ 0, %56 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_syntax_once() unnamed_addr #2 {
  %1 = load i1, ptr @init_syntax_once.done, align 4
  br i1 %1, label %17, label %2

2:                                                ; preds = %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @re_syntax_table, i8 0, i64 256, i1 false)
  br label %3

3:                                                ; preds = %2, %13
  %4 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %5 = tail call ptr @__ctype_b_loc() #28
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  %8 = load i16, ptr %7, align 2, !tbaa !81
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds [256 x i8], ptr @re_syntax_table, i64 0, i64 %4
  store i8 1, ptr %12, align 1, !tbaa !16
  br label %13

13:                                               ; preds = %3, %11
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %16, label %3, !llvm.loop !123

16:                                               ; preds = %13
  store i8 1, ptr getelementptr inbounds ([256 x i8], ptr @re_syntax_table, i64 0, i64 95), align 1, !tbaa !16
  store i1 true, ptr @init_syntax_once.done, align 4
  br label %17

17:                                               ; preds = %0, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i8 @byte_at_begline_loc_p(ptr noundef readnone %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #15 {
  %4 = getelementptr inbounds i8, ptr %1, i64 -2
  %5 = icmp ugt ptr %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %1, i64 -3
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %9 = icmp eq i8 %8, 92
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i1 [ false, %3 ], [ %9, %6 ]
  %12 = load i8, ptr %4, align 1, !tbaa !16
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
define internal fastcc signext i8 @byte_at_endline_loc_p(ptr noundef readonly %0, ptr noundef readnone %1, i64 noundef %2) unnamed_addr #16 {
  %4 = load i8, ptr %0, align 1, !tbaa !16
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
  %16 = load i8, ptr %8, align 1, !tbaa !16
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
  %26 = load i8, ptr %8, align 1, !tbaa !16
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
define internal fastcc void @byte_store_op1(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #17 {
  %4 = trunc i32 %0 to i8
  store i8 %4, ptr %1, align 1, !tbaa !16
  %5 = trunc i32 %2 to i8
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !16
  %7 = lshr i32 %2, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @byte_insert_op1(i32 noundef %0, ptr noundef writeonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #18 {
  %5 = icmp eq ptr %3, %1
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, ptr %3, i64 3
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %13, %8 ], [ %7, %6 ]
  %10 = phi ptr [ %11, %8 ], [ %3, %6 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = getelementptr inbounds i8, ptr %9, i64 -1
  store i8 %12, ptr %13, align 1, !tbaa !16
  %14 = icmp eq ptr %11, %1
  br i1 %14, label %15, label %8, !llvm.loop !124

15:                                               ; preds = %8, %4
  tail call fastcc void @byte_store_op1(i32 noundef %0, ptr noundef %1, i32 noundef %2) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @byte_compile_range(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readnone %2, ptr noundef readonly %3, i64 noundef %4, ptr nocapture noundef %5) unnamed_addr #19 {
  %7 = load ptr, ptr %1, align 8, !tbaa !30
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %60, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %10, ptr %1, align 8, !tbaa !30
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
  %22 = load i8, ptr %21, align 1, !tbaa !16
  %23 = sext i8 %22 to i32
  %24 = load i8, ptr %7, align 1, !tbaa !16
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i8, ptr %3, i64 %25
  br label %27

27:                                               ; preds = %15, %18
  %28 = phi i32 [ %23, %18 ], [ %17, %15 ]
  %29 = phi ptr [ %26, %18 ], [ %7, %15 ]
  %30 = load i8, ptr %29, align 1, !tbaa !16
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
  %39 = load i8, ptr %38, align 1, !tbaa !16
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
  %55 = load i8, ptr %54, align 1, !tbaa !16
  %56 = trunc i32 %50 to i8
  %57 = or i8 %55, %56
  store i8 %57, ptr %54, align 1, !tbaa !16
  %58 = add nsw i32 %34, 1
  %59 = icmp eq i32 %34, %31
  br i1 %59, label %60, label %33, !llvm.loop !125

60:                                               ; preds = %47, %27, %6
  %61 = phi i32 [ 11, %6 ], [ %13, %27 ], [ 0, %47 ]
  ret i32 %61
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @byte_insert_op2(i32 noundef %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #18 {
  %6 = icmp eq ptr %4, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %4, i64 5
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %14, %9 ], [ %8, %7 ]
  %11 = phi ptr [ %12, %9 ], [ %4, %7 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = getelementptr inbounds i8, ptr %10, i64 -1
  store i8 %13, ptr %14, align 1, !tbaa !16
  %15 = icmp eq ptr %12, %1
  br i1 %15, label %16, label %9, !llvm.loop !126

16:                                               ; preds = %9, %5
  tail call fastcc void @byte_store_op2(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @byte_store_op2(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
  %5 = trunc i32 %0 to i8
  store i8 %5, ptr %1, align 1, !tbaa !16
  %6 = trunc i32 %2 to i8
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !16
  %8 = lshr i32 %2, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !16
  %11 = trunc i32 %3 to i8
  %12 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !16
  %13 = lshr i32 %3, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %14, ptr %15, align 1, !tbaa !16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef signext i8 @group_in_compile_stack(ptr nocapture readonly %0, i64 %1, i32 noundef %2) unnamed_addr #20 {
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
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %5, !llvm.loop !127

15:                                               ; preds = %5, %10
  %16 = phi i8 [ 1, %10 ], [ 0, %5 ]
  ret i8 %16
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
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { optsize }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { nounwind }
attributes #26 = { optsize allocsize(0) }
attributes #27 = { optsize allocsize(1) }
attributes #28 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i32 -2, i32 1}
!10 = !{!11, !12, i64 32}
!11 = !{!"re_pattern_buffer", !12, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !12, i64 32, !12, i64 40, !6, i64 48, !13, i64 56, !13, i64 56, !13, i64 56, !13, i64 56, !13, i64 56, !13, i64 56, !13, i64 56}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!11, !6, i64 16}
!16 = !{!7, !7, i64 0}
!17 = distinct !{!17, !18, !19, !20}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !18, !19, !20}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!11, !6, i64 24}
!25 = !{!13, !13, i64 0}
!26 = !{!11, !12, i64 40}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = !{!11, !6, i64 48}
!30 = !{!12, !12, i64 0}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = !{!35, !13, i64 0}
!35 = !{!"re_registers", !13, i64 0, !12, i64 8, !12, i64 16}
!36 = !{!35, !12, i64 8}
!37 = !{!35, !12, i64 16}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = !{i8 0, i8 2}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = !{i32 0, i32 2}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = !{!11, !6, i64 8}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = !{i32 0, i32 12}
!81 = !{!82, !82, i64 0}
!82 = !{!"short", !7, i64 0}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18}
!85 = !{!86, !6, i64 0}
!86 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !13, i64 32}
!87 = !{!86, !6, i64 8}
!88 = !{!86, !6, i64 24}
!89 = !{!86, !13, i64 32}
!90 = !{!86, !6, i64 16}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18}
!94 = distinct !{!94, !18}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = distinct !{!107, !18}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !18}
!110 = distinct !{!110, !18}
!111 = distinct !{!111, !18}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !18}
!114 = !{i64 0, i64 8, !30, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !30, i64 40, i64 8, !30, i64 48, i64 8, !5, i64 56, i64 4, !25, i64 56, i64 4, !25, i64 56, i64 4, !25, i64 56, i64 4, !25, i64 56, i64 4, !25, i64 56, i64 4, !25, i64 56, i64 4, !25}
!115 = !{!116, !13, i64 0}
!116 = !{!"", !13, i64 0, !13, i64 4}
!117 = !{!116, !13, i64 4}
!118 = distinct !{!118, !18}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !18}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !18}
!127 = distinct !{!127, !18}
