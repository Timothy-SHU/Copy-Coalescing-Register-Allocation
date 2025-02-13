; ModuleID = 'print-rtl.c'
source_filename = "print-rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.reg_attrs = type { ptr, i64 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@print_rtx_head = dso_local local_unnamed_addr global ptr @.str, align 8
@flag_dump_unnumbered = dso_local local_unnamed_addr global i32 0, align 4
@flag_dump_unnumbered_links = dso_local local_unnamed_addr global i32 0, align 4
@flag_simple = dso_local local_unnamed_addr global i32 0, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@sawclose = internal unnamed_addr global i1 false, align 4
@indent = internal unnamed_addr global i32 0, align 4
@outfile = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@debug_rtx_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"insn uid %d not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@dump_for_graph = dso_local local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"\0A%s%*s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"(??? bad code %d\0A%s%*s)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"(%s\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"/s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"/v\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"/u\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"/j\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"/c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"/i\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@reg_note_name = external local_unnamed_addr constant [0 x ptr], align 8
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.16 = private unnamed_addr constant [28 x i8] c" <debug string placeholder>\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" [uninit]\00", align 1
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c" \\\22\\\22\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" \22\22\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c" (\\\22%s\\\22)\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" (\22%s\22)\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c" [flags 0x%x]\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c" [bb %d]\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"\0A%s%*s -> %d\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" %u:%u\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" @\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c" D#%i\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c" [0x%lx]\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" %d %s\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.39 = private unnamed_addr constant [26 x i8] c" %d virtual-incoming-args\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c" %d virtual-stack-vars\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c" %d virtual-stack-dynamic\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c" %d virtual-outgoing-args\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c" %d virtual-cfa\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c" %d virtual-reg-%d\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"orig:%i\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"+%ld\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c" {%s}\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.50 = private unnamed_addr constant [13 x i8] c" [# deleted]\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c" [%d deleted]\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c" {null}\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c" Unknown\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"print-rtl.c\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@final_insns_dump_p = external local_unnamed_addr global i8, align 1
@.str.60 = private unnamed_addr constant [6 x i8] c" [%ld\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c" S%ld\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c" A%u\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c" AS%u\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c" [%d uses]\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c" [entry]\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c" [global entry]\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c" [weak entry]\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_mem_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #8
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !5
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %4) #9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_inline_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i1, ptr @sawclose, align 4
  %5 = load i32, ptr @indent, align 4, !tbaa !5
  store i1 false, ptr @sawclose, align 4
  store i32 %2, ptr @indent, align 4, !tbaa !5
  store ptr %0, ptr @outfile, align 8, !tbaa !9
  tail call fastcc void @print_rtx(ptr noundef %1) #8
  store i1 %4, ptr @sawclose, align 4
  store i32 %5, ptr @indent, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_rtx(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [60 x i8], align 16
  %3 = load i1, ptr @sawclose, align 4
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_simple, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %6, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @fputc(i32 noundef 32, ptr noundef %7) #8
  br label %15

10:                                               ; preds = %4
  %11 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %12 = load i32, ptr @indent, align 4, !tbaa !5
  %13 = shl nsw i32 %12, 1
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %13, ptr noundef nonnull @.str) #8
  br label %15

15:                                               ; preds = %10, %8
  store i1 false, ptr @sawclose, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load ptr, ptr @outfile, align 8, !tbaa !9
  %20 = tail call i32 @fputs(ptr noundef nonnull @.str.5, ptr noundef %19) #8
  br label %797

21:                                               ; preds = %16
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 65535
  %24 = icmp ugt i32 %23, 139
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load ptr, ptr @outfile, align 8, !tbaa !9
  %27 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %28 = load i32, ptr @indent, align 4, !tbaa !5
  %29 = shl nsw i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %23, ptr noundef %27, i32 noundef %29, ptr noundef nonnull @.str) #8
  br label %797

31:                                               ; preds = %21
  %32 = add nsw i32 %23, -7
  %33 = icmp ult i32 %32, 4
  %34 = load i32, ptr @dump_for_graph, align 4, !tbaa !5
  %35 = icmp ne i32 %34, 0
  %36 = icmp ult i32 %32, 7
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, ptr @indent, align 4, !tbaa !5
  br label %161

39:                                               ; preds = %31
  %40 = load i32, ptr @flag_simple, align 4, !tbaa !5
  %41 = icmp ne i32 %40, 0
  %42 = icmp eq i32 %23, 30
  %43 = and i1 %42, %41
  %44 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %43, label %45, label %47

45:                                               ; preds = %39
  %46 = tail call i32 @fputc(i32 noundef 40, ptr noundef %44) #8
  br label %52

47:                                               ; preds = %39
  %48 = zext nneg i32 %23 to i64
  %49 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.7, ptr noundef %50) #8
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i32, ptr @flag_simple, align 4, !tbaa !5
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %0, align 8
  br i1 %54, label %56, label %161

56:                                               ; preds = %52
  %57 = and i32 %55, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @outfile, align 8, !tbaa !9
  %61 = tail call i32 @fputs(ptr noundef nonnull @.str.8, ptr noundef %60) #8
  %62 = load i32, ptr %0, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %62, %59 ], [ %55, %56 ]
  %65 = and i32 %64, 134217728
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @outfile, align 8, !tbaa !9
  %69 = tail call i32 @fputs(ptr noundef nonnull @.str.9, ptr noundef %68) #8
  %70 = load i32, ptr %0, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %70, %67 ], [ %64, %63 ]
  %73 = and i32 %72, 67108864
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @outfile, align 8, !tbaa !9
  %77 = tail call i32 @fputs(ptr noundef nonnull @.str.10, ptr noundef %76) #8
  %78 = load i32, ptr %0, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %78, %75 ], [ %72, %71 ]
  %81 = and i32 %80, 1073741824
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @outfile, align 8, !tbaa !9
  %85 = tail call i32 @fputs(ptr noundef nonnull @.str.11, ptr noundef %84) #8
  %86 = load i32, ptr %0, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %86, %83 ], [ %80, %79 ]
  %89 = and i32 %88, 16777216
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @outfile, align 8, !tbaa !9
  %93 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %92) #8
  %94 = load i32, ptr %0, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i32 [ %94, %91 ], [ %88, %87 ]
  %97 = and i32 %96, 33554432
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr @outfile, align 8, !tbaa !9
  %101 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %100) #8
  %102 = load i32, ptr %0, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i32 [ %102, %99 ], [ %96, %95 ]
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr @outfile, align 8, !tbaa !9
  %108 = tail call i32 @fputs(ptr noundef nonnull @.str.14, ptr noundef %107) #8
  %109 = load i32, ptr %0, align 8
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i32 [ %109, %106 ], [ %104, %103 ]
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %112, -3
  %114 = icmp ult i32 %113, 2
  %115 = lshr i32 %111, 16
  %116 = and i32 %115, 255
  br i1 %114, label %117, label %122

