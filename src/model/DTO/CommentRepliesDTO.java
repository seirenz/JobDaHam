package model.DTO;

import java.util.List;

public class CommentRepliesDTO {
	private CommentDTO commentDTO;
	List<ReplyDTO> replies;
	public CommentDTO getCommentDTO() {
		return commentDTO;
	}
	public List<ReplyDTO> getReplies() {
		return replies;
	}
	public void setReplies(List<ReplyDTO> replies) {
		this.replies = replies;
	}
	public void setCommentDTO(CommentDTO commentDTO) {
		this.commentDTO = commentDTO;
	}

}
