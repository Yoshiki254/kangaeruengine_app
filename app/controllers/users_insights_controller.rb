class UsersInsightsController < ApplicationController

	def create
		@users_insight = UsersInsight.new(create_params)

    if current_user
      respond_to do |format|
        if @users_insight.save
          format.html { redirect_to user_path(current_user), notice: 'Date was successfully created.' }
        else
          format.html { redirect_to user_path(current_user) }
        end
      end
    else
      respond_to do |format|
        if @users_insight.save
          format.html { redirect_to admins_user_path(params[:user_id]), notice: 'Date was successfully created.' }
        else
          format.html { redirect_to admins_user_path(params[:user_id]) }
        end
      end
    end
  end

  def update
    @users_insight = UsersInsight.find(params[:id])
    if current_user
      respond_to do |format|
        if @users_insight.update(update_params)
          format.html { redirect_to user_path(current_user), notice: 'Date was successfully updated.' }
        else
          format.html { redirect_to user_path(current_user) }
        end
      end
    else
      respond_to do |format|
        if @users_insight.update(update_params)
          format.html { redirect_to admins_user_path(params[:user_id]), notice: 'Date was successfully updated.' }
        else
          format.html { redirect_to admins_user_path(params[:user_id]) }
        end
      end
    end
  end

	private
	def create_params
		params.require(:users_insight).permit(:date, :insight_id).merge(user_id: params[:user_id])
  end
  
  def update_params
    params.require(:users_insight).permit(:date, :insight_id).merge(user_id: params[:user_id])
  end

end



# <div id="users-insight-modal<%= i %>" class="modal">
# <div class="modal-background"></div>
# <div class="modal-content box has-text-centered">
#   <p class="subtitle">12示唆マラソン：<%= insight.name %></p>
#     <%= form_for (user), remote: true do |user_form| %>
#       <div class="field has-addons">
#         <%= user_form.fields_for :users_insight do |insight_fields| %>	  				
#           <%= insight_fields.date_field :date, :class => "input is-success", value: Time.now.strftime("%Y-%m-%d") %>								
#           <%= insight_fields.hidden_field :insight_id, :value => insight.id %>
#         <% end %>
#         <div class="control">
#         <%= user_form.submit 'Submit', :class => 'button is-link'%>
#         </div>
#       </div>
#     <% end %>
# </div>
# <button class="modal-close is-large" aria-label="close" data-dismiss="modal"></button>
# </div>	