117:                                              ; preds = %110
  %118 = icmp ult i32 %116, 31
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = zext nneg i32 %116 to i64
  %121 = getelementptr inbounds [0 x ptr], ptr @reg_note_name, i64 0, i64 %120
  br label %127

122:                                              ; preds = %110
  %123 = icmp eq i32 %116, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %117, %122
  %125 = zext nneg i32 %116 to i64
  %126 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %125
  br label %127

127:                                              ; preds = %119, %124
  %128 = phi ptr [ %126, %124 ], [ %121, %119 ]
  %129 = load ptr, ptr @outfile, align 8, !tbaa !9
  %130 = load ptr, ptr %128, align 8, !tbaa !9
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.15, ptr noundef %130) #8
  br label %132

132:                                              ; preds = %127, %122
  %133 = load i32, ptr %0, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 138
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !11
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 28
  %142 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %141, label %143, label %145

143:                                              ; preds = %136
  %144 = tail call i32 @fputs(ptr noundef nonnull @.str.16, ptr noundef %142) #8
  br label %146

145:                                              ; preds = %136
  tail call void @print_mem_expr(ptr noundef %142, ptr noundef nonnull %138) #8
  br label %146

146:                                              ; preds = %145, %143
  %147 = load ptr, ptr @outfile, align 8, !tbaa !9
  %148 = tail call i32 @fputc(i32 noundef 32, ptr noundef %147) #8
  %149 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !11
  tail call fastcc void @print_rtx(ptr noundef %150) #8
  %151 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %152 = load i32, ptr %151, align 8, !tbaa !11
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load ptr, ptr @outfile, align 8, !tbaa !9
  %156 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 9, i64 1, ptr %155)
  br label %157

157:                                              ; preds = %154, %146
  store i1 true, ptr @sawclose, align 4
  %158 = load i8, ptr getelementptr inbounds ([139 x i8], ptr @rtx_length, i64 0, i64 138), align 2, !tbaa !11
  %159 = zext i8 %158 to i32
  %160 = load i32, ptr %0, align 8
  br label %161

161:                                              ; preds = %52, %157, %132, %38
  %162 = phi i32 [ %22, %38 ], [ %55, %52 ], [ %160, %157 ], [ %133, %132 ]
  %163 = phi i32 [ 3, %38 ], [ 0, %52 ], [ %159, %157 ], [ 0, %132 ]
  %164 = and i32 %162, 65535
  %165 = icmp eq i32 %164, 32
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = lshr i32 %162, 16
  %168 = and i32 %167, 255
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !11
  %172 = add i8 %171, -8
  %173 = icmp ult i8 %172, 10
  br i1 %173, label %174, label %180

174:                                              ; preds = %166
  %175 = zext nneg i8 %172 to i16
  %176 = lshr i16 523, %175
  %177 = and i16 %176, 1
  %178 = icmp eq i16 %177, 0
  %179 = select i1 %178, i32 %163, i32 5
  br label %180

180:                                              ; preds = %174, %166, %161
  %181 = phi i32 [ %163, %161 ], [ %163, %166 ], [ %179, %174 ]
  %182 = zext nneg i32 %164 to i64
  %183 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !11
  %185 = zext i8 %184 to i32
  %186 = icmp ult i32 %181, %185
  br i1 %186, label %187, label %638

187:                                              ; preds = %180
  %188 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %182
  %189 = load ptr, ptr %188, align 8, !tbaa !9
  %190 = zext nneg i32 %181 to i64
  %191 = getelementptr inbounds i8, ptr %189, i64 %190
  %192 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %193 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %195 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %196 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %197 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %198 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %199

199:                                              ; preds = %187, %629
  %200 = phi i64 [ %190, %187 ], [ %630, %629 ]
  %201 = phi i32 [ %164, %187 ], [ %632, %629 ]
  %202 = phi i32 [ %162, %187 ], [ %631, %629 ]
  %203 = phi ptr [ %191, %187 ], [ %204, %629 ]
  %204 = getelementptr inbounds i8, ptr %203, i64 1
  %205 = load i8, ptr %203, align 1, !tbaa !11
  switch i8 %205, label %628 [
    i8 84, label %206
    i8 83, label %206
    i8 115, label %206
    i8 48, label %223
    i8 101, label %330
    i8 69, label %342
    i8 86, label %342
    i8 119, label %392
    i8 105, label %409
    i8 110, label %546
    i8 117, label %554
    i8 98, label %603
    i8 116, label %612
    i8 42, label %616
    i8 66, label %619
  ]

206:                                              ; preds = %199, %199, %199
  %207 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %208 = load ptr, ptr %207, align 8, !tbaa !11
  %209 = icmp eq ptr %208, null
  %210 = load i32, ptr @dump_for_graph, align 4, !tbaa !5
  %211 = icmp eq i32 %210, 0
  br i1 %209, label %212, label %216

212:                                              ; preds = %206
  %213 = select i1 %211, ptr @.str.19, ptr @.str.18
  %214 = load ptr, ptr @outfile, align 8, !tbaa !9
  %215 = tail call i32 @fputs(ptr noundef nonnull %213, ptr noundef %214) #8
  br label %222

216:                                              ; preds = %206
  %217 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %211, label %220, label %218

218:                                              ; preds = %216
  %219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.20, ptr noundef nonnull %208) #8
  br label %222

220:                                              ; preds = %216
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.21, ptr noundef nonnull %208) #8
  br label %222

222:                                              ; preds = %218, %220, %212
  store i1 true, ptr @sawclose, align 4
  br label %629

223:                                              ; preds = %199
  %224 = icmp eq i64 %200, 1
  %225 = icmp eq i32 %201, 37
  %226 = and i1 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #8
  %229 = load i32, ptr %193, align 8, !tbaa !11
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %629, label %231

231:                                              ; preds = %227
  %232 = load ptr, ptr @outfile, align 8, !tbaa !9
  %233 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.22, i32 noundef %229) #8
  br label %629

234:                                              ; preds = %223
  br i1 %224, label %235, label %243

235:                                              ; preds = %234
  %236 = icmp eq i32 %201, 45
  br i1 %236, label %237, label %629

237:                                              ; preds = %235
  %238 = load i32, ptr %193, align 8, !tbaa !11
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %629, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr @outfile, align 8, !tbaa !9
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.23, i32 noundef %238) #8
  br label %629

243:                                              ; preds = %234
  %244 = trunc i64 %200 to i32
  switch i32 %244, label %629 [
    i32 2, label %245
    i32 4, label %254
    i32 8, label %299
    i32 0, label %312
  ]

245:                                              ; preds = %243
  %246 = and i32 %202, 67174399
  %247 = icmp eq i32 %246, 45
  br i1 %247, label %248, label %629

248:                                              ; preds = %245
  %249 = load ptr, ptr %196, align 8, !tbaa !11
  %250 = icmp eq ptr %249, null
  br i1 %250, label %629, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr @outfile, align 8, !tbaa !9
  %253 = load i32, ptr @dump_flags, align 4, !tbaa !5
  tail call void @print_node_brief(ptr noundef %252, ptr noundef nonnull @.str, ptr noundef nonnull %249, i32 noundef %253) #9
  br label %629

254:                                              ; preds = %243
  %255 = icmp eq i32 %201, 13
  br i1 %255, label %256, label %629

256:                                              ; preds = %254
  %257 = load i32, ptr %194, align 8, !tbaa !11
  switch i32 %257, label %629 [
    i32 7, label %258
    i32 8, label %258
    i32 2, label %268
    i32 3, label %268
    i32 10, label %271
    i32 1, label %279
    i32 11, label %287
    i32 9, label %295
  ]

258:                                              ; preds = %256, %256
  %259 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !5
  %260 = icmp eq i32 %259, 0
  %261 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %260, label %264, label %262

262:                                              ; preds = %258
  %263 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %261)
  br label %267

264:                                              ; preds = %258
  %265 = load i32, ptr %197, align 8, !tbaa !11
  %266 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.25, i32 noundef %265) #8
  br label %267

267:                                              ; preds = %264, %262
  store i1 true, ptr @sawclose, align 4
  br label %629

268:                                              ; preds = %256, %256
  %269 = load ptr, ptr @outfile, align 8, !tbaa !9
  %270 = load ptr, ptr %197, align 8, !tbaa !11
  tail call void @dump_addr(ptr noundef %269, ptr noundef nonnull @.str.26, ptr noundef %270) #9
  store i1 true, ptr @sawclose, align 4
  br label %629

271:                                              ; preds = %256
  %272 = load ptr, ptr %197, align 8, !tbaa !11
  %273 = icmp eq ptr %272, null
  br i1 %273, label %629, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr @outfile, align 8, !tbaa !9
  %276 = getelementptr inbounds %struct.basic_block_def, ptr %272, i64 0, i32 9
  %277 = load i32, ptr %276, align 8, !tbaa !12
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef nonnull @.str.27, i32 noundef %277) #8
  br label %629

279:                                              ; preds = %256
  %280 = load ptr, ptr %197, align 8, !tbaa !11
  %281 = icmp eq ptr %280, null
  %282 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %281, label %285, label %283

283:                                              ; preds = %279
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %282, ptr noundef nonnull @.str.21, ptr noundef nonnull %280) #8
  br label %629

285:                                              ; preds = %279
  %286 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %282)
  br label %629

287:                                              ; preds = %256
  %288 = load ptr, ptr %197, align 8, !tbaa !11
  %289 = icmp eq ptr %288, null
  br i1 %289, label %629, label %290

290:                                              ; preds = %287
  %291 = load ptr, ptr @outfile, align 8, !tbaa !9
  %292 = getelementptr inbounds %struct.basic_block_def, ptr %288, i64 0, i32 9
  %293 = load i32, ptr %292, align 8, !tbaa !12
  %294 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %291, ptr noundef nonnull @.str.27, i32 noundef %293) #8
  br label %629

295:                                              ; preds = %256
  %296 = load ptr, ptr @outfile, align 8, !tbaa !9
  %297 = tail call i32 @fputc(i32 noundef 32, ptr noundef %296) #8
  %298 = load ptr, ptr %197, align 8, !tbaa !11
  tail call fastcc void @print_rtx(ptr noundef %298) #8
  br label %629

299:                                              ; preds = %243
  %300 = icmp eq i32 %201, 9
  br i1 %300, label %301, label %629

301:                                              ; preds = %299
  %302 = load ptr, ptr %198, align 8, !tbaa !11
  %303 = icmp eq ptr %302, null
  br i1 %303, label %629, label %304

304:                                              ; preds = %301
  %305 = load ptr, ptr @outfile, align 8, !tbaa !9
  %306 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %307 = load i32, ptr @indent, align 4, !tbaa !5
  %308 = shl nsw i32 %307, 1
  %309 = getelementptr inbounds %struct.rtx_def, ptr %302, i64 0, i32 1
  %310 = load i32, ptr %309, align 8, !tbaa !11
  %311 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %305, ptr noundef nonnull @.str.28, ptr noundef %306, i32 noundef %308, ptr noundef nonnull @.str, i32 noundef %310) #8
  br label %629

312:                                              ; preds = %243
  %313 = trunc i32 %202 to i16
  switch i16 %313, label %629 [
    i16 1, label %314
    i16 2, label %323
  ]

314:                                              ; preds = %312
  %315 = load ptr, ptr %192, align 8, !tbaa !11
  %316 = load ptr, ptr @outfile, align 8, !tbaa !9
  %317 = getelementptr inbounds %struct.cselib_val_struct, ptr %315, i64 0, i32 1
  %318 = load i32, ptr %317, align 4, !tbaa !15
  %319 = load i32, ptr %315, align 8, !tbaa !17
  %320 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.29, i32 noundef %318, i32 noundef %319) #8
  %321 = load ptr, ptr @outfile, align 8, !tbaa !9
  tail call void @dump_addr(ptr noundef %321, ptr noundef nonnull @.str.30, ptr noundef nonnull %0) #9
  %322 = load ptr, ptr @outfile, align 8, !tbaa !9
  tail call void @dump_addr(ptr noundef %322, ptr noundef nonnull @.str.31, ptr noundef nonnull %315) #9
  br label %629

323:                                              ; preds = %312
  %324 = load ptr, ptr @outfile, align 8, !tbaa !9
  %325 = load ptr, ptr %192, align 8, !tbaa !11
  %326 = getelementptr inbounds %struct.tree_decl_minimal, ptr %325, i64 0, i32 2
  %327 = load i32, ptr %326, align 4, !tbaa !11
  %328 = sub i32 0, %327
  %329 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %324, ptr noundef nonnull @.str.32, i32 noundef %328) #8
  br label %629

330:                                              ; preds = %563, %560, %199
  %331 = load i32, ptr @indent, align 4, !tbaa !5
  %332 = add nsw i32 %331, 2
  store i32 %332, ptr @indent, align 4, !tbaa !5
  %333 = load i1, ptr @sawclose, align 4
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  %335 = load ptr, ptr @outfile, align 8, !tbaa !9
  %336 = tail call i32 @fputc(i32 32, ptr %335)
  br label %337

337:                                              ; preds = %334, %330
  %338 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %339 = load ptr, ptr %338, align 8, !tbaa !11
  tail call fastcc void @print_rtx(ptr noundef %339) #8
  %340 = load i32, ptr @indent, align 4, !tbaa !5
  %341 = add nsw i32 %340, -2
  store i32 %341, ptr @indent, align 4, !tbaa !5
  br label %629

342:                                              ; preds = %199, %199
  %343 = load i32, ptr @indent, align 4, !tbaa !5
  %344 = add nsw i32 %343, 2
  store i32 %344, ptr @indent, align 4, !tbaa !5
  %345 = load i1, ptr @sawclose, align 4
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = load ptr, ptr @outfile, align 8, !tbaa !9
  %348 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %349 = shl nsw i32 %344, 1
  %350 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef nonnull @.str.4, ptr noundef %348, i32 noundef %349, ptr noundef nonnull @.str) #8
  store i1 false, ptr @sawclose, align 4
  br label %351

351:                                              ; preds = %346, %342
  %352 = load ptr, ptr @outfile, align 8, !tbaa !9
  %353 = tail call i32 @fputs(ptr noundef nonnull @.str.33, ptr noundef %352) #8
  %354 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %355 = load ptr, ptr %354, align 8, !tbaa !11
  %356 = icmp eq ptr %355, null
  br i1 %356, label %379, label %357

357:                                              ; preds = %351
  %358 = load i32, ptr @indent, align 4, !tbaa !5
  %359 = add nsw i32 %358, 2
  store i32 %359, ptr @indent, align 4, !tbaa !5
  %360 = load i32, ptr %355, align 8, !tbaa !18
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %376, label %362

362:                                              ; preds = %357
  store i1 true, ptr @sawclose, align 4
  %363 = icmp sgt i32 %360, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %362, %364
  %365 = phi i64 [ %369, %364 ], [ 0, %362 ]
  %366 = phi ptr [ %370, %364 ], [ %355, %362 ]
  %367 = getelementptr inbounds %struct.rtvec_def, ptr %366, i64 0, i32 1, i64 %365
  %368 = load ptr, ptr %367, align 8, !tbaa !9
  tail call fastcc void @print_rtx(ptr noundef %368) #8
  %369 = add nuw nsw i64 %365, 1
  %370 = load ptr, ptr %354, align 8, !tbaa !11
  %371 = load i32, ptr %370, align 8, !tbaa !18
  %372 = sext i32 %371 to i64
  %373 = icmp slt i64 %369, %372
  br i1 %373, label %364, label %374, !llvm.loop !20

374:                                              ; preds = %364
  %375 = load i32, ptr @indent, align 4, !tbaa !5
  br label %376

376:                                              ; preds = %357, %374, %362
  %377 = phi i32 [ %375, %374 ], [ %359, %362 ], [ %359, %357 ]
  %378 = add nsw i32 %377, -2
  store i32 %378, ptr @indent, align 4, !tbaa !5
  br label %379

379:                                              ; preds = %376, %351
  %380 = load i1, ptr @sawclose, align 4
  br i1 %380, label %381, label %387

381:                                              ; preds = %379
  %382 = load ptr, ptr @outfile, align 8, !tbaa !9
  %383 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %384 = load i32, ptr @indent, align 4, !tbaa !5
  %385 = shl nsw i32 %384, 1
  %386 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %382, ptr noundef nonnull @.str.4, ptr noundef %383, i32 noundef %385, ptr noundef nonnull @.str) #8
  br label %387

387:                                              ; preds = %381, %379
  %388 = load ptr, ptr @outfile, align 8, !tbaa !9
  %389 = tail call i32 @fputs(ptr noundef nonnull @.str.34, ptr noundef %388) #8
  store i1 true, ptr @sawclose, align 4
  %390 = load i32, ptr @indent, align 4, !tbaa !5
  %391 = add nsw i32 %390, -2
  store i32 %391, ptr @indent, align 4, !tbaa !5
  br label %629

392:                                              ; preds = %199
  %393 = load i32, ptr @flag_simple, align 4, !tbaa !5
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %392
  %396 = load ptr, ptr @outfile, align 8, !tbaa !9
  %397 = tail call i32 @fputc(i32 32, ptr %396)
  br label %398

398:                                              ; preds = %395, %392
  %399 = load ptr, ptr @outfile, align 8, !tbaa !9
  %400 = getelementptr inbounds [1 x i64], ptr %192, i64 0, i64 %200
  %401 = load i64, ptr %400, align 8, !tbaa !11
  %402 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %399, ptr noundef nonnull @.str.35, i64 noundef %401) #8
  %403 = load i32, ptr @flag_simple, align 4, !tbaa !5
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %629

405:                                              ; preds = %398
  %406 = load ptr, ptr @outfile, align 8, !tbaa !9
  %407 = load i64, ptr %400, align 8, !tbaa !11
  %408 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %406, ptr noundef nonnull @.str.36, i64 noundef %407) #8
  br label %629

409:                                              ; preds = %199
  %410 = icmp eq i64 %200, 4
  %411 = add nsw i32 %201, -7
  %412 = icmp ult i32 %411, 4
  %413 = and i1 %410, %412
  br i1 %413, label %414, label %425

414:                                              ; preds = %409
  %415 = load i32, ptr %197, align 8, !tbaa !11
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %629, label %417

417:                                              ; preds = %414
  %418 = tail call ptr @insn_file(ptr noundef nonnull %0) #9
  %419 = icmp eq ptr %418, null
  br i1 %419, label %629, label %420

420:                                              ; preds = %417
  %421 = load ptr, ptr @outfile, align 8, !tbaa !9
  %422 = tail call ptr @insn_file(ptr noundef nonnull %0) #9
  %423 = tail call i32 @insn_line(ptr noundef nonnull %0) #9
  %424 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %421, ptr noundef nonnull @.str.37, ptr noundef %422, i32 noundef %423) #8
  br label %629

425:                                              ; preds = %409
  %426 = trunc i64 %200 to i32
  switch i32 %426, label %452 [
    i32 6, label %427
    i32 1, label %436
  ]

427:                                              ; preds = %425
  %428 = trunc i32 %202 to i16
  switch i16 %428, label %452 [
    i16 17, label %429
    i16 13, label %445
  ]

429:                                              ; preds = %427
  %430 = load ptr, ptr @outfile, align 8, !tbaa !9
  %431 = load i32, ptr %195, align 8, !tbaa !11
  %432 = tail call ptr @locator_file(i32 noundef %431) #9
  %433 = load i32, ptr %195, align 8, !tbaa !11
  %434 = tail call i32 @locator_line(i32 noundef %433) #9
  %435 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %430, ptr noundef nonnull @.str.37, ptr noundef %432, i32 noundef %434) #8
  br label %629

436:                                              ; preds = %425
  %437 = icmp eq i32 %201, 16
  br i1 %437, label %438, label %452

438:                                              ; preds = %436
  %439 = load ptr, ptr @outfile, align 8, !tbaa !9
  %440 = load i32, ptr %193, align 8, !tbaa !11
  %441 = tail call ptr @locator_file(i32 noundef %440) #9
  %442 = load i32, ptr %193, align 8, !tbaa !11
  %443 = tail call i32 @locator_line(i32 noundef %442) #9
  %444 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %439, ptr noundef nonnull @.str.37, ptr noundef %441, i32 noundef %443) #8
  br label %629

445:                                              ; preds = %427
  %446 = load i32, ptr %194, align 8, !tbaa !11
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %629

448:                                              ; preds = %445
  %449 = load ptr, ptr @outfile, align 8, !tbaa !9
  %450 = load i32, ptr %195, align 8, !tbaa !11
  %451 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %449, ptr noundef nonnull @.str.25, i32 noundef %450) #8
  br label %629

452:                                              ; preds = %427, %425, %436
  %453 = shl nuw nsw i64 %200, 3
  %454 = add nuw nsw i64 %453, 8
  %455 = getelementptr inbounds i8, ptr %0, i64 %454
  %456 = load i32, ptr %455, align 8, !tbaa !11
  %457 = icmp eq i32 %201, 37
  %458 = icmp slt i32 %456, 53
  %459 = select i1 %457, i1 %458, i1 false
  br i1 %459, label %460, label %467

460:                                              ; preds = %452
  %461 = load ptr, ptr @outfile, align 8, !tbaa !9
  %462 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #8
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !9
  %466 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %461, ptr noundef nonnull @.str.38, i32 noundef %462, ptr noundef %465) #8
  br label %496

467:                                              ; preds = %452
  %468 = icmp slt i32 %456, 58
  %469 = select i1 %457, i1 %468, i1 false
  br i1 %469, label %470, label %485

470:                                              ; preds = %467
  %471 = load ptr, ptr @outfile, align 8, !tbaa !9
  switch i32 %456, label %482 [
    i32 53, label %472
    i32 54, label %474
    i32 55, label %476
    i32 56, label %478
    i32 57, label %480
  ]

472:                                              ; preds = %470
  %473 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef nonnull @.str.39, i32 noundef 53) #8
  br label %496

474:                                              ; preds = %470
  %475 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef nonnull @.str.40, i32 noundef 54) #8
  br label %496

476:                                              ; preds = %470
  %477 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef nonnull @.str.41, i32 noundef 55) #8
  br label %496

478:                                              ; preds = %470
  %479 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef nonnull @.str.42, i32 noundef 56) #8
  br label %496

480:                                              ; preds = %470
  %481 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef nonnull @.str.43, i32 noundef 57) #8
  br label %496

482:                                              ; preds = %470
  %483 = add nsw i32 %456, -53
  %484 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef nonnull @.str.44, i32 noundef %456, i32 noundef %483) #8
  br label %496

485:                                              ; preds = %467
  %486 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !5
  %487 = icmp ne i32 %486, 0
  %488 = icmp eq i32 %201, 13
  %489 = or i1 %33, %488
  %490 = and i1 %489, %487
  %491 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %490, label %492, label %494

492:                                              ; preds = %485
  %493 = tail call i32 @fputc(i32 noundef 35, ptr noundef %491) #8
  br label %496

494:                                              ; preds = %485
  %495 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %491, ptr noundef nonnull @.str.25, i32 noundef %456) #8
  br label %496

496:                                              ; preds = %474, %478, %482, %480, %476, %472, %494, %492, %460
  %497 = load i32, ptr %0, align 8
  %498 = and i32 %497, 65535
  %499 = icmp eq i32 %498, 37
  br i1 %499, label %500, label %533

500:                                              ; preds = %496
  %501 = load ptr, ptr %196, align 8, !tbaa !11
  %502 = icmp eq ptr %501, null
  br i1 %502, label %533, label %503

503:                                              ; preds = %500
  %504 = load ptr, ptr @outfile, align 8, !tbaa !9
  %505 = tail call i32 @fputs(ptr noundef nonnull @.str.33, ptr noundef %504) #8
  %506 = load i32, ptr %193, align 8, !tbaa !11
  %507 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #8
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %512, label %509

509:                                              ; preds = %503
  %510 = load ptr, ptr @outfile, align 8, !tbaa !9
  %511 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %510, ptr noundef nonnull @.str.45, i32 noundef %506) #8
  br label %512

512:                                              ; preds = %509, %503
  %513 = load ptr, ptr %196, align 8, !tbaa !11
  %514 = icmp eq ptr %513, null
  br i1 %514, label %530, label %515

515:                                              ; preds = %512
  %516 = load ptr, ptr %513, align 8, !tbaa !22
  %517 = icmp eq ptr %516, null
  br i1 %517, label %522, label %518

518:                                              ; preds = %515
  %519 = load ptr, ptr @outfile, align 8, !tbaa !9
  tail call void @print_mem_expr(ptr noundef %519, ptr noundef nonnull %516) #8
  %520 = load ptr, ptr %196, align 8, !tbaa !11
  %521 = icmp eq ptr %520, null
  br i1 %521, label %530, label %522

522:                                              ; preds = %515, %518
  %523 = phi ptr [ %520, %518 ], [ %513, %515 ]
  %524 = getelementptr inbounds %struct.reg_attrs, ptr %523, i64 0, i32 1
  %525 = load i64, ptr %524, align 8, !tbaa !24
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %522
  %528 = load ptr, ptr @outfile, align 8, !tbaa !9
  %529 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %528, ptr noundef nonnull @.str.46, i64 noundef %525) #8
  br label %530

530:                                              ; preds = %512, %518, %527, %522
  %531 = load ptr, ptr @outfile, align 8, !tbaa !9
  %532 = tail call i32 @fputs(ptr noundef nonnull @.str.47, ptr noundef %531) #8
  br label %533

533:                                              ; preds = %530, %500, %496
  %534 = icmp eq i64 %454, 56
  %535 = and i1 %33, %534
  br i1 %535, label %536, label %545

536:                                              ; preds = %533
  %537 = load i32, ptr %455, align 8, !tbaa !11
  %538 = icmp sgt i32 %537, -1
  br i1 %538, label %539, label %545

539:                                              ; preds = %536
  %540 = tail call ptr @get_insn_name(i32 noundef %537) #9
  %541 = icmp eq ptr %540, null
  br i1 %541, label %545, label %542

542:                                              ; preds = %539
  %543 = load ptr, ptr @outfile, align 8, !tbaa !9
  %544 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %543, ptr noundef nonnull @.str.48, ptr noundef nonnull %540) #8
  br label %545

545:                                              ; preds = %542, %539, %536, %533
  store i1 false, ptr @sawclose, align 4
  br label %629

546:                                              ; preds = %199
  %547 = load ptr, ptr @outfile, align 8, !tbaa !9
  %548 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %549 = load i32, ptr %548, align 8, !tbaa !11
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %550
  %552 = load ptr, ptr %551, align 8, !tbaa !9
  %553 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %547, ptr noundef nonnull @.str.49, ptr noundef %552) #8
  store i1 false, ptr @sawclose, align 4
  br label %629

554:                                              ; preds = %199
  %555 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %556 = load ptr, ptr %555, align 8, !tbaa !11
  %557 = icmp eq ptr %556, null
  br i1 %557, label %599, label %558

558:                                              ; preds = %554
  %559 = icmp eq i32 %201, 44
  br i1 %559, label %560, label %577

560:                                              ; preds = %558
  %561 = load i32, ptr %556, align 8
  %562 = trunc i32 %561 to i16
  switch i16 %562, label %330 [
    i16 13, label %563
    i16 12, label %577
  ]

563:                                              ; preds = %560
  %564 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1
  %565 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 1
  %566 = load i32, ptr %565, align 8, !tbaa !11
  %567 = icmp eq i32 %566, 1
  br i1 %567, label %568, label %330

568:                                              ; preds = %563
  %569 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !5
  %570 = icmp eq i32 %569, 0
  %571 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %570, label %574, label %572

572:                                              ; preds = %568
  %573 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 12, i64 1, ptr %571)
  br label %598

574:                                              ; preds = %568
  %575 = load i32, ptr %564, align 8, !tbaa !11
  %576 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %571, ptr noundef nonnull @.str.51, i32 noundef %575) #8
  br label %598

577:                                              ; preds = %560, %558
  %578 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !5
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %590

580:                                              ; preds = %577
  %581 = load i32, ptr @flag_dump_unnumbered_links, align 4, !tbaa !5
  %582 = icmp ne i32 %581, 0
  %583 = trunc i64 %200 to i32
  %584 = add nsw i32 %583, -1
  %585 = icmp ult i32 %584, 2
  %586 = and i1 %585, %582
  %587 = add nsw i32 %201, -7
  %588 = icmp ult i32 %587, 7
  %589 = select i1 %586, i1 %588, i1 false
  br i1 %589, label %590, label %593

590:                                              ; preds = %580, %577
  %591 = load ptr, ptr @outfile, align 8, !tbaa !9
  %592 = tail call i32 @fputs(ptr noundef nonnull @.str.24, ptr noundef %591) #8
  br label %602

593:                                              ; preds = %580
  %594 = load ptr, ptr @outfile, align 8, !tbaa !9
  %595 = getelementptr inbounds %struct.rtx_def, ptr %556, i64 0, i32 1
  %596 = load i32, ptr %595, align 8, !tbaa !11
  %597 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %594, ptr noundef nonnull @.str.25, i32 noundef %596) #8
  br label %602

598:                                              ; preds = %572, %574
  store i1 false, ptr @sawclose, align 4
  br label %629

599:                                              ; preds = %554
  %600 = load ptr, ptr @outfile, align 8, !tbaa !9
  %601 = tail call i32 @fputs(ptr noundef nonnull @.str.52, ptr noundef %600) #8
  br label %602

602:                                              ; preds = %590, %593, %599
  store i1 false, ptr @sawclose, align 4
  br label %629

603:                                              ; preds = %199
  %604 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %605 = load ptr, ptr %604, align 8, !tbaa !11
  %606 = icmp eq ptr %605, null
  %607 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %606, label %608, label %610

608:                                              ; preds = %603
  %609 = tail call i32 @fputs(ptr noundef nonnull @.str.53, ptr noundef %607) #8
  br label %611

610:                                              ; preds = %603
  tail call void @bitmap_print(ptr noundef %607, ptr noundef nonnull %605, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #9
  br label %611

611:                                              ; preds = %610, %608
  store i1 false, ptr @sawclose, align 4
  br label %629

612:                                              ; preds = %199
  %613 = load ptr, ptr @outfile, align 8, !tbaa !9
  %614 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %615 = load ptr, ptr %614, align 8, !tbaa !11
  tail call void @dump_addr(ptr noundef %613, ptr noundef nonnull @.str.26, ptr noundef %615) #9
  br label %629

616:                                              ; preds = %199
  %617 = load ptr, ptr @outfile, align 8, !tbaa !9
  %618 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %617) #8
  store i1 false, ptr @sawclose, align 4
  br label %629

619:                                              ; preds = %199
  %620 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %200
  %621 = load ptr, ptr %620, align 8, !tbaa !11
  %622 = icmp eq ptr %621, null
  br i1 %622, label %629, label %623

623:                                              ; preds = %619
  %624 = load ptr, ptr @outfile, align 8, !tbaa !9
  %625 = getelementptr inbounds %struct.basic_block_def, ptr %621, i64 0, i32 9
  %626 = load i32, ptr %625, align 8, !tbaa !12
  %627 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %624, ptr noundef nonnull @.str.57, i32 noundef %626) #8
  br label %629

628:                                              ; preds = %199
  tail call void @fancy_abort(ptr noundef nonnull @.str.58, i32 noundef 544, ptr noundef nonnull @.str.59) #9
  br label %629

629:                                              ; preds = %312, %243, %235, %299, %301, %245, %254, %598, %287, %290, %283, %285, %271, %274, %248, %251, %237, %240, %222, %337, %387, %546, %602, %611, %612, %616, %628, %256, %295, %268, %267, %314, %323, %304, %227, %231, %405, %398, %429, %545, %448, %445, %438, %414, %417, %420, %623, %619
  %630 = add nuw nsw i64 %200, 1
  %631 = load i32, ptr %0, align 8
  %632 = and i32 %631, 65535
  %633 = zext nneg i32 %632 to i64
  %634 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %633
  %635 = load i8, ptr %634, align 1, !tbaa !11
  %636 = zext i8 %635 to i64
  %637 = icmp ult i64 %630, %636
  br i1 %637, label %199, label %638, !llvm.loop !25

638:                                              ; preds = %629, %180
  %639 = phi i32 [ %162, %180 ], [ %631, %629 ]
  %640 = trunc i32 %639 to i16
  switch i16 %640, label %785 [
    i16 43, label %641
    i16 32, label %752
    i16 12, label %764
  ]

641:                                              ; preds = %638
  %642 = load i8, ptr @final_insns_dump_p, align 1, !tbaa !11
  %643 = icmp eq i8 %642, 0
  %644 = load ptr, ptr @outfile, align 8, !tbaa !9
  br i1 %643, label %647, label %645

645:                                              ; preds = %641
  %646 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %644)
  br label %658

647:                                              ; preds = %641
  %648 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %649 = load ptr, ptr %648, align 8, !tbaa !11
  %650 = icmp eq ptr %649, null
  br i1 %650, label %655, label %651

651:                                              ; preds = %647
  %652 = getelementptr inbounds %struct.mem_attrs, ptr %649, i64 0, i32 3
  %653 = load i32, ptr %652, align 8, !tbaa !26
  %654 = sext i32 %653 to i64
  br label %655

655:                                              ; preds = %647, %651
  %656 = phi i64 [ %654, %651 ], [ 0, %647 ]
  %657 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %644, ptr noundef nonnull @.str.60, i64 noundef %656) #8
  br label %658

658:                                              ; preds = %655, %645
  %659 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %660 = load ptr, ptr %659, align 8, !tbaa !11
  %661 = icmp eq ptr %660, null
  br i1 %661, label %688, label %662

662:                                              ; preds = %658
  %663 = load ptr, ptr %660, align 8, !tbaa !28
  %664 = icmp eq ptr %663, null
  br i1 %664, label %669, label %665

665:                                              ; preds = %662
  %666 = load ptr, ptr @outfile, align 8, !tbaa !9
  tail call void @print_mem_expr(ptr noundef %666, ptr noundef nonnull %663) #8
  %667 = load ptr, ptr %659, align 8, !tbaa !11
  %668 = icmp eq ptr %667, null
  br i1 %668, label %688, label %669

669:                                              ; preds = %662, %665
  %670 = phi ptr [ %667, %665 ], [ %660, %662 ]
  %671 = getelementptr inbounds %struct.mem_attrs, ptr %670, i64 0, i32 1
  %672 = load ptr, ptr %671, align 8, !tbaa !29
  %673 = icmp eq ptr %672, null
  br i1 %673, label %681, label %674

674:                                              ; preds = %669
  %675 = load ptr, ptr @outfile, align 8, !tbaa !9
  %676 = getelementptr inbounds %struct.rtx_def, ptr %672, i64 0, i32 1
  %677 = load i64, ptr %676, align 8, !tbaa !11
  %678 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %675, ptr noundef nonnull @.str.46, i64 noundef %677) #8
  %679 = load ptr, ptr %659, align 8, !tbaa !11
  %680 = icmp eq ptr %679, null
  br i1 %680, label %688, label %681

681:                                              ; preds = %669, %674
  %682 = phi ptr [ %679, %674 ], [ %670, %669 ]
  %683 = getelementptr inbounds %struct.mem_attrs, ptr %682, i64 0, i32 2
  %684 = load ptr, ptr %683, align 8, !tbaa !30
  %685 = icmp eq ptr %684, null
  br i1 %685, label %729, label %686

686:                                              ; preds = %681
  %687 = load ptr, ptr @outfile, align 8, !tbaa !9
  br label %704

688:                                              ; preds = %658, %665, %674
  %689 = load i32, ptr %0, align 8
  %690 = lshr i32 %689, 16
  %691 = and i32 %690, 255
  %692 = icmp eq i32 %691, 1
  br i1 %692, label %734, label %693

693:                                              ; preds = %688
  %694 = zext nneg i32 %691 to i64
  %695 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %694
  %696 = load i8, ptr %695, align 1, !tbaa !11
  %697 = zext i8 %696 to i64
  %698 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %697) #9
  %699 = icmp eq ptr %698, null
  %700 = load ptr, ptr %659, align 8, !tbaa !11
  br i1 %699, label %726, label %701

701:                                              ; preds = %693
  %702 = load ptr, ptr @outfile, align 8, !tbaa !9
  %703 = icmp eq ptr %700, null
  br i1 %703, label %709, label %704

704:                                              ; preds = %686, %701
  %705 = phi ptr [ %687, %686 ], [ %702, %701 ]
  %706 = phi ptr [ %682, %686 ], [ %700, %701 ]
  %707 = getelementptr inbounds %struct.mem_attrs, ptr %706, i64 0, i32 2
  %708 = load ptr, ptr %707, align 8, !tbaa !30
  br label %719

709:                                              ; preds = %701
  %710 = load i32, ptr %0, align 8
  %711 = lshr i32 %710, 16
  %712 = and i32 %711, 255
  %713 = icmp ne i32 %712, 1
  tail call void @llvm.assume(i1 %713)
  %714 = zext nneg i32 %712 to i64
  %715 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %714
  %716 = load i8, ptr %715, align 1, !tbaa !11
  %717 = zext i8 %716 to i64
  %718 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %717) #9
  br label %719

719:                                              ; preds = %709, %704
  %720 = phi ptr [ %705, %704 ], [ %702, %709 ]
  %721 = phi ptr [ %708, %704 ], [ %718, %709 ]
  %722 = getelementptr inbounds %struct.rtx_def, ptr %721, i64 0, i32 1
  %723 = load i64, ptr %722, align 8, !tbaa !11
  %724 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %720, ptr noundef nonnull @.str.61, i64 noundef %723) #8
  %725 = load ptr, ptr %659, align 8, !tbaa !11
  br label %726

726:                                              ; preds = %719, %693
  %727 = phi ptr [ %725, %719 ], [ %700, %693 ]
  %728 = icmp eq ptr %727, null
  br i1 %728, label %734, label %729

729:                                              ; preds = %681, %726
  %730 = phi ptr [ %727, %726 ], [ %682, %681 ]
  %731 = getelementptr inbounds %struct.mem_attrs, ptr %730, i64 0, i32 4
  %732 = load i32, ptr %731, align 4, !tbaa !31
  %733 = icmp eq i32 %732, 1
  br i1 %733, label %740, label %734

734:                                              ; preds = %688, %726, %729
  %735 = phi i32 [ 8, %726 ], [ %732, %729 ], [ 8, %688 ]
  %736 = load ptr, ptr @outfile, align 8, !tbaa !9
  %737 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %736, ptr noundef nonnull @.str.62, i32 noundef %735) #8
  %738 = load ptr, ptr %659, align 8, !tbaa !11
  %739 = icmp eq ptr %738, null
  br i1 %739, label %749, label %740

740:                                              ; preds = %729, %734
  %741 = phi ptr [ %738, %734 ], [ %730, %729 ]
  %742 = getelementptr inbounds %struct.mem_attrs, ptr %741, i64 0, i32 5
  %743 = load i8, ptr %742, align 8, !tbaa !32
  %744 = icmp eq i8 %743, 0
  br i1 %744, label %749, label %745

745:                                              ; preds = %740
  %746 = load ptr, ptr @outfile, align 8, !tbaa !9
  %747 = zext i8 %743 to i32
  %748 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %746, ptr noundef nonnull @.str.63, i32 noundef %747) #8
  br label %749

749:                                              ; preds = %734, %745, %740
  %750 = load ptr, ptr @outfile, align 8, !tbaa !9
  %751 = tail call i32 @fputc(i32 noundef 93, ptr noundef %750) #8
  br label %785

752:                                              ; preds = %638
  %753 = lshr i32 %639, 16
  %754 = and i32 %753, 255
  %755 = zext nneg i32 %754 to i64
  %756 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %755
  %757 = load i8, ptr %756, align 1, !tbaa !11
  switch i8 %757, label %785 [
    i8 8, label %758
    i8 9, label %758
    i8 11, label %758
    i8 17, label %758
  ]

758:                                              ; preds = %752, %752, %752, %752
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #10
  %759 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  call void @real_to_decimal(ptr noundef nonnull %2, ptr noundef nonnull %759, i64 noundef 60, i64 noundef 0, i32 noundef 1) #9
  %760 = load ptr, ptr @outfile, align 8, !tbaa !9
  %761 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %760, ptr noundef nonnull @.str.49, ptr noundef nonnull %2) #8
  call void @real_to_hexadecimal(ptr noundef nonnull %2, ptr noundef nonnull %759, i64 noundef 60, i64 noundef 0, i32 noundef 1) #9
  %762 = load ptr, ptr @outfile, align 8, !tbaa !9
  %763 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %762, ptr noundef nonnull @.str.64, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #10
  br label %785

764:                                              ; preds = %638
  %765 = load ptr, ptr @outfile, align 8, !tbaa !9
  %766 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %767 = load i32, ptr %766, align 8, !tbaa !11
  %768 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %765, ptr noundef nonnull @.str.65, i32 noundef %767) #8
  %769 = load i32, ptr %0, align 8
  %770 = lshr i32 %769, 23
  %771 = and i32 %770, 2
  %772 = lshr i32 %769, 25
  %773 = and i32 %772, 1
  %774 = or disjoint i32 %771, %773
  switch i32 %774, label %784 [
    i32 0, label %785
    i32 1, label %775
    i32 2, label %778
    i32 3, label %781
  ]

775:                                              ; preds = %764
  %776 = load ptr, ptr @outfile, align 8, !tbaa !9
  %777 = tail call i32 @fputs(ptr noundef nonnull @.str.66, ptr noundef %776) #8
  br label %785

778:                                              ; preds = %764
  %779 = load ptr, ptr @outfile, align 8, !tbaa !9
  %780 = tail call i32 @fputs(ptr noundef nonnull @.str.67, ptr noundef %779) #8
  br label %785

781:                                              ; preds = %764
  %782 = load ptr, ptr @outfile, align 8, !tbaa !9
  %783 = tail call i32 @fputs(ptr noundef nonnull @.str.68, ptr noundef %782) #8
  br label %785

784:                                              ; preds = %764
  unreachable

785:                                              ; preds = %752, %638, %764, %775, %778, %781, %758, %749
  %786 = load i32, ptr @dump_for_graph, align 4, !tbaa !5
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %794, label %788

788:                                              ; preds = %785
  br i1 %33, label %797, label %789

789:                                              ; preds = %788
  %790 = load i32, ptr %0, align 8
  %791 = and i32 %790, 65535
  %792 = add nsw i32 %791, -11
  %793 = icmp ult i32 %792, 3
  br i1 %793, label %797, label %794

794:                                              ; preds = %789, %785
  %795 = load ptr, ptr @outfile, align 8, !tbaa !9
  %796 = call i32 @fputc(i32 noundef 41, ptr noundef %795) #8
  br label %797

797:                                              ; preds = %794, %788, %789, %25, %18
  %798 = phi i1 [ true, %25 ], [ true, %18 ], [ true, %794 ], [ false, %789 ], [ false, %788 ]
  store i1 %798, ptr @sawclose, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  store ptr %2, ptr @outfile, align 8, !tbaa !9
  store i1 false, ptr @sawclose, align 4
  tail call fastcc void @print_rtx(ptr noundef %0) #8
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rtx_list(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %5 = select i1 %3, i32 1, i32 %4
  %6 = icmp slt i32 %1, 0
  %7 = icmp ugt i32 %4, 1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = lshr i32 %4, 1
  br label %14

11:                                               ; preds = %14
  %12 = add nsw i32 %16, -1
  %13 = icmp sgt i32 %16, 1
  br i1 %13, label %14, label %20, !llvm.loop !33

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %18, %11 ], [ %0, %9 ]
  %16 = phi i32 [ %12, %11 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11

20:                                               ; preds = %14, %11, %2
  %21 = phi ptr [ %0, %2 ], [ %15, %14 ], [ %18, %11 ]
  %22 = icmp ne i32 %5, 0
  %23 = icmp ne ptr %21, null
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %32, %25 ], [ %21, %20 ]
  %27 = phi i32 [ %30, %25 ], [ %5, %20 ]
  tail call void @debug_rtx(ptr noundef nonnull %26) #8
  %28 = load ptr, ptr @stderr, align 8, !tbaa !9
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  %30 = add nsw i32 %27, -1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = icmp sgt i32 %27, 1
  %34 = icmp ne ptr %32, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %25, label %36, !llvm.loop !34

36:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rtx_range(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  tail call void @debug_rtx(ptr noundef %0) #8
  %3 = load ptr, ptr @stderr, align 8, !tbaa !9
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %0, %1
  %7 = or i1 %5, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %11, %8 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  tail call void @debug_rtx(ptr noundef %11) #8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !9
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  %14 = icmp eq ptr %11, null
  %15 = icmp eq ptr %11, %1
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @debug_rtx_find(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !11
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %4, !llvm.loop !35

13:                                               ; preds = %4
  %14 = load i32, ptr @debug_rtx_count, align 4, !tbaa !5
  tail call void @debug_rtx_list(ptr noundef nonnull %5, i32 noundef %14) #8
  br label %18

15:                                               ; preds = %9, %2
  %16 = load ptr, ptr @stderr, align 8, !tbaa !9
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %1) #11
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ null, %15 ], [ %5, %13 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %0, ptr @outfile, align 8, !tbaa !9
  store i1 false, ptr @sawclose, align 4
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %6 = tail call i32 @fputs(ptr noundef %5, ptr noundef %0) #8
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %0) #8
  br label %26

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -8
  %12 = icmp ult i16 %11, 6
  br i1 %12, label %13, label %23

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %21, %13 ], [ %1, %8 ]
  %15 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %16 = load ptr, ptr @outfile, align 8, !tbaa !9
  %17 = tail call i32 @fputs(ptr noundef %15, ptr noundef %16) #8
  tail call fastcc void @print_rtx(ptr noundef nonnull %14) #8
  %18 = load ptr, ptr @outfile, align 8, !tbaa !9
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %13, !llvm.loop !36

23:                                               ; preds = %8
  %24 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %25 = tail call i32 @fputs(ptr noundef %24, ptr noundef %0) #8
  tail call fastcc void @print_rtx(ptr noundef nonnull %1) #8
  br label %26

26:                                               ; preds = %13, %23, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @print_rtl_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %0, ptr @outfile, align 8, !tbaa !9
  store i1 false, ptr @sawclose, align 4
  %3 = load ptr, ptr @print_rtx_head, align 8, !tbaa !9
  %4 = tail call i32 @fputs(ptr noundef %3, ptr noundef %0) #8
  tail call fastcc void @print_rtx(ptr noundef %1) #8
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #8
  ret i32 1
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_simple_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i32 1, ptr @flag_simple, align 4, !tbaa !5
  tail call void @print_rtl(ptr noundef %0, ptr noundef %1) #8
  store i32 0, ptr @flag_simple, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !11
  ret i32 %3
}

; Function Attrs: optsize
declare void @print_node_brief(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @insn_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @insn_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @locator_file(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @locator_line(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insn_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_to_hexadecimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !6, i64 80}
!13 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !14, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !6, i64 4}
!16 = !{!"cselib_val_struct", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!17 = !{!16, !6, i64 0}
!18 = !{!19, !6, i64 0}
!19 = !{!"rtvec_def", !6, i64 0, !7, i64 8}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !10, i64 0}
!23 = !{!"reg_attrs", !10, i64 0, !14, i64 8}
!24 = !{!23, !14, i64 8}
!25 = distinct !{!25, !21}
!26 = !{!27, !6, i64 24}
!27 = !{!"mem_attrs", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !7, i64 32}
!28 = !{!27, !10, i64 0}
!29 = !{!27, !10, i64 8}
!30 = !{!27, !10, i64 16}
!31 = !{!27, !6, i64 28}
!32 = !{!27, !7, i64 32}
!33 = distinct !{!33, !21}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